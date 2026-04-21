; ModuleID = 'src/sleep.bc'
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
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [249 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds, where NUMBER is an integer or floating-point.\0ASUFFIX may be 's','m','h', or 'd', for seconds, minutes, hours, days.\0AWith multiple arguments, pause for the sum of their values.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !27
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1, !dbg !67
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !72
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !107
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !112
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !114
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !119
@.str.31 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !159
@.str.32 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !161
@.str.33 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !163
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !168
@.str.35 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !173
@.str.36 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !178
@.str.37 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !183
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !185
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !187
@.str.40 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !189
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !200
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !202
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !207
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !209
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !214
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !295
@Version = dso_local local_unnamed_addr global ptr @.str.18, align 8, !dbg !298
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !302
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !315
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !307
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !309
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !311
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !313
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !317
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !323
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !354
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !325
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !344
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !346
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !348
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !350
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !356
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !358
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !363
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !368
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !371
@optind = external local_unnamed_addr global i32, align 4
@.str.1.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !376
@.str.2.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !378
@.str.3.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !380
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !392
@.str.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !398
@.str.1.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !400
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !402
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !433
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !436
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !438
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !440
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !442
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !444
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !446
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !448
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !450
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !452
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 16, !dbg !454
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !479
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !493
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !531
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !538
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !495
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !540
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !483
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !500
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !502
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !504
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !506
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !508
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !546
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !549
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !551
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !553
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !555
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !557
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !562
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !567
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !569
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !574
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !579
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !584
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !589
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !591
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !596
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !601
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !606
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !611
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !613
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !615
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !617
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !619
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !621
@.str.23.96 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !623
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !628
@exit_failure = dso_local global i32 1, align 4, !dbg !636
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !642
@.str.1.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !645
@.str.2.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !647
@c_locale_cache = internal global ptr null, align 8, !dbg !649
@.str.114 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !675
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !678
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !681
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !696

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !796
  %2 = icmp eq i32 %0, 0, !dbg !797
  br i1 %2, label %8, label %3, !dbg !799

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !800, !tbaa !802
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !800
  %6 = load ptr, ptr @program_name, align 8, !dbg !800, !tbaa !802
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !800
  br label %28, !dbg !800

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !806
  %10 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !802
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !806
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #39, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !808
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !809
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !810, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata !829, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr poison, metadata !822, metadata !DIExpression()), !dbg !827
  tail call void @emit_bug_reporting_address() #39, !dbg !830
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !831
  call void @llvm.dbg.value(metadata ptr %14, metadata !825, metadata !DIExpression()), !dbg !827
  %15 = icmp eq ptr %14, null, !dbg !832
  br i1 %15, label %23, label %16, !dbg !834

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #40, !dbg !835
  %18 = icmp eq i32 %17, 0, !dbg !835
  br i1 %18, label %23, label %19, !dbg !836

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !837
  %21 = load ptr, ptr @stdout, align 8, !dbg !837, !tbaa !802
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !837
  br label %23, !dbg !839

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !826, metadata !DIExpression()), !dbg !827
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !840
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #39, !dbg !840
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !841
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #39, !dbg !841
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !842
  unreachable, !dbg !842
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !843 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !847 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !853 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !74 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !217, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !856
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !857, !tbaa !858
  %3 = icmp eq i32 %2, -1, !dbg !860
  br i1 %3, label %4, label %16, !dbg !861

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #39, !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !863
  %6 = icmp eq ptr %5, null, !dbg !864
  br i1 %6, label %14, label %7, !dbg !865

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !866, !tbaa !867
  %9 = icmp eq i8 %8, 0, !dbg !866
  br i1 %9, label %14, label %10, !dbg !868

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !869, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #40, !dbg !878
  %12 = icmp eq i32 %11, 0, !dbg !879
  %13 = zext i1 %12 to i32, !dbg !868
  br label %14, !dbg !868

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !880, !tbaa !858
  br label %16, !dbg !881

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !882
  %18 = icmp eq i32 %17, 0, !dbg !882
  br i1 %18, label %22, label %19, !dbg !884

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !802
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !885
  br label %124, !dbg !887

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !856
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #40, !dbg !888
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !889
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !856
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !856
  %26 = icmp eq ptr %25, null, !dbg !891
  br i1 %26, label %54, label %27, !dbg !892

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !893
  br i1 %28, label %54, label %29, !dbg !894

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !895
  %30 = icmp ult ptr %24, %25, !dbg !896
  br i1 %30, label %31, label %54, !dbg !897

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !856
  %33 = load ptr, ptr %32, align 8, !tbaa !802
  br label %34, !dbg !897

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !895
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !898
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !895
  %38 = load i8, ptr %35, align 1, !dbg !898, !tbaa !867
  %39 = sext i8 %38 to i64, !dbg !898
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !898
  %41 = load i16, ptr %40, align 2, !dbg !898, !tbaa !899
  %42 = freeze i16 %41, !dbg !901
  %43 = lshr i16 %42, 13, !dbg !901
  %44 = and i16 %43, 1, !dbg !901
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !902
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !895
  %47 = icmp ult ptr %37, %25, !dbg !896
  %48 = icmp ult i64 %46, 2, !dbg !903
  %49 = select i1 %47, i1 %48, i1 false, !dbg !903
  br i1 %49, label %34, label %50, !dbg !897, !llvm.loop !904

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !906
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !908
  %53 = zext i1 %51 to i8, !dbg !908
  br label %54, !dbg !908

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !856
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !222, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !225, metadata !DIExpression()), !dbg !856
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #40, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !231, metadata !DIExpression()), !dbg !856
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !232, metadata !DIExpression()), !dbg !856
  br label %59, !dbg !911

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !856
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !222, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !232, metadata !DIExpression()), !dbg !856
  %62 = load i8, ptr %60, align 1, !dbg !912, !tbaa !867
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !913

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !914
  %65 = load i8, ptr %64, align 1, !dbg !917, !tbaa !867
  %66 = icmp eq i8 %65, 45, !dbg !918
  %67 = select i1 %66, i8 0, i8 %61, !dbg !919
  br label %68, !dbg !919

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !222, metadata !DIExpression()), !dbg !856
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !920
  %71 = load ptr, ptr %70, align 8, !dbg !920, !tbaa !802
  %72 = sext i8 %62 to i64, !dbg !920
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !920
  %74 = load i16, ptr %73, align 2, !dbg !920, !tbaa !899
  %75 = and i16 %74, 8192, !dbg !920
  %76 = icmp eq i16 %75, 0, !dbg !920
  br i1 %76, label %92, label %77, !dbg !922

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !923
  br i1 %78, label %94, label %79, !dbg !926

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !927
  %81 = load i8, ptr %80, align 1, !dbg !927, !tbaa !867
  %82 = sext i8 %81 to i64, !dbg !927
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !927
  %84 = load i16, ptr %83, align 2, !dbg !927, !tbaa !899
  %85 = and i16 %84, 8192, !dbg !927
  %86 = icmp eq i16 %85, 0, !dbg !927
  br i1 %86, label %87, label %94, !dbg !928

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !929
  %89 = icmp ne i8 %88, 0, !dbg !929
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !931
  br i1 %91, label %92, label %94, !dbg !931

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !232, metadata !DIExpression()), !dbg !856
  br label %59, !dbg !911, !llvm.loop !933

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !935
  %96 = load ptr, ptr @stdout, align 8, !dbg !935, !tbaa !802
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !829, metadata !875, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !290, metadata !DIExpression()), !dbg !856
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #40, !dbg !956
  %99 = icmp eq i32 %98, 0, !dbg !956
  br i1 %99, label %103, label %100, !dbg !958

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #40, !dbg !959
  %102 = icmp eq i32 %101, 0, !dbg !959
  br i1 %102, label %103, label %106, !dbg !960

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !961
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %55) #39, !dbg !961
  br label %109, !dbg !963

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !964
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef %107, ptr noundef %55) #39, !dbg !964
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !802
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %110), !dbg !966
  %112 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !802
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %112), !dbg !967
  %114 = ptrtoint ptr %60 to i64, !dbg !968
  %115 = sub i64 %114, %95, !dbg !968
  %116 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !802
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !968
  %118 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !802
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %118), !dbg !969
  %120 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !802
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %120), !dbg !970
  %122 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !802
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !971
  br label %124, !dbg !972

124:                                              ; preds = %109, %19
  ret void, !dbg !972
}

; Function Attrs: nounwind
declare !dbg !973 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !977 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !981 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !985 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !987 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !996 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !999 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1003 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1004 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1010 {
  %3 = alloca ptr, align 8, !DIAssignID !1027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1022, metadata !DIExpression(), metadata !1027, metadata ptr %3, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1015, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1016, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1017, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1019, metadata !DIExpression()), !dbg !1029
  %4 = load ptr, ptr %1, align 8, !dbg !1030, !tbaa !802
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1031
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #39, !dbg !1032
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #39, !dbg !1033
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #39, !dbg !1034
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1035
  %9 = load ptr, ptr @Version, align 8, !dbg !1036, !tbaa !802
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #39, !dbg !1037
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #39, !dbg !1037
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %9, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %10, ptr noundef %11, ptr noundef null) #39, !dbg !1038
  %12 = icmp eq i32 %0, 1, !dbg !1039
  br i1 %12, label %13, label %15, !dbg !1041

13:                                               ; preds = %2
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1042
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %14) #39, !dbg !1042
  tail call void @usage(i32 noundef 1) #43, !dbg !1044
  unreachable, !dbg !1044

15:                                               ; preds = %2
  %16 = load i32, ptr @optind, align 4, !dbg !1045, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1020, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1017, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1019, metadata !DIExpression()), !dbg !1029
  %17 = icmp slt i32 %16, %0, !dbg !1047
  br i1 %17, label %18, label %71, !dbg !1048

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #42, !dbg !1029
  %20 = sext i32 %16 to i64, !dbg !1048
  br label %24, !dbg !1048

21:                                               ; preds = %62
  %22 = and i8 %64, 1, !dbg !1049
  %23 = icmp eq i8 %22, 0, !dbg !1049
  br i1 %23, label %70, label %71, !dbg !1051

24:                                               ; preds = %18, %62
  %25 = phi i64 [ %20, %18 ], [ %67, %62 ]
  %26 = phi double [ 0.000000e+00, %18 ], [ %66, %62 ]
  %27 = phi i8 [ 1, %18 ], [ %64, %62 ]
  tail call void @llvm.dbg.value(metadata double %26, metadata !1017, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1020, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1052
  store i32 0, ptr %19, align 4, !dbg !1053, !tbaa !858
  %28 = getelementptr inbounds ptr, ptr %1, i64 %25, !dbg !1054
  %29 = load ptr, ptr %28, align 8, !dbg !1054, !tbaa !802
  %30 = call double @cl_strtod(ptr noundef %29, ptr noundef nonnull %3) #39, !dbg !1055
  tail call void @llvm.dbg.value(metadata double %30, metadata !1025, metadata !DIExpression()), !dbg !1028
  %31 = load i32, ptr %19, align 4, !dbg !1056, !tbaa !858
  call void @llvm.dbg.value(metadata double %30, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %31, metadata !1063, metadata !DIExpression()), !dbg !1065
  %32 = icmp eq i32 %31, 34, !dbg !1067
  %33 = fcmp oeq double %30, 0.000000e+00
  %34 = and i1 %33, %32, !dbg !1069
  %35 = call double @llvm.copysign.f64(double 4.940660e-324, double %30), !dbg !1069
  %36 = call double @llvm.fmuladd.f64(double %30, double 0x3CA0000000000001, double %30), !dbg !1069
  %37 = select i1 %34, double %35, double %36, !dbg !1069
  tail call void @llvm.dbg.value(metadata double %37, metadata !1026, metadata !DIExpression()), !dbg !1028
  %38 = load ptr, ptr %28, align 8, !dbg !1070, !tbaa !802
  %39 = load ptr, ptr %3, align 8, !dbg !1072, !tbaa !802
  %40 = icmp ne ptr %38, %39, !dbg !1073
  %41 = fcmp oge double %37, 0.000000e+00
  %42 = select i1 %40, i1 %41, i1 false, !dbg !1074
  br i1 %42, label %43, label %58, !dbg !1074

43:                                               ; preds = %24
  %44 = load i8, ptr %39, align 1, !dbg !1075, !tbaa !867
  %45 = icmp eq i8 %44, 0, !dbg !1075
  br i1 %45, label %54, label %46, !dbg !1076

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1077
  %48 = load i8, ptr %47, align 1, !dbg !1078, !tbaa !867
  %49 = icmp eq i8 %48, 0, !dbg !1078
  br i1 %49, label %50, label %58, !dbg !1079

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr undef, metadata !1080, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %44, metadata !1086, metadata !DIExpression()), !dbg !1088
  switch i8 %44, label %58 [
    i8 100, label %53
    i8 115, label %54
    i8 109, label %51
    i8 104, label %52
  ], !dbg !1090

51:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 60, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %54, !dbg !1091

52:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 3600, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %54, !dbg !1093

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 86400, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %54, !dbg !1094

54:                                               ; preds = %50, %51, %52, %53, %43
  %55 = phi double [ 8.640000e+04, %53 ], [ 3.600000e+03, %52 ], [ 6.000000e+01, %51 ], [ 1.000000e+00, %50 ], [ 1.000000e+00, %43 ], !dbg !1095
  call void @llvm.dbg.value(metadata i32 poison, metadata !1087, metadata !DIExpression()), !dbg !1088
  %56 = fmul double %37, %55, !dbg !1096
  call void @llvm.dbg.value(metadata double %56, metadata !1057, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 0, metadata !1063, metadata !DIExpression()), !dbg !1097
  %57 = call double @llvm.fmuladd.f64(double %56, double 0x3CA0000000000001, double %56), !dbg !1099
  tail call void @llvm.dbg.value(metadata double %57, metadata !1026, metadata !DIExpression()), !dbg !1028
  br label %62, !dbg !1100

58:                                               ; preds = %50, %46, %24
  tail call void @llvm.dbg.value(metadata double %37, metadata !1026, metadata !DIExpression()), !dbg !1028
  %59 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1101
  %60 = load ptr, ptr %28, align 8, !dbg !1101, !tbaa !802
  %61 = call ptr @quote(ptr noundef %60) #39, !dbg !1101
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %59, ptr noundef %61) #39, !dbg !1101
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1019, metadata !DIExpression()), !dbg !1029
  br label %62, !dbg !1103

62:                                               ; preds = %54, %58
  %63 = phi double [ %37, %58 ], [ %57, %54 ], !dbg !1104
  %64 = phi i8 [ 0, %58 ], [ %27, %54 ], !dbg !1029
  tail call void @llvm.dbg.value(metadata double %63, metadata !1026, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !1019, metadata !DIExpression()), !dbg !1029
  %65 = fadd double %26, %63, !dbg !1105
  call void @llvm.dbg.value(metadata double %65, metadata !1057, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 0, metadata !1063, metadata !DIExpression()), !dbg !1106
  %66 = call double @llvm.fmuladd.f64(double %65, double 0x3CA0000000000001, double %65), !dbg !1108
  tail call void @llvm.dbg.value(metadata double %66, metadata !1017, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1109
  %67 = add nsw i64 %25, 1, !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !1020, metadata !DIExpression()), !dbg !1046
  %68 = trunc i64 %67 to i32, !dbg !1047
  %69 = icmp eq i32 %68, %0, !dbg !1047
  br i1 %69, label %21, label %24, !dbg !1048, !llvm.loop !1111

70:                                               ; preds = %21
  call void @usage(i32 noundef 1) #43, !dbg !1113
  unreachable, !dbg !1113

71:                                               ; preds = %15, %21
  %72 = phi double [ %66, %21 ], [ 0.000000e+00, %15 ]
  %73 = call i32 @xnanosleep(double noundef %72) #39, !dbg !1114
  %74 = icmp eq i32 %73, 0, !dbg !1114
  br i1 %74, label %79, label %75, !dbg !1116

75:                                               ; preds = %71
  %76 = tail call ptr @__errno_location() #42, !dbg !1117
  %77 = load i32, ptr %76, align 4, !dbg !1117, !tbaa !858
  %78 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1117
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %78) #39, !dbg !1117
  unreachable, !dbg !1117

79:                                               ; preds = %71
  ret i32 0, !dbg !1118
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1119 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1122 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1123 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1126 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !1130 {
  %3 = alloca ptr, align 8, !DIAssignID !1144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1137, metadata !DIExpression(), metadata !1144, metadata ptr %3, metadata !DIExpression()), !dbg !1145
  %4 = alloca ptr, align 8, !DIAssignID !1146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1142, metadata !DIExpression(), metadata !1146, metadata ptr %4, metadata !DIExpression()), !dbg !1147
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1135, metadata !DIExpression()), !dbg !1145
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1136, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1148
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #39, !dbg !1149
  tail call void @llvm.dbg.value(metadata double %5, metadata !1138, metadata !DIExpression()), !dbg !1145
  %6 = load ptr, ptr %3, align 8, !dbg !1150, !tbaa !802
  %7 = load i8, ptr %6, align 1, !dbg !1151, !tbaa !867
  %8 = icmp eq i8 %7, 0, !dbg !1151
  br i1 %8, label %19, label %9, !dbg !1152

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #42, !dbg !1153
  %11 = load i32, ptr %10, align 4, !dbg !1153, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1139, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1154
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #39, !dbg !1155
  tail call void @llvm.dbg.value(metadata double %12, metadata !1143, metadata !DIExpression()), !dbg !1147
  %13 = load ptr, ptr %4, align 8, !dbg !1156, !tbaa !802
  %14 = icmp ult ptr %6, %13, !dbg !1158
  br i1 %14, label %16, label %15, !dbg !1159

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !1160, !tbaa !858
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !1145
  tail call void @llvm.dbg.value(metadata double %18, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1161
  br label %19, !dbg !1162

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !1145
  tail call void @llvm.dbg.value(metadata double %21, metadata !1138, metadata !DIExpression()), !dbg !1145
  %22 = icmp eq ptr %1, null, !dbg !1163
  br i1 %22, label %24, label %23, !dbg !1165

23:                                               ; preds = %19
  store ptr %20, ptr %1, align 8, !dbg !1166, !tbaa !802
  br label %24, !dbg !1167

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1168
  ret double %21, !dbg !1169
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1170 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1173 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1175, metadata !DIExpression()), !dbg !1176
  store ptr %0, ptr @file_name, align 8, !dbg !1177, !tbaa !802
  ret void, !dbg !1178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1179 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1185, !tbaa !1186
  ret void, !dbg !1188
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1189 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1194, !tbaa !802
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1195
  %3 = icmp eq i32 %2, 0, !dbg !1196
  br i1 %3, label %22, label %4, !dbg !1197

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1198, !tbaa !1186, !range !1199, !noundef !829
  %6 = icmp eq i8 %5, 0, !dbg !1198
  br i1 %6, label %11, label %7, !dbg !1200

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1201
  %9 = load i32, ptr %8, align 4, !dbg !1201, !tbaa !858
  %10 = icmp eq i32 %9, 32, !dbg !1202
  br i1 %10, label %22, label %11, !dbg !1203

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1191, metadata !DIExpression()), !dbg !1205
  %13 = load ptr, ptr @file_name, align 8, !dbg !1206, !tbaa !802
  %14 = icmp eq ptr %13, null, !dbg !1206
  %15 = tail call ptr @__errno_location() #42, !dbg !1208
  %16 = load i32, ptr %15, align 4, !dbg !1208, !tbaa !858
  br i1 %14, label %19, label %17, !dbg !1209

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1210
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1210
  br label %20, !dbg !1210

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1211
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1212, !tbaa !858
  tail call void @_exit(i32 noundef %21) #41, !dbg !1213
  unreachable, !dbg !1213

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1214, !tbaa !802
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1216
  %25 = icmp eq i32 %24, 0, !dbg !1217
  br i1 %25, label %28, label %26, !dbg !1218

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1219, !tbaa !858
  tail call void @_exit(i32 noundef %27) #41, !dbg !1220
  unreachable, !dbg !1220

28:                                               ; preds = %22
  ret void, !dbg !1221
}

; Function Attrs: noreturn
declare !dbg !1222 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1224 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1228, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1230, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1231, metadata !DIExpression()), !dbg !1232
  tail call fastcc void @flush_stdout(), !dbg !1233
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1234, !tbaa !802
  %6 = icmp eq ptr %5, null, !dbg !1234
  br i1 %6, label %8, label %7, !dbg !1236

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1237
  br label %12, !dbg !1237

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1238, !tbaa !802
  %10 = tail call ptr @getprogname() #40, !dbg !1238
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #39, !dbg !1238
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1242 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 1, metadata !1246, metadata !DIExpression()), !dbg !1251
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1254
  %2 = icmp slt i32 %1, 0, !dbg !1255
  br i1 %2, label %6, label %3, !dbg !1256

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1257, !tbaa !802
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1257
  br label %6, !dbg !1257

6:                                                ; preds = %3, %0
  ret void, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1259 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1265
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1261, metadata !DIExpression()), !dbg !1266
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1262, metadata !DIExpression()), !dbg !1266
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1263, metadata !DIExpression()), !dbg !1266
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1264, metadata !DIExpression()), !dbg !1266
  %6 = load ptr, ptr @stderr, align 8, !dbg !1267, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %6, metadata !1268, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %2, metadata !1308, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %3, metadata !1309, metadata !DIExpression()), !dbg !1310
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1312
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1313, !tbaa !858
  %9 = add i32 %8, 1, !dbg !1313
  store i32 %9, ptr @error_message_count, align 4, !dbg !1313, !tbaa !858
  %10 = icmp eq i32 %1, 0, !dbg !1314
  br i1 %10, label %20, label %11, !dbg !1316

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1317, metadata !DIExpression(), metadata !1265, metadata ptr %5, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %1, metadata !1320, metadata !DIExpression()), !dbg !1325
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1327
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %12, metadata !1321, metadata !DIExpression()), !dbg !1325
  %13 = icmp eq ptr %12, null, !dbg !1329
  br i1 %13, label %14, label %16, !dbg !1331

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #39, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %15, metadata !1321, metadata !DIExpression()), !dbg !1325
  br label %16, !dbg !1333

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1325
  call void @llvm.dbg.value(metadata ptr %17, metadata !1321, metadata !DIExpression()), !dbg !1325
  %18 = load ptr, ptr @stderr, align 8, !dbg !1334, !tbaa !802
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #39, !dbg !1334
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1335
  br label %20, !dbg !1336

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1337, !tbaa !802
  call void @llvm.dbg.value(metadata i32 10, metadata !1338, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %21, metadata !1344, metadata !DIExpression()), !dbg !1345
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1347
  %23 = load ptr, ptr %22, align 8, !dbg !1347, !tbaa !1348
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1347
  %25 = load ptr, ptr %24, align 8, !dbg !1347, !tbaa !1351
  %26 = icmp ult ptr %23, %25, !dbg !1347
  br i1 %26, label %29, label %27, !dbg !1347, !prof !1352

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1347
  br label %31, !dbg !1347

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1347
  store ptr %30, ptr %22, align 8, !dbg !1347, !tbaa !1348
  store i8 10, ptr %23, align 1, !dbg !1347, !tbaa !867
  br label %31, !dbg !1347

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1353, !tbaa !802
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1353
  %34 = icmp eq i32 %0, 0, !dbg !1354
  br i1 %34, label %36, label %35, !dbg !1356

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1357
  unreachable, !dbg !1357

36:                                               ; preds = %31
  ret void, !dbg !1358
}

declare !dbg !1359 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1362 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1365 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1368 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1371 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1375 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1382, metadata !DIExpression(), metadata !1388, metadata ptr %4, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1379, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1380, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1381, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1390
  call void @llvm.va_start(ptr nonnull %4), !dbg !1391
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1392
  call void @llvm.va_end(ptr nonnull %4), !dbg !1393
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1394
  ret void, !dbg !1394
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !327 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !338, metadata !DIExpression()), !dbg !1395
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !339, metadata !DIExpression()), !dbg !1395
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !1395
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !1395
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !342, metadata !DIExpression()), !dbg !1395
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !343, metadata !DIExpression()), !dbg !1395
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1396, !tbaa !858
  %8 = icmp eq i32 %7, 0, !dbg !1396
  br i1 %8, label %23, label %9, !dbg !1398

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1399, !tbaa !858
  %11 = icmp eq i32 %10, %3, !dbg !1402
  br i1 %11, label %12, label %22, !dbg !1403

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1404, !tbaa !802
  %14 = icmp eq ptr %13, %2, !dbg !1405
  br i1 %14, label %36, label %15, !dbg !1406

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1407
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1408
  br i1 %18, label %19, label %22, !dbg !1408

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1409
  %21 = icmp eq i32 %20, 0, !dbg !1410
  br i1 %21, label %36, label %22, !dbg !1411

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1412, !tbaa !802
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1413, !tbaa !858
  br label %23, !dbg !1414

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1415
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1416, !tbaa !802
  %25 = icmp eq ptr %24, null, !dbg !1416
  br i1 %25, label %27, label %26, !dbg !1418

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1419
  br label %31, !dbg !1419

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1420, !tbaa !802
  %29 = tail call ptr @getprogname() #40, !dbg !1420
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #39, !dbg !1420
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1422, !tbaa !802
  %33 = icmp eq ptr %2, null, !dbg !1422
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1422
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1422
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1423
  br label %36, !dbg !1424

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1424
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1425 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1434, metadata !DIExpression(), metadata !1435, metadata ptr %6, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1429, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1431, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1432, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1433, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1437
  call void @llvm.va_start(ptr nonnull %6), !dbg !1438
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1439
  call void @llvm.va_end(ptr nonnull %6), !dbg !1440
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1441
  ret void, !dbg !1441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1442 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1445, !tbaa !802
  ret ptr %1, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1447 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1462, metadata !DIExpression(), metadata !1477, metadata ptr %7, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1453, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1455, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1456, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1457, metadata !DIExpression()), !dbg !1479
  %8 = load i32, ptr @opterr, align 4, !dbg !1480, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1458, metadata !DIExpression()), !dbg !1479
  store i32 0, ptr @opterr, align 4, !dbg !1481, !tbaa !858
  %9 = icmp eq i32 %0, 2, !dbg !1482
  br i1 %9, label %10, label %15, !dbg !1483

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1484
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1459, metadata !DIExpression()), !dbg !1485
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1486

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #39, !dbg !1487
  br label %15, !dbg !1488

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39, !dbg !1489
  call void @llvm.va_start(ptr nonnull %7), !dbg !1490
  %14 = load ptr, ptr @stdout, align 8, !dbg !1491, !tbaa !802
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #39, !dbg !1492
  call void @exit(i32 noundef 0) #41, !dbg !1493
  unreachable, !dbg !1493

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1494, !tbaa !858
  store i32 0, ptr @optind, align 4, !dbg !1495, !tbaa !858
  ret void, !dbg !1496
}

; Function Attrs: nounwind
declare !dbg !1497 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1503 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1517, metadata !DIExpression(), metadata !1522, metadata ptr %8, metadata !DIExpression()), !dbg !1523
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1507, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1508, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1509, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1510, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1511, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1512, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1513, metadata !DIExpression()), !dbg !1524
  %9 = load i32, ptr @opterr, align 4, !dbg !1525, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1514, metadata !DIExpression()), !dbg !1524
  store i32 1, ptr @opterr, align 4, !dbg !1526, !tbaa !858
  %10 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1515, metadata !DIExpression()), !dbg !1524
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1516, metadata !DIExpression()), !dbg !1524
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1529

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39, !dbg !1530
  call void @llvm.va_start(ptr nonnull %8), !dbg !1531
  %13 = load ptr, ptr @stdout, align 8, !dbg !1532, !tbaa !802
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1533
  call void @exit(i32 noundef 0) #41, !dbg !1534
  unreachable, !dbg !1534

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1535, !tbaa !858
  br label %16, !dbg !1536

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #39, !dbg !1537
  br label %18, !dbg !1538

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1538, !tbaa !858
  ret void, !dbg !1539
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1540 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1542, metadata !DIExpression()), !dbg !1545
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1543, metadata !DIExpression()), !dbg !1545
  %3 = icmp eq ptr %2, null, !dbg !1547
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1547
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1547
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1544, metadata !DIExpression()), !dbg !1545
  %6 = ptrtoint ptr %5 to i64, !dbg !1548
  %7 = ptrtoint ptr %0 to i64, !dbg !1548
  %8 = sub i64 %6, %7, !dbg !1548
  %9 = icmp sgt i64 %8, 6, !dbg !1550
  br i1 %9, label %10, label %19, !dbg !1551

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %11, metadata !1553, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1558, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 7, metadata !1559, metadata !DIExpression()), !dbg !1560
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1562
  %13 = icmp eq i32 %12, 0, !dbg !1563
  br i1 %13, label %14, label %19, !dbg !1564

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !1545
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #40, !dbg !1565
  %16 = icmp eq i32 %15, 0, !dbg !1568
  %17 = select i1 %16, i64 3, i64 0, !dbg !1569
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1569
  br label %19, !dbg !1569

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1545
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1544, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1542, metadata !DIExpression()), !dbg !1545
  store ptr %20, ptr @program_name, align 8, !dbg !1570, !tbaa !802
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1571, !tbaa !802
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1572, !tbaa !802
  ret void, !dbg !1573
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1574 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !404 {
  %3 = alloca i32, align 4, !DIAssignID !1575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !414, metadata !DIExpression(), metadata !1575, metadata ptr %3, metadata !DIExpression()), !dbg !1576
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !419, metadata !DIExpression(), metadata !1577, metadata ptr %4, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !411, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !412, metadata !DIExpression()), !dbg !1576
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !413, metadata !DIExpression()), !dbg !1576
  %6 = icmp eq ptr %5, %0, !dbg !1579
  br i1 %6, label %7, label %14, !dbg !1581

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1582
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %4, metadata !1584, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %4, metadata !1593, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 8, metadata !1600, metadata !DIExpression()), !dbg !1601
  store i64 0, ptr %4, align 8, !dbg !1603
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1604
  %9 = icmp eq i64 %8, 2, !dbg !1606
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1607
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1608
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1608
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1576
  ret ptr %15, !dbg !1608
}

; Function Attrs: nounwind
declare !dbg !1609 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1615 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1620, metadata !DIExpression()), !dbg !1623
  %2 = tail call ptr @__errno_location() #42, !dbg !1624
  %3 = load i32, ptr %2, align 4, !dbg !1624, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1621, metadata !DIExpression()), !dbg !1623
  %4 = icmp eq ptr %0, null, !dbg !1625
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1625
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1626
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1622, metadata !DIExpression()), !dbg !1623
  store i32 %3, ptr %2, align 4, !dbg !1627, !tbaa !858
  ret ptr %6, !dbg !1628
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1629 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1635, metadata !DIExpression()), !dbg !1636
  %2 = icmp eq ptr %0, null, !dbg !1637
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1637
  %4 = load i32, ptr %3, align 8, !dbg !1638, !tbaa !1639
  ret i32 %4, !dbg !1641
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1646, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1647, metadata !DIExpression()), !dbg !1648
  %3 = icmp eq ptr %0, null, !dbg !1649
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1649
  store i32 %1, ptr %4, align 8, !dbg !1650, !tbaa !1639
  ret void, !dbg !1651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1658, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !1664
  %4 = icmp eq ptr %0, null, !dbg !1665
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1665
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1666
  %7 = lshr i8 %1, 5, !dbg !1667
  %8 = zext nneg i8 %7 to i64, !dbg !1667
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1668
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1660, metadata !DIExpression()), !dbg !1664
  %10 = and i8 %1, 31, !dbg !1669
  %11 = zext nneg i8 %10 to i32, !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1662, metadata !DIExpression()), !dbg !1664
  %12 = load i32, ptr %9, align 4, !dbg !1670, !tbaa !858
  %13 = lshr i32 %12, %11, !dbg !1671
  %14 = and i32 %13, 1, !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1663, metadata !DIExpression()), !dbg !1664
  %15 = xor i32 %13, %2, !dbg !1673
  %16 = and i32 %15, 1, !dbg !1673
  %17 = shl nuw i32 %16, %11, !dbg !1674
  %18 = xor i32 %17, %12, !dbg !1675
  store i32 %18, ptr %9, align 4, !dbg !1675, !tbaa !858
  ret i32 %14, !dbg !1676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1682, metadata !DIExpression()), !dbg !1684
  %3 = icmp eq ptr %0, null, !dbg !1685
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !1684
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1688
  %6 = load i32, ptr %5, align 4, !dbg !1688, !tbaa !1689
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i32 %1, ptr %5, align 4, !dbg !1690, !tbaa !1689
  ret i32 %6, !dbg !1691
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1692 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1696, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !1699
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !1699
  %4 = icmp eq ptr %0, null, !dbg !1700
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1702
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !1699
  store i32 10, ptr %5, align 8, !dbg !1703, !tbaa !1639
  %6 = icmp ne ptr %1, null, !dbg !1704
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1706
  br i1 %8, label %10, label %9, !dbg !1706

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1707
  unreachable, !dbg !1707

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1708
  store ptr %1, ptr %11, align 8, !dbg !1709, !tbaa !1710
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1711
  store ptr %2, ptr %12, align 8, !dbg !1712, !tbaa !1713
  ret void, !dbg !1714
}

; Function Attrs: noreturn nounwind
declare !dbg !1715 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1716 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1720, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1721, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1722, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1723, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1724, metadata !DIExpression()), !dbg !1728
  %6 = icmp eq ptr %4, null, !dbg !1729
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1729
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1725, metadata !DIExpression()), !dbg !1728
  %8 = tail call ptr @__errno_location() #42, !dbg !1730
  %9 = load i32, ptr %8, align 4, !dbg !1730, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1726, metadata !DIExpression()), !dbg !1728
  %10 = load i32, ptr %7, align 8, !dbg !1731, !tbaa !1639
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1732
  %12 = load i32, ptr %11, align 4, !dbg !1732, !tbaa !1689
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1733
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1734
  %15 = load ptr, ptr %14, align 8, !dbg !1734, !tbaa !1710
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1735
  %17 = load ptr, ptr %16, align 8, !dbg !1735, !tbaa !1713
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i32 %9, ptr %8, align 4, !dbg !1737, !tbaa !858
  ret i64 %18, !dbg !1738
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1739 {
  %10 = alloca i32, align 4, !DIAssignID !1807
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1808
  %12 = alloca i32, align 4, !DIAssignID !1809
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1810
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1785, metadata !DIExpression(), metadata !1811, metadata ptr %14, metadata !DIExpression()), !dbg !1812
  %15 = alloca i32, align 4, !DIAssignID !1813
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1788, metadata !DIExpression(), metadata !1813, metadata ptr %15, metadata !DIExpression()), !dbg !1814
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1748, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1749, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1750, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1751, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1752, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1753, metadata !DIExpression()), !dbg !1815
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1816
  %17 = icmp eq i64 %16, 1, !dbg !1817
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1757, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1815
  %18 = trunc i32 %5 to i8, !dbg !1818
  %19 = lshr i8 %18, 1, !dbg !1818
  %20 = and i8 %19, 1, !dbg !1818
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1815
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1819

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1820
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1821
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1822
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1823
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1815
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1824
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1825
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1762, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1759, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1758, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1757, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1748, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1753, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1752, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1749, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.label(metadata !1763), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1815
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
  ], !dbg !1827

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1749, metadata !DIExpression()), !dbg !1815
  br label %114, !dbg !1828

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1749, metadata !DIExpression()), !dbg !1815
  %43 = and i8 %37, 1, !dbg !1829
  %44 = icmp eq i8 %43, 0, !dbg !1829
  br i1 %44, label %45, label %114, !dbg !1828

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1831
  br i1 %46, label %114, label %47, !dbg !1834

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1831, !tbaa !867
  br label %114, !dbg !1831

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !1809, metadata ptr %12, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !1810, metadata ptr %13, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !514, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1835
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #39, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %49, metadata !516, metadata !DIExpression()), !dbg !1835
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1840
  br i1 %50, label %51, label %60, !dbg !1842

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1843
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %13, metadata !1845, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr %13, metadata !1853, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 0, metadata !1856, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 8, metadata !1857, metadata !DIExpression()), !dbg !1858
  store i64 0, ptr %13, align 8, !dbg !1860
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1861
  %53 = icmp eq i64 %52, 3, !dbg !1863
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1864
  %57 = icmp eq i32 %29, 9, !dbg !1864
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1864
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1865
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1835
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1752, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !1807, metadata ptr %10, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !1808, metadata ptr %11, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !514, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1866
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #39, !dbg !1868
  call void @llvm.dbg.value(metadata ptr %62, metadata !516, metadata !DIExpression()), !dbg !1866
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1869
  br i1 %63, label %64, label %73, !dbg !1870

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1871
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %11, metadata !1845, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata ptr %11, metadata !1853, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i32 0, metadata !1856, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 8, metadata !1857, metadata !DIExpression()), !dbg !1875
  store i64 0, ptr %11, align 8, !dbg !1877
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1878
  %66 = icmp eq i64 %65, 3, !dbg !1879
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1880
  %70 = icmp eq i32 %29, 9, !dbg !1880
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1880
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1881
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1881
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1753, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1752, metadata !DIExpression()), !dbg !1815
  %76 = and i8 %37, 1, !dbg !1882
  %77 = icmp eq i8 %76, 0, !dbg !1882
  br i1 %77, label %78, label %93, !dbg !1883

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1765, metadata !DIExpression()), !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1815
  %79 = load i8, ptr %74, align 1, !dbg !1885, !tbaa !867
  %80 = icmp eq i8 %79, 0, !dbg !1887
  br i1 %80, label %93, label %81, !dbg !1887

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1765, metadata !DIExpression()), !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1755, metadata !DIExpression()), !dbg !1815
  %85 = icmp ult i64 %84, %40, !dbg !1888
  br i1 %85, label %86, label %88, !dbg !1891

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1888
  store i8 %82, ptr %87, align 1, !dbg !1888, !tbaa !867
  br label %88, !dbg !1888

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1891
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1755, metadata !DIExpression()), !dbg !1815
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1892
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1765, metadata !DIExpression()), !dbg !1884
  %91 = load i8, ptr %90, align 1, !dbg !1885, !tbaa !867
  %92 = icmp eq i8 %91, 0, !dbg !1887
  br i1 %92, label %93, label %81, !dbg !1887, !llvm.loop !1893

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1757, metadata !DIExpression()), !dbg !1815
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1758, metadata !DIExpression()), !dbg !1815
  br label %114, !dbg !1897

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1815
  br label %98, !dbg !1898

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1759, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1815
  br label %98, !dbg !1899

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1823
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1759, metadata !DIExpression()), !dbg !1815
  %101 = and i8 %100, 1, !dbg !1900
  %102 = icmp eq i8 %101, 0, !dbg !1900
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1902
  br label %104, !dbg !1902

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1815
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1818
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1759, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1749, metadata !DIExpression()), !dbg !1815
  %107 = and i8 %106, 1, !dbg !1903
  %108 = icmp eq i8 %107, 0, !dbg !1903
  br i1 %108, label %109, label %114, !dbg !1905

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1906
  br i1 %110, label %114, label %111, !dbg !1909

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1906, !tbaa !867
  br label %114, !dbg !1906

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1815
  br label %114, !dbg !1910

113:                                              ; preds = %28
  call void @abort() #41, !dbg !1911
  unreachable, !dbg !1911

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1895
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %109 ], [ @.str.12.68, %111 ], [ @.str.12.68, %104 ], [ @.str.10.67, %41 ], !dbg !1815
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1815
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1815
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1760, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1759, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1758, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1757, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1753, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1752, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1749, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1770, metadata !DIExpression()), !dbg !1912
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
  br label %138, !dbg !1913

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1895
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1820
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1824
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1825
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1914
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1915
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1762, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1748, metadata !DIExpression()), !dbg !1815
  %147 = icmp eq i64 %139, -1, !dbg !1916
  br i1 %147, label %148, label %152, !dbg !1917

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1918
  %150 = load i8, ptr %149, align 1, !dbg !1918, !tbaa !867
  %151 = icmp eq i8 %150, 0, !dbg !1919
  br i1 %151, label %612, label %154, !dbg !1920

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1921
  br i1 %153, label %612, label %154, !dbg !1920

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1922
  br i1 %128, label %155, label %170, !dbg !1923

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1925
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1926
  br i1 %157, label %158, label %160, !dbg !1926

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1748, metadata !DIExpression()), !dbg !1815
  br label %160, !dbg !1928

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1748, metadata !DIExpression()), !dbg !1815
  %162 = icmp ugt i64 %156, %161, !dbg !1929
  br i1 %162, label %170, label %163, !dbg !1930

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %164, metadata !1932, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %119, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %120, metadata !1936, metadata !DIExpression()), !dbg !1937
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1939
  %166 = icmp ne i32 %165, 0, !dbg !1940
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1941
  %168 = xor i1 %166, true, !dbg !1941
  %169 = zext i1 %168 to i8, !dbg !1941
  br i1 %167, label %170, label %666, !dbg !1941

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1922
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1748, metadata !DIExpression()), !dbg !1815
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1942
  %175 = load i8, ptr %174, align 1, !dbg !1942, !tbaa !867
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1777, metadata !DIExpression()), !dbg !1922
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
  ], !dbg !1943

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1944

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1945

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1922
  %179 = and i8 %144, 1, !dbg !1949
  %180 = icmp eq i8 %179, 0, !dbg !1949
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1949
  br i1 %181, label %182, label %198, !dbg !1949

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1951
  br i1 %183, label %184, label %186, !dbg !1955

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1951
  store i8 39, ptr %185, align 1, !dbg !1951, !tbaa !867
  br label %186, !dbg !1951

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1755, metadata !DIExpression()), !dbg !1815
  %188 = icmp ult i64 %187, %146, !dbg !1956
  br i1 %188, label %189, label %191, !dbg !1959

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1956
  store i8 36, ptr %190, align 1, !dbg !1956, !tbaa !867
  br label %191, !dbg !1956

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1755, metadata !DIExpression()), !dbg !1815
  %193 = icmp ult i64 %192, %146, !dbg !1960
  br i1 %193, label %194, label %196, !dbg !1963

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1960
  store i8 39, ptr %195, align 1, !dbg !1960, !tbaa !867
  br label %196, !dbg !1960

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1963
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %198, !dbg !1964

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1815
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1755, metadata !DIExpression()), !dbg !1815
  %201 = icmp ult i64 %199, %146, !dbg !1965
  br i1 %201, label %202, label %204, !dbg !1968

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1965
  store i8 92, ptr %203, align 1, !dbg !1965, !tbaa !867
  br label %204, !dbg !1965

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1755, metadata !DIExpression()), !dbg !1815
  br i1 %125, label %206, label %476, !dbg !1969

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1971
  %208 = icmp ult i64 %207, %171, !dbg !1972
  br i1 %208, label %209, label %465, !dbg !1973

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1974
  %211 = load i8, ptr %210, align 1, !dbg !1974, !tbaa !867
  %212 = add i8 %211, -48, !dbg !1975
  %213 = icmp ult i8 %212, 10, !dbg !1975
  br i1 %213, label %214, label %465, !dbg !1975

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1976
  br i1 %215, label %216, label %218, !dbg !1980

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1976
  store i8 48, ptr %217, align 1, !dbg !1976, !tbaa !867
  br label %218, !dbg !1976

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1755, metadata !DIExpression()), !dbg !1815
  %220 = icmp ult i64 %219, %146, !dbg !1981
  br i1 %220, label %221, label %223, !dbg !1984

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1981
  store i8 48, ptr %222, align 1, !dbg !1981, !tbaa !867
  br label %223, !dbg !1981

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1755, metadata !DIExpression()), !dbg !1815
  br label %465, !dbg !1985

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1986

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1987

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1988

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1990

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1992
  %231 = icmp ult i64 %230, %171, !dbg !1993
  br i1 %231, label %232, label %465, !dbg !1994

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1995
  %234 = load i8, ptr %233, align 1, !dbg !1995, !tbaa !867
  %235 = icmp eq i8 %234, 63, !dbg !1996
  br i1 %235, label %236, label %465, !dbg !1997

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1998
  %238 = load i8, ptr %237, align 1, !dbg !1998, !tbaa !867
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
  ], !dbg !1999

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2000

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1770, metadata !DIExpression()), !dbg !1912
  %241 = icmp ult i64 %140, %146, !dbg !2002
  br i1 %241, label %242, label %244, !dbg !2005

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2002
  store i8 63, ptr %243, align 1, !dbg !2002, !tbaa !867
  br label %244, !dbg !2002

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1755, metadata !DIExpression()), !dbg !1815
  %246 = icmp ult i64 %245, %146, !dbg !2006
  br i1 %246, label %247, label %249, !dbg !2009

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2006
  store i8 34, ptr %248, align 1, !dbg !2006, !tbaa !867
  br label %249, !dbg !2006

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1755, metadata !DIExpression()), !dbg !1815
  %251 = icmp ult i64 %250, %146, !dbg !2010
  br i1 %251, label %252, label %254, !dbg !2013

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2010
  store i8 34, ptr %253, align 1, !dbg !2010, !tbaa !867
  br label %254, !dbg !2010

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1755, metadata !DIExpression()), !dbg !1815
  %256 = icmp ult i64 %255, %146, !dbg !2014
  br i1 %256, label %257, label %259, !dbg !2017

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2014
  store i8 63, ptr %258, align 1, !dbg !2014, !tbaa !867
  br label %259, !dbg !2014

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1755, metadata !DIExpression()), !dbg !1815
  br label %465, !dbg !2018

261:                                              ; preds = %170
  br label %272, !dbg !2019

262:                                              ; preds = %170
  br label %272, !dbg !2020

263:                                              ; preds = %170
  br label %270, !dbg !2021

264:                                              ; preds = %170
  br label %270, !dbg !2022

265:                                              ; preds = %170
  br label %272, !dbg !2023

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2024

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2025

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2028

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2030

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2031
  call void @llvm.dbg.label(metadata !1778), !dbg !2032
  br i1 %133, label %272, label %655, !dbg !2033

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2031
  call void @llvm.dbg.label(metadata !1781), !dbg !2035
  br i1 %124, label %520, label %476, !dbg !2036

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2037

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2038, !tbaa !867
  %277 = icmp eq i8 %276, 0, !dbg !2040
  br i1 %277, label %278, label %465, !dbg !2041

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2042
  br i1 %279, label %280, label %465, !dbg !2044

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1922
  br label %281, !dbg !2045

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1776, metadata !DIExpression()), !dbg !1922
  br i1 %133, label %465, label %655, !dbg !2046

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1922
  br i1 %132, label %284, label %465, !dbg !2048

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2049

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2052
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2054
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2054
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1756, metadata !DIExpression()), !dbg !1815
  %291 = icmp ult i64 %140, %290, !dbg !2055
  br i1 %291, label %292, label %294, !dbg !2058

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2055
  store i8 39, ptr %293, align 1, !dbg !2055, !tbaa !867
  br label %294, !dbg !2055

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1755, metadata !DIExpression()), !dbg !1815
  %296 = icmp ult i64 %295, %290, !dbg !2059
  br i1 %296, label %297, label %299, !dbg !2062

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2059
  store i8 92, ptr %298, align 1, !dbg !2059, !tbaa !867
  br label %299, !dbg !2059

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1755, metadata !DIExpression()), !dbg !1815
  %301 = icmp ult i64 %300, %290, !dbg !2063
  br i1 %301, label %302, label %304, !dbg !2066

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2063
  store i8 39, ptr %303, align 1, !dbg !2063, !tbaa !867
  br label %304, !dbg !2063

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %465, !dbg !2067

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2068

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1782, metadata !DIExpression()), !dbg !2069
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2070
  %309 = load ptr, ptr %308, align 8, !dbg !2070, !tbaa !802
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2070
  %312 = load i16, ptr %311, align 2, !dbg !2070, !tbaa !899
  %313 = and i16 %312, 16384, !dbg !2072
  %314 = icmp ne i16 %313, 0, !dbg !2072
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1784, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2069
  br label %355, !dbg !2073

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %14, metadata !1845, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %14, metadata !1853, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 0, metadata !1856, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 8, metadata !1857, metadata !DIExpression()), !dbg !2077
  store i64 0, ptr %14, align 8, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !2069
  %316 = icmp eq i64 %171, -1, !dbg !2080
  br i1 %316, label %317, label %319, !dbg !2082

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1748, metadata !DIExpression()), !dbg !1815
  br label %319, !dbg !2084

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1748, metadata !DIExpression()), !dbg !1815
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2085
  %321 = sub i64 %320, %145, !dbg !2086
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2087
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1792, metadata !DIExpression()), !dbg !1814
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2088

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !2069
  %324 = icmp ult i64 %145, %320, !dbg !2089
  br i1 %324, label %326, label %351, !dbg !2091

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !2069
  br label %351, !dbg !2092

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1782, metadata !DIExpression()), !dbg !2069
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2094
  %330 = load i8, ptr %329, align 1, !dbg !2094, !tbaa !867
  %331 = icmp eq i8 %330, 0, !dbg !2091
  br i1 %331, label %351, label %332, !dbg !2095

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1782, metadata !DIExpression()), !dbg !2069
  %334 = add i64 %333, %145, !dbg !2097
  %335 = icmp eq i64 %333, %321, !dbg !2089
  br i1 %335, label %351, label %326, !dbg !2091, !llvm.loop !2098

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1793, metadata !DIExpression()), !dbg !2099
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2100
  %339 = and i1 %338, %132, !dbg !2100
  br i1 %339, label %340, label %347, !dbg !2100

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1793, metadata !DIExpression()), !dbg !2099
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2101
  %343 = load i8, ptr %342, align 1, !dbg !2101, !tbaa !867
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2103

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1793, metadata !DIExpression()), !dbg !2099
  %346 = icmp eq i64 %345, %322, !dbg !2105
  br i1 %346, label %347, label %340, !dbg !2106, !llvm.loop !2107

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2109, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %348, metadata !2111, metadata !DIExpression()), !dbg !2119
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2121
  %350 = icmp ne i32 %349, 0, !dbg !2122
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1782, metadata !DIExpression()), !dbg !2069
  br label %351, !dbg !2123

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1782, metadata !DIExpression()), !dbg !2069
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2125
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !2069
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2125
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1922
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2126
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2126
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1782, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1748, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1922
  %359 = icmp ult i64 %357, 2, !dbg !2127
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2128
  br i1 %361, label %461, label %362, !dbg !2128

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1801, metadata !DIExpression()), !dbg !2130
  br label %364, !dbg !2131

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1815
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1914
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1912
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1922
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2132
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1755, metadata !DIExpression()), !dbg !1815
  br i1 %360, label %417, label %371, !dbg !2133

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2138

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1922
  %373 = and i8 %366, 1, !dbg !2141
  %374 = icmp eq i8 %373, 0, !dbg !2141
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2141
  br i1 %375, label %376, label %392, !dbg !2141

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2143
  br i1 %377, label %378, label %380, !dbg !2147

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2143
  store i8 39, ptr %379, align 1, !dbg !2143, !tbaa !867
  br label %380, !dbg !2143

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2147
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1755, metadata !DIExpression()), !dbg !1815
  %382 = icmp ult i64 %381, %146, !dbg !2148
  br i1 %382, label %383, label %385, !dbg !2151

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2148
  store i8 36, ptr %384, align 1, !dbg !2148, !tbaa !867
  br label %385, !dbg !2148

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1755, metadata !DIExpression()), !dbg !1815
  %387 = icmp ult i64 %386, %146, !dbg !2152
  br i1 %387, label %388, label %390, !dbg !2155

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2152
  store i8 39, ptr %389, align 1, !dbg !2152, !tbaa !867
  br label %390, !dbg !2152

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %392, !dbg !2156

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1815
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1755, metadata !DIExpression()), !dbg !1815
  %395 = icmp ult i64 %393, %146, !dbg !2157
  br i1 %395, label %396, label %398, !dbg !2160

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2157
  store i8 92, ptr %397, align 1, !dbg !2157, !tbaa !867
  br label %398, !dbg !2157

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1755, metadata !DIExpression()), !dbg !1815
  %400 = icmp ult i64 %399, %146, !dbg !2161
  br i1 %400, label %401, label %405, !dbg !2164

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2161
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2161
  store i8 %403, ptr %404, align 1, !dbg !2161, !tbaa !867
  br label %405, !dbg !2161

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1755, metadata !DIExpression()), !dbg !1815
  %407 = icmp ult i64 %406, %146, !dbg !2165
  br i1 %407, label %408, label %413, !dbg !2168

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2165
  %411 = or disjoint i8 %410, 48, !dbg !2165
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2165
  store i8 %411, ptr %412, align 1, !dbg !2165, !tbaa !867
  br label %413, !dbg !2165

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1755, metadata !DIExpression()), !dbg !1815
  %415 = and i8 %370, 7, !dbg !2169
  %416 = or disjoint i8 %415, 48, !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1777, metadata !DIExpression()), !dbg !1922
  br label %426, !dbg !2171

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2172
  %419 = icmp eq i8 %418, 0, !dbg !2172
  br i1 %419, label %426, label %420, !dbg !2174

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2175
  br i1 %421, label %422, label %424, !dbg !2179

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2175
  store i8 92, ptr %423, align 1, !dbg !2175, !tbaa !867
  br label %424, !dbg !2175

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1922
  br label %426, !dbg !2180

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1815
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1914
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1922
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1922
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1755, metadata !DIExpression()), !dbg !1815
  %432 = add i64 %367, 1, !dbg !2181
  %433 = icmp ugt i64 %363, %432, !dbg !2183
  br i1 %433, label %434, label %463, !dbg !2184

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2185
  %436 = icmp ne i8 %435, 0, !dbg !2185
  %437 = and i8 %430, 1, !dbg !2185
  %438 = icmp eq i8 %437, 0, !dbg !2185
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2185
  br i1 %439, label %440, label %451, !dbg !2185

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2188
  br i1 %441, label %442, label %444, !dbg !2192

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2188
  store i8 39, ptr %443, align 1, !dbg !2188, !tbaa !867
  br label %444, !dbg !2188

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1755, metadata !DIExpression()), !dbg !1815
  %446 = icmp ult i64 %445, %146, !dbg !2193
  br i1 %446, label %447, label %449, !dbg !2196

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2193
  store i8 39, ptr %448, align 1, !dbg !2193, !tbaa !867
  br label %449, !dbg !2193

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %451, !dbg !2197

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2198
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1755, metadata !DIExpression()), !dbg !1815
  %454 = icmp ult i64 %452, %146, !dbg !2199
  br i1 %454, label %455, label %457, !dbg !2202

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2199
  store i8 %431, ptr %456, align 1, !dbg !2199, !tbaa !867
  br label %457, !dbg !2199

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1770, metadata !DIExpression()), !dbg !1912
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2203
  %460 = load i8, ptr %459, align 1, !dbg !2203, !tbaa !867
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1777, metadata !DIExpression()), !dbg !1922
  br label %364, !dbg !2204, !llvm.loop !2205

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1748, metadata !DIExpression()), !dbg !1815
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1748, metadata !DIExpression()), !dbg !1815
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2208
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1815
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1820
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1815
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1815
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1912
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1922
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1922
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1922
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1772, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1748, metadata !DIExpression()), !dbg !1815
  br i1 %126, label %487, label %476, !dbg !2209

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
  br i1 %137, label %488, label %509, !dbg !2211

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2212

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
  %499 = lshr i8 %490, 5, !dbg !2213
  %500 = zext nneg i8 %499 to i64, !dbg !2213
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2214
  %502 = load i32, ptr %501, align 4, !dbg !2214, !tbaa !858
  %503 = and i8 %490, 31, !dbg !2215
  %504 = zext nneg i8 %503 to i32, !dbg !2215
  %505 = shl nuw i32 1, %504, !dbg !2216
  %506 = and i32 %502, %505, !dbg !2216
  %507 = icmp eq i32 %506, 0, !dbg !2216
  %508 = and i1 %172, %507, !dbg !2217
  br i1 %508, label %558, label %520, !dbg !2217

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
  br i1 %172, label %558, label %520, !dbg !2218

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2208
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1815
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1820
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1824
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1914
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2219
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1922
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1922
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1748, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.label(metadata !1804), !dbg !2220
  br i1 %131, label %530, label %659, !dbg !2221

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1922
  %531 = and i8 %525, 1, !dbg !2223
  %532 = icmp eq i8 %531, 0, !dbg !2223
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2223
  br i1 %533, label %534, label %550, !dbg !2223

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2225
  br i1 %535, label %536, label %538, !dbg !2229

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2225
  store i8 39, ptr %537, align 1, !dbg !2225, !tbaa !867
  br label %538, !dbg !2225

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1755, metadata !DIExpression()), !dbg !1815
  %540 = icmp ult i64 %539, %529, !dbg !2230
  br i1 %540, label %541, label %543, !dbg !2233

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2230
  store i8 36, ptr %542, align 1, !dbg !2230, !tbaa !867
  br label %543, !dbg !2230

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1755, metadata !DIExpression()), !dbg !1815
  %545 = icmp ult i64 %544, %529, !dbg !2234
  br i1 %545, label %546, label %548, !dbg !2237

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2234
  store i8 39, ptr %547, align 1, !dbg !2234, !tbaa !867
  br label %548, !dbg !2234

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %550, !dbg !2238

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1922
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1755, metadata !DIExpression()), !dbg !1815
  %553 = icmp ult i64 %551, %529, !dbg !2239
  br i1 %553, label %554, label %556, !dbg !2242

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2239
  store i8 92, ptr %555, align 1, !dbg !2239, !tbaa !867
  br label %556, !dbg !2239

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1748, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.label(metadata !1805), !dbg !2243
  br label %585, !dbg !2244

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2208
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1815
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1820
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1824
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1914
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2219
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1922
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1922
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2247
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1777, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1776, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1775, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1748, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.label(metadata !1805), !dbg !2243
  %569 = and i8 %563, 1, !dbg !2244
  %570 = icmp ne i8 %569, 0, !dbg !2244
  %571 = and i8 %565, 1, !dbg !2244
  %572 = icmp eq i8 %571, 0, !dbg !2244
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2244
  br i1 %573, label %574, label %585, !dbg !2244

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2248
  br i1 %575, label %576, label %578, !dbg !2252

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2248
  store i8 39, ptr %577, align 1, !dbg !2248, !tbaa !867
  br label %578, !dbg !2248

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2252
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1755, metadata !DIExpression()), !dbg !1815
  %580 = icmp ult i64 %579, %568, !dbg !2253
  br i1 %580, label %581, label %583, !dbg !2256

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2253
  store i8 39, ptr %582, align 1, !dbg !2253, !tbaa !867
  br label %583, !dbg !2253

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1815
  br label %585, !dbg !2257

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1922
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1755, metadata !DIExpression()), !dbg !1815
  %595 = icmp ult i64 %593, %586, !dbg !2258
  br i1 %595, label %596, label %598, !dbg !2261

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2258
  store i8 %587, ptr %597, align 1, !dbg !2258, !tbaa !867
  br label %598, !dbg !2258

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1755, metadata !DIExpression()), !dbg !1815
  %600 = icmp eq i8 %588, 0, !dbg !2262
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2264
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1762, metadata !DIExpression()), !dbg !1815
  br label %602, !dbg !2265

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2208
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1815
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1820
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1824
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1825
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1914
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2219
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1770, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1764, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1762, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1748, metadata !DIExpression()), !dbg !1815
  %611 = add i64 %609, 1, !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1770, metadata !DIExpression()), !dbg !1912
  br label %138, !dbg !2267, !llvm.loop !2268

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1746, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1762, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1761, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1756, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1755, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1748, metadata !DIExpression()), !dbg !1815
  %613 = icmp eq i64 %140, 0, !dbg !2270
  %614 = and i1 %132, %613, !dbg !2272
  %615 = xor i1 %614, true, !dbg !2272
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2272
  br i1 %616, label %617, label %655, !dbg !2272

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2273
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2273
  br i1 %621, label %622, label %631, !dbg !2273

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2275
  %624 = icmp eq i8 %623, 0, !dbg !2275
  br i1 %624, label %627, label %625, !dbg !2278

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2279
  br label %672, !dbg !2280

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2281
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2283
  br i1 %630, label %28, label %631, !dbg !2283

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2284
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2286
  br i1 %634, label %635, label %650, !dbg !2286

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1757, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1755, metadata !DIExpression()), !dbg !1815
  %636 = load i8, ptr %119, align 1, !dbg !2287, !tbaa !867
  %637 = icmp eq i8 %636, 0, !dbg !2290
  br i1 %637, label %650, label %638, !dbg !2290

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1757, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1755, metadata !DIExpression()), !dbg !1815
  %642 = icmp ult i64 %641, %146, !dbg !2291
  br i1 %642, label %643, label %645, !dbg !2294

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2291
  store i8 %639, ptr %644, align 1, !dbg !2291, !tbaa !867
  br label %645, !dbg !2291

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1755, metadata !DIExpression()), !dbg !1815
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2295
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1757, metadata !DIExpression()), !dbg !1815
  %648 = load i8, ptr %647, align 1, !dbg !2287, !tbaa !867
  %649 = icmp eq i8 %648, 0, !dbg !2290
  br i1 %649, label %650, label %638, !dbg !2290, !llvm.loop !2296

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1755, metadata !DIExpression()), !dbg !1815
  %652 = icmp ult i64 %651, %146, !dbg !2298
  br i1 %652, label %653, label %672, !dbg !2300

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2301
  store i8 0, ptr %654, align 1, !dbg !2302, !tbaa !867
  br label %672, !dbg !2301

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1806), !dbg !2303
  %657 = icmp eq i8 %123, 0, !dbg !2304
  %658 = select i1 %657, i32 2, i32 4, !dbg !2304
  br label %666, !dbg !2304

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1806), !dbg !2303
  %662 = icmp eq i32 %115, 2, !dbg !2306
  %663 = icmp eq i8 %123, 0, !dbg !2304
  %664 = select i1 %663, i32 2, i32 4, !dbg !2304
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2304
  br label %666, !dbg !2304

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1749, metadata !DIExpression()), !dbg !1815
  %670 = and i32 %5, -3, !dbg !2307
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2308
  br label %672, !dbg !2309

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2310
}

; Function Attrs: nounwind
declare !dbg !2311 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2314 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2317 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2319 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2323, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr %0, metadata !2327, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %1, metadata !2332, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr null, metadata !2333, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %2, metadata !2334, metadata !DIExpression()), !dbg !2340
  %4 = icmp eq ptr %2, null, !dbg !2342
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2342
  call void @llvm.dbg.value(metadata ptr %5, metadata !2335, metadata !DIExpression()), !dbg !2340
  %6 = tail call ptr @__errno_location() #42, !dbg !2343
  %7 = load i32, ptr %6, align 4, !dbg !2343, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %7, metadata !2336, metadata !DIExpression()), !dbg !2340
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2344
  %9 = load i32, ptr %8, align 4, !dbg !2344, !tbaa !1689
  %10 = or i32 %9, 1, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %10, metadata !2337, metadata !DIExpression()), !dbg !2340
  %11 = load i32, ptr %5, align 8, !dbg !2346, !tbaa !1639
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2347
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2348
  %14 = load ptr, ptr %13, align 8, !dbg !2348, !tbaa !1710
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2349
  %16 = load ptr, ptr %15, align 8, !dbg !2349, !tbaa !1713
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2350
  %18 = add i64 %17, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %18, metadata !2338, metadata !DIExpression()), !dbg !2340
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %19, metadata !2339, metadata !DIExpression()), !dbg !2340
  %20 = load i32, ptr %5, align 8, !dbg !2353, !tbaa !1639
  %21 = load ptr, ptr %13, align 8, !dbg !2354, !tbaa !1710
  %22 = load ptr, ptr %15, align 8, !dbg !2355, !tbaa !1713
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2356
  store i32 %7, ptr %6, align 4, !dbg !2357, !tbaa !858
  ret ptr %19, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2328 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2327, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2332, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2333, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2334, metadata !DIExpression()), !dbg !2359
  %5 = icmp eq ptr %3, null, !dbg !2360
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2360
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2335, metadata !DIExpression()), !dbg !2359
  %7 = tail call ptr @__errno_location() #42, !dbg !2361
  %8 = load i32, ptr %7, align 4, !dbg !2361, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2336, metadata !DIExpression()), !dbg !2359
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2362
  %10 = load i32, ptr %9, align 4, !dbg !2362, !tbaa !1689
  %11 = icmp eq ptr %2, null, !dbg !2363
  %12 = zext i1 %11 to i32, !dbg !2363
  %13 = or i32 %10, %12, !dbg !2364
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2337, metadata !DIExpression()), !dbg !2359
  %14 = load i32, ptr %6, align 8, !dbg !2365, !tbaa !1639
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2366
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2367
  %17 = load ptr, ptr %16, align 8, !dbg !2367, !tbaa !1710
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2368
  %19 = load ptr, ptr %18, align 8, !dbg !2368, !tbaa !1713
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2369
  %21 = add i64 %20, 1, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2338, metadata !DIExpression()), !dbg !2359
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2371
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2339, metadata !DIExpression()), !dbg !2359
  %23 = load i32, ptr %6, align 8, !dbg !2372, !tbaa !1639
  %24 = load ptr, ptr %16, align 8, !dbg !2373, !tbaa !1710
  %25 = load ptr, ptr %18, align 8, !dbg !2374, !tbaa !1713
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2375
  store i32 %8, ptr %7, align 4, !dbg !2376, !tbaa !858
  br i1 %11, label %28, label %27, !dbg !2377

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2378, !tbaa !2380
  br label %28, !dbg !2381

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2382
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2383 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2388, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2385, metadata !DIExpression()), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()), !dbg !2390
  %2 = load i32, ptr @nslots, align 4, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()), !dbg !2390
  %3 = icmp sgt i32 %2, 1, !dbg !2391
  br i1 %3, label %4, label %6, !dbg !2393

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2391
  br label %10, !dbg !2393

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2394
  %8 = load ptr, ptr %7, align 8, !dbg !2394, !tbaa !2396
  %9 = icmp eq ptr %8, @slot0, !dbg !2398
  br i1 %9, label %17, label %16, !dbg !2399

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2386, metadata !DIExpression()), !dbg !2390
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2400
  %13 = load ptr, ptr %12, align 8, !dbg !2400, !tbaa !2396
  tail call void @free(ptr noundef %13) #39, !dbg !2401
  %14 = add nuw nsw i64 %11, 1, !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2386, metadata !DIExpression()), !dbg !2390
  %15 = icmp eq i64 %14, %5, !dbg !2391
  br i1 %15, label %6, label %10, !dbg !2393, !llvm.loop !2403

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2405
  store i64 256, ptr @slotvec0, align 8, !dbg !2407, !tbaa !2408
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2409, !tbaa !2396
  br label %17, !dbg !2410

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2411
  br i1 %18, label %20, label %19, !dbg !2413

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2414
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2416, !tbaa !802
  br label %20, !dbg !2417

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2418, !tbaa !858
  ret void, !dbg !2419
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2420 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2423 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2427
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2426, metadata !DIExpression()), !dbg !2427
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2428
  ret ptr %3, !dbg !2429
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2430 {
  %5 = alloca i64, align 8, !DIAssignID !2450
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2444, metadata !DIExpression(), metadata !2450, metadata ptr %5, metadata !DIExpression()), !dbg !2451
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2435, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2436, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2437, metadata !DIExpression()), !dbg !2452
  %6 = tail call ptr @__errno_location() #42, !dbg !2453
  %7 = load i32, ptr %6, align 4, !dbg !2453, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2438, metadata !DIExpression()), !dbg !2452
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2454, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2439, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2440, metadata !DIExpression()), !dbg !2452
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2455
  br i1 %9, label %10, label %11, !dbg !2455

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2457
  unreachable, !dbg !2457

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2458, !tbaa !858
  %13 = icmp sgt i32 %12, %0, !dbg !2459
  br i1 %13, label %32, label %14, !dbg !2460

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2461
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2441, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2451
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2462
  %16 = sext i32 %12 to i64, !dbg !2463
  store i64 %16, ptr %5, align 8, !dbg !2464, !tbaa !2380, !DIAssignID !2465
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2444, metadata !DIExpression(), metadata !2465, metadata ptr %5, metadata !DIExpression()), !dbg !2451
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2466
  %18 = add nuw nsw i32 %0, 1, !dbg !2467
  %19 = sub i32 %18, %12, !dbg !2468
  %20 = sext i32 %19 to i64, !dbg !2469
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2470
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2439, metadata !DIExpression()), !dbg !2452
  store ptr %21, ptr @slotvec, align 8, !dbg !2471, !tbaa !802
  br i1 %15, label %22, label %23, !dbg !2472

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2473, !tbaa.struct !2475
  br label %23, !dbg !2476

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2477, !tbaa !858
  %25 = sext i32 %24 to i64, !dbg !2478
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2478
  %27 = load i64, ptr %5, align 8, !dbg !2479, !tbaa !2380
  %28 = sub nsw i64 %27, %25, !dbg !2480
  %29 = shl i64 %28, 4, !dbg !2481
  call void @llvm.dbg.value(metadata ptr %26, metadata !1853, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 0, metadata !1856, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %29, metadata !1857, metadata !DIExpression()), !dbg !2482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2484
  %30 = load i64, ptr %5, align 8, !dbg !2485, !tbaa !2380
  %31 = trunc i64 %30 to i32, !dbg !2485
  store i32 %31, ptr @nslots, align 4, !dbg !2486, !tbaa !858
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2487
  br label %32, !dbg !2488

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2439, metadata !DIExpression()), !dbg !2452
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2489
  %36 = load i64, ptr %35, align 8, !dbg !2490, !tbaa !2408
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2445, metadata !DIExpression()), !dbg !2491
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2492
  %38 = load ptr, ptr %37, align 8, !dbg !2492, !tbaa !2396
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2447, metadata !DIExpression()), !dbg !2491
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2493
  %40 = load i32, ptr %39, align 4, !dbg !2493, !tbaa !1689
  %41 = or i32 %40, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2448, metadata !DIExpression()), !dbg !2491
  %42 = load i32, ptr %3, align 8, !dbg !2495, !tbaa !1639
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2496
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2497
  %45 = load ptr, ptr %44, align 8, !dbg !2497, !tbaa !1710
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2498
  %47 = load ptr, ptr %46, align 8, !dbg !2498, !tbaa !1713
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2449, metadata !DIExpression()), !dbg !2491
  %49 = icmp ugt i64 %36, %48, !dbg !2500
  br i1 %49, label %60, label %50, !dbg !2502

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2445, metadata !DIExpression()), !dbg !2491
  store i64 %51, ptr %35, align 8, !dbg !2505, !tbaa !2408
  %52 = icmp eq ptr %38, @slot0, !dbg !2506
  br i1 %52, label %54, label %53, !dbg !2508

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2509
  br label %54, !dbg !2509

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2510
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2447, metadata !DIExpression()), !dbg !2491
  store ptr %55, ptr %37, align 8, !dbg !2511, !tbaa !2396
  %56 = load i32, ptr %3, align 8, !dbg !2512, !tbaa !1639
  %57 = load ptr, ptr %44, align 8, !dbg !2513, !tbaa !1710
  %58 = load ptr, ptr %46, align 8, !dbg !2514, !tbaa !1713
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2515
  br label %60, !dbg !2516

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2491
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2447, metadata !DIExpression()), !dbg !2491
  store i32 %7, ptr %6, align 4, !dbg !2517, !tbaa !858
  ret ptr %61, !dbg !2518
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2519 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2524, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2525, metadata !DIExpression()), !dbg !2526
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2527
  ret ptr %4, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %0, metadata !2426, metadata !DIExpression()), !dbg !2533
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2535
  ret ptr %2, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2537 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2525, metadata !DIExpression()), !dbg !2544
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2546
  ret ptr %3, !dbg !2547
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2548 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2555, metadata !DIExpression(), metadata !2556, metadata ptr %4, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2553, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2571, !alias.scope !2559, !DIAssignID !2572
  call void @llvm.dbg.assign(metadata i8 0, metadata !2555, metadata !DIExpression(), metadata !2572, metadata ptr %4, metadata !DIExpression()), !dbg !2557
  %5 = icmp eq i32 %1, 10, !dbg !2573
  br i1 %5, label %6, label %7, !dbg !2575

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2576, !noalias !2559
  unreachable, !dbg !2576

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2577, !tbaa !1639, !alias.scope !2559, !DIAssignID !2578
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2555, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2578, metadata ptr %4, metadata !DIExpression()), !dbg !2557
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2579
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2580
  ret ptr %8, !dbg !2581
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2582 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2590, metadata !DIExpression(), metadata !2591, metadata ptr %5, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2588, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2568, metadata !DIExpression()), !dbg !2600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2600, !alias.scope !2594, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i8 0, metadata !2590, metadata !DIExpression(), metadata !2601, metadata ptr %5, metadata !DIExpression()), !dbg !2592
  %6 = icmp eq i32 %1, 10, !dbg !2602
  br i1 %6, label %7, label %8, !dbg !2603

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2604, !noalias !2594
  unreachable, !dbg !2604

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2605, !tbaa !1639, !alias.scope !2594, !DIAssignID !2606
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2606, metadata ptr %5, metadata !DIExpression()), !dbg !2592
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2607
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2608
  ret ptr %9, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2610 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2616
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2614, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2555, metadata !DIExpression(), metadata !2616, metadata ptr %3, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 %0, metadata !2553, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %1, metadata !2554, metadata !DIExpression()), !dbg !2618
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2568, metadata !DIExpression()), !dbg !2627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2627, !alias.scope !2621, !DIAssignID !2628
  call void @llvm.dbg.assign(metadata i8 0, metadata !2555, metadata !DIExpression(), metadata !2628, metadata ptr %3, metadata !DIExpression()), !dbg !2618
  %4 = icmp eq i32 %0, 10, !dbg !2629
  br i1 %4, label %5, label %6, !dbg !2630

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2631, !noalias !2621
  unreachable, !dbg !2631

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2632, !tbaa !1639, !alias.scope !2621, !DIAssignID !2633
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2555, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2633, metadata ptr %3, metadata !DIExpression()), !dbg !2618
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2634
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2635
  ret ptr %7, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2637 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2644
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2641, metadata !DIExpression()), !dbg !2645
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2642, metadata !DIExpression()), !dbg !2645
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2590, metadata !DIExpression(), metadata !2644, metadata ptr %4, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2588, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %2, metadata !2589, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2568, metadata !DIExpression()), !dbg !2655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2655, !alias.scope !2649, !DIAssignID !2656
  call void @llvm.dbg.assign(metadata i8 0, metadata !2590, metadata !DIExpression(), metadata !2656, metadata ptr %4, metadata !DIExpression()), !dbg !2646
  %5 = icmp eq i32 %0, 10, !dbg !2657
  br i1 %5, label %6, label %7, !dbg !2658

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2659, !noalias !2649
  unreachable, !dbg !2659

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2660, !tbaa !1639, !alias.scope !2649, !DIAssignID !2661
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2661, metadata ptr %4, metadata !DIExpression()), !dbg !2646
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2663
  ret ptr %8, !dbg !2664
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2665 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2673, metadata ptr %4, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2676, !tbaa.struct !2677, !DIAssignID !2678
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2678, metadata ptr %4, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1657, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1659, metadata !DIExpression()), !dbg !2679
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2681
  %6 = lshr i8 %2, 5, !dbg !2682
  %7 = zext nneg i8 %6 to i64, !dbg !2682
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2683
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1660, metadata !DIExpression()), !dbg !2679
  %9 = and i8 %2, 31, !dbg !2684
  %10 = zext nneg i8 %9 to i32, !dbg !2684
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1662, metadata !DIExpression()), !dbg !2679
  %11 = load i32, ptr %8, align 4, !dbg !2685, !tbaa !858
  %12 = lshr i32 %11, %10, !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1663, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2679
  %13 = and i32 %12, 1, !dbg !2687
  %14 = xor i32 %13, 1, !dbg !2687
  %15 = shl nuw i32 %14, %10, !dbg !2688
  %16 = xor i32 %15, %11, !dbg !2689
  store i32 %16, ptr %8, align 4, !dbg !2689, !tbaa !858
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2691
  ret ptr %17, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2693 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2699
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2697, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2699, metadata ptr %3, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 -1, metadata !2670, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %1, metadata !2671, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2704, !tbaa.struct !2677, !DIAssignID !2705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2705, metadata ptr %3, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !2706
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2708
  %5 = lshr i8 %1, 5, !dbg !2709
  %6 = zext nneg i8 %5 to i64, !dbg !2709
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %7, metadata !1660, metadata !DIExpression()), !dbg !2706
  %8 = and i8 %1, 31, !dbg !2711
  %9 = zext nneg i8 %8 to i32, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %9, metadata !1662, metadata !DIExpression()), !dbg !2706
  %10 = load i32, ptr %7, align 4, !dbg !2712, !tbaa !858
  %11 = lshr i32 %10, %9, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %11, metadata !1663, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2706
  %12 = and i32 %11, 1, !dbg !2714
  %13 = xor i32 %12, 1, !dbg !2714
  %14 = shl nuw i32 %13, %9, !dbg !2715
  %15 = xor i32 %14, %10, !dbg !2716
  store i32 %15, ptr %7, align 4, !dbg !2716, !tbaa !858
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2717
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2718
  ret ptr %16, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2720 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2723
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %0, metadata !2697, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 58, metadata !2698, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2723, metadata ptr %2, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 -1, metadata !2670, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2730, !tbaa.struct !2677, !DIAssignID !2731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2731, metadata ptr %2, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %2, metadata !1656, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2732
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %3, metadata !1660, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2732
  %4 = load i32, ptr %3, align 4, !dbg !2735, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %4, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2732
  %5 = or i32 %4, 67108864, !dbg !2736
  store i32 %5, ptr %3, align 4, !dbg !2736, !tbaa !858
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2737
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2738
  ret ptr %6, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2740 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2744
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2742, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2744, metadata ptr %3, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()), !dbg !2746
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2749, !tbaa.struct !2677, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2750, metadata ptr %3, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2751
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2753
  call void @llvm.dbg.value(metadata ptr %4, metadata !1660, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2751
  %5 = load i32, ptr %4, align 4, !dbg !2754, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %5, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2751
  %6 = or i32 %5, 67108864, !dbg !2755
  store i32 %6, ptr %4, align 4, !dbg !2755, !tbaa !858
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2756
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2757
  ret ptr %7, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2759 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2764, metadata !DIExpression(), metadata !2765, metadata ptr %4, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2568, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2770
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2770
  %5 = icmp eq i32 %1, 10, !dbg !2771
  br i1 %5, label %6, label %7, !dbg !2772

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2773, !noalias !2774
  unreachable, !dbg !2773

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2568, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2770
  store i32 %1, ptr %4, align 8, !dbg !2777, !tbaa.struct !2677, !DIAssignID !2778
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2777
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2764, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2778, metadata ptr %4, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2764, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2779, metadata ptr %8, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2780
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1660, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2780
  %10 = load i32, ptr %9, align 4, !dbg !2783, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2780
  %11 = or i32 %10, 67108864, !dbg !2784
  store i32 %11, ptr %9, align 4, !dbg !2784, !tbaa !858, !DIAssignID !2785
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2764, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2785, metadata ptr %9, metadata !DIExpression()), !dbg !2766
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2786
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2787
  ret ptr %12, !dbg !2788
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2789 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2797
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2794, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2795, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2796, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2797, metadata ptr %5, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 %0, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 -1, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2812, !tbaa.struct !2677, !DIAssignID !2813
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2813, metadata ptr %5, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2814, metadata ptr undef, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2815
  store i32 10, ptr %5, align 8, !dbg !2817, !tbaa !1639, !DIAssignID !2818
  call void @llvm.dbg.assign(metadata i32 10, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2818, metadata ptr %5, metadata !DIExpression()), !dbg !2809
  %6 = icmp ne ptr %1, null, !dbg !2819
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2820
  br i1 %8, label %10, label %9, !dbg !2820

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2821
  unreachable, !dbg !2821

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2822
  store ptr %1, ptr %11, align 8, !dbg !2823, !tbaa !1710, !DIAssignID !2824
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2824, metadata ptr %11, metadata !DIExpression()), !dbg !2809
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2825
  store ptr %2, ptr %12, align 8, !dbg !2826, !tbaa !1713, !DIAssignID !2827
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2827, metadata ptr %12, metadata !DIExpression()), !dbg !2809
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2829
  ret ptr %13, !dbg !2830
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2800 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2831
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2831, metadata ptr %6, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2804, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2808, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2834, !tbaa.struct !2677, !DIAssignID !2835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2835, metadata ptr %6, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2836, metadata ptr undef, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !2837
  store i32 10, ptr %6, align 8, !dbg !2839, !tbaa !1639, !DIAssignID !2840
  call void @llvm.dbg.assign(metadata i32 10, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2840, metadata ptr %6, metadata !DIExpression()), !dbg !2832
  %7 = icmp ne ptr %1, null, !dbg !2841
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2842
  br i1 %9, label %11, label %10, !dbg !2842

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2843
  unreachable, !dbg !2843

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2844
  store ptr %1, ptr %12, align 8, !dbg !2845, !tbaa !1710, !DIAssignID !2846
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2846, metadata ptr %12, metadata !DIExpression()), !dbg !2832
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2847
  store ptr %2, ptr %13, align 8, !dbg !2848, !tbaa !1713, !DIAssignID !2849
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2849, metadata ptr %13, metadata !DIExpression()), !dbg !2832
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2851
  ret ptr %14, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2853 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2860
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2857, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2858, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2793, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %1, metadata !2795, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %2, metadata !2796, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2860, metadata ptr %4, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2804, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %1, metadata !2806, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %2, metadata !2807, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 -1, metadata !2808, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2867, !tbaa.struct !2677, !DIAssignID !2868
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2868, metadata ptr %4, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2869, metadata ptr undef, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %0, metadata !1697, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2870
  store i32 10, ptr %4, align 8, !dbg !2872, !tbaa !1639, !DIAssignID !2873
  call void @llvm.dbg.assign(metadata i32 10, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2873, metadata ptr %4, metadata !DIExpression()), !dbg !2864
  %5 = icmp ne ptr %0, null, !dbg !2874
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2875
  br i1 %7, label %9, label %8, !dbg !2875

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2876
  unreachable, !dbg !2876

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2877
  store ptr %0, ptr %10, align 8, !dbg !2878, !tbaa !1710, !DIAssignID !2879
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2879, metadata ptr %10, metadata !DIExpression()), !dbg !2864
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2880
  store ptr %1, ptr %11, align 8, !dbg !2881, !tbaa !1713, !DIAssignID !2882
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2882, metadata ptr %11, metadata !DIExpression()), !dbg !2864
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2883
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2884
  ret ptr %12, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2886 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2894
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2891, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2892, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2894, metadata ptr %5, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 0, metadata !2804, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %1, metadata !2806, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %2, metadata !2807, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %3, metadata !2808, metadata !DIExpression()), !dbg !2896
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2899, !tbaa.struct !2677, !DIAssignID !2900
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(), metadata !2900, metadata ptr %5, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2901, metadata ptr undef, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %0, metadata !1697, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2902
  store i32 10, ptr %5, align 8, !dbg !2904, !tbaa !1639, !DIAssignID !2905
  call void @llvm.dbg.assign(metadata i32 10, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2905, metadata ptr %5, metadata !DIExpression()), !dbg !2896
  %6 = icmp ne ptr %0, null, !dbg !2906
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2907
  br i1 %8, label %10, label %9, !dbg !2907

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2908
  unreachable, !dbg !2908

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2909
  store ptr %0, ptr %11, align 8, !dbg !2910, !tbaa !1710, !DIAssignID !2911
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2911, metadata ptr %11, metadata !DIExpression()), !dbg !2896
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2912
  store ptr %1, ptr %12, align 8, !dbg !2913, !tbaa !1713, !DIAssignID !2914
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2799, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2914, metadata ptr %12, metadata !DIExpression()), !dbg !2896
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2915
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2916
  ret ptr %13, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2918 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2922, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2924, metadata !DIExpression()), !dbg !2925
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2926
  ret ptr %4, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2935
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2937
  ret ptr %3, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()), !dbg !2945
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %0, metadata !2922, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 -1, metadata !2924, metadata !DIExpression()), !dbg !2946
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2948
  ret ptr %3, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2943, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 -1, metadata !2924, metadata !DIExpression()), !dbg !2958
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2960
  ret ptr %2, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3001, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3002, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3003, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3004, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3005, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3006, metadata !DIExpression()), !dbg !3007
  %7 = icmp eq ptr %1, null, !dbg !3008
  br i1 %7, label %10, label %8, !dbg !3010

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3011
  br label %12, !dbg !3011

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #39, !dbg !3012
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #39, !dbg !3013
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3013
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !3014
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #39, !dbg !3015
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #39, !dbg !3015
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !3016
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
  ], !dbg !3017

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #39, !dbg !3018
  %21 = load ptr, ptr %4, align 8, !dbg !3018, !tbaa !802
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3018
  br label %147, !dbg !3020

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #39, !dbg !3021
  %25 = load ptr, ptr %4, align 8, !dbg !3021, !tbaa !802
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3021
  %27 = load ptr, ptr %26, align 8, !dbg !3021, !tbaa !802
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3021
  br label %147, !dbg !3022

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #39, !dbg !3023
  %31 = load ptr, ptr %4, align 8, !dbg !3023, !tbaa !802
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3023
  %33 = load ptr, ptr %32, align 8, !dbg !3023, !tbaa !802
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3023
  %35 = load ptr, ptr %34, align 8, !dbg !3023, !tbaa !802
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3023
  br label %147, !dbg !3024

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #39, !dbg !3025
  %39 = load ptr, ptr %4, align 8, !dbg !3025, !tbaa !802
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3025
  %41 = load ptr, ptr %40, align 8, !dbg !3025, !tbaa !802
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3025
  %43 = load ptr, ptr %42, align 8, !dbg !3025, !tbaa !802
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3025
  %45 = load ptr, ptr %44, align 8, !dbg !3025, !tbaa !802
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3025
  br label %147, !dbg !3026

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #39, !dbg !3027
  %49 = load ptr, ptr %4, align 8, !dbg !3027, !tbaa !802
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3027
  %51 = load ptr, ptr %50, align 8, !dbg !3027, !tbaa !802
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3027
  %53 = load ptr, ptr %52, align 8, !dbg !3027, !tbaa !802
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3027
  %55 = load ptr, ptr %54, align 8, !dbg !3027, !tbaa !802
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3027
  %57 = load ptr, ptr %56, align 8, !dbg !3027, !tbaa !802
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3027
  br label %147, !dbg !3028

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #39, !dbg !3029
  %61 = load ptr, ptr %4, align 8, !dbg !3029, !tbaa !802
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3029
  %63 = load ptr, ptr %62, align 8, !dbg !3029, !tbaa !802
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3029
  %65 = load ptr, ptr %64, align 8, !dbg !3029, !tbaa !802
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3029
  %67 = load ptr, ptr %66, align 8, !dbg !3029, !tbaa !802
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3029
  %69 = load ptr, ptr %68, align 8, !dbg !3029, !tbaa !802
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3029
  %71 = load ptr, ptr %70, align 8, !dbg !3029, !tbaa !802
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3029
  br label %147, !dbg !3030

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #39, !dbg !3031
  %75 = load ptr, ptr %4, align 8, !dbg !3031, !tbaa !802
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3031
  %77 = load ptr, ptr %76, align 8, !dbg !3031, !tbaa !802
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3031
  %79 = load ptr, ptr %78, align 8, !dbg !3031, !tbaa !802
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3031
  %81 = load ptr, ptr %80, align 8, !dbg !3031, !tbaa !802
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3031
  %83 = load ptr, ptr %82, align 8, !dbg !3031, !tbaa !802
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3031
  %85 = load ptr, ptr %84, align 8, !dbg !3031, !tbaa !802
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3031
  %87 = load ptr, ptr %86, align 8, !dbg !3031, !tbaa !802
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3031
  br label %147, !dbg !3032

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #39, !dbg !3033
  %91 = load ptr, ptr %4, align 8, !dbg !3033, !tbaa !802
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3033
  %93 = load ptr, ptr %92, align 8, !dbg !3033, !tbaa !802
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3033
  %95 = load ptr, ptr %94, align 8, !dbg !3033, !tbaa !802
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3033
  %97 = load ptr, ptr %96, align 8, !dbg !3033, !tbaa !802
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3033
  %99 = load ptr, ptr %98, align 8, !dbg !3033, !tbaa !802
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3033
  %101 = load ptr, ptr %100, align 8, !dbg !3033, !tbaa !802
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3033
  %103 = load ptr, ptr %102, align 8, !dbg !3033, !tbaa !802
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3033
  %105 = load ptr, ptr %104, align 8, !dbg !3033, !tbaa !802
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3033
  br label %147, !dbg !3034

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #39, !dbg !3035
  %109 = load ptr, ptr %4, align 8, !dbg !3035, !tbaa !802
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3035
  %111 = load ptr, ptr %110, align 8, !dbg !3035, !tbaa !802
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3035
  %113 = load ptr, ptr %112, align 8, !dbg !3035, !tbaa !802
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3035
  %115 = load ptr, ptr %114, align 8, !dbg !3035, !tbaa !802
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3035
  %117 = load ptr, ptr %116, align 8, !dbg !3035, !tbaa !802
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3035
  %119 = load ptr, ptr %118, align 8, !dbg !3035, !tbaa !802
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3035
  %121 = load ptr, ptr %120, align 8, !dbg !3035, !tbaa !802
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3035
  %123 = load ptr, ptr %122, align 8, !dbg !3035, !tbaa !802
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3035
  %125 = load ptr, ptr %124, align 8, !dbg !3035, !tbaa !802
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3035
  br label %147, !dbg !3036

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #39, !dbg !3037
  %129 = load ptr, ptr %4, align 8, !dbg !3037, !tbaa !802
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3037
  %131 = load ptr, ptr %130, align 8, !dbg !3037, !tbaa !802
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3037
  %133 = load ptr, ptr %132, align 8, !dbg !3037, !tbaa !802
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3037
  %135 = load ptr, ptr %134, align 8, !dbg !3037, !tbaa !802
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3037
  %137 = load ptr, ptr %136, align 8, !dbg !3037, !tbaa !802
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3037
  %139 = load ptr, ptr %138, align 8, !dbg !3037, !tbaa !802
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3037
  %141 = load ptr, ptr %140, align 8, !dbg !3037, !tbaa !802
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3037
  %143 = load ptr, ptr %142, align 8, !dbg !3037, !tbaa !802
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3037
  %145 = load ptr, ptr %144, align 8, !dbg !3037, !tbaa !802
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3037
  br label %147, !dbg !3038

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3039
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3045, metadata !DIExpression()), !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3046, metadata !DIExpression()), !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3047, metadata !DIExpression()), !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3048, metadata !DIExpression()), !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3049, metadata !DIExpression()), !dbg !3050
  br label %6, !dbg !3051

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3049, metadata !DIExpression()), !dbg !3050
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3054
  %9 = load ptr, ptr %8, align 8, !dbg !3054, !tbaa !802
  %10 = icmp eq ptr %9, null, !dbg !3056
  %11 = add i64 %7, 1, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3049, metadata !DIExpression()), !dbg !3050
  br i1 %10, label %12, label %6, !dbg !3056, !llvm.loop !3058

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3060
  ret void, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3062 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3079, metadata !DIExpression(), metadata !3081, metadata ptr %6, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3074, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3075, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3076, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3078, metadata !DIExpression()), !dbg !3082
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3078, metadata !DIExpression()), !dbg !3082
  %10 = icmp ult i32 %9, 41, !dbg !3084
  br i1 %10, label %11, label %16, !dbg !3084

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3084
  %13 = zext nneg i32 %9 to i64, !dbg !3084
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3084
  %15 = add nuw nsw i32 %9, 8, !dbg !3084
  store i32 %15, ptr %4, align 8, !dbg !3084
  br label %19, !dbg !3084

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3084
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3084
  store ptr %18, ptr %7, align 8, !dbg !3084
  br label %19, !dbg !3084

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3084
  %22 = load ptr, ptr %21, align 8, !dbg !3084
  store ptr %22, ptr %6, align 16, !dbg !3087, !tbaa !802
  %23 = icmp eq ptr %22, null, !dbg !3088
  br i1 %23, label %128, label %24, !dbg !3089

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3078, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3078, metadata !DIExpression()), !dbg !3082
  %25 = icmp ult i32 %20, 41, !dbg !3084
  br i1 %25, label %29, label %26, !dbg !3084

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3084
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3084
  store ptr %28, ptr %7, align 8, !dbg !3084
  br label %34, !dbg !3084

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3084
  %31 = zext nneg i32 %20 to i64, !dbg !3084
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3084
  %33 = add nuw nsw i32 %20, 8, !dbg !3084
  store i32 %33, ptr %4, align 8, !dbg !3084
  br label %34, !dbg !3084

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3084
  %37 = load ptr, ptr %36, align 8, !dbg !3084
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3090
  store ptr %37, ptr %38, align 8, !dbg !3087, !tbaa !802
  %39 = icmp eq ptr %37, null, !dbg !3088
  br i1 %39, label %128, label %40, !dbg !3089

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3078, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3078, metadata !DIExpression()), !dbg !3082
  %41 = icmp ult i32 %35, 41, !dbg !3084
  br i1 %41, label %45, label %42, !dbg !3084

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3084
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3084
  store ptr %44, ptr %7, align 8, !dbg !3084
  br label %50, !dbg !3084

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3084
  %47 = zext nneg i32 %35 to i64, !dbg !3084
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3084
  %49 = add nuw nsw i32 %35, 8, !dbg !3084
  store i32 %49, ptr %4, align 8, !dbg !3084
  br label %50, !dbg !3084

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3084
  %53 = load ptr, ptr %52, align 8, !dbg !3084
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3090
  store ptr %53, ptr %54, align 16, !dbg !3087, !tbaa !802
  %55 = icmp eq ptr %53, null, !dbg !3088
  br i1 %55, label %128, label %56, !dbg !3089

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3078, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3078, metadata !DIExpression()), !dbg !3082
  %57 = icmp ult i32 %51, 41, !dbg !3084
  br i1 %57, label %61, label %58, !dbg !3084

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3084
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3084
  store ptr %60, ptr %7, align 8, !dbg !3084
  br label %66, !dbg !3084

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3084
  %63 = zext nneg i32 %51 to i64, !dbg !3084
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3084
  %65 = add nuw nsw i32 %51, 8, !dbg !3084
  store i32 %65, ptr %4, align 8, !dbg !3084
  br label %66, !dbg !3084

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3084
  %69 = load ptr, ptr %68, align 8, !dbg !3084
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3090
  store ptr %69, ptr %70, align 8, !dbg !3087, !tbaa !802
  %71 = icmp eq ptr %69, null, !dbg !3088
  br i1 %71, label %128, label %72, !dbg !3089

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3078, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3078, metadata !DIExpression()), !dbg !3082
  %73 = icmp ult i32 %67, 41, !dbg !3084
  br i1 %73, label %77, label %74, !dbg !3084

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3084
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3084
  store ptr %76, ptr %7, align 8, !dbg !3084
  br label %82, !dbg !3084

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3084
  %79 = zext nneg i32 %67 to i64, !dbg !3084
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3084
  %81 = add nuw nsw i32 %67, 8, !dbg !3084
  store i32 %81, ptr %4, align 8, !dbg !3084
  br label %82, !dbg !3084

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3084
  %85 = load ptr, ptr %84, align 8, !dbg !3084
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3090
  store ptr %85, ptr %86, align 16, !dbg !3087, !tbaa !802
  %87 = icmp eq ptr %85, null, !dbg !3088
  br i1 %87, label %128, label %88, !dbg !3089

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3078, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3078, metadata !DIExpression()), !dbg !3082
  %89 = icmp ult i32 %83, 41, !dbg !3084
  br i1 %89, label %93, label %90, !dbg !3084

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3084
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3084
  store ptr %92, ptr %7, align 8, !dbg !3084
  br label %98, !dbg !3084

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3084
  %95 = zext nneg i32 %83 to i64, !dbg !3084
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3084
  %97 = add nuw nsw i32 %83, 8, !dbg !3084
  store i32 %97, ptr %4, align 8, !dbg !3084
  br label %98, !dbg !3084

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3084
  %100 = load ptr, ptr %99, align 8, !dbg !3084
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3090
  store ptr %100, ptr %101, align 8, !dbg !3087, !tbaa !802
  %102 = icmp eq ptr %100, null, !dbg !3088
  br i1 %102, label %128, label %103, !dbg !3089

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3078, metadata !DIExpression()), !dbg !3082
  %104 = load ptr, ptr %7, align 8, !dbg !3084
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3084
  store ptr %105, ptr %7, align 8, !dbg !3084
  %106 = load ptr, ptr %104, align 8, !dbg !3084
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3090
  store ptr %106, ptr %107, align 16, !dbg !3087, !tbaa !802
  %108 = icmp eq ptr %106, null, !dbg !3088
  br i1 %108, label %128, label %109, !dbg !3089

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3078, metadata !DIExpression()), !dbg !3082
  %110 = load ptr, ptr %7, align 8, !dbg !3084
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3084
  store ptr %111, ptr %7, align 8, !dbg !3084
  %112 = load ptr, ptr %110, align 8, !dbg !3084
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3090
  store ptr %112, ptr %113, align 8, !dbg !3087, !tbaa !802
  %114 = icmp eq ptr %112, null, !dbg !3088
  br i1 %114, label %128, label %115, !dbg !3089

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3078, metadata !DIExpression()), !dbg !3082
  %116 = load ptr, ptr %7, align 8, !dbg !3084
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3084
  store ptr %117, ptr %7, align 8, !dbg !3084
  %118 = load ptr, ptr %116, align 8, !dbg !3084
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3090
  store ptr %118, ptr %119, align 16, !dbg !3087, !tbaa !802
  %120 = icmp eq ptr %118, null, !dbg !3088
  br i1 %120, label %128, label %121, !dbg !3089

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3078, metadata !DIExpression()), !dbg !3082
  %122 = load ptr, ptr %7, align 8, !dbg !3084
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3084
  store ptr %123, ptr %7, align 8, !dbg !3084
  %124 = load ptr, ptr %122, align 8, !dbg !3084
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3090
  store ptr %124, ptr %125, align 8, !dbg !3087, !tbaa !802
  %126 = icmp eq ptr %124, null, !dbg !3088
  %127 = select i1 %126, i64 9, i64 10, !dbg !3089
  br label %128, !dbg !3089

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3091
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3092
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3093
  ret void, !dbg !3093
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3094 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3102, metadata !DIExpression(), metadata !3107, metadata ptr %5, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3099, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3100, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3101, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3109
  call void @llvm.va_start(ptr nonnull %5), !dbg !3110
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3111
  call void @llvm.va_end(ptr nonnull %5), !dbg !3112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3113
  ret void, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3114 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3115, !tbaa !802
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !3115
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #39, !dbg !3116
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #39, !dbg !3116
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !3117
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #39, !dbg !3117
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3118
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.96) #39, !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3120 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3136
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3142
  %5 = icmp eq ptr %4, null, !dbg !3144
  br i1 %5, label %6, label %7, !dbg !3146

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3147
  unreachable, !dbg !3147

7:                                                ; preds = %3
  ret ptr %4, !dbg !3148
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3130 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3149
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3151
  %5 = icmp eq ptr %4, null, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3154

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3155
  unreachable, !dbg !3155

7:                                                ; preds = %3
  ret ptr %4, !dbg !3156
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3161, metadata !DIExpression()), !dbg !3162
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3164
  %3 = icmp eq ptr %2, null, !dbg !3166
  br i1 %3, label %4, label %5, !dbg !3167

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3168
  unreachable, !dbg !3168

5:                                                ; preds = %1
  ret ptr %2, !dbg !3169
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3170 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3171 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %0, metadata !3177, metadata !DIExpression()), !dbg !3181
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3184
  %3 = icmp eq ptr %2, null, !dbg !3186
  br i1 %3, label %4, label %5, !dbg !3187

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3188
  unreachable, !dbg !3188

5:                                                ; preds = %1
  ret ptr %2, !dbg !3189
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %0, metadata !3161, metadata !DIExpression()), !dbg !3196
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3198
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3199
  %3 = icmp eq ptr %2, null, !dbg !3201
  br i1 %3, label %4, label %5, !dbg !3202

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3203
  unreachable, !dbg !3203

5:                                                ; preds = %1
  ret ptr %2, !dbg !3204
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %1, metadata !3216, metadata !DIExpression()), !dbg !3217
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3219
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3220
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3221
  %5 = icmp eq ptr %4, null, !dbg !3223
  br i1 %5, label %6, label %7, !dbg !3224

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3225
  unreachable, !dbg !3225

7:                                                ; preds = %2
  ret ptr %4, !dbg !3226
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3227 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3216, metadata !DIExpression()), !dbg !3241
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3243
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3244
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3245
  %5 = icmp eq ptr %4, null, !dbg !3247
  br i1 %5, label %6, label %7, !dbg !3248

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3249
  unreachable, !dbg !3249

7:                                                ; preds = %2
  ret ptr %4, !dbg !3250
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3251 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata ptr %0, metadata !3259, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %2, metadata !3263, metadata !DIExpression()), !dbg !3264
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3267
  %5 = icmp eq ptr %4, null, !dbg !3269
  br i1 %5, label %6, label %7, !dbg !3270

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3271
  unreachable, !dbg !3271

7:                                                ; preds = %3
  ret ptr %4, !dbg !3272
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3273 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr null, metadata !3129, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3280
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3282
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3283
  %4 = icmp eq ptr %3, null, !dbg !3285
  br i1 %4, label %5, label %6, !dbg !3286

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3287
  unreachable, !dbg !3287

6:                                                ; preds = %2
  ret ptr %3, !dbg !3288
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3289 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()), !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata ptr null, metadata !3255, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr null, metadata !3259, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3298
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3301
  %4 = icmp eq ptr %3, null, !dbg !3303
  br i1 %4, label %5, label %6, !dbg !3304

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3305
  unreachable, !dbg !3305

6:                                                ; preds = %2
  ret ptr %3, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3307 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3312, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %0, metadata !718, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %1, metadata !719, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 1, metadata !720, metadata !DIExpression()), !dbg !3314
  %3 = load i64, ptr %1, align 8, !dbg !3316, !tbaa !2380
  call void @llvm.dbg.value(metadata i64 %3, metadata !721, metadata !DIExpression()), !dbg !3314
  %4 = icmp eq ptr %0, null, !dbg !3317
  br i1 %4, label %5, label %8, !dbg !3319

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3320
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3323
  br label %15, !dbg !3323

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3324
  %10 = add nuw i64 %9, 1, !dbg !3324
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3324
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3324
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %13, metadata !721, metadata !DIExpression()), !dbg !3314
  br i1 %12, label %14, label %15, !dbg !3327

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3328
  unreachable, !dbg !3328

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3314
  call void @llvm.dbg.value(metadata i64 %16, metadata !721, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %16, metadata !3132, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 1, metadata !3133, metadata !DIExpression()), !dbg !3329
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3331
  call void @llvm.dbg.value(metadata ptr %17, metadata !3137, metadata !DIExpression()), !dbg !3332
  %18 = icmp eq ptr %17, null, !dbg !3334
  br i1 %18, label %19, label %20, !dbg !3335

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3336
  unreachable, !dbg !3336

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !718, metadata !DIExpression()), !dbg !3314
  store i64 %16, ptr %1, align 8, !dbg !3337, !tbaa !2380
  ret ptr %17, !dbg !3338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !713 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !718, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !719, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !720, metadata !DIExpression()), !dbg !3339
  %4 = load i64, ptr %1, align 8, !dbg !3340, !tbaa !2380
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !721, metadata !DIExpression()), !dbg !3339
  %5 = icmp eq ptr %0, null, !dbg !3341
  br i1 %5, label %6, label %13, !dbg !3342

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3343
  br i1 %7, label %8, label %20, !dbg !3344

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !721, metadata !DIExpression()), !dbg !3339
  %10 = icmp ugt i64 %2, 128, !dbg !3347
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !3339
  br label %20, !dbg !3349

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3350
  %15 = add nuw i64 %14, 1, !dbg !3350
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3350
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3350
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !721, metadata !DIExpression()), !dbg !3339
  br i1 %17, label %19, label %20, !dbg !3351

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3352
  unreachable, !dbg !3352

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !721, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %21, metadata !3132, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3353
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3355
  call void @llvm.dbg.value(metadata ptr %22, metadata !3137, metadata !DIExpression()), !dbg !3356
  %23 = icmp eq ptr %22, null, !dbg !3358
  br i1 %23, label %24, label %25, !dbg !3359

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3360
  unreachable, !dbg !3360

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !718, metadata !DIExpression()), !dbg !3339
  store i64 %21, ptr %1, align 8, !dbg !3361, !tbaa !2380
  ret ptr %22, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !725 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !734, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !735, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !736, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !737, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !738, metadata !DIExpression()), !dbg !3363
  %6 = load i64, ptr %1, align 8, !dbg !3364, !tbaa !2380
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !739, metadata !DIExpression()), !dbg !3363
  %7 = ashr i64 %6, 1, !dbg !3365
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3365
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3365
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !740, metadata !DIExpression()), !dbg !3363
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !740, metadata !DIExpression()), !dbg !3363
  %12 = icmp sgt i64 %3, -1, !dbg !3368
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3370
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !740, metadata !DIExpression()), !dbg !3363
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3371
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3371
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !741, metadata !DIExpression()), !dbg !3363
  %18 = icmp slt i64 %17, 128, !dbg !3371
  %19 = select i1 %18, i64 128, i64 0, !dbg !3371
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !742, metadata !DIExpression()), !dbg !3363
  %21 = icmp eq i64 %20, 0, !dbg !3372
  br i1 %21, label %26, label %22, !dbg !3374

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !740, metadata !DIExpression()), !dbg !3363
  %24 = srem i64 %20, %4, !dbg !3377
  %25 = sub nsw i64 %20, %24, !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !741, metadata !DIExpression()), !dbg !3363
  br label %26, !dbg !3379

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3363
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !741, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !740, metadata !DIExpression()), !dbg !3363
  %29 = icmp eq ptr %0, null, !dbg !3380
  br i1 %29, label %30, label %31, !dbg !3382

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3383, !tbaa !2380
  br label %31, !dbg !3384

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3385
  %33 = icmp slt i64 %32, %2, !dbg !3387
  br i1 %33, label %34, label %46, !dbg !3388

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3389
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3389
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !740, metadata !DIExpression()), !dbg !3363
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3390
  br i1 %40, label %45, label %41, !dbg !3390

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3391
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3391
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !741, metadata !DIExpression()), !dbg !3363
  br i1 %43, label %45, label %46, !dbg !3392

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !3393
  unreachable, !dbg !3393

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3363
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !741, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !740, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %48, metadata !3210, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %48, metadata !3216, metadata !DIExpression()), !dbg !3396
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3398
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3399
  call void @llvm.dbg.value(metadata ptr %50, metadata !3137, metadata !DIExpression()), !dbg !3400
  %51 = icmp eq ptr %50, null, !dbg !3402
  br i1 %51, label %52, label %53, !dbg !3403

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !3404
  unreachable, !dbg !3404

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !734, metadata !DIExpression()), !dbg !3363
  store i64 %47, ptr %1, align 8, !dbg !3405, !tbaa !2380
  ret ptr %50, !dbg !3406
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3407 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 1, metadata !3414, metadata !DIExpression()), !dbg !3415
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3417
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3418
  %3 = icmp eq ptr %2, null, !dbg !3420
  br i1 %3, label %4, label %5, !dbg !3421

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3422
  unreachable, !dbg !3422

5:                                                ; preds = %1
  ret ptr %2, !dbg !3423
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3424 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3412 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3425
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3426
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3427
  %4 = icmp eq ptr %3, null, !dbg !3429
  br i1 %4, label %5, label %6, !dbg !3430

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3431
  unreachable, !dbg !3431

6:                                                ; preds = %2
  ret ptr %3, !dbg !3432
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3433 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3435, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %0, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 1, metadata !3440, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 1, metadata !3446, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 1, metadata !3446, metadata !DIExpression()), !dbg !3447
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3449
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3450
  %3 = icmp eq ptr %2, null, !dbg !3452
  br i1 %3, label %4, label %5, !dbg !3453

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3454
  unreachable, !dbg !3454

5:                                                ; preds = %1
  ret ptr %2, !dbg !3455
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3438 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3437, metadata !DIExpression()), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3440, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3457
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3460
  %4 = icmp eq ptr %3, null, !dbg !3462
  br i1 %4, label %5, label %6, !dbg !3463

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3464
  unreachable, !dbg !3464

6:                                                ; preds = %2
  ret ptr %3, !dbg !3465
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()), !dbg !3473
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3475
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3476
  %4 = icmp eq ptr %3, null, !dbg !3478
  br i1 %4, label %5, label %6, !dbg !3479

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3480
  unreachable, !dbg !3480

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3481, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3491
  ret ptr %3, !dbg !3492
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()), !dbg !3502
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3504
  call void @llvm.dbg.value(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3505
  %4 = icmp eq ptr %3, null, !dbg !3507
  br i1 %4, label %5, label %6, !dbg !3508

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3509
  unreachable, !dbg !3509

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3481, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3512
  ret ptr %3, !dbg !3513
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3521
  %3 = add nsw i64 %1, 1, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %3, metadata !3175, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %3, metadata !3177, metadata !DIExpression()), !dbg !3525
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3527
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3528
  %5 = icmp eq ptr %4, null, !dbg !3530
  br i1 %5, label %6, label %7, !dbg !3531

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3532
  unreachable, !dbg !3532

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3520, metadata !DIExpression()), !dbg !3521
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3533
  store i8 0, ptr %8, align 1, !dbg !3534, !tbaa !867
  call void @llvm.dbg.value(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3535
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3537
  ret ptr %4, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3539 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3542
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3543
  %3 = add i64 %2, 1, !dbg !3544
  call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %3, metadata !3471, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %3, metadata !3161, metadata !DIExpression()), !dbg !3547
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3549
  call void @llvm.dbg.value(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3550
  %5 = icmp eq ptr %4, null, !dbg !3552
  br i1 %5, label %6, label %7, !dbg !3553

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3554
  unreachable, !dbg !3554

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %3, metadata !3488, metadata !DIExpression()), !dbg !3555
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3557
  ret ptr %4, !dbg !3558
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3559 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3563, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3561, metadata !DIExpression()), !dbg !3564
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.107, ptr noundef nonnull @.str.2.108, i32 noundef 5) #39, !dbg !3563
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.109, ptr noundef %2) #39, !dbg !3563
  %3 = icmp eq i32 %1, 0, !dbg !3563
  tail call void @llvm.assume(i1 %3), !dbg !3563
  tail call void @abort() #41, !dbg !3565
  unreachable, !dbg !3565
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @xnanosleep(double noundef %0) local_unnamed_addr #10 !dbg !3566 {
  %2 = alloca %struct.timespec, align 8, !DIAssignID !3578
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3571, metadata !DIExpression(), metadata !3578, metadata ptr %2, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata double %0, metadata !3570, metadata !DIExpression()), !dbg !3579
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3580
  br i1 %3, label %4, label %6, !dbg !3582

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #42, !dbg !3579
  br label %11, !dbg !3582

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #39, !dbg !3583
  %8 = tail call ptr @__errno_location() #42, !dbg !3585
  %9 = load i32, ptr %8, align 4, !dbg !3585, !tbaa !858
  %10 = icmp eq i32 %9, 4, !dbg !3586
  br i1 %10, label %6, label %11, !dbg !3583, !llvm.loop !3587

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %5, %4 ], [ %8, %6 ], !dbg !3579
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #39, !dbg !3590
  %13 = tail call { i64, i64 } @dtotimespec(double noundef %0) #42, !dbg !3591
  %14 = extractvalue { i64, i64 } %13, 0, !dbg !3591
  store i64 %14, ptr %2, align 8, !dbg !3591, !DIAssignID !3592
  call void @llvm.dbg.assign(metadata i64 %14, metadata !3571, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3592, metadata ptr %2, metadata !DIExpression()), !dbg !3579
  %15 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1, !dbg !3591
  %16 = extractvalue { i64, i64 } %13, 1, !dbg !3591
  store i64 %16, ptr %15, align 8, !dbg !3591, !DIAssignID !3593
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3571, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3593, metadata ptr %15, metadata !DIExpression()), !dbg !3579
  store i32 0, ptr %12, align 4, !dbg !3594, !tbaa !858
  %17 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #39, !dbg !3598
  %18 = icmp eq i32 %17, 0, !dbg !3600
  br i1 %18, label %24, label %19, !dbg !3601

19:                                               ; preds = %11, %21
  %20 = load i32, ptr %12, align 4, !dbg !3602, !tbaa !858
  switch i32 %20, label %24 [
    i32 4, label %21
    i32 0, label %21
  ], !dbg !3604

21:                                               ; preds = %19, %19
  store i32 0, ptr %12, align 4, !dbg !3594, !tbaa !858
  %22 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #39, !dbg !3598
  %23 = icmp eq i32 %22, 0, !dbg !3600
  br i1 %23, label %24, label %19, !dbg !3601, !llvm.loop !3605

24:                                               ; preds = %19, %21, %11
  %25 = phi i32 [ 0, %11 ], [ 0, %21 ], [ -1, %19 ], !dbg !3579
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #39, !dbg !3608
  ret i32 %25, !dbg !3608
}

declare !dbg !3609 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3612 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3620
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3617, metadata !DIExpression()), !dbg !3620
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3621, !tbaa !802
  %4 = icmp eq ptr %3, null, !dbg !3621
  br i1 %4, label %5, label %7, !dbg !3627

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.114, ptr noundef null) #39, !dbg !3628
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !3629, !tbaa !802
  br label %7, !dbg !3630

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3631, !tbaa !802
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3619, metadata !DIExpression()), !dbg !3620
  %9 = icmp eq ptr %8, null, !dbg !3632
  br i1 %9, label %10, label %13, !dbg !3634

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !3635
  br i1 %11, label %15, label %12, !dbg !3638

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !3639, !tbaa !802
  br label %15, !dbg !3640

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #39, !dbg !3641
  tail call void @llvm.dbg.value(metadata double %14, metadata !3618, metadata !DIExpression()), !dbg !3620
  br label %15, !dbg !3642

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3620
  ret double %16, !dbg !3643
}

; Function Attrs: nounwind
declare !dbg !3644 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3647 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3693
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3695, metadata !DIExpression()), !dbg !3698
  %3 = load i32, ptr %0, align 8, !dbg !3700, !tbaa !3701
  %4 = and i32 %3, 32, !dbg !3702
  %5 = icmp eq i32 %4, 0, !dbg !3702
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3691, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3693
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3703
  %7 = icmp eq i32 %6, 0, !dbg !3704
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3692, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3693
  br i1 %5, label %8, label %18, !dbg !3705

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3707
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3689, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3693
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3708
  %11 = xor i1 %7, true, !dbg !3708
  %12 = sext i1 %11 to i32, !dbg !3708
  br i1 %10, label %21, label %13, !dbg !3708

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3709
  %15 = load i32, ptr %14, align 4, !dbg !3709, !tbaa !858
  %16 = icmp ne i32 %15, 9, !dbg !3710
  %17 = sext i1 %16 to i32, !dbg !3711
  br label %21, !dbg !3711

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3712

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3714
  store i32 0, ptr %20, align 4, !dbg !3716, !tbaa !858
  br label %21, !dbg !3714

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3693
  ret i32 %22, !dbg !3717
}

; Function Attrs: nounwind
declare !dbg !3718 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @dtotimespec(double noundef %0) local_unnamed_addr #36 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !3730, metadata !DIExpression()), !dbg !3737
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3738
  br i1 %2, label %3, label %25, !dbg !3739

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3740
  br i1 %4, label %5, label %25, !dbg !3741

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3731, metadata !DIExpression()), !dbg !3743
  %7 = sitofp i64 %6 to double, !dbg !3744
  %8 = fsub double %0, %7, !dbg !3745
  %9 = fmul double %8, 1.000000e+09, !dbg !3746
  tail call void @llvm.dbg.value(metadata double %9, metadata !3735, metadata !DIExpression()), !dbg !3743
  %10 = fptosi double %9 to i64, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3736, metadata !DIExpression()), !dbg !3743
  %11 = sitofp i64 %10 to double, !dbg !3748
  %12 = fcmp ogt double %9, %11, !dbg !3749
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3736, metadata !DIExpression()), !dbg !3743
  %15 = sdiv i64 %14, 1000000000, !dbg !3751
  %16 = add nsw i64 %15, %6, !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !3731, metadata !DIExpression()), !dbg !3743
  %17 = srem i64 %14, 1000000000, !dbg !3753
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3736, metadata !DIExpression()), !dbg !3743
  %18 = icmp slt i64 %17, 0, !dbg !3754
  %19 = add nsw i64 %17, 1000000000, !dbg !3756
  %20 = ashr i64 %17, 63, !dbg !3756
  %21 = add nsw i64 %16, %20, !dbg !3756
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !3736, metadata !DIExpression()), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3731, metadata !DIExpression()), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3757, metadata !DIExpression()), !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !3762, metadata !DIExpression()), !dbg !3763
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0, !dbg !3765
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !3765
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3767 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3806, metadata !DIExpression()), !dbg !3809
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3810
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3807, metadata !DIExpression()), !dbg !3809
  %3 = icmp slt i32 %2, 0, !dbg !3811
  br i1 %3, label %4, label %6, !dbg !3813

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3814
  br label %24, !dbg !3815

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3816
  %8 = icmp eq i32 %7, 0, !dbg !3816
  br i1 %8, label %13, label %9, !dbg !3818

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3819
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3820
  %12 = icmp eq i64 %11, -1, !dbg !3821
  br i1 %12, label %16, label %13, !dbg !3822

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3823
  %15 = icmp eq i32 %14, 0, !dbg !3823
  br i1 %15, label %16, label %18, !dbg !3824

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3806, metadata !DIExpression()), !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3809
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3808, metadata !DIExpression()), !dbg !3809
  br label %24, !dbg !3826

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3827
  %20 = load i32, ptr %19, align 4, !dbg !3827, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3806, metadata !DIExpression()), !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3809
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3808, metadata !DIExpression()), !dbg !3809
  %22 = icmp eq i32 %20, 0, !dbg !3828
  br i1 %22, label %24, label %23, !dbg !3826

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3830, !tbaa !858
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3808, metadata !DIExpression()), !dbg !3809
  br label %24, !dbg !3832

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3809
  ret i32 %25, !dbg !3833
}

; Function Attrs: nofree nounwind
declare !dbg !3834 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3835 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3836 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3837 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3879
  %2 = icmp eq ptr %0, null, !dbg !3880
  br i1 %2, label %6, label %3, !dbg !3882

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3883
  %5 = icmp eq i32 %4, 0, !dbg !3883
  br i1 %5, label %6, label %8, !dbg !3884

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3885
  br label %16, !dbg !3886

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3892
  %9 = load i32, ptr %0, align 8, !dbg !3894, !tbaa !3701
  %10 = and i32 %9, 256, !dbg !3896
  %11 = icmp eq i32 %10, 0, !dbg !3896
  br i1 %11, label %14, label %12, !dbg !3897

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3898
  br label %14, !dbg !3898

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3899
  br label %16, !dbg !3900

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3879
  ret i32 %17, !dbg !3901
}

; Function Attrs: nofree nounwind
declare !dbg !3902 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3903 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !3948
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3943, metadata !DIExpression()), !dbg !3948
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3944, metadata !DIExpression()), !dbg !3948
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3949
  %5 = load ptr, ptr %4, align 8, !dbg !3949, !tbaa !3950
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3951
  %7 = load ptr, ptr %6, align 8, !dbg !3951, !tbaa !3952
  %8 = icmp eq ptr %5, %7, !dbg !3953
  br i1 %8, label %9, label %27, !dbg !3954

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3955
  %11 = load ptr, ptr %10, align 8, !dbg !3955, !tbaa !1348
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3956
  %13 = load ptr, ptr %12, align 8, !dbg !3956, !tbaa !3957
  %14 = icmp eq ptr %11, %13, !dbg !3958
  br i1 %14, label %15, label %27, !dbg !3959

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3960
  %17 = load ptr, ptr %16, align 8, !dbg !3960, !tbaa !3961
  %18 = icmp eq ptr %17, null, !dbg !3962
  br i1 %18, label %19, label %27, !dbg !3963

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3964
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3945, metadata !DIExpression()), !dbg !3966
  %22 = icmp eq i64 %21, -1, !dbg !3967
  br i1 %22, label %29, label %23, !dbg !3969

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3970, !tbaa !3701
  %25 = and i32 %24, -17, !dbg !3970
  store i32 %25, ptr %0, align 8, !dbg !3970, !tbaa !3701
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3971
  store i64 %21, ptr %26, align 8, !dbg !3972, !tbaa !3973
  br label %29, !dbg !3974

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3975
  br label %29, !dbg !3976

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3948
  ret i32 %30, !dbg !3977
}

; Function Attrs: nofree nounwind
declare !dbg !3978 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3981 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3987, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3988, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3989, metadata !DIExpression()), !dbg !3991
  %5 = icmp eq ptr %1, null, !dbg !3992
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3994
  %7 = select i1 %5, ptr @.str.127, ptr %1, !dbg !3994
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3988, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3987, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3986, metadata !DIExpression()), !dbg !3991
  %9 = icmp eq ptr %3, null, !dbg !3995
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3989, metadata !DIExpression()), !dbg !3991
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3990, metadata !DIExpression()), !dbg !3991
  %12 = icmp ult i64 %11, -3, !dbg !3999
  br i1 %12, label %13, label %17, !dbg !4001

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4002
  %15 = icmp eq i32 %14, 0, !dbg !4002
  br i1 %15, label %16, label %29, !dbg !4003

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4004, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %10, metadata !4011, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 0, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 8, metadata !4015, metadata !DIExpression()), !dbg !4016
  store i64 0, ptr %10, align 1, !dbg !4018
  br label %29, !dbg !4019

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4020
  br i1 %18, label %19, label %20, !dbg !4022

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4023
  unreachable, !dbg !4023

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4024

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4026
  br i1 %23, label %29, label %24, !dbg !4027

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4028
  br i1 %25, label %29, label %26, !dbg !4031

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4032, !tbaa !867
  %28 = zext i8 %27 to i32, !dbg !4033
  store i32 %28, ptr %6, align 4, !dbg !4034, !tbaa !858
  br label %29, !dbg !4035

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3991
  ret i64 %30, !dbg !4036
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4037 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_nanosleep(ptr nocapture noundef nonnull readonly %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4043 {
  %3 = alloca %struct.timespec, align 8, !DIAssignID !4063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4060, metadata !DIExpression(), metadata !4063, metadata ptr %3, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4054, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4065
  %4 = getelementptr inbounds %struct.timespec, ptr %0, i64 0, i32 1, !dbg !4066
  %5 = load i64, ptr %4, align 8, !dbg !4066, !tbaa !4068
  %6 = icmp ugt i64 %5, 999999999, !dbg !4070
  br i1 %6, label %7, label %9, !dbg !4070

7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #42, !dbg !4071
  store i32 22, ptr %8, align 4, !dbg !4073, !tbaa !858
  br label %31, !dbg !4074

9:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 2073600, metadata !4056, metadata !DIExpression()), !dbg !4064
  %10 = load i64, ptr %0, align 8, !dbg !4075, !tbaa !4076
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #39, !dbg !4077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !4078, !tbaa.struct !4079, !DIAssignID !4080
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4060, metadata !DIExpression(), metadata !4080, metadata ptr %3, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4059, metadata !DIExpression()), !dbg !4064
  %11 = icmp sgt i64 %10, 2073600, !dbg !4081
  br i1 %11, label %12, label %26, !dbg !4082

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %14, !dbg !4082

14:                                               ; preds = %12, %24
  %15 = phi i64 [ %10, %12 ], [ %17, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !4059, metadata !DIExpression()), !dbg !4064
  store i64 2073600, ptr %3, align 8, !dbg !4083, !tbaa !4076, !DIAssignID !4084
  call void @llvm.dbg.assign(metadata i64 2073600, metadata !4060, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4084, metadata ptr %3, metadata !DIExpression()), !dbg !4064
  %16 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #39, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !4061, metadata !DIExpression()), !dbg !4086
  %17 = add nsw i64 %15, -2073600, !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !4059, metadata !DIExpression()), !dbg !4064
  %18 = icmp eq i32 %16, 0, !dbg !4088
  br i1 %18, label %24, label %19, !dbg !4090

19:                                               ; preds = %14
  %20 = icmp eq ptr %1, null, !dbg !4091
  br i1 %20, label %29, label %21, !dbg !4094

21:                                               ; preds = %19
  %22 = load i64, ptr %1, align 8, !dbg !4095, !tbaa !4076
  %23 = add nsw i64 %22, %17, !dbg !4095
  store i64 %23, ptr %1, align 8, !dbg !4095, !tbaa !4076
  br label %29, !dbg !4096

24:                                               ; preds = %14
  store i64 0, ptr %13, align 8, !dbg !4097, !tbaa !4068, !DIAssignID !4098
  call void @llvm.dbg.assign(metadata i64 0, metadata !4060, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4098, metadata ptr %13, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !4059, metadata !DIExpression()), !dbg !4064
  %25 = icmp ugt i64 %15, 4147200, !dbg !4081
  br i1 %25, label %14, label %26, !dbg !4082, !llvm.loop !4099

26:                                               ; preds = %24, %9
  %27 = phi i64 [ %10, %9 ], [ %17, %24 ], !dbg !4064
  store i64 %27, ptr %3, align 8, !dbg !4101, !tbaa !4076, !DIAssignID !4102
  call void @llvm.dbg.assign(metadata i64 %27, metadata !4060, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4102, metadata ptr %3, metadata !DIExpression()), !dbg !4064
  %28 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #39, !dbg !4103
  br label %29, !dbg !4104

29:                                               ; preds = %21, %19, %26
  %30 = phi i32 [ %28, %26 ], [ %16, %19 ], [ %16, %21 ], !dbg !4064
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #39, !dbg !4105
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i32 [ -1, %7 ], [ %30, %29 ], !dbg !4065
  ret i32 %32, !dbg !4106
}

declare !dbg !4107 i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4111, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4113, metadata !DIExpression()), !dbg !4115
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4116
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4116
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4114, metadata !DIExpression()), !dbg !4115
  br i1 %5, label %6, label %8, !dbg !4118

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4119
  store i32 12, ptr %7, align 4, !dbg !4121, !tbaa !858
  br label %12, !dbg !4122

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4116
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr %0, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4129
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4130
  br label %12, !dbg !4131

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4115
  ret ptr %13, !dbg !4132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4133 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4138, metadata !DIExpression(), metadata !4142, metadata ptr %2, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4137, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4144
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4145
  %4 = icmp eq i32 %3, 0, !dbg !4145
  br i1 %4, label %5, label %12, !dbg !4147

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4148, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata !829, metadata !4151, metadata !DIExpression()), !dbg !4152
  %6 = load i16, ptr %2, align 16, !dbg !4155
  %7 = icmp eq i16 %6, 67, !dbg !4155
  br i1 %7, label %11, label %8, !dbg !4156

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4148, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr @.str.1.134, metadata !4151, metadata !DIExpression()), !dbg !4157
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.134, i64 6), !dbg !4159
  %10 = icmp eq i32 %9, 0, !dbg !4160
  br i1 %10, label %11, label %12, !dbg !4161

11:                                               ; preds = %8, %5
  br label %12, !dbg !4162

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4143
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4163
  ret i1 %13, !dbg !4163
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4164 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4169, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4170, metadata !DIExpression()), !dbg !4171
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4172
  ret i32 %4, !dbg !4173
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4174 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4178, metadata !DIExpression()), !dbg !4179
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4180
  ret ptr %2, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4182 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4184, metadata !DIExpression()), !dbg !4186
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4187
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  ret ptr %2, !dbg !4188
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4191, metadata !DIExpression()), !dbg !4198
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4192, metadata !DIExpression()), !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4193, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i32 %0, metadata !4184, metadata !DIExpression()), !dbg !4199
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4201
  call void @llvm.dbg.value(metadata ptr %4, metadata !4185, metadata !DIExpression()), !dbg !4199
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4194, metadata !DIExpression()), !dbg !4198
  %5 = icmp eq ptr %4, null, !dbg !4202
  br i1 %5, label %6, label %9, !dbg !4203

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4204
  br i1 %7, label %19, label %8, !dbg !4207

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4208, !tbaa !867
  br label %19, !dbg !4209

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4195, metadata !DIExpression()), !dbg !4211
  %11 = icmp ult i64 %10, %2, !dbg !4212
  br i1 %11, label %12, label %14, !dbg !4214

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %1, metadata !4217, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %4, metadata !4220, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %13, metadata !4221, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4224
  br label %19, !dbg !4225

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4226
  br i1 %15, label %19, label %16, !dbg !4229

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4217, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata ptr %4, metadata !4220, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %17, metadata !4221, metadata !DIExpression()), !dbg !4232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4234
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4235
  store i8 0, ptr %18, align 1, !dbg !4236, !tbaa !867
  br label %19, !dbg !4237

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4238
  ret i32 %20, !dbg !4239
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!80, !300, !699, !304, !319, !638, !701, !373, !394, !408, !456, !703, !630, !709, !744, !746, !651, !752, !754, !761, !763, !765, !683, !767, !773, !775, !779, !781}
!llvm.ident = !{!783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783, !783}
!llvm.module.flags = !{!784, !785, !786, !787, !788, !789, !790}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "382b2cab9ca796c7040797f94b92cf12")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1992, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 249)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 50)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 62)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 24)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 14)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 13)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 12)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 16)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 25)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 27)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !74, file: !75, line: 575, type: !100, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "oputs_", scope: !75, file: !75, line: 573, type: !76, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !216)
!75 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!76 = !DISubroutineType(cc: DW_CC_nocall, types: !77)
!77 = !{null, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!80 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/sleep.o -MD -MP -MF src/.deps/sleep.Tpo -c src/sleep.c -o src/.sleep.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !98, globals: !106, splitDebugInlining: false, nameTableKind: None)
!81 = !{!82}
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 46, baseType: !84, size: 32, elements: !85)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!86 = !DIEnumerator(name: "_ISupper", value: 256)
!87 = !DIEnumerator(name: "_ISlower", value: 512)
!88 = !DIEnumerator(name: "_ISalpha", value: 1024)
!89 = !DIEnumerator(name: "_ISdigit", value: 2048)
!90 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!91 = !DIEnumerator(name: "_ISspace", value: 8192)
!92 = !DIEnumerator(name: "_ISprint", value: 16384)
!93 = !DIEnumerator(name: "_ISgraph", value: 32768)
!94 = !DIEnumerator(name: "_ISblank", value: 1)
!95 = !DIEnumerator(name: "_IScntrl", value: 2)
!96 = !DIEnumerator(name: "_ISpunct", value: 4)
!97 = !DIEnumerator(name: "_ISalnum", value: 8)
!98 = !{!78, !99, !100, !101, !102, !105}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 18, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !107, !112, !114, !119, !121, !126, !128, !130, !135, !137, !139, !141, !146, !151, !153, !155, !157, !159, !161, !163, !168, !173, !178, !183, !185, !187, !189, !191, !193, !198, !200, !202, !207, !209, !214}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !75, line: 585, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 5)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !75, line: 586, type: !109, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !75, line: 595, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 4)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !75, line: 620, type: !14, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !75, line: 648, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 2)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !75, line: 648, type: !109, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !75, line: 649, type: !116, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !75, line: 649, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 3)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !75, line: 650, type: !109, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !75, line: 651, type: !14, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !75, line: 651, type: !14, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !75, line: 652, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 7)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !75, line: 653, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !75, line: 654, type: !34, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !75, line: 655, type: !34, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !75, line: 656, type: !34, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !75, line: 657, type: !34, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !75, line: 663, type: !143, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !75, line: 664, type: !34, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !75, line: 669, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 17)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !75, line: 669, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 40)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !75, line: 676, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 15)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !75, line: 676, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 61)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !75, line: 679, type: !132, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !75, line: 683, type: !109, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !75, line: 688, type: !109, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !75, line: 691, type: !148, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !75, line: 839, type: !59, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !75, line: 840, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 22)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !75, line: 841, type: !175, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !75, line: 862, type: !116, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !75, line: 868, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 71)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !75, line: 875, type: !69, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !75, line: 877, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 51)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !75, line: 877, type: !54, isLocal: true, isDefinition: true)
!216 = !{!217, !218, !219, !222, !224, !225, !226, !230, !231, !232, !233, !235, !289, !290, !291, !293, !294}
!217 = !DILocalVariable(name: "program", arg: 1, scope: !74, file: !75, line: 573, type: !78)
!218 = !DILocalVariable(name: "option", arg: 2, scope: !74, file: !75, line: 573, type: !78)
!219 = !DILocalVariable(name: "term", scope: !220, file: !75, line: 585, type: !78)
!220 = distinct !DILexicalBlock(scope: !221, file: !75, line: 582, column: 5)
!221 = distinct !DILexicalBlock(scope: !74, file: !75, line: 581, column: 7)
!222 = !DILocalVariable(name: "double_space", scope: !74, file: !75, line: 594, type: !223)
!223 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!224 = !DILocalVariable(name: "first_word", scope: !74, file: !75, line: 595, type: !78)
!225 = !DILocalVariable(name: "option_text", scope: !74, file: !75, line: 596, type: !78)
!226 = !DILocalVariable(name: "s", scope: !227, file: !75, line: 608, type: !78)
!227 = distinct !DILexicalBlock(scope: !228, file: !75, line: 605, column: 5)
!228 = distinct !DILexicalBlock(scope: !229, file: !75, line: 604, column: 12)
!229 = distinct !DILexicalBlock(scope: !74, file: !75, line: 597, column: 7)
!230 = !DILocalVariable(name: "spaces", scope: !227, file: !75, line: 609, type: !102)
!231 = !DILocalVariable(name: "anchor_len", scope: !74, file: !75, line: 620, type: !102)
!232 = !DILocalVariable(name: "desc_text", scope: !74, file: !75, line: 625, type: !78)
!233 = !DILocalVariable(name: "__ptr", scope: !234, file: !75, line: 644, type: !78)
!234 = distinct !DILexicalBlock(scope: !74, file: !75, line: 644, column: 3)
!235 = !DILocalVariable(name: "__stream", scope: !234, file: !75, line: 644, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!241 = !{!242, !243, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !258, !260, !261, !262, !266, !267, !269, !270, !273, !275, !278, !281, !282, !283, !284, !285}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !239, file: !240, line: 51, baseType: !100, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !239, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !239, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !239, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !239, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !239, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !239, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !239, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !239, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !239, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !239, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !239, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !239, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !240, line: 36, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !239, file: !240, line: 70, baseType: !259, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !239, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !239, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !239, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !264, line: 152, baseType: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!265 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !239, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !239, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!268 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !239, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !239, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !240, line: 43, baseType: null)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !239, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !264, line: 153, baseType: !265)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !239, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !240, line: 37, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !239, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !240, line: 38, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !239, file: !240, line: 93, baseType: !259, size: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !239, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !239, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !239, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !239, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 20)
!289 = !DILocalVariable(name: "__cnt", scope: !234, file: !75, line: 644, type: !102)
!290 = !DILocalVariable(name: "url_program", scope: !74, file: !75, line: 648, type: !78)
!291 = !DILocalVariable(name: "__ptr", scope: !292, file: !75, line: 686, type: !78)
!292 = distinct !DILexicalBlock(scope: !74, file: !75, line: 686, column: 3)
!293 = !DILocalVariable(name: "__stream", scope: !292, file: !75, line: 686, type: !236)
!294 = !DILocalVariable(name: "__cnt", scope: !292, file: !75, line: 686, type: !102)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !297, line: 3, type: !175, isLocal: true, isDefinition: true)
!297 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "Version", scope: !300, file: !297, line: 3, type: !78, isLocal: false, isDefinition: true)
!300 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !301, splitDebugInlining: false, nameTableKind: None)
!301 = !{!295, !298}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "file_name", scope: !304, file: !305, line: 45, type: !78, isLocal: true, isDefinition: true)
!304 = distinct !DICompileUnit(language: DW_LANG_C11, file: !305, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !306, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!306 = !{!307, !309, !311, !313, !302, !315}
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !305, line: 121, type: !143, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !305, line: 121, type: !54, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !305, line: 123, type: !143, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !305, line: 126, type: !132, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !304, file: !305, line: 55, type: !223, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !319, file: !320, line: 66, type: !365, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!321 = !{!99, !105}
!322 = !{!323, !325, !344, !346, !348, !350, !317, !352, !354, !356, !358, !363}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !320, line: 272, type: !109, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "old_file_name", scope: !327, file: !320, line: 304, type: !78, isLocal: true, isDefinition: true)
!327 = distinct !DISubprogram(name: "verror_at_line", scope: !320, file: !320, line: 298, type: !328, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !337)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !100, !100, !78, !84, !78, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !332)
!332 = !{!333, !334, !335, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !331, file: !320, baseType: !84, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !331, file: !320, baseType: !84, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !331, file: !320, baseType: !99, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !331, file: !320, baseType: !99, size: 64, offset: 128)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DILocalVariable(name: "status", arg: 1, scope: !327, file: !320, line: 298, type: !100)
!339 = !DILocalVariable(name: "errnum", arg: 2, scope: !327, file: !320, line: 298, type: !100)
!340 = !DILocalVariable(name: "file_name", arg: 3, scope: !327, file: !320, line: 298, type: !78)
!341 = !DILocalVariable(name: "line_number", arg: 4, scope: !327, file: !320, line: 298, type: !84)
!342 = !DILocalVariable(name: "message", arg: 5, scope: !327, file: !320, line: 298, type: !78)
!343 = !DILocalVariable(name: "args", arg: 6, scope: !327, file: !320, line: 298, type: !330)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "old_line_number", scope: !327, file: !320, line: 305, type: !84, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !320, line: 338, type: !116, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !148, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !123, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_message_count", scope: !319, file: !320, line: 69, type: !84, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !319, file: !320, line: 295, type: !100, isLocal: false, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !143, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 21)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !320, line: 214, type: !109, isLocal: true, isDefinition: true)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !370, line: 60, type: !123, isLocal: true, isDefinition: true)
!370 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "long_options", scope: !373, file: !370, line: 34, type: !382, isLocal: true, isDefinition: true)
!373 = distinct !DICompileUnit(language: DW_LANG_C11, file: !370, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, globals: !375, splitDebugInlining: false, nameTableKind: None)
!374 = !{!99}
!375 = !{!368, !376, !378, !380, !371}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !370, line: 112, type: !29, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !370, line: 36, type: !109, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !370, line: 37, type: !148, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 768, elements: !133)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !385, line: 50, size: 256, elements: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!386 = !{!387, !388, !389, !391}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 52, baseType: !78, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !384, file: !385, line: 55, baseType: !100, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !384, file: !385, line: 56, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !384, file: !385, line: 57, baseType: !100, size: 32, offset: 192)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "program_name", scope: !394, file: !395, line: 31, type: !78, isLocal: false, isDefinition: true)
!394 = distinct !DICompileUnit(language: DW_LANG_C11, file: !395, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !396, globals: !397, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!396 = !{!99, !244}
!397 = !{!392, !398, !400}
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !395, line: 46, type: !148, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !395, line: 49, type: !116, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "utf07FF", scope: !404, file: !405, line: 46, type: !432, isLocal: true, isDefinition: true)
!404 = distinct !DISubprogram(name: "proper_name_lite", scope: !405, file: !405, line: 38, type: !406, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !410)
!405 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!406 = !DISubroutineType(types: !407)
!407 = !{!78, !78, !78}
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !405, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !409, splitDebugInlining: false, nameTableKind: None)
!409 = !{!402}
!410 = !{!411, !412, !413, !414, !419}
!411 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !404, file: !405, line: 38, type: !78)
!412 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !404, file: !405, line: 38, type: !78)
!413 = !DILocalVariable(name: "translation", scope: !404, file: !405, line: 40, type: !78)
!414 = !DILocalVariable(name: "w", scope: !404, file: !405, line: 47, type: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !416, line: 37, baseType: !417)
!416 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !264, line: 57, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !264, line: 42, baseType: !84)
!419 = !DILocalVariable(name: "mbs", scope: !404, file: !405, line: 48, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !421, line: 6, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !423, line: 21, baseType: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !424, file: !423, line: 15, baseType: !100, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !424, file: !423, line: 20, baseType: !428, size: 32, offset: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !423, line: 16, size: 32, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !428, file: !423, line: 18, baseType: !84, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !428, file: !423, line: 19, baseType: !116, size: 32)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16, elements: !124)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !435, line: 78, type: !148, isLocal: true, isDefinition: true)
!435 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !435, line: 79, type: !14, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !435, line: 80, type: !49, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !435, line: 81, type: !49, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !435, line: 82, type: !286, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !435, line: 83, type: !123, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !435, line: 84, type: !148, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !435, line: 85, type: !143, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !435, line: 86, type: !143, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !435, line: 87, type: !148, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !456, file: !435, line: 76, type: !542, isLocal: false, isDefinition: true)
!456 = distinct !DICompileUnit(language: DW_LANG_C11, file: !435, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !457, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!457 = !{!458, !472, !82}
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !459, line: 42, baseType: !84, size: 32, elements: !460)
!459 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!461 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!462 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!463 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!464 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!465 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!466 = !DIEnumerator(name: "c_quoting_style", value: 5)
!467 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!468 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!469 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!470 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!471 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !459, line: 254, baseType: !84, size: 32, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!475 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!476 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!477 = !{!99, !100, !101, !102}
!478 = !{!433, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !479, !483, !493, !495, !500, !502, !504, !506, !508, !531, !538, !540}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !456, file: !435, line: 92, type: !481, isLocal: false, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 320, elements: !35)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !456, file: !435, line: 1040, type: !485, isLocal: false, isDefinition: true)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !435, line: 56, size: 448, elements: !486)
!486 = !{!487, !488, !489, !491, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !485, file: !435, line: 59, baseType: !458, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !435, line: 62, baseType: !100, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !485, file: !435, line: 66, baseType: !490, size: 256, offset: 64)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !149)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !485, file: !435, line: 69, baseType: !78, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !485, file: !435, line: 72, baseType: !78, size: 64, offset: 384)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !456, file: !435, line: 107, type: !485, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "slot0", scope: !456, file: !435, line: 831, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 256)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !435, line: 321, type: !123, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !435, line: 357, type: !123, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !435, line: 358, type: !123, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !435, line: 199, type: !143, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "quote", scope: !510, file: !435, line: 228, type: !529, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "gettext_quote", scope: !435, file: !435, line: 197, type: !511, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!78, !78, !458}
!513 = !{!514, !515, !516, !517, !518}
!514 = !DILocalVariable(name: "msgid", arg: 1, scope: !510, file: !435, line: 197, type: !78)
!515 = !DILocalVariable(name: "s", arg: 2, scope: !510, file: !435, line: 197, type: !458)
!516 = !DILocalVariable(name: "translation", scope: !510, file: !435, line: 199, type: !78)
!517 = !DILocalVariable(name: "w", scope: !510, file: !435, line: 229, type: !415)
!518 = !DILocalVariable(name: "mbs", scope: !510, file: !435, line: 230, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !421, line: 6, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !423, line: 21, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !521, file: !423, line: 15, baseType: !100, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !521, file: !423, line: 20, baseType: !525, size: 32, offset: 32)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !423, line: 16, size: 32, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !525, file: !423, line: 18, baseType: !84, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !525, file: !423, line: 19, baseType: !116, size: 32)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !530)
!530 = !{!125, !118}
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "slotvec", scope: !456, file: !435, line: 834, type: !533, isLocal: true, isDefinition: true)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !435, line: 823, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !435, line: 825, baseType: !102, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !534, file: !435, line: 826, baseType: !244, size: 64, offset: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "nslots", scope: !456, file: !435, line: 832, type: !100, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slotvec0", scope: !456, file: !435, line: 833, type: !534, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 704, elements: !544)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!544 = !{!545}
!545 = !DISubrange(count: 11)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !548, line: 67, type: !54, isLocal: true, isDefinition: true)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !548, line: 69, type: !143, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !143, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !116, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !548, line: 85, type: !123, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !548, line: 88, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 171)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !548, line: 88, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 34)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !548, line: 105, type: !59, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !548, line: 109, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 23)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !548, line: 113, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 28)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !548, line: 120, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 32)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !548, line: 127, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 36)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !548, line: 134, type: !170, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !548, line: 142, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 44)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !548, line: 150, type: !598, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 48)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !548, line: 159, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 52)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !548, line: 170, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 60)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !286, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !195, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !286, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !44, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !170, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !548, line: 259, type: !3, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !548, line: 259, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 29)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !630, file: !631, line: 26, type: !633, isLocal: false, isDefinition: true)
!630 = distinct !DICompileUnit(language: DW_LANG_C11, file: !631, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!632 = !{!628}
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 47)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "exit_failure", scope: !638, file: !639, line: 24, type: !641, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !640, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!640 = !{!636}
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !132, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !143, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !165, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !651, file: !652, line: 58, type: !677, isLocal: true, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strtod.Tpo -c lib/c-strtod.c -o lib/.libcoreutils_a-c-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !674, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!653 = !{!244, !654}
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !655, line: 24, baseType: !656)
!655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !657, line: 41, baseType: !658)
!657 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !657, line: 27, size: 1856, elements: !660)
!660 = !{!661, !665, !668, !671, !672}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !659, file: !657, line: 30, baseType: !662, size: 832)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 832, elements: !50)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !657, line: 30, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !659, file: !657, line: 33, baseType: !666, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !659, file: !657, line: 34, baseType: !669, size: 64, offset: 896)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !659, file: !657, line: 35, baseType: !669, size: 64, offset: 960)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !659, file: !657, line: 38, baseType: !673, size: 832, offset: 1024)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 832, elements: !50)
!674 = !{!675, !649}
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !652, line: 66, type: !123, isLocal: true, isDefinition: true)
!677 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !654)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !680, line: 108, type: !29, isLocal: true, isDefinition: true)
!680 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "internal_state", scope: !683, file: !680, line: 97, type: !686, isLocal: true, isDefinition: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, globals: !685, splitDebugInlining: false, nameTableKind: None)
!684 = !{!99, !102, !105}
!685 = !{!678, !681}
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !421, line: 6, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !423, line: 21, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 13, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !688, file: !423, line: 15, baseType: !100, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !688, file: !423, line: 20, baseType: !692, size: 32, offset: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !423, line: 16, size: 32, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !692, file: !423, line: 18, baseType: !84, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !692, file: !423, line: 19, baseType: !116, size: 32)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !698, line: 35, type: !14, isLocal: true, isDefinition: true)
!698 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-cl-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-cl-strtod.Tpo -c lib/cl-strtod.c -o lib/.libcoreutils_a-cl-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !704, retainedTypes: !374, globals: !708, splitDebugInlining: false, nameTableKind: None)
!704 = !{!705}
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 40, baseType: !84, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!708 = !{!546, !549, !551, !553, !555, !557, !562, !567, !569, !574, !579, !584, !589, !591, !596, !601, !606, !611, !613, !615, !617, !619, !621, !623}
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !711, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!711 = !{!712, !724}
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !713, file: !710, line: 188, baseType: !84, size: 32, elements: !722)
!713 = distinct !DISubprogram(name: "x2nrealloc", scope: !710, file: !710, line: 176, type: !714, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !717)
!714 = !DISubroutineType(types: !715)
!715 = !{!99, !99, !716, !102}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(name: "p", arg: 1, scope: !713, file: !710, line: 176, type: !99)
!719 = !DILocalVariable(name: "pn", arg: 2, scope: !713, file: !710, line: 176, type: !716)
!720 = !DILocalVariable(name: "s", arg: 3, scope: !713, file: !710, line: 176, type: !102)
!721 = !DILocalVariable(name: "n", scope: !713, file: !710, line: 178, type: !102)
!722 = !{!723}
!723 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !725, file: !710, line: 228, baseType: !84, size: 32, elements: !722)
!725 = distinct !DISubprogram(name: "xpalloc", scope: !710, file: !710, line: 223, type: !726, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !733)
!726 = !DISubroutineType(types: !727)
!727 = !{!99, !99, !728, !729, !731, !729}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !730, line: 130, baseType: !731)
!730 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !732, line: 18, baseType: !265)
!732 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742}
!734 = !DILocalVariable(name: "pa", arg: 1, scope: !725, file: !710, line: 223, type: !99)
!735 = !DILocalVariable(name: "pn", arg: 2, scope: !725, file: !710, line: 223, type: !728)
!736 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !725, file: !710, line: 223, type: !729)
!737 = !DILocalVariable(name: "n_max", arg: 4, scope: !725, file: !710, line: 223, type: !731)
!738 = !DILocalVariable(name: "s", arg: 5, scope: !725, file: !710, line: 223, type: !729)
!739 = !DILocalVariable(name: "n0", scope: !725, file: !710, line: 230, type: !729)
!740 = !DILocalVariable(name: "n", scope: !725, file: !710, line: 237, type: !729)
!741 = !DILocalVariable(name: "nbytes", scope: !725, file: !710, line: 248, type: !729)
!742 = !DILocalVariable(name: "adjusted_nbytes", scope: !725, file: !710, line: 252, type: !729)
!743 = !{!244, !99}
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !745, splitDebugInlining: false, nameTableKind: None)
!745 = !{!642, !645, !647}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xnanosleep.o -MD -MP -MF lib/.deps/libcoreutils_a-xnanosleep.Tpo -c lib/xnanosleep.c -o lib/.libcoreutils_a-xnanosleep.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !750, line: 10, baseType: !751)
!750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !264, line: 160, baseType: !265)
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dtotimespec.o -MD -MP -MF lib/.deps/libcoreutils_a-dtotimespec.Tpo -c lib/dtotimespec.c -o lib/.libcoreutils_a-dtotimespec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !756, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!756 = !{!757}
!757 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !758, line: 44, baseType: !84, size: 32, elements: !759)
!758 = !DIFile(filename: "lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!759 = !{!760}
!760 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-nanosleep.o -MD -MP -MF lib/.deps/libcoreutils_a-nanosleep.Tpo -c lib/nanosleep.c -o lib/.libcoreutils_a-nanosleep.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !768, line: 37, baseType: !84, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIEnumerator(name: "BILLION", value: 1000000000)
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !776, splitDebugInlining: false, nameTableKind: None)
!776 = !{!777, !696}
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !698, line: 35, type: !123, isLocal: true, isDefinition: true)
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!783 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!784 = !{i32 7, !"Dwarf Version", i32 5}
!785 = !{i32 2, !"Debug Info Version", i32 3}
!786 = !{i32 1, !"wchar_size", i32 4}
!787 = !{i32 8, !"PIC Level", i32 2}
!788 = !{i32 7, !"PIE Level", i32 2}
!789 = !{i32 7, !"uwtable", i32 2}
!790 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!791 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !792, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !100}
!794 = !{!795}
!795 = !DILocalVariable(name: "status", arg: 1, scope: !791, file: !2, line: 36, type: !100)
!796 = !DILocation(line: 0, scope: !791)
!797 = !DILocation(line: 38, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !2, line: 38, column: 7)
!799 = !DILocation(line: 38, column: 7, scope: !791)
!800 = !DILocation(line: 39, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !2, line: 39, column: 5)
!802 = !{!803, !803, i64 0}
!803 = !{!"any pointer", !804, i64 0}
!804 = !{!"omnipotent char", !805, i64 0}
!805 = !{!"Simple C/C++ TBAA"}
!806 = !DILocation(line: 42, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !2, line: 41, column: 5)
!808 = !DILocation(line: 51, column: 7, scope: !807)
!809 = !DILocation(line: 52, column: 7, scope: !807)
!810 = !DILocalVariable(name: "program", arg: 1, scope: !811, file: !75, line: 836, type: !78)
!811 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !75, file: !75, line: 836, type: !812, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !78}
!814 = !{!810, !815, !822, !823, !825, !826}
!815 = !DILocalVariable(name: "infomap", scope: !811, file: !75, line: 838, type: !816)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 896, elements: !144)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !811, file: !75, line: 838, size: 128, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !818, file: !75, line: 838, baseType: !78, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !818, file: !75, line: 838, baseType: !78, size: 64, offset: 64)
!822 = !DILocalVariable(name: "node", scope: !811, file: !75, line: 848, type: !78)
!823 = !DILocalVariable(name: "map_prog", scope: !811, file: !75, line: 849, type: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!825 = !DILocalVariable(name: "lc_messages", scope: !811, file: !75, line: 861, type: !78)
!826 = !DILocalVariable(name: "url_program", scope: !811, file: !75, line: 874, type: !78)
!827 = !DILocation(line: 0, scope: !811, inlinedAt: !828)
!828 = distinct !DILocation(line: 53, column: 7, scope: !807)
!829 = !{}
!830 = !DILocation(line: 857, column: 3, scope: !811, inlinedAt: !828)
!831 = !DILocation(line: 861, column: 29, scope: !811, inlinedAt: !828)
!832 = !DILocation(line: 862, column: 7, scope: !833, inlinedAt: !828)
!833 = distinct !DILexicalBlock(scope: !811, file: !75, line: 862, column: 7)
!834 = !DILocation(line: 862, column: 19, scope: !833, inlinedAt: !828)
!835 = !DILocation(line: 862, column: 22, scope: !833, inlinedAt: !828)
!836 = !DILocation(line: 862, column: 7, scope: !811, inlinedAt: !828)
!837 = !DILocation(line: 868, column: 7, scope: !838, inlinedAt: !828)
!838 = distinct !DILexicalBlock(scope: !833, file: !75, line: 863, column: 5)
!839 = !DILocation(line: 870, column: 5, scope: !838, inlinedAt: !828)
!840 = !DILocation(line: 875, column: 3, scope: !811, inlinedAt: !828)
!841 = !DILocation(line: 877, column: 3, scope: !811, inlinedAt: !828)
!842 = !DILocation(line: 55, column: 3, scope: !791)
!843 = !DISubprogram(name: "dcgettext", scope: !844, file: !844, line: 51, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!845 = !DISubroutineType(types: !846)
!846 = !{!244, !78, !78, !100}
!847 = !DISubprogram(name: "__fprintf_chk", scope: !848, file: !848, line: 93, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!849 = !DISubroutineType(types: !850)
!850 = !{!100, !851, !100, !852, null}
!851 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!853 = !DISubprogram(name: "__printf_chk", scope: !848, file: !848, line: 95, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DISubroutineType(types: !855)
!855 = !{!100, !100, !852, null}
!856 = !DILocation(line: 0, scope: !74)
!857 = !DILocation(line: 581, column: 7, scope: !221)
!858 = !{!859, !859, i64 0}
!859 = !{!"int", !804, i64 0}
!860 = !DILocation(line: 581, column: 19, scope: !221)
!861 = !DILocation(line: 581, column: 7, scope: !74)
!862 = !DILocation(line: 585, column: 26, scope: !220)
!863 = !DILocation(line: 0, scope: !220)
!864 = !DILocation(line: 586, column: 23, scope: !220)
!865 = !DILocation(line: 586, column: 28, scope: !220)
!866 = !DILocation(line: 586, column: 32, scope: !220)
!867 = !{!804, !804, i64 0}
!868 = !DILocation(line: 586, column: 38, scope: !220)
!869 = !DILocalVariable(name: "__s1", arg: 1, scope: !870, file: !871, line: 1359, type: !78)
!870 = distinct !DISubprogram(name: "streq", scope: !871, file: !871, line: 1359, type: !872, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !874)
!871 = !DIFile(filename: "./lib/string.h", directory: "/src")
!872 = !DISubroutineType(types: !873)
!873 = !{!223, !78, !78}
!874 = !{!869, !875}
!875 = !DILocalVariable(name: "__s2", arg: 2, scope: !870, file: !871, line: 1359, type: !78)
!876 = !DILocation(line: 0, scope: !870, inlinedAt: !877)
!877 = distinct !DILocation(line: 586, column: 41, scope: !220)
!878 = !DILocation(line: 1361, column: 11, scope: !870, inlinedAt: !877)
!879 = !DILocation(line: 1361, column: 10, scope: !870, inlinedAt: !877)
!880 = !DILocation(line: 586, column: 19, scope: !220)
!881 = !DILocation(line: 587, column: 5, scope: !220)
!882 = !DILocation(line: 588, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !74, file: !75, line: 588, column: 7)
!884 = !DILocation(line: 588, column: 7, scope: !74)
!885 = !DILocation(line: 590, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !75, line: 589, column: 5)
!887 = !DILocation(line: 591, column: 7, scope: !886)
!888 = !DILocation(line: 595, column: 37, scope: !74)
!889 = !DILocation(line: 595, column: 35, scope: !74)
!890 = !DILocation(line: 596, column: 29, scope: !74)
!891 = !DILocation(line: 597, column: 8, scope: !229)
!892 = !DILocation(line: 597, column: 7, scope: !74)
!893 = !DILocation(line: 604, column: 24, scope: !228)
!894 = !DILocation(line: 604, column: 12, scope: !229)
!895 = !DILocation(line: 0, scope: !227)
!896 = !DILocation(line: 610, column: 16, scope: !227)
!897 = !DILocation(line: 610, column: 7, scope: !227)
!898 = !DILocation(line: 611, column: 21, scope: !227)
!899 = !{!900, !900, i64 0}
!900 = !{!"short", !804, i64 0}
!901 = !DILocation(line: 611, column: 19, scope: !227)
!902 = !DILocation(line: 611, column: 16, scope: !227)
!903 = !DILocation(line: 610, column: 30, scope: !227)
!904 = distinct !{!904, !897, !898, !905}
!905 = !{!"llvm.loop.mustprogress"}
!906 = !DILocation(line: 612, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !227, file: !75, line: 612, column: 11)
!908 = !DILocation(line: 612, column: 11, scope: !227)
!909 = !DILocation(line: 620, column: 23, scope: !74)
!910 = !DILocation(line: 625, column: 39, scope: !74)
!911 = !DILocation(line: 626, column: 3, scope: !74)
!912 = !DILocation(line: 626, column: 10, scope: !74)
!913 = !DILocation(line: 626, column: 21, scope: !74)
!914 = !DILocation(line: 628, column: 44, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !75, line: 628, column: 11)
!916 = distinct !DILexicalBlock(scope: !74, file: !75, line: 627, column: 5)
!917 = !DILocation(line: 628, column: 32, scope: !915)
!918 = !DILocation(line: 628, column: 49, scope: !915)
!919 = !DILocation(line: 628, column: 11, scope: !916)
!920 = !DILocation(line: 630, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !75, line: 630, column: 11)
!922 = !DILocation(line: 630, column: 11, scope: !916)
!923 = !DILocation(line: 632, column: 26, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !75, line: 632, column: 15)
!925 = distinct !DILexicalBlock(scope: !921, file: !75, line: 631, column: 9)
!926 = !DILocation(line: 632, column: 34, scope: !924)
!927 = !DILocation(line: 632, column: 37, scope: !924)
!928 = !DILocation(line: 632, column: 15, scope: !925)
!929 = !DILocation(line: 636, column: 16, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !75, line: 636, column: 15)
!931 = !DILocation(line: 636, column: 29, scope: !930)
!932 = !DILocation(line: 640, column: 16, scope: !916)
!933 = distinct !{!933, !911, !934, !905}
!934 = !DILocation(line: 641, column: 5, scope: !74)
!935 = !DILocation(line: 644, column: 3, scope: !74)
!936 = !DILocation(line: 0, scope: !870, inlinedAt: !937)
!937 = distinct !DILocation(line: 648, column: 31, scope: !74)
!938 = !DILocation(line: 0, scope: !870, inlinedAt: !939)
!939 = distinct !DILocation(line: 649, column: 31, scope: !74)
!940 = !DILocation(line: 0, scope: !870, inlinedAt: !941)
!941 = distinct !DILocation(line: 650, column: 31, scope: !74)
!942 = !DILocation(line: 0, scope: !870, inlinedAt: !943)
!943 = distinct !DILocation(line: 651, column: 31, scope: !74)
!944 = !DILocation(line: 0, scope: !870, inlinedAt: !945)
!945 = distinct !DILocation(line: 652, column: 31, scope: !74)
!946 = !DILocation(line: 0, scope: !870, inlinedAt: !947)
!947 = distinct !DILocation(line: 653, column: 31, scope: !74)
!948 = !DILocation(line: 0, scope: !870, inlinedAt: !949)
!949 = distinct !DILocation(line: 654, column: 31, scope: !74)
!950 = !DILocation(line: 0, scope: !870, inlinedAt: !951)
!951 = distinct !DILocation(line: 655, column: 31, scope: !74)
!952 = !DILocation(line: 0, scope: !870, inlinedAt: !953)
!953 = distinct !DILocation(line: 656, column: 31, scope: !74)
!954 = !DILocation(line: 0, scope: !870, inlinedAt: !955)
!955 = distinct !DILocation(line: 657, column: 31, scope: !74)
!956 = !DILocation(line: 663, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !74, file: !75, line: 663, column: 7)
!958 = !DILocation(line: 664, column: 7, scope: !957)
!959 = !DILocation(line: 664, column: 10, scope: !957)
!960 = !DILocation(line: 663, column: 7, scope: !74)
!961 = !DILocation(line: 669, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !75, line: 665, column: 5)
!963 = !DILocation(line: 671, column: 5, scope: !962)
!964 = !DILocation(line: 676, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !957, file: !75, line: 673, column: 5)
!966 = !DILocation(line: 679, column: 3, scope: !74)
!967 = !DILocation(line: 683, column: 3, scope: !74)
!968 = !DILocation(line: 686, column: 3, scope: !74)
!969 = !DILocation(line: 688, column: 3, scope: !74)
!970 = !DILocation(line: 691, column: 3, scope: !74)
!971 = !DILocation(line: 695, column: 3, scope: !74)
!972 = !DILocation(line: 696, column: 1, scope: !74)
!973 = !DISubprogram(name: "setlocale", scope: !974, file: !974, line: 122, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!975 = !DISubroutineType(types: !976)
!976 = !{!244, !100, !78}
!977 = !DISubprogram(name: "strncmp", scope: !978, file: !978, line: 159, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!979 = !DISubroutineType(types: !980)
!980 = !{!100, !78, !78, !102}
!981 = !DISubprogram(name: "fputs_unlocked", scope: !982, file: !982, line: 691, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!983 = !DISubroutineType(types: !984)
!984 = !{!100, !852, !851}
!985 = !DISubprogram(name: "exit", scope: !986, file: !986, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!986 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!987 = !DISubprogram(name: "getenv", scope: !986, file: !986, line: 641, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{!244, !78}
!990 = !DISubprogram(name: "strcmp", scope: !978, file: !978, line: 156, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!100, !78, !78}
!993 = !DISubprogram(name: "strspn", scope: !978, file: !978, line: 297, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!104, !78, !78}
!996 = !DISubprogram(name: "strchr", scope: !978, file: !978, line: 246, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!244, !78, !100}
!999 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1003 = !DISubprogram(name: "strcspn", scope: !978, file: !978, line: 293, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubprogram(name: "fwrite_unlocked", scope: !982, file: !982, line: 704, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!102, !1007, !102, !102, !851}
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1010 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 94, type: !1011, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1014)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!100, !100, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1014 = !{!1015, !1016, !1017, !1019, !1020, !1022, !1025, !1026}
!1015 = !DILocalVariable(name: "argc", arg: 1, scope: !1010, file: !2, line: 94, type: !100)
!1016 = !DILocalVariable(name: "argv", arg: 2, scope: !1010, file: !2, line: 94, type: !1013)
!1017 = !DILocalVariable(name: "seconds", scope: !1010, file: !2, line: 96, type: !1018)
!1018 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1019 = !DILocalVariable(name: "ok", scope: !1010, file: !2, line: 97, type: !223)
!1020 = !DILocalVariable(name: "i", scope: !1021, file: !2, line: 117, type: !100)
!1021 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 117, column: 3)
!1022 = !DILocalVariable(name: "p", scope: !1023, file: !2, line: 119, type: !244)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 118, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 117, column: 3)
!1025 = !DILocalVariable(name: "duration", scope: !1023, file: !2, line: 121, type: !1018)
!1026 = !DILocalVariable(name: "s", scope: !1023, file: !2, line: 122, type: !1018)
!1027 = distinct !DIAssignID()
!1028 = !DILocation(line: 0, scope: !1023)
!1029 = !DILocation(line: 0, scope: !1010)
!1030 = !DILocation(line: 100, column: 21, scope: !1010)
!1031 = !DILocation(line: 100, column: 3, scope: !1010)
!1032 = !DILocation(line: 101, column: 3, scope: !1010)
!1033 = !DILocation(line: 102, column: 3, scope: !1010)
!1034 = !DILocation(line: 103, column: 3, scope: !1010)
!1035 = !DILocation(line: 105, column: 3, scope: !1010)
!1036 = !DILocation(line: 108, column: 36, scope: !1010)
!1037 = !DILocation(line: 108, column: 58, scope: !1010)
!1038 = !DILocation(line: 107, column: 3, scope: !1010)
!1039 = !DILocation(line: 111, column: 12, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 111, column: 7)
!1041 = !DILocation(line: 111, column: 7, scope: !1010)
!1042 = !DILocation(line: 113, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 112, column: 5)
!1044 = !DILocation(line: 114, column: 7, scope: !1043)
!1045 = !DILocation(line: 117, column: 16, scope: !1021)
!1046 = !DILocation(line: 0, scope: !1021)
!1047 = !DILocation(line: 117, column: 26, scope: !1024)
!1048 = !DILocation(line: 117, column: 3, scope: !1021)
!1049 = !DILocation(line: 138, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 138, column: 7)
!1051 = !DILocation(line: 138, column: 7, scope: !1010)
!1052 = !DILocation(line: 119, column: 7, scope: !1023)
!1053 = !DILocation(line: 120, column: 13, scope: !1023)
!1054 = !DILocation(line: 121, column: 36, scope: !1023)
!1055 = !DILocation(line: 121, column: 25, scope: !1023)
!1056 = !DILocation(line: 122, column: 45, scope: !1023)
!1057 = !DILocalVariable(name: "c", arg: 1, scope: !1058, file: !1059, line: 54, type: !1018)
!1058 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1059, file: !1059, line: 54, type: !1060, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1062)
!1059 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1018, !1018, !100}
!1062 = !{!1057, !1063, !1064}
!1063 = !DILocalVariable(name: "err", arg: 2, scope: !1058, file: !1059, line: 54, type: !100)
!1064 = !DILocalVariable(name: "phi", scope: !1058, file: !1059, line: 70, type: !1018)
!1065 = !DILocation(line: 0, scope: !1058, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 122, column: 18, scope: !1023)
!1067 = !DILocation(line: 60, column: 11, scope: !1068, inlinedAt: !1066)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !1059, line: 60, column: 7)
!1069 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1066)
!1070 = !DILocation(line: 123, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 123, column: 11)
!1072 = !DILocation(line: 123, column: 22, scope: !1071)
!1073 = !DILocation(line: 123, column: 19, scope: !1071)
!1074 = !DILocation(line: 125, column: 11, scope: !1071)
!1075 = !DILocation(line: 127, column: 15, scope: !1071)
!1076 = !DILocation(line: 127, column: 18, scope: !1071)
!1077 = !DILocation(line: 127, column: 25, scope: !1071)
!1078 = !DILocation(line: 127, column: 21, scope: !1071)
!1079 = !DILocation(line: 129, column: 11, scope: !1071)
!1080 = !DILocalVariable(name: "x", arg: 1, scope: !1081, file: !2, line: 65, type: !1084)
!1081 = distinct !DISubprogram(name: "apply_suffix", scope: !2, file: !2, line: 65, type: !1082, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1085)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!223, !1084, !4}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1085 = !{!1080, !1086, !1087}
!1086 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1081, file: !2, line: 65, type: !4)
!1087 = !DILocalVariable(name: "multiplier", scope: !1081, file: !2, line: 67, type: !100)
!1088 = !DILocation(line: 0, scope: !1081, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 129, column: 16, scope: !1071)
!1090 = !DILocation(line: 69, column: 3, scope: !1081, inlinedAt: !1089)
!1091 = !DILocation(line: 77, column: 7, scope: !1092, inlinedAt: !1089)
!1092 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 70, column: 5)
!1093 = !DILocation(line: 80, column: 7, scope: !1092, inlinedAt: !1089)
!1094 = !DILocation(line: 83, column: 7, scope: !1092, inlinedAt: !1089)
!1095 = !DILocation(line: 0, scope: !1092, inlinedAt: !1089)
!1096 = !DILocation(line: 88, column: 28, scope: !1081, inlinedAt: !1089)
!1097 = !DILocation(line: 0, scope: !1058, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 88, column: 8, scope: !1081, inlinedAt: !1089)
!1099 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1098)
!1100 = !DILocation(line: 123, column: 11, scope: !1023)
!1101 = !DILocation(line: 131, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 130, column: 9)
!1103 = !DILocation(line: 133, column: 9, scope: !1102)
!1104 = !DILocation(line: 122, column: 14, scope: !1023)
!1105 = !DILocation(line: 135, column: 42, scope: !1023)
!1106 = !DILocation(line: 0, scope: !1058, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 135, column: 17, scope: !1023)
!1108 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1107)
!1109 = !DILocation(line: 136, column: 5, scope: !1024)
!1110 = !DILocation(line: 117, column: 35, scope: !1024)
!1111 = distinct !{!1111, !1048, !1112, !905}
!1112 = !DILocation(line: 136, column: 5, scope: !1021)
!1113 = !DILocation(line: 139, column: 5, scope: !1050)
!1114 = !DILocation(line: 141, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 141, column: 7)
!1116 = !DILocation(line: 141, column: 7, scope: !1010)
!1117 = !DILocation(line: 142, column: 5, scope: !1115)
!1118 = !DILocation(line: 144, column: 3, scope: !1010)
!1119 = !DISubprogram(name: "bindtextdomain", scope: !844, file: !844, line: 86, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!244, !78, !78}
!1122 = !DISubprogram(name: "textdomain", scope: !844, file: !844, line: 82, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubprogram(name: "atexit", scope: !986, file: !986, line: 602, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!100, !365}
!1126 = !DISubprogram(name: "__errno_location", scope: !1127, file: !1127, line: 37, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!390}
!1130 = distinct !DISubprogram(name: "cl_strtod", scope: !700, file: !700, line: 59, type: !1131, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !1134)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1018, !78, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1013)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1142, !1143}
!1135 = !DILocalVariable(name: "nptr", arg: 1, scope: !1130, file: !700, line: 59, type: !78)
!1136 = !DILocalVariable(name: "endptr", arg: 2, scope: !1130, file: !700, line: 59, type: !1133)
!1137 = !DILocalVariable(name: "end", scope: !1130, file: !700, line: 61, type: !244)
!1138 = !DILocalVariable(name: "d", scope: !1130, file: !700, line: 62, type: !1018)
!1139 = !DILocalVariable(name: "strtod_errno", scope: !1140, file: !700, line: 65, type: !100)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !700, line: 64, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1130, file: !700, line: 63, column: 7)
!1142 = !DILocalVariable(name: "c_end", scope: !1140, file: !700, line: 66, type: !244)
!1143 = !DILocalVariable(name: "c", scope: !1140, file: !700, line: 67, type: !1018)
!1144 = distinct !DIAssignID()
!1145 = !DILocation(line: 0, scope: !1130)
!1146 = distinct !DIAssignID()
!1147 = !DILocation(line: 0, scope: !1140)
!1148 = !DILocation(line: 61, column: 3, scope: !1130)
!1149 = !DILocation(line: 62, column: 14, scope: !1130)
!1150 = !DILocation(line: 63, column: 8, scope: !1141)
!1151 = !DILocation(line: 63, column: 7, scope: !1141)
!1152 = !DILocation(line: 63, column: 7, scope: !1130)
!1153 = !DILocation(line: 65, column: 26, scope: !1140)
!1154 = !DILocation(line: 66, column: 7, scope: !1140)
!1155 = !DILocation(line: 67, column: 18, scope: !1140)
!1156 = !DILocation(line: 68, column: 17, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1140, file: !700, line: 68, column: 11)
!1158 = !DILocation(line: 68, column: 15, scope: !1157)
!1159 = !DILocation(line: 68, column: 11, scope: !1140)
!1160 = !DILocation(line: 71, column: 15, scope: !1157)
!1161 = !DILocation(line: 72, column: 5, scope: !1141)
!1162 = !DILocation(line: 72, column: 5, scope: !1140)
!1163 = !DILocation(line: 73, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1130, file: !700, line: 73, column: 7)
!1165 = !DILocation(line: 73, column: 7, scope: !1130)
!1166 = !DILocation(line: 74, column: 13, scope: !1164)
!1167 = !DILocation(line: 74, column: 5, scope: !1164)
!1168 = !DILocation(line: 76, column: 1, scope: !1130)
!1169 = !DILocation(line: 75, column: 3, scope: !1130)
!1170 = !DISubprogram(name: "strtod", scope: !986, file: !986, line: 118, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1018, !852, !1133}
!1173 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !305, file: !305, line: 50, type: !812, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1174)
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "file", arg: 1, scope: !1173, file: !305, line: 50, type: !78)
!1176 = !DILocation(line: 0, scope: !1173)
!1177 = !DILocation(line: 52, column: 13, scope: !1173)
!1178 = !DILocation(line: 53, column: 1, scope: !1173)
!1179 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !305, file: !305, line: 87, type: !1180, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !223}
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "ignore", arg: 1, scope: !1179, file: !305, line: 87, type: !223)
!1184 = !DILocation(line: 0, scope: !1179)
!1185 = !DILocation(line: 89, column: 16, scope: !1179)
!1186 = !{!1187, !1187, i64 0}
!1187 = !{!"_Bool", !804, i64 0}
!1188 = !DILocation(line: 90, column: 1, scope: !1179)
!1189 = distinct !DISubprogram(name: "close_stdout", scope: !305, file: !305, line: 116, type: !366, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1190)
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "write_error", scope: !1192, file: !305, line: 121, type: !78)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !305, line: 120, column: 5)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !305, line: 118, column: 7)
!1194 = !DILocation(line: 118, column: 21, scope: !1193)
!1195 = !DILocation(line: 118, column: 7, scope: !1193)
!1196 = !DILocation(line: 118, column: 29, scope: !1193)
!1197 = !DILocation(line: 119, column: 7, scope: !1193)
!1198 = !DILocation(line: 119, column: 12, scope: !1193)
!1199 = !{i8 0, i8 2}
!1200 = !DILocation(line: 119, column: 25, scope: !1193)
!1201 = !DILocation(line: 119, column: 28, scope: !1193)
!1202 = !DILocation(line: 119, column: 34, scope: !1193)
!1203 = !DILocation(line: 118, column: 7, scope: !1189)
!1204 = !DILocation(line: 121, column: 33, scope: !1192)
!1205 = !DILocation(line: 0, scope: !1192)
!1206 = !DILocation(line: 122, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !305, line: 122, column: 11)
!1208 = !DILocation(line: 0, scope: !1207)
!1209 = !DILocation(line: 122, column: 11, scope: !1192)
!1210 = !DILocation(line: 123, column: 9, scope: !1207)
!1211 = !DILocation(line: 126, column: 9, scope: !1207)
!1212 = !DILocation(line: 128, column: 14, scope: !1192)
!1213 = !DILocation(line: 128, column: 7, scope: !1192)
!1214 = !DILocation(line: 133, column: 42, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1189, file: !305, line: 133, column: 7)
!1216 = !DILocation(line: 133, column: 28, scope: !1215)
!1217 = !DILocation(line: 133, column: 50, scope: !1215)
!1218 = !DILocation(line: 133, column: 7, scope: !1189)
!1219 = !DILocation(line: 134, column: 12, scope: !1215)
!1220 = !DILocation(line: 134, column: 5, scope: !1215)
!1221 = !DILocation(line: 135, column: 1, scope: !1189)
!1222 = !DISubprogram(name: "_exit", scope: !1223, file: !1223, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1223 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1224 = distinct !DISubprogram(name: "verror", scope: !320, file: !320, line: 251, type: !1225, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !100, !100, !78, !330}
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DILocalVariable(name: "status", arg: 1, scope: !1224, file: !320, line: 251, type: !100)
!1229 = !DILocalVariable(name: "errnum", arg: 2, scope: !1224, file: !320, line: 251, type: !100)
!1230 = !DILocalVariable(name: "message", arg: 3, scope: !1224, file: !320, line: 251, type: !78)
!1231 = !DILocalVariable(name: "args", arg: 4, scope: !1224, file: !320, line: 251, type: !330)
!1232 = !DILocation(line: 0, scope: !1224)
!1233 = !DILocation(line: 261, column: 3, scope: !1224)
!1234 = !DILocation(line: 265, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1224, file: !320, line: 265, column: 7)
!1236 = !DILocation(line: 265, column: 7, scope: !1224)
!1237 = !DILocation(line: 266, column: 5, scope: !1235)
!1238 = !DILocation(line: 272, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !320, line: 268, column: 5)
!1240 = !DILocation(line: 276, column: 3, scope: !1224)
!1241 = !DILocation(line: 282, column: 1, scope: !1224)
!1242 = distinct !DISubprogram(name: "flush_stdout", scope: !320, file: !320, line: 163, type: !366, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "stdout_fd", scope: !1242, file: !320, line: 166, type: !100)
!1245 = !DILocation(line: 0, scope: !1242)
!1246 = !DILocalVariable(name: "fd", arg: 1, scope: !1247, file: !320, line: 145, type: !100)
!1247 = distinct !DISubprogram(name: "is_open", scope: !320, file: !320, line: 145, type: !1248, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!100, !100}
!1250 = !{!1246}
!1251 = !DILocation(line: 0, scope: !1247, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 182, column: 25, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1242, file: !320, line: 182, column: 7)
!1254 = !DILocation(line: 157, column: 15, scope: !1247, inlinedAt: !1252)
!1255 = !DILocation(line: 157, column: 12, scope: !1247, inlinedAt: !1252)
!1256 = !DILocation(line: 182, column: 7, scope: !1242)
!1257 = !DILocation(line: 184, column: 5, scope: !1253)
!1258 = !DILocation(line: 185, column: 1, scope: !1242)
!1259 = distinct !DISubprogram(name: "error_tail", scope: !320, file: !320, line: 219, type: !1225, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DILocalVariable(name: "status", arg: 1, scope: !1259, file: !320, line: 219, type: !100)
!1262 = !DILocalVariable(name: "errnum", arg: 2, scope: !1259, file: !320, line: 219, type: !100)
!1263 = !DILocalVariable(name: "message", arg: 3, scope: !1259, file: !320, line: 219, type: !78)
!1264 = !DILocalVariable(name: "args", arg: 4, scope: !1259, file: !320, line: 219, type: !330)
!1265 = distinct !DIAssignID()
!1266 = !DILocation(line: 0, scope: !1259)
!1267 = !DILocation(line: 229, column: 13, scope: !1259)
!1268 = !DILocalVariable(name: "__stream", arg: 1, scope: !1269, file: !848, line: 132, type: !1272)
!1269 = distinct !DISubprogram(name: "vfprintf", scope: !848, file: !848, line: 132, type: !1270, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1307)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!100, !1272, !852, !330}
!1272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1275, file: !240, line: 51, baseType: !100, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1275, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1275, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1275, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1275, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1275, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1275, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1275, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1275, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1275, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1275, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1275, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1275, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1275, file: !240, line: 70, baseType: !1291, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1275, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1275, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1275, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1275, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1275, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1275, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1275, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1275, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1275, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1275, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1275, file: !240, line: 93, baseType: !1291, size: 64, offset: 1344)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1275, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1275, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1275, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1275, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!1307 = !{!1268, !1308, !1309}
!1308 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1269, file: !848, line: 133, type: !852)
!1309 = !DILocalVariable(name: "__ap", arg: 3, scope: !1269, file: !848, line: 133, type: !330)
!1310 = !DILocation(line: 0, scope: !1269, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 229, column: 3, scope: !1259)
!1312 = !DILocation(line: 135, column: 10, scope: !1269, inlinedAt: !1311)
!1313 = !DILocation(line: 232, column: 3, scope: !1259)
!1314 = !DILocation(line: 233, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1259, file: !320, line: 233, column: 7)
!1316 = !DILocation(line: 233, column: 7, scope: !1259)
!1317 = !DILocalVariable(name: "errbuf", scope: !1318, file: !320, line: 193, type: !1322)
!1318 = distinct !DISubprogram(name: "print_errno_message", scope: !320, file: !320, line: 188, type: !792, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1317}
!1320 = !DILocalVariable(name: "errnum", arg: 1, scope: !1318, file: !320, line: 188, type: !100)
!1321 = !DILocalVariable(name: "s", scope: !1318, file: !320, line: 190, type: !78)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 1024)
!1325 = !DILocation(line: 0, scope: !1318, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 234, column: 5, scope: !1315)
!1327 = !DILocation(line: 193, column: 3, scope: !1318, inlinedAt: !1326)
!1328 = !DILocation(line: 195, column: 7, scope: !1318, inlinedAt: !1326)
!1329 = !DILocation(line: 207, column: 9, scope: !1330, inlinedAt: !1326)
!1330 = distinct !DILexicalBlock(scope: !1318, file: !320, line: 207, column: 7)
!1331 = !DILocation(line: 207, column: 7, scope: !1318, inlinedAt: !1326)
!1332 = !DILocation(line: 208, column: 9, scope: !1330, inlinedAt: !1326)
!1333 = !DILocation(line: 208, column: 5, scope: !1330, inlinedAt: !1326)
!1334 = !DILocation(line: 214, column: 3, scope: !1318, inlinedAt: !1326)
!1335 = !DILocation(line: 216, column: 1, scope: !1318, inlinedAt: !1326)
!1336 = !DILocation(line: 234, column: 5, scope: !1315)
!1337 = !DILocation(line: 238, column: 3, scope: !1259)
!1338 = !DILocalVariable(name: "__c", arg: 1, scope: !1339, file: !1340, line: 101, type: !100)
!1339 = distinct !DISubprogram(name: "putc_unlocked", scope: !1340, file: !1340, line: 101, type: !1341, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1343)
!1340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!100, !100, !1273}
!1343 = !{!1338, !1344}
!1344 = !DILocalVariable(name: "__stream", arg: 2, scope: !1339, file: !1340, line: 101, type: !1273)
!1345 = !DILocation(line: 0, scope: !1339, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 238, column: 3, scope: !1259)
!1347 = !DILocation(line: 103, column: 10, scope: !1339, inlinedAt: !1346)
!1348 = !{!1349, !803, i64 40}
!1349 = !{!"_IO_FILE", !859, i64 0, !803, i64 8, !803, i64 16, !803, i64 24, !803, i64 32, !803, i64 40, !803, i64 48, !803, i64 56, !803, i64 64, !803, i64 72, !803, i64 80, !803, i64 88, !803, i64 96, !803, i64 104, !859, i64 112, !859, i64 116, !1350, i64 120, !900, i64 128, !804, i64 130, !804, i64 131, !803, i64 136, !1350, i64 144, !803, i64 152, !803, i64 160, !803, i64 168, !803, i64 176, !1350, i64 184, !859, i64 192, !804, i64 196}
!1350 = !{!"long", !804, i64 0}
!1351 = !{!1349, !803, i64 48}
!1352 = !{!"branch_weights", i32 2000, i32 1}
!1353 = !DILocation(line: 240, column: 3, scope: !1259)
!1354 = !DILocation(line: 241, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1259, file: !320, line: 241, column: 7)
!1356 = !DILocation(line: 241, column: 7, scope: !1259)
!1357 = !DILocation(line: 242, column: 5, scope: !1355)
!1358 = !DILocation(line: 243, column: 1, scope: !1259)
!1359 = !DISubprogram(name: "__vfprintf_chk", scope: !848, file: !848, line: 96, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!100, !1272, !100, !852, !330}
!1362 = !DISubprogram(name: "strerror_r", scope: !978, file: !978, line: 444, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!244, !100, !244, !102}
!1365 = !DISubprogram(name: "__overflow", scope: !982, file: !982, line: 886, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!100, !1273, !100}
!1368 = !DISubprogram(name: "fflush_unlocked", scope: !982, file: !982, line: 239, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!100, !1273}
!1371 = !DISubprogram(name: "fcntl", scope: !1372, file: !1372, line: 149, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!100, !100, !100, null}
!1375 = distinct !DISubprogram(name: "error", scope: !320, file: !320, line: 285, type: !1376, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !100, !100, !78, null}
!1378 = !{!1379, !1380, !1381, !1382}
!1379 = !DILocalVariable(name: "status", arg: 1, scope: !1375, file: !320, line: 285, type: !100)
!1380 = !DILocalVariable(name: "errnum", arg: 2, scope: !1375, file: !320, line: 285, type: !100)
!1381 = !DILocalVariable(name: "message", arg: 3, scope: !1375, file: !320, line: 285, type: !78)
!1382 = !DILocalVariable(name: "ap", scope: !1375, file: !320, line: 287, type: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !982, line: 52, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1385, line: 12, baseType: !1386)
!1385 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !320, baseType: !1387)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !30)
!1388 = distinct !DIAssignID()
!1389 = !DILocation(line: 0, scope: !1375)
!1390 = !DILocation(line: 287, column: 3, scope: !1375)
!1391 = !DILocation(line: 288, column: 3, scope: !1375)
!1392 = !DILocation(line: 289, column: 3, scope: !1375)
!1393 = !DILocation(line: 290, column: 3, scope: !1375)
!1394 = !DILocation(line: 291, column: 1, scope: !1375)
!1395 = !DILocation(line: 0, scope: !327)
!1396 = !DILocation(line: 302, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !327, file: !320, line: 302, column: 7)
!1398 = !DILocation(line: 302, column: 7, scope: !327)
!1399 = !DILocation(line: 307, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !320, line: 307, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !320, line: 303, column: 5)
!1402 = !DILocation(line: 307, column: 27, scope: !1400)
!1403 = !DILocation(line: 308, column: 11, scope: !1400)
!1404 = !DILocation(line: 308, column: 28, scope: !1400)
!1405 = !DILocation(line: 308, column: 25, scope: !1400)
!1406 = !DILocation(line: 309, column: 15, scope: !1400)
!1407 = !DILocation(line: 309, column: 33, scope: !1400)
!1408 = !DILocation(line: 310, column: 19, scope: !1400)
!1409 = !DILocation(line: 311, column: 22, scope: !1400)
!1410 = !DILocation(line: 311, column: 56, scope: !1400)
!1411 = !DILocation(line: 307, column: 11, scope: !1401)
!1412 = !DILocation(line: 316, column: 21, scope: !1401)
!1413 = !DILocation(line: 317, column: 23, scope: !1401)
!1414 = !DILocation(line: 318, column: 5, scope: !1401)
!1415 = !DILocation(line: 327, column: 3, scope: !327)
!1416 = !DILocation(line: 331, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !327, file: !320, line: 331, column: 7)
!1418 = !DILocation(line: 331, column: 7, scope: !327)
!1419 = !DILocation(line: 332, column: 5, scope: !1417)
!1420 = !DILocation(line: 338, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !320, line: 334, column: 5)
!1422 = !DILocation(line: 346, column: 3, scope: !327)
!1423 = !DILocation(line: 350, column: 3, scope: !327)
!1424 = !DILocation(line: 356, column: 1, scope: !327)
!1425 = distinct !DISubprogram(name: "error_at_line", scope: !320, file: !320, line: 359, type: !1426, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !100, !100, !78, !84, !78, null}
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434}
!1429 = !DILocalVariable(name: "status", arg: 1, scope: !1425, file: !320, line: 359, type: !100)
!1430 = !DILocalVariable(name: "errnum", arg: 2, scope: !1425, file: !320, line: 359, type: !100)
!1431 = !DILocalVariable(name: "file_name", arg: 3, scope: !1425, file: !320, line: 359, type: !78)
!1432 = !DILocalVariable(name: "line_number", arg: 4, scope: !1425, file: !320, line: 360, type: !84)
!1433 = !DILocalVariable(name: "message", arg: 5, scope: !1425, file: !320, line: 360, type: !78)
!1434 = !DILocalVariable(name: "ap", scope: !1425, file: !320, line: 362, type: !1383)
!1435 = distinct !DIAssignID()
!1436 = !DILocation(line: 0, scope: !1425)
!1437 = !DILocation(line: 362, column: 3, scope: !1425)
!1438 = !DILocation(line: 363, column: 3, scope: !1425)
!1439 = !DILocation(line: 364, column: 3, scope: !1425)
!1440 = !DILocation(line: 366, column: 3, scope: !1425)
!1441 = !DILocation(line: 367, column: 1, scope: !1425)
!1442 = distinct !DISubprogram(name: "getprogname", scope: !702, file: !702, line: 54, type: !1443, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!78}
!1445 = !DILocation(line: 58, column: 10, scope: !1442)
!1446 = !DILocation(line: 58, column: 3, scope: !1442)
!1447 = distinct !DISubprogram(name: "parse_long_options", scope: !370, file: !370, line: 45, type: !1448, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !1451)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !100, !1013, !78, !78, !78, !1450, null}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1462}
!1452 = !DILocalVariable(name: "argc", arg: 1, scope: !1447, file: !370, line: 45, type: !100)
!1453 = !DILocalVariable(name: "argv", arg: 2, scope: !1447, file: !370, line: 46, type: !1013)
!1454 = !DILocalVariable(name: "command_name", arg: 3, scope: !1447, file: !370, line: 47, type: !78)
!1455 = !DILocalVariable(name: "package", arg: 4, scope: !1447, file: !370, line: 48, type: !78)
!1456 = !DILocalVariable(name: "version", arg: 5, scope: !1447, file: !370, line: 49, type: !78)
!1457 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1447, file: !370, line: 50, type: !1450)
!1458 = !DILocalVariable(name: "saved_opterr", scope: !1447, file: !370, line: 53, type: !100)
!1459 = !DILocalVariable(name: "c", scope: !1460, file: !370, line: 60, type: !100)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !370, line: 59, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1447, file: !370, line: 58, column: 7)
!1462 = !DILocalVariable(name: "authors", scope: !1463, file: !370, line: 71, type: !1467)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !370, line: 70, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !370, line: 64, column: 13)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !370, line: 62, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !370, line: 61, column: 11)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !982, line: 52, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1385, line: 12, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !370, baseType: !1470)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 192, elements: !30)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1471, file: !370, line: 71, baseType: !84, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1471, file: !370, line: 71, baseType: !84, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1471, file: !370, line: 71, baseType: !99, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1471, file: !370, line: 71, baseType: !99, size: 64, offset: 128)
!1477 = distinct !DIAssignID()
!1478 = !DILocation(line: 0, scope: !1463)
!1479 = !DILocation(line: 0, scope: !1447)
!1480 = !DILocation(line: 53, column: 22, scope: !1447)
!1481 = !DILocation(line: 56, column: 10, scope: !1447)
!1482 = !DILocation(line: 58, column: 12, scope: !1461)
!1483 = !DILocation(line: 58, column: 7, scope: !1447)
!1484 = !DILocation(line: 60, column: 15, scope: !1460)
!1485 = !DILocation(line: 0, scope: !1460)
!1486 = !DILocation(line: 61, column: 11, scope: !1460)
!1487 = !DILocation(line: 66, column: 15, scope: !1464)
!1488 = !DILocation(line: 67, column: 15, scope: !1464)
!1489 = !DILocation(line: 71, column: 17, scope: !1463)
!1490 = !DILocation(line: 72, column: 17, scope: !1463)
!1491 = !DILocation(line: 73, column: 33, scope: !1463)
!1492 = !DILocation(line: 73, column: 17, scope: !1463)
!1493 = !DILocation(line: 74, column: 17, scope: !1463)
!1494 = !DILocation(line: 85, column: 10, scope: !1447)
!1495 = !DILocation(line: 89, column: 10, scope: !1447)
!1496 = !DILocation(line: 90, column: 1, scope: !1447)
!1497 = !DISubprogram(name: "getopt_long", scope: !385, file: !385, line: 66, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!100, !100, !1500, !78, !1502, !390}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1503 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !370, file: !370, line: 98, type: !1504, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !100, !1013, !78, !78, !78, !223, !1450, null}
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1507 = !DILocalVariable(name: "argc", arg: 1, scope: !1503, file: !370, line: 98, type: !100)
!1508 = !DILocalVariable(name: "argv", arg: 2, scope: !1503, file: !370, line: 99, type: !1013)
!1509 = !DILocalVariable(name: "command_name", arg: 3, scope: !1503, file: !370, line: 100, type: !78)
!1510 = !DILocalVariable(name: "package", arg: 4, scope: !1503, file: !370, line: 101, type: !78)
!1511 = !DILocalVariable(name: "version", arg: 5, scope: !1503, file: !370, line: 102, type: !78)
!1512 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1503, file: !370, line: 103, type: !223)
!1513 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1503, file: !370, line: 104, type: !1450)
!1514 = !DILocalVariable(name: "saved_opterr", scope: !1503, file: !370, line: 107, type: !100)
!1515 = !DILocalVariable(name: "optstring", scope: !1503, file: !370, line: 112, type: !78)
!1516 = !DILocalVariable(name: "c", scope: !1503, file: !370, line: 114, type: !100)
!1517 = !DILocalVariable(name: "authors", scope: !1518, file: !370, line: 125, type: !1467)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !370, line: 124, column: 11)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !370, line: 118, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !370, line: 116, column: 5)
!1521 = distinct !DILexicalBlock(scope: !1503, file: !370, line: 115, column: 7)
!1522 = distinct !DIAssignID()
!1523 = !DILocation(line: 0, scope: !1518)
!1524 = !DILocation(line: 0, scope: !1503)
!1525 = !DILocation(line: 107, column: 22, scope: !1503)
!1526 = !DILocation(line: 110, column: 10, scope: !1503)
!1527 = !DILocation(line: 112, column: 27, scope: !1503)
!1528 = !DILocation(line: 114, column: 11, scope: !1503)
!1529 = !DILocation(line: 115, column: 7, scope: !1503)
!1530 = !DILocation(line: 125, column: 13, scope: !1518)
!1531 = !DILocation(line: 126, column: 13, scope: !1518)
!1532 = !DILocation(line: 127, column: 29, scope: !1518)
!1533 = !DILocation(line: 127, column: 13, scope: !1518)
!1534 = !DILocation(line: 128, column: 13, scope: !1518)
!1535 = !DILocation(line: 132, column: 26, scope: !1519)
!1536 = !DILocation(line: 133, column: 11, scope: !1519)
!1537 = !DILocation(line: 0, scope: !1519)
!1538 = !DILocation(line: 138, column: 10, scope: !1503)
!1539 = !DILocation(line: 139, column: 1, scope: !1503)
!1540 = distinct !DISubprogram(name: "set_program_name", scope: !395, file: !395, line: 37, type: !812, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DILocalVariable(name: "argv0", arg: 1, scope: !1540, file: !395, line: 37, type: !78)
!1543 = !DILocalVariable(name: "slash", scope: !1540, file: !395, line: 44, type: !78)
!1544 = !DILocalVariable(name: "base", scope: !1540, file: !395, line: 45, type: !78)
!1545 = !DILocation(line: 0, scope: !1540)
!1546 = !DILocation(line: 44, column: 23, scope: !1540)
!1547 = !DILocation(line: 45, column: 22, scope: !1540)
!1548 = !DILocation(line: 46, column: 17, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !395, line: 46, column: 7)
!1550 = !DILocation(line: 46, column: 9, scope: !1549)
!1551 = !DILocation(line: 46, column: 25, scope: !1549)
!1552 = !DILocation(line: 46, column: 40, scope: !1549)
!1553 = !DILocalVariable(name: "__s1", arg: 1, scope: !1554, file: !871, line: 974, type: !1008)
!1554 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1555, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!223, !1008, !1008, !102}
!1557 = !{!1553, !1558, !1559}
!1558 = !DILocalVariable(name: "__s2", arg: 2, scope: !1554, file: !871, line: 974, type: !1008)
!1559 = !DILocalVariable(name: "__n", arg: 3, scope: !1554, file: !871, line: 974, type: !102)
!1560 = !DILocation(line: 0, scope: !1554, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 46, column: 28, scope: !1549)
!1562 = !DILocation(line: 976, column: 11, scope: !1554, inlinedAt: !1561)
!1563 = !DILocation(line: 976, column: 10, scope: !1554, inlinedAt: !1561)
!1564 = !DILocation(line: 46, column: 7, scope: !1540)
!1565 = !DILocation(line: 49, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !395, line: 49, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1549, file: !395, line: 47, column: 5)
!1568 = !DILocation(line: 49, column: 36, scope: !1566)
!1569 = !DILocation(line: 49, column: 11, scope: !1567)
!1570 = !DILocation(line: 65, column: 16, scope: !1540)
!1571 = !DILocation(line: 71, column: 27, scope: !1540)
!1572 = !DILocation(line: 74, column: 33, scope: !1540)
!1573 = !DILocation(line: 76, column: 1, scope: !1540)
!1574 = !DISubprogram(name: "strrchr", scope: !978, file: !978, line: 273, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = distinct !DIAssignID()
!1576 = !DILocation(line: 0, scope: !404)
!1577 = distinct !DIAssignID()
!1578 = !DILocation(line: 40, column: 29, scope: !404)
!1579 = !DILocation(line: 41, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !404, file: !405, line: 41, column: 7)
!1581 = !DILocation(line: 41, column: 7, scope: !404)
!1582 = !DILocation(line: 47, column: 3, scope: !404)
!1583 = !DILocation(line: 48, column: 3, scope: !404)
!1584 = !DILocalVariable(name: "ps", arg: 1, scope: !1585, file: !1586, line: 1135, type: !1589)
!1585 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !1587, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1590)
!1586 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1590 = !{!1584}
!1591 = !DILocation(line: 0, scope: !1585, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 48, column: 18, scope: !404)
!1593 = !DILocalVariable(name: "__dest", arg: 1, scope: !1594, file: !1595, line: 57, type: !99)
!1594 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1598)
!1595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!99, !99, !100, !102}
!1598 = !{!1593, !1599, !1600}
!1599 = !DILocalVariable(name: "__ch", arg: 2, scope: !1594, file: !1595, line: 57, type: !100)
!1600 = !DILocalVariable(name: "__len", arg: 3, scope: !1594, file: !1595, line: 57, type: !102)
!1601 = !DILocation(line: 0, scope: !1594, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1137, column: 3, scope: !1585, inlinedAt: !1592)
!1603 = !DILocation(line: 59, column: 10, scope: !1594, inlinedAt: !1602)
!1604 = !DILocation(line: 49, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !404, file: !405, line: 49, column: 7)
!1606 = !DILocation(line: 49, column: 39, scope: !1605)
!1607 = !DILocation(line: 49, column: 44, scope: !1605)
!1608 = !DILocation(line: 54, column: 1, scope: !404)
!1609 = !DISubprogram(name: "mbrtoc32", scope: !416, file: !416, line: 57, type: !1610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!102, !1612, !852, !102, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1589)
!1615 = distinct !DISubprogram(name: "clone_quoting_options", scope: !435, file: !435, line: 113, type: !1616, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1619)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1618, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !435, line: 113, type: !1618)
!1621 = !DILocalVariable(name: "saved_errno", scope: !1615, file: !435, line: 115, type: !100)
!1622 = !DILocalVariable(name: "p", scope: !1615, file: !435, line: 116, type: !1618)
!1623 = !DILocation(line: 0, scope: !1615)
!1624 = !DILocation(line: 115, column: 21, scope: !1615)
!1625 = !DILocation(line: 116, column: 40, scope: !1615)
!1626 = !DILocation(line: 116, column: 31, scope: !1615)
!1627 = !DILocation(line: 118, column: 9, scope: !1615)
!1628 = !DILocation(line: 119, column: 3, scope: !1615)
!1629 = distinct !DISubprogram(name: "get_quoting_style", scope: !435, file: !435, line: 124, type: !1630, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1634)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!458, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "o", arg: 1, scope: !1629, file: !435, line: 124, type: !1632)
!1636 = !DILocation(line: 0, scope: !1629)
!1637 = !DILocation(line: 126, column: 11, scope: !1629)
!1638 = !DILocation(line: 126, column: 46, scope: !1629)
!1639 = !{!1640, !859, i64 0}
!1640 = !{!"quoting_options", !859, i64 0, !859, i64 4, !804, i64 8, !803, i64 40, !803, i64 48}
!1641 = !DILocation(line: 126, column: 3, scope: !1629)
!1642 = distinct !DISubprogram(name: "set_quoting_style", scope: !435, file: !435, line: 132, type: !1643, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1618, !458}
!1645 = !{!1646, !1647}
!1646 = !DILocalVariable(name: "o", arg: 1, scope: !1642, file: !435, line: 132, type: !1618)
!1647 = !DILocalVariable(name: "s", arg: 2, scope: !1642, file: !435, line: 132, type: !458)
!1648 = !DILocation(line: 0, scope: !1642)
!1649 = !DILocation(line: 134, column: 4, scope: !1642)
!1650 = !DILocation(line: 134, column: 45, scope: !1642)
!1651 = !DILocation(line: 135, column: 1, scope: !1642)
!1652 = distinct !DISubprogram(name: "set_char_quoting", scope: !435, file: !435, line: 143, type: !1653, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!100, !1618, !4, !100}
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1662, !1663}
!1656 = !DILocalVariable(name: "o", arg: 1, scope: !1652, file: !435, line: 143, type: !1618)
!1657 = !DILocalVariable(name: "c", arg: 2, scope: !1652, file: !435, line: 143, type: !4)
!1658 = !DILocalVariable(name: "i", arg: 3, scope: !1652, file: !435, line: 143, type: !100)
!1659 = !DILocalVariable(name: "uc", scope: !1652, file: !435, line: 145, type: !105)
!1660 = !DILocalVariable(name: "p", scope: !1652, file: !435, line: 146, type: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1662 = !DILocalVariable(name: "shift", scope: !1652, file: !435, line: 148, type: !100)
!1663 = !DILocalVariable(name: "r", scope: !1652, file: !435, line: 149, type: !84)
!1664 = !DILocation(line: 0, scope: !1652)
!1665 = !DILocation(line: 147, column: 6, scope: !1652)
!1666 = !DILocation(line: 147, column: 41, scope: !1652)
!1667 = !DILocation(line: 147, column: 62, scope: !1652)
!1668 = !DILocation(line: 147, column: 57, scope: !1652)
!1669 = !DILocation(line: 148, column: 15, scope: !1652)
!1670 = !DILocation(line: 149, column: 21, scope: !1652)
!1671 = !DILocation(line: 149, column: 24, scope: !1652)
!1672 = !DILocation(line: 149, column: 34, scope: !1652)
!1673 = !DILocation(line: 150, column: 19, scope: !1652)
!1674 = !DILocation(line: 150, column: 24, scope: !1652)
!1675 = !DILocation(line: 150, column: 6, scope: !1652)
!1676 = !DILocation(line: 151, column: 3, scope: !1652)
!1677 = distinct !DISubprogram(name: "set_quoting_flags", scope: !435, file: !435, line: 159, type: !1678, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!100, !1618, !100}
!1680 = !{!1681, !1682, !1683}
!1681 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !435, line: 159, type: !1618)
!1682 = !DILocalVariable(name: "i", arg: 2, scope: !1677, file: !435, line: 159, type: !100)
!1683 = !DILocalVariable(name: "r", scope: !1677, file: !435, line: 163, type: !100)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 161, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1677, file: !435, line: 161, column: 7)
!1687 = !DILocation(line: 161, column: 7, scope: !1677)
!1688 = !DILocation(line: 163, column: 14, scope: !1677)
!1689 = !{!1640, !859, i64 4}
!1690 = !DILocation(line: 164, column: 12, scope: !1677)
!1691 = !DILocation(line: 165, column: 3, scope: !1677)
!1692 = distinct !DISubprogram(name: "set_custom_quoting", scope: !435, file: !435, line: 169, type: !1693, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1618, !78, !78}
!1695 = !{!1696, !1697, !1698}
!1696 = !DILocalVariable(name: "o", arg: 1, scope: !1692, file: !435, line: 169, type: !1618)
!1697 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1692, file: !435, line: 170, type: !78)
!1698 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1692, file: !435, line: 170, type: !78)
!1699 = !DILocation(line: 0, scope: !1692)
!1700 = !DILocation(line: 172, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1692, file: !435, line: 172, column: 7)
!1702 = !DILocation(line: 172, column: 7, scope: !1692)
!1703 = !DILocation(line: 174, column: 12, scope: !1692)
!1704 = !DILocation(line: 175, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1692, file: !435, line: 175, column: 7)
!1706 = !DILocation(line: 175, column: 19, scope: !1705)
!1707 = !DILocation(line: 176, column: 5, scope: !1705)
!1708 = !DILocation(line: 177, column: 6, scope: !1692)
!1709 = !DILocation(line: 177, column: 17, scope: !1692)
!1710 = !{!1640, !803, i64 40}
!1711 = !DILocation(line: 178, column: 6, scope: !1692)
!1712 = !DILocation(line: 178, column: 18, scope: !1692)
!1713 = !{!1640, !803, i64 48}
!1714 = !DILocation(line: 179, column: 1, scope: !1692)
!1715 = !DISubprogram(name: "abort", scope: !986, file: !986, line: 598, type: !366, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1716 = distinct !DISubprogram(name: "quotearg_buffer", scope: !435, file: !435, line: 774, type: !1717, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!102, !244, !102, !78, !102, !1632}
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1720 = !DILocalVariable(name: "buffer", arg: 1, scope: !1716, file: !435, line: 774, type: !244)
!1721 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1716, file: !435, line: 774, type: !102)
!1722 = !DILocalVariable(name: "arg", arg: 3, scope: !1716, file: !435, line: 775, type: !78)
!1723 = !DILocalVariable(name: "argsize", arg: 4, scope: !1716, file: !435, line: 775, type: !102)
!1724 = !DILocalVariable(name: "o", arg: 5, scope: !1716, file: !435, line: 776, type: !1632)
!1725 = !DILocalVariable(name: "p", scope: !1716, file: !435, line: 778, type: !1632)
!1726 = !DILocalVariable(name: "saved_errno", scope: !1716, file: !435, line: 779, type: !100)
!1727 = !DILocalVariable(name: "r", scope: !1716, file: !435, line: 780, type: !102)
!1728 = !DILocation(line: 0, scope: !1716)
!1729 = !DILocation(line: 778, column: 37, scope: !1716)
!1730 = !DILocation(line: 779, column: 21, scope: !1716)
!1731 = !DILocation(line: 781, column: 43, scope: !1716)
!1732 = !DILocation(line: 781, column: 53, scope: !1716)
!1733 = !DILocation(line: 781, column: 63, scope: !1716)
!1734 = !DILocation(line: 782, column: 43, scope: !1716)
!1735 = !DILocation(line: 782, column: 58, scope: !1716)
!1736 = !DILocation(line: 780, column: 14, scope: !1716)
!1737 = !DILocation(line: 783, column: 9, scope: !1716)
!1738 = !DILocation(line: 784, column: 3, scope: !1716)
!1739 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !435, file: !435, line: 251, type: !1740, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1744)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!102, !244, !102, !78, !102, !458, !100, !1742, !78, !78}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1770, !1772, !1775, !1776, !1777, !1778, !1781, !1782, !1784, !1785, !1788, !1792, !1793, !1801, !1804, !1805, !1806}
!1745 = !DILocalVariable(name: "buffer", arg: 1, scope: !1739, file: !435, line: 251, type: !244)
!1746 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1739, file: !435, line: 251, type: !102)
!1747 = !DILocalVariable(name: "arg", arg: 3, scope: !1739, file: !435, line: 252, type: !78)
!1748 = !DILocalVariable(name: "argsize", arg: 4, scope: !1739, file: !435, line: 252, type: !102)
!1749 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1739, file: !435, line: 253, type: !458)
!1750 = !DILocalVariable(name: "flags", arg: 6, scope: !1739, file: !435, line: 253, type: !100)
!1751 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1739, file: !435, line: 254, type: !1742)
!1752 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1739, file: !435, line: 255, type: !78)
!1753 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1739, file: !435, line: 256, type: !78)
!1754 = !DILocalVariable(name: "unibyte_locale", scope: !1739, file: !435, line: 258, type: !223)
!1755 = !DILocalVariable(name: "len", scope: !1739, file: !435, line: 260, type: !102)
!1756 = !DILocalVariable(name: "orig_buffersize", scope: !1739, file: !435, line: 261, type: !102)
!1757 = !DILocalVariable(name: "quote_string", scope: !1739, file: !435, line: 262, type: !78)
!1758 = !DILocalVariable(name: "quote_string_len", scope: !1739, file: !435, line: 263, type: !102)
!1759 = !DILocalVariable(name: "backslash_escapes", scope: !1739, file: !435, line: 264, type: !223)
!1760 = !DILocalVariable(name: "elide_outer_quotes", scope: !1739, file: !435, line: 265, type: !223)
!1761 = !DILocalVariable(name: "encountered_single_quote", scope: !1739, file: !435, line: 266, type: !223)
!1762 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1739, file: !435, line: 267, type: !223)
!1763 = !DILabel(scope: !1739, name: "process_input", file: !435, line: 308)
!1764 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1739, file: !435, line: 309, type: !223)
!1765 = !DILocalVariable(name: "lq", scope: !1766, file: !435, line: 361, type: !78)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !435, line: 361, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 360, column: 13)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !435, line: 333, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 312, column: 5)
!1770 = !DILocalVariable(name: "i", scope: !1771, file: !435, line: 395, type: !102)
!1771 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 395, column: 3)
!1772 = !DILocalVariable(name: "is_right_quote", scope: !1773, file: !435, line: 397, type: !223)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !435, line: 396, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !435, line: 395, column: 3)
!1775 = !DILocalVariable(name: "escaping", scope: !1773, file: !435, line: 398, type: !223)
!1776 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1773, file: !435, line: 399, type: !223)
!1777 = !DILocalVariable(name: "c", scope: !1773, file: !435, line: 417, type: !105)
!1778 = !DILabel(scope: !1779, name: "c_and_shell_escape", file: !435, line: 502)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 478, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 419, column: 9)
!1781 = !DILabel(scope: !1779, name: "c_escape", file: !435, line: 507)
!1782 = !DILocalVariable(name: "m", scope: !1783, file: !435, line: 598, type: !102)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 596, column: 11)
!1784 = !DILocalVariable(name: "printable", scope: !1783, file: !435, line: 600, type: !223)
!1785 = !DILocalVariable(name: "mbs", scope: !1786, file: !435, line: 609, type: !519)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !435, line: 608, column: 15)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !435, line: 602, column: 17)
!1788 = !DILocalVariable(name: "w", scope: !1789, file: !435, line: 618, type: !415)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !435, line: 617, column: 19)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !435, line: 616, column: 17)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !435, line: 616, column: 17)
!1792 = !DILocalVariable(name: "bytes", scope: !1789, file: !435, line: 619, type: !102)
!1793 = !DILocalVariable(name: "j", scope: !1794, file: !435, line: 648, type: !102)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !435, line: 648, column: 29)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !435, line: 647, column: 27)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !435, line: 645, column: 29)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !435, line: 636, column: 23)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !435, line: 628, column: 30)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !435, line: 623, column: 30)
!1800 = distinct !DILexicalBlock(scope: !1789, file: !435, line: 621, column: 25)
!1801 = !DILocalVariable(name: "ilim", scope: !1802, file: !435, line: 674, type: !102)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !435, line: 671, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1783, file: !435, line: 670, column: 17)
!1804 = !DILabel(scope: !1773, name: "store_escape", file: !435, line: 709)
!1805 = !DILabel(scope: !1773, name: "store_c", file: !435, line: 712)
!1806 = !DILabel(scope: !1739, name: "force_outer_quoting_style", file: !435, line: 753)
!1807 = distinct !DIAssignID()
!1808 = distinct !DIAssignID()
!1809 = distinct !DIAssignID()
!1810 = distinct !DIAssignID()
!1811 = distinct !DIAssignID()
!1812 = !DILocation(line: 0, scope: !1786)
!1813 = distinct !DIAssignID()
!1814 = !DILocation(line: 0, scope: !1789)
!1815 = !DILocation(line: 0, scope: !1739)
!1816 = !DILocation(line: 258, column: 25, scope: !1739)
!1817 = !DILocation(line: 258, column: 36, scope: !1739)
!1818 = !DILocation(line: 265, column: 8, scope: !1739)
!1819 = !DILocation(line: 267, column: 3, scope: !1739)
!1820 = !DILocation(line: 261, column: 10, scope: !1739)
!1821 = !DILocation(line: 262, column: 15, scope: !1739)
!1822 = !DILocation(line: 263, column: 10, scope: !1739)
!1823 = !DILocation(line: 264, column: 8, scope: !1739)
!1824 = !DILocation(line: 266, column: 8, scope: !1739)
!1825 = !DILocation(line: 267, column: 8, scope: !1739)
!1826 = !DILocation(line: 308, column: 2, scope: !1739)
!1827 = !DILocation(line: 311, column: 3, scope: !1739)
!1828 = !DILocation(line: 318, column: 11, scope: !1769)
!1829 = !DILocation(line: 318, column: 12, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1769, file: !435, line: 318, column: 11)
!1831 = !DILocation(line: 319, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !435, line: 319, column: 9)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !435, line: 319, column: 9)
!1834 = !DILocation(line: 319, column: 9, scope: !1833)
!1835 = !DILocation(line: 0, scope: !510, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 357, column: 26, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !435, line: 335, column: 11)
!1838 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 334, column: 13)
!1839 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1836)
!1840 = !DILocation(line: 201, column: 19, scope: !1841, inlinedAt: !1836)
!1841 = distinct !DILexicalBlock(scope: !510, file: !435, line: 201, column: 7)
!1842 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1836)
!1843 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1836)
!1844 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1836)
!1845 = !DILocalVariable(name: "ps", arg: 1, scope: !1846, file: !1586, line: 1135, type: !1849)
!1846 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !1847, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1850)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1850 = !{!1845}
!1851 = !DILocation(line: 0, scope: !1846, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1836)
!1853 = !DILocalVariable(name: "__dest", arg: 1, scope: !1854, file: !1595, line: 57, type: !99)
!1854 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1855)
!1855 = !{!1853, !1856, !1857}
!1856 = !DILocalVariable(name: "__ch", arg: 2, scope: !1854, file: !1595, line: 57, type: !100)
!1857 = !DILocalVariable(name: "__len", arg: 3, scope: !1854, file: !1595, line: 57, type: !102)
!1858 = !DILocation(line: 0, scope: !1854, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 1137, column: 3, scope: !1846, inlinedAt: !1852)
!1860 = !DILocation(line: 59, column: 10, scope: !1854, inlinedAt: !1859)
!1861 = !DILocation(line: 231, column: 7, scope: !1862, inlinedAt: !1836)
!1862 = distinct !DILexicalBlock(scope: !510, file: !435, line: 231, column: 7)
!1863 = !DILocation(line: 231, column: 40, scope: !1862, inlinedAt: !1836)
!1864 = !DILocation(line: 231, column: 45, scope: !1862, inlinedAt: !1836)
!1865 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1836)
!1866 = !DILocation(line: 0, scope: !510, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 358, column: 27, scope: !1837)
!1868 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1867)
!1869 = !DILocation(line: 201, column: 19, scope: !1841, inlinedAt: !1867)
!1870 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1867)
!1871 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1867)
!1872 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1867)
!1873 = !DILocation(line: 0, scope: !1846, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1867)
!1875 = !DILocation(line: 0, scope: !1854, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1137, column: 3, scope: !1846, inlinedAt: !1874)
!1877 = !DILocation(line: 59, column: 10, scope: !1854, inlinedAt: !1876)
!1878 = !DILocation(line: 231, column: 7, scope: !1862, inlinedAt: !1867)
!1879 = !DILocation(line: 231, column: 40, scope: !1862, inlinedAt: !1867)
!1880 = !DILocation(line: 231, column: 45, scope: !1862, inlinedAt: !1867)
!1881 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1867)
!1882 = !DILocation(line: 360, column: 14, scope: !1767)
!1883 = !DILocation(line: 360, column: 13, scope: !1768)
!1884 = !DILocation(line: 0, scope: !1766)
!1885 = !DILocation(line: 361, column: 45, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1766, file: !435, line: 361, column: 11)
!1887 = !DILocation(line: 361, column: 11, scope: !1766)
!1888 = !DILocation(line: 362, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !435, line: 362, column: 13)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !435, line: 362, column: 13)
!1891 = !DILocation(line: 362, column: 13, scope: !1890)
!1892 = !DILocation(line: 361, column: 52, scope: !1886)
!1893 = distinct !{!1893, !1887, !1894, !905}
!1894 = !DILocation(line: 362, column: 13, scope: !1766)
!1895 = !DILocation(line: 260, column: 10, scope: !1739)
!1896 = !DILocation(line: 365, column: 28, scope: !1768)
!1897 = !DILocation(line: 367, column: 7, scope: !1769)
!1898 = !DILocation(line: 370, column: 7, scope: !1769)
!1899 = !DILocation(line: 373, column: 7, scope: !1769)
!1900 = !DILocation(line: 376, column: 12, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1769, file: !435, line: 376, column: 11)
!1902 = !DILocation(line: 376, column: 11, scope: !1769)
!1903 = !DILocation(line: 381, column: 12, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1769, file: !435, line: 381, column: 11)
!1905 = !DILocation(line: 381, column: 11, scope: !1769)
!1906 = !DILocation(line: 382, column: 9, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !435, line: 382, column: 9)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !435, line: 382, column: 9)
!1909 = !DILocation(line: 382, column: 9, scope: !1908)
!1910 = !DILocation(line: 389, column: 7, scope: !1769)
!1911 = !DILocation(line: 392, column: 7, scope: !1769)
!1912 = !DILocation(line: 0, scope: !1771)
!1913 = !DILocation(line: 395, column: 8, scope: !1771)
!1914 = !DILocation(line: 309, column: 8, scope: !1739)
!1915 = !DILocation(line: 395, scope: !1771)
!1916 = !DILocation(line: 395, column: 34, scope: !1774)
!1917 = !DILocation(line: 395, column: 26, scope: !1774)
!1918 = !DILocation(line: 395, column: 48, scope: !1774)
!1919 = !DILocation(line: 395, column: 55, scope: !1774)
!1920 = !DILocation(line: 395, column: 3, scope: !1771)
!1921 = !DILocation(line: 395, column: 67, scope: !1774)
!1922 = !DILocation(line: 0, scope: !1773)
!1923 = !DILocation(line: 402, column: 11, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 401, column: 11)
!1925 = !DILocation(line: 404, column: 17, scope: !1924)
!1926 = !DILocation(line: 405, column: 39, scope: !1924)
!1927 = !DILocation(line: 409, column: 32, scope: !1924)
!1928 = !DILocation(line: 405, column: 19, scope: !1924)
!1929 = !DILocation(line: 405, column: 15, scope: !1924)
!1930 = !DILocation(line: 410, column: 11, scope: !1924)
!1931 = !DILocation(line: 410, column: 25, scope: !1924)
!1932 = !DILocalVariable(name: "__s1", arg: 1, scope: !1933, file: !871, line: 974, type: !1008)
!1933 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1555, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1934)
!1934 = !{!1932, !1935, !1936}
!1935 = !DILocalVariable(name: "__s2", arg: 2, scope: !1933, file: !871, line: 974, type: !1008)
!1936 = !DILocalVariable(name: "__n", arg: 3, scope: !1933, file: !871, line: 974, type: !102)
!1937 = !DILocation(line: 0, scope: !1933, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 410, column: 14, scope: !1924)
!1939 = !DILocation(line: 976, column: 11, scope: !1933, inlinedAt: !1938)
!1940 = !DILocation(line: 976, column: 10, scope: !1933, inlinedAt: !1938)
!1941 = !DILocation(line: 401, column: 11, scope: !1773)
!1942 = !DILocation(line: 417, column: 25, scope: !1773)
!1943 = !DILocation(line: 418, column: 7, scope: !1773)
!1944 = !DILocation(line: 421, column: 15, scope: !1780)
!1945 = !DILocation(line: 423, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !435, line: 423, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !435, line: 422, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 421, column: 15)
!1949 = !DILocation(line: 423, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !435, line: 423, column: 15)
!1951 = !DILocation(line: 423, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !435, line: 423, column: 15)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !435, line: 423, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !435, line: 423, column: 15)
!1955 = !DILocation(line: 423, column: 15, scope: !1953)
!1956 = !DILocation(line: 423, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !435, line: 423, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !435, line: 423, column: 15)
!1959 = !DILocation(line: 423, column: 15, scope: !1958)
!1960 = !DILocation(line: 423, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !435, line: 423, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1954, file: !435, line: 423, column: 15)
!1963 = !DILocation(line: 423, column: 15, scope: !1962)
!1964 = !DILocation(line: 423, column: 15, scope: !1954)
!1965 = !DILocation(line: 423, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !435, line: 423, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !435, line: 423, column: 15)
!1968 = !DILocation(line: 423, column: 15, scope: !1967)
!1969 = !DILocation(line: 431, column: 19, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1947, file: !435, line: 430, column: 19)
!1971 = !DILocation(line: 431, column: 24, scope: !1970)
!1972 = !DILocation(line: 431, column: 28, scope: !1970)
!1973 = !DILocation(line: 431, column: 38, scope: !1970)
!1974 = !DILocation(line: 431, column: 48, scope: !1970)
!1975 = !DILocation(line: 431, column: 59, scope: !1970)
!1976 = !DILocation(line: 433, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !435, line: 433, column: 19)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !435, line: 433, column: 19)
!1979 = distinct !DILexicalBlock(scope: !1970, file: !435, line: 432, column: 17)
!1980 = !DILocation(line: 433, column: 19, scope: !1978)
!1981 = !DILocation(line: 434, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !435, line: 434, column: 19)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !435, line: 434, column: 19)
!1984 = !DILocation(line: 434, column: 19, scope: !1983)
!1985 = !DILocation(line: 435, column: 17, scope: !1979)
!1986 = !DILocation(line: 442, column: 20, scope: !1948)
!1987 = !DILocation(line: 447, column: 11, scope: !1780)
!1988 = !DILocation(line: 450, column: 19, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 448, column: 13)
!1990 = !DILocation(line: 456, column: 19, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1989, file: !435, line: 455, column: 19)
!1992 = !DILocation(line: 456, column: 24, scope: !1991)
!1993 = !DILocation(line: 456, column: 28, scope: !1991)
!1994 = !DILocation(line: 456, column: 38, scope: !1991)
!1995 = !DILocation(line: 456, column: 41, scope: !1991)
!1996 = !DILocation(line: 456, column: 52, scope: !1991)
!1997 = !DILocation(line: 455, column: 19, scope: !1989)
!1998 = !DILocation(line: 457, column: 25, scope: !1991)
!1999 = !DILocation(line: 457, column: 17, scope: !1991)
!2000 = !DILocation(line: 464, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !435, line: 458, column: 19)
!2002 = !DILocation(line: 468, column: 21, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !435, line: 468, column: 21)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !435, line: 468, column: 21)
!2005 = !DILocation(line: 468, column: 21, scope: !2004)
!2006 = !DILocation(line: 469, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !435, line: 469, column: 21)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !435, line: 469, column: 21)
!2009 = !DILocation(line: 469, column: 21, scope: !2008)
!2010 = !DILocation(line: 470, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !435, line: 470, column: 21)
!2012 = distinct !DILexicalBlock(scope: !2001, file: !435, line: 470, column: 21)
!2013 = !DILocation(line: 470, column: 21, scope: !2012)
!2014 = !DILocation(line: 471, column: 21, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !435, line: 471, column: 21)
!2016 = distinct !DILexicalBlock(scope: !2001, file: !435, line: 471, column: 21)
!2017 = !DILocation(line: 471, column: 21, scope: !2016)
!2018 = !DILocation(line: 472, column: 21, scope: !2001)
!2019 = !DILocation(line: 482, column: 33, scope: !1779)
!2020 = !DILocation(line: 483, column: 33, scope: !1779)
!2021 = !DILocation(line: 485, column: 33, scope: !1779)
!2022 = !DILocation(line: 486, column: 33, scope: !1779)
!2023 = !DILocation(line: 487, column: 33, scope: !1779)
!2024 = !DILocation(line: 490, column: 17, scope: !1779)
!2025 = !DILocation(line: 492, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !435, line: 491, column: 15)
!2027 = distinct !DILexicalBlock(scope: !1779, file: !435, line: 490, column: 17)
!2028 = !DILocation(line: 499, column: 35, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1779, file: !435, line: 499, column: 17)
!2030 = !DILocation(line: 499, column: 57, scope: !2029)
!2031 = !DILocation(line: 0, scope: !1779)
!2032 = !DILocation(line: 502, column: 11, scope: !1779)
!2033 = !DILocation(line: 504, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1779, file: !435, line: 503, column: 17)
!2035 = !DILocation(line: 507, column: 11, scope: !1779)
!2036 = !DILocation(line: 508, column: 17, scope: !1779)
!2037 = !DILocation(line: 517, column: 15, scope: !1780)
!2038 = !DILocation(line: 517, column: 40, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 517, column: 15)
!2040 = !DILocation(line: 517, column: 47, scope: !2039)
!2041 = !DILocation(line: 517, column: 18, scope: !2039)
!2042 = !DILocation(line: 521, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 521, column: 15)
!2044 = !DILocation(line: 521, column: 15, scope: !1780)
!2045 = !DILocation(line: 525, column: 11, scope: !1780)
!2046 = !DILocation(line: 537, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 536, column: 15)
!2048 = !DILocation(line: 544, column: 15, scope: !1780)
!2049 = !DILocation(line: 546, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !435, line: 545, column: 13)
!2051 = distinct !DILexicalBlock(scope: !1780, file: !435, line: 544, column: 15)
!2052 = !DILocation(line: 549, column: 19, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !435, line: 549, column: 19)
!2054 = !DILocation(line: 549, column: 30, scope: !2053)
!2055 = !DILocation(line: 558, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !435, line: 558, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2050, file: !435, line: 558, column: 15)
!2058 = !DILocation(line: 558, column: 15, scope: !2057)
!2059 = !DILocation(line: 559, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !435, line: 559, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2050, file: !435, line: 559, column: 15)
!2062 = !DILocation(line: 559, column: 15, scope: !2061)
!2063 = !DILocation(line: 560, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !435, line: 560, column: 15)
!2065 = distinct !DILexicalBlock(scope: !2050, file: !435, line: 560, column: 15)
!2066 = !DILocation(line: 560, column: 15, scope: !2065)
!2067 = !DILocation(line: 562, column: 13, scope: !2050)
!2068 = !DILocation(line: 602, column: 17, scope: !1783)
!2069 = !DILocation(line: 0, scope: !1783)
!2070 = !DILocation(line: 605, column: 29, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1787, file: !435, line: 603, column: 15)
!2072 = !DILocation(line: 605, column: 27, scope: !2071)
!2073 = !DILocation(line: 606, column: 15, scope: !2071)
!2074 = !DILocation(line: 609, column: 17, scope: !1786)
!2075 = !DILocation(line: 0, scope: !1846, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 609, column: 32, scope: !1786)
!2077 = !DILocation(line: 0, scope: !1854, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 1137, column: 3, scope: !1846, inlinedAt: !2076)
!2079 = !DILocation(line: 59, column: 10, scope: !1854, inlinedAt: !2078)
!2080 = !DILocation(line: 613, column: 29, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1786, file: !435, line: 613, column: 21)
!2082 = !DILocation(line: 613, column: 21, scope: !1786)
!2083 = !DILocation(line: 614, column: 29, scope: !2081)
!2084 = !DILocation(line: 614, column: 19, scope: !2081)
!2085 = !DILocation(line: 618, column: 21, scope: !1789)
!2086 = !DILocation(line: 620, column: 54, scope: !1789)
!2087 = !DILocation(line: 619, column: 36, scope: !1789)
!2088 = !DILocation(line: 621, column: 25, scope: !1789)
!2089 = !DILocation(line: 631, column: 38, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1798, file: !435, line: 629, column: 23)
!2091 = !DILocation(line: 631, column: 48, scope: !2090)
!2092 = !DILocation(line: 626, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1799, file: !435, line: 624, column: 23)
!2094 = !DILocation(line: 631, column: 51, scope: !2090)
!2095 = !DILocation(line: 631, column: 25, scope: !2090)
!2096 = !DILocation(line: 632, column: 28, scope: !2090)
!2097 = !DILocation(line: 631, column: 34, scope: !2090)
!2098 = distinct !{!2098, !2095, !2096, !905}
!2099 = !DILocation(line: 0, scope: !1794)
!2100 = !DILocation(line: 646, column: 29, scope: !1796)
!2101 = !DILocation(line: 649, column: 39, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1794, file: !435, line: 648, column: 29)
!2103 = !DILocation(line: 649, column: 31, scope: !2102)
!2104 = !DILocation(line: 648, column: 60, scope: !2102)
!2105 = !DILocation(line: 648, column: 50, scope: !2102)
!2106 = !DILocation(line: 648, column: 29, scope: !1794)
!2107 = distinct !{!2107, !2106, !2108, !905}
!2108 = !DILocation(line: 654, column: 33, scope: !1794)
!2109 = !DILocation(line: 657, column: 43, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1797, file: !435, line: 657, column: 29)
!2111 = !DILocalVariable(name: "wc", arg: 1, scope: !2112, file: !2113, line: 865, type: !2116)
!2112 = distinct !DISubprogram(name: "c32isprint", scope: !2113, file: !2113, line: 865, type: !2114, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2118)
!2113 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!100, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2117, line: 20, baseType: !84)
!2117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2118 = !{!2111}
!2119 = !DILocation(line: 0, scope: !2112, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 657, column: 31, scope: !2110)
!2121 = !DILocation(line: 871, column: 10, scope: !2112, inlinedAt: !2120)
!2122 = !DILocation(line: 657, column: 31, scope: !2110)
!2123 = !DILocation(line: 664, column: 23, scope: !1789)
!2124 = !DILocation(line: 665, column: 19, scope: !1790)
!2125 = !DILocation(line: 666, column: 15, scope: !1787)
!2126 = !DILocation(line: 0, scope: !1787)
!2127 = !DILocation(line: 670, column: 19, scope: !1803)
!2128 = !DILocation(line: 670, column: 23, scope: !1803)
!2129 = !DILocation(line: 674, column: 33, scope: !1802)
!2130 = !DILocation(line: 0, scope: !1802)
!2131 = !DILocation(line: 676, column: 17, scope: !1802)
!2132 = !DILocation(line: 398, column: 12, scope: !1773)
!2133 = !DILocation(line: 678, column: 43, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 678, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !435, line: 677, column: 19)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !435, line: 676, column: 17)
!2137 = distinct !DILexicalBlock(scope: !1802, file: !435, line: 676, column: 17)
!2138 = !DILocation(line: 680, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !435, line: 680, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2134, file: !435, line: 679, column: 23)
!2141 = !DILocation(line: 680, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !435, line: 680, column: 25)
!2143 = !DILocation(line: 680, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !435, line: 680, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !435, line: 680, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !435, line: 680, column: 25)
!2147 = !DILocation(line: 680, column: 25, scope: !2145)
!2148 = !DILocation(line: 680, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !435, line: 680, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !435, line: 680, column: 25)
!2151 = !DILocation(line: 680, column: 25, scope: !2150)
!2152 = !DILocation(line: 680, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !435, line: 680, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2146, file: !435, line: 680, column: 25)
!2155 = !DILocation(line: 680, column: 25, scope: !2154)
!2156 = !DILocation(line: 680, column: 25, scope: !2146)
!2157 = !DILocation(line: 680, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !435, line: 680, column: 25)
!2159 = distinct !DILexicalBlock(scope: !2139, file: !435, line: 680, column: 25)
!2160 = !DILocation(line: 680, column: 25, scope: !2159)
!2161 = !DILocation(line: 681, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !435, line: 681, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2140, file: !435, line: 681, column: 25)
!2164 = !DILocation(line: 681, column: 25, scope: !2163)
!2165 = !DILocation(line: 682, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !435, line: 682, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2140, file: !435, line: 682, column: 25)
!2168 = !DILocation(line: 682, column: 25, scope: !2167)
!2169 = !DILocation(line: 683, column: 38, scope: !2140)
!2170 = !DILocation(line: 683, column: 33, scope: !2140)
!2171 = !DILocation(line: 684, column: 23, scope: !2140)
!2172 = !DILocation(line: 685, column: 30, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2134, file: !435, line: 685, column: 30)
!2174 = !DILocation(line: 685, column: 30, scope: !2134)
!2175 = !DILocation(line: 687, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !435, line: 687, column: 25)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !435, line: 687, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !435, line: 686, column: 23)
!2179 = !DILocation(line: 687, column: 25, scope: !2177)
!2180 = !DILocation(line: 689, column: 23, scope: !2178)
!2181 = !DILocation(line: 690, column: 35, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 690, column: 25)
!2183 = !DILocation(line: 690, column: 30, scope: !2182)
!2184 = !DILocation(line: 690, column: 25, scope: !2135)
!2185 = !DILocation(line: 692, column: 21, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !435, line: 692, column: 21)
!2187 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 692, column: 21)
!2188 = !DILocation(line: 692, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !435, line: 692, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !435, line: 692, column: 21)
!2191 = distinct !DILexicalBlock(scope: !2186, file: !435, line: 692, column: 21)
!2192 = !DILocation(line: 692, column: 21, scope: !2190)
!2193 = !DILocation(line: 692, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !435, line: 692, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !435, line: 692, column: 21)
!2196 = !DILocation(line: 692, column: 21, scope: !2195)
!2197 = !DILocation(line: 692, column: 21, scope: !2191)
!2198 = !DILocation(line: 0, scope: !2135)
!2199 = !DILocation(line: 693, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !435, line: 693, column: 21)
!2201 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 693, column: 21)
!2202 = !DILocation(line: 693, column: 21, scope: !2201)
!2203 = !DILocation(line: 694, column: 25, scope: !2135)
!2204 = !DILocation(line: 676, column: 17, scope: !2136)
!2205 = distinct !{!2205, !2206, !2207}
!2206 = !DILocation(line: 676, column: 17, scope: !2137)
!2207 = !DILocation(line: 695, column: 19, scope: !2137)
!2208 = !DILocation(line: 409, column: 30, scope: !1924)
!2209 = !DILocation(line: 702, column: 34, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 702, column: 11)
!2211 = !DILocation(line: 704, column: 14, scope: !2210)
!2212 = !DILocation(line: 705, column: 14, scope: !2210)
!2213 = !DILocation(line: 705, column: 35, scope: !2210)
!2214 = !DILocation(line: 705, column: 17, scope: !2210)
!2215 = !DILocation(line: 705, column: 47, scope: !2210)
!2216 = !DILocation(line: 705, column: 65, scope: !2210)
!2217 = !DILocation(line: 706, column: 11, scope: !2210)
!2218 = !DILocation(line: 702, column: 11, scope: !1773)
!2219 = !DILocation(line: 395, column: 15, scope: !1771)
!2220 = !DILocation(line: 709, column: 5, scope: !1773)
!2221 = !DILocation(line: 710, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 710, column: 7)
!2223 = !DILocation(line: 710, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !435, line: 710, column: 7)
!2225 = !DILocation(line: 710, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !435, line: 710, column: 7)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !435, line: 710, column: 7)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !435, line: 710, column: 7)
!2229 = !DILocation(line: 710, column: 7, scope: !2227)
!2230 = !DILocation(line: 710, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !435, line: 710, column: 7)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !435, line: 710, column: 7)
!2233 = !DILocation(line: 710, column: 7, scope: !2232)
!2234 = !DILocation(line: 710, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !435, line: 710, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2228, file: !435, line: 710, column: 7)
!2237 = !DILocation(line: 710, column: 7, scope: !2236)
!2238 = !DILocation(line: 710, column: 7, scope: !2228)
!2239 = !DILocation(line: 710, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !435, line: 710, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2222, file: !435, line: 710, column: 7)
!2242 = !DILocation(line: 710, column: 7, scope: !2241)
!2243 = !DILocation(line: 712, column: 5, scope: !1773)
!2244 = !DILocation(line: 713, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !435, line: 713, column: 7)
!2246 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 713, column: 7)
!2247 = !DILocation(line: 417, column: 21, scope: !1773)
!2248 = !DILocation(line: 713, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !435, line: 713, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !435, line: 713, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !435, line: 713, column: 7)
!2252 = !DILocation(line: 713, column: 7, scope: !2250)
!2253 = !DILocation(line: 713, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !435, line: 713, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !435, line: 713, column: 7)
!2256 = !DILocation(line: 713, column: 7, scope: !2255)
!2257 = !DILocation(line: 713, column: 7, scope: !2251)
!2258 = !DILocation(line: 714, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !435, line: 714, column: 7)
!2260 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 714, column: 7)
!2261 = !DILocation(line: 714, column: 7, scope: !2260)
!2262 = !DILocation(line: 716, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !1773, file: !435, line: 716, column: 11)
!2264 = !DILocation(line: 716, column: 11, scope: !1773)
!2265 = !DILocation(line: 718, column: 5, scope: !1774)
!2266 = !DILocation(line: 395, column: 82, scope: !1774)
!2267 = !DILocation(line: 395, column: 3, scope: !1774)
!2268 = distinct !{!2268, !1920, !2269, !905}
!2269 = !DILocation(line: 718, column: 5, scope: !1771)
!2270 = !DILocation(line: 720, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 720, column: 7)
!2272 = !DILocation(line: 720, column: 16, scope: !2271)
!2273 = !DILocation(line: 728, column: 51, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 728, column: 7)
!2275 = !DILocation(line: 731, column: 11, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !435, line: 731, column: 11)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !435, line: 730, column: 5)
!2278 = !DILocation(line: 731, column: 11, scope: !2277)
!2279 = !DILocation(line: 732, column: 16, scope: !2276)
!2280 = !DILocation(line: 732, column: 9, scope: !2276)
!2281 = !DILocation(line: 736, column: 18, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2276, file: !435, line: 736, column: 16)
!2283 = !DILocation(line: 736, column: 29, scope: !2282)
!2284 = !DILocation(line: 745, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 745, column: 7)
!2286 = !DILocation(line: 745, column: 20, scope: !2285)
!2287 = !DILocation(line: 746, column: 12, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !435, line: 746, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !435, line: 746, column: 5)
!2290 = !DILocation(line: 746, column: 5, scope: !2289)
!2291 = !DILocation(line: 747, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !435, line: 747, column: 7)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !435, line: 747, column: 7)
!2294 = !DILocation(line: 747, column: 7, scope: !2293)
!2295 = !DILocation(line: 746, column: 39, scope: !2288)
!2296 = distinct !{!2296, !2290, !2297, !905}
!2297 = !DILocation(line: 747, column: 7, scope: !2289)
!2298 = !DILocation(line: 749, column: 11, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 749, column: 7)
!2300 = !DILocation(line: 749, column: 7, scope: !1739)
!2301 = !DILocation(line: 750, column: 5, scope: !2299)
!2302 = !DILocation(line: 750, column: 17, scope: !2299)
!2303 = !DILocation(line: 753, column: 2, scope: !1739)
!2304 = !DILocation(line: 756, column: 51, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1739, file: !435, line: 756, column: 7)
!2306 = !DILocation(line: 756, column: 21, scope: !2305)
!2307 = !DILocation(line: 760, column: 42, scope: !1739)
!2308 = !DILocation(line: 758, column: 10, scope: !1739)
!2309 = !DILocation(line: 758, column: 3, scope: !1739)
!2310 = !DILocation(line: 762, column: 1, scope: !1739)
!2311 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !986, file: !986, line: 98, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!102}
!2314 = !DISubprogram(name: "strlen", scope: !978, file: !978, line: 407, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!104, !78}
!2317 = !DISubprogram(name: "iswprint", scope: !2318, file: !2318, line: 120, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2319 = distinct !DISubprogram(name: "quotearg_alloc", scope: !435, file: !435, line: 788, type: !2320, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!244, !78, !102, !1632}
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "arg", arg: 1, scope: !2319, file: !435, line: 788, type: !78)
!2324 = !DILocalVariable(name: "argsize", arg: 2, scope: !2319, file: !435, line: 788, type: !102)
!2325 = !DILocalVariable(name: "o", arg: 3, scope: !2319, file: !435, line: 789, type: !1632)
!2326 = !DILocation(line: 0, scope: !2319)
!2327 = !DILocalVariable(name: "arg", arg: 1, scope: !2328, file: !435, line: 801, type: !78)
!2328 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !435, file: !435, line: 801, type: !2329, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!244, !78, !102, !716, !1632}
!2331 = !{!2327, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2332 = !DILocalVariable(name: "argsize", arg: 2, scope: !2328, file: !435, line: 801, type: !102)
!2333 = !DILocalVariable(name: "size", arg: 3, scope: !2328, file: !435, line: 801, type: !716)
!2334 = !DILocalVariable(name: "o", arg: 4, scope: !2328, file: !435, line: 802, type: !1632)
!2335 = !DILocalVariable(name: "p", scope: !2328, file: !435, line: 804, type: !1632)
!2336 = !DILocalVariable(name: "saved_errno", scope: !2328, file: !435, line: 805, type: !100)
!2337 = !DILocalVariable(name: "flags", scope: !2328, file: !435, line: 807, type: !100)
!2338 = !DILocalVariable(name: "bufsize", scope: !2328, file: !435, line: 808, type: !102)
!2339 = !DILocalVariable(name: "buf", scope: !2328, file: !435, line: 812, type: !244)
!2340 = !DILocation(line: 0, scope: !2328, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 791, column: 10, scope: !2319)
!2342 = !DILocation(line: 804, column: 37, scope: !2328, inlinedAt: !2341)
!2343 = !DILocation(line: 805, column: 21, scope: !2328, inlinedAt: !2341)
!2344 = !DILocation(line: 807, column: 18, scope: !2328, inlinedAt: !2341)
!2345 = !DILocation(line: 807, column: 24, scope: !2328, inlinedAt: !2341)
!2346 = !DILocation(line: 808, column: 72, scope: !2328, inlinedAt: !2341)
!2347 = !DILocation(line: 809, column: 56, scope: !2328, inlinedAt: !2341)
!2348 = !DILocation(line: 810, column: 49, scope: !2328, inlinedAt: !2341)
!2349 = !DILocation(line: 811, column: 49, scope: !2328, inlinedAt: !2341)
!2350 = !DILocation(line: 808, column: 20, scope: !2328, inlinedAt: !2341)
!2351 = !DILocation(line: 811, column: 62, scope: !2328, inlinedAt: !2341)
!2352 = !DILocation(line: 812, column: 15, scope: !2328, inlinedAt: !2341)
!2353 = !DILocation(line: 813, column: 60, scope: !2328, inlinedAt: !2341)
!2354 = !DILocation(line: 815, column: 32, scope: !2328, inlinedAt: !2341)
!2355 = !DILocation(line: 815, column: 47, scope: !2328, inlinedAt: !2341)
!2356 = !DILocation(line: 813, column: 3, scope: !2328, inlinedAt: !2341)
!2357 = !DILocation(line: 816, column: 9, scope: !2328, inlinedAt: !2341)
!2358 = !DILocation(line: 791, column: 3, scope: !2319)
!2359 = !DILocation(line: 0, scope: !2328)
!2360 = !DILocation(line: 804, column: 37, scope: !2328)
!2361 = !DILocation(line: 805, column: 21, scope: !2328)
!2362 = !DILocation(line: 807, column: 18, scope: !2328)
!2363 = !DILocation(line: 807, column: 27, scope: !2328)
!2364 = !DILocation(line: 807, column: 24, scope: !2328)
!2365 = !DILocation(line: 808, column: 72, scope: !2328)
!2366 = !DILocation(line: 809, column: 56, scope: !2328)
!2367 = !DILocation(line: 810, column: 49, scope: !2328)
!2368 = !DILocation(line: 811, column: 49, scope: !2328)
!2369 = !DILocation(line: 808, column: 20, scope: !2328)
!2370 = !DILocation(line: 811, column: 62, scope: !2328)
!2371 = !DILocation(line: 812, column: 15, scope: !2328)
!2372 = !DILocation(line: 813, column: 60, scope: !2328)
!2373 = !DILocation(line: 815, column: 32, scope: !2328)
!2374 = !DILocation(line: 815, column: 47, scope: !2328)
!2375 = !DILocation(line: 813, column: 3, scope: !2328)
!2376 = !DILocation(line: 816, column: 9, scope: !2328)
!2377 = !DILocation(line: 817, column: 7, scope: !2328)
!2378 = !DILocation(line: 818, column: 11, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2328, file: !435, line: 817, column: 7)
!2380 = !{!1350, !1350, i64 0}
!2381 = !DILocation(line: 818, column: 5, scope: !2379)
!2382 = !DILocation(line: 819, column: 3, scope: !2328)
!2383 = distinct !DISubprogram(name: "quotearg_free", scope: !435, file: !435, line: 837, type: !366, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2384)
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "sv", scope: !2383, file: !435, line: 839, type: !533)
!2386 = !DILocalVariable(name: "i", scope: !2387, file: !435, line: 840, type: !100)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !435, line: 840, column: 3)
!2388 = !DILocation(line: 839, column: 24, scope: !2383)
!2389 = !DILocation(line: 0, scope: !2383)
!2390 = !DILocation(line: 0, scope: !2387)
!2391 = !DILocation(line: 840, column: 21, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !435, line: 840, column: 3)
!2393 = !DILocation(line: 840, column: 3, scope: !2387)
!2394 = !DILocation(line: 842, column: 13, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2383, file: !435, line: 842, column: 7)
!2396 = !{!2397, !803, i64 8}
!2397 = !{!"slotvec", !1350, i64 0, !803, i64 8}
!2398 = !DILocation(line: 842, column: 17, scope: !2395)
!2399 = !DILocation(line: 842, column: 7, scope: !2383)
!2400 = !DILocation(line: 841, column: 17, scope: !2392)
!2401 = !DILocation(line: 841, column: 5, scope: !2392)
!2402 = !DILocation(line: 840, column: 32, scope: !2392)
!2403 = distinct !{!2403, !2393, !2404, !905}
!2404 = !DILocation(line: 841, column: 20, scope: !2387)
!2405 = !DILocation(line: 844, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2395, file: !435, line: 843, column: 5)
!2407 = !DILocation(line: 845, column: 21, scope: !2406)
!2408 = !{!2397, !1350, i64 0}
!2409 = !DILocation(line: 846, column: 20, scope: !2406)
!2410 = !DILocation(line: 847, column: 5, scope: !2406)
!2411 = !DILocation(line: 848, column: 10, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2383, file: !435, line: 848, column: 7)
!2413 = !DILocation(line: 848, column: 7, scope: !2383)
!2414 = !DILocation(line: 850, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !435, line: 849, column: 5)
!2416 = !DILocation(line: 851, column: 15, scope: !2415)
!2417 = !DILocation(line: 852, column: 5, scope: !2415)
!2418 = !DILocation(line: 853, column: 10, scope: !2383)
!2419 = !DILocation(line: 854, column: 1, scope: !2383)
!2420 = !DISubprogram(name: "free", scope: !1586, file: !1586, line: 786, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !99}
!2423 = distinct !DISubprogram(name: "quotearg_n", scope: !435, file: !435, line: 919, type: !975, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2424)
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "n", arg: 1, scope: !2423, file: !435, line: 919, type: !100)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2423, file: !435, line: 919, type: !78)
!2427 = !DILocation(line: 0, scope: !2423)
!2428 = !DILocation(line: 921, column: 10, scope: !2423)
!2429 = !DILocation(line: 921, column: 3, scope: !2423)
!2430 = distinct !DISubprogram(name: "quotearg_n_options", scope: !435, file: !435, line: 866, type: !2431, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!244, !100, !78, !102, !1632}
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2444, !2445, !2447, !2448, !2449}
!2434 = !DILocalVariable(name: "n", arg: 1, scope: !2430, file: !435, line: 866, type: !100)
!2435 = !DILocalVariable(name: "arg", arg: 2, scope: !2430, file: !435, line: 866, type: !78)
!2436 = !DILocalVariable(name: "argsize", arg: 3, scope: !2430, file: !435, line: 866, type: !102)
!2437 = !DILocalVariable(name: "options", arg: 4, scope: !2430, file: !435, line: 867, type: !1632)
!2438 = !DILocalVariable(name: "saved_errno", scope: !2430, file: !435, line: 869, type: !100)
!2439 = !DILocalVariable(name: "sv", scope: !2430, file: !435, line: 871, type: !533)
!2440 = !DILocalVariable(name: "nslots_max", scope: !2430, file: !435, line: 873, type: !100)
!2441 = !DILocalVariable(name: "preallocated", scope: !2442, file: !435, line: 879, type: !223)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !435, line: 878, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2430, file: !435, line: 877, column: 7)
!2444 = !DILocalVariable(name: "new_nslots", scope: !2442, file: !435, line: 880, type: !729)
!2445 = !DILocalVariable(name: "size", scope: !2446, file: !435, line: 891, type: !102)
!2446 = distinct !DILexicalBlock(scope: !2430, file: !435, line: 890, column: 3)
!2447 = !DILocalVariable(name: "val", scope: !2446, file: !435, line: 892, type: !244)
!2448 = !DILocalVariable(name: "flags", scope: !2446, file: !435, line: 894, type: !100)
!2449 = !DILocalVariable(name: "qsize", scope: !2446, file: !435, line: 895, type: !102)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 0, scope: !2442)
!2452 = !DILocation(line: 0, scope: !2430)
!2453 = !DILocation(line: 869, column: 21, scope: !2430)
!2454 = !DILocation(line: 871, column: 24, scope: !2430)
!2455 = !DILocation(line: 874, column: 17, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2430, file: !435, line: 874, column: 7)
!2457 = !DILocation(line: 875, column: 5, scope: !2456)
!2458 = !DILocation(line: 877, column: 7, scope: !2443)
!2459 = !DILocation(line: 877, column: 14, scope: !2443)
!2460 = !DILocation(line: 877, column: 7, scope: !2430)
!2461 = !DILocation(line: 879, column: 31, scope: !2442)
!2462 = !DILocation(line: 880, column: 7, scope: !2442)
!2463 = !DILocation(line: 880, column: 26, scope: !2442)
!2464 = !DILocation(line: 880, column: 13, scope: !2442)
!2465 = distinct !DIAssignID()
!2466 = !DILocation(line: 882, column: 31, scope: !2442)
!2467 = !DILocation(line: 883, column: 33, scope: !2442)
!2468 = !DILocation(line: 883, column: 42, scope: !2442)
!2469 = !DILocation(line: 883, column: 31, scope: !2442)
!2470 = !DILocation(line: 882, column: 22, scope: !2442)
!2471 = !DILocation(line: 882, column: 15, scope: !2442)
!2472 = !DILocation(line: 884, column: 11, scope: !2442)
!2473 = !DILocation(line: 885, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2442, file: !435, line: 884, column: 11)
!2475 = !{i64 0, i64 8, !2380, i64 8, i64 8, !802}
!2476 = !DILocation(line: 885, column: 9, scope: !2474)
!2477 = !DILocation(line: 886, column: 20, scope: !2442)
!2478 = !DILocation(line: 886, column: 18, scope: !2442)
!2479 = !DILocation(line: 886, column: 32, scope: !2442)
!2480 = !DILocation(line: 886, column: 43, scope: !2442)
!2481 = !DILocation(line: 886, column: 53, scope: !2442)
!2482 = !DILocation(line: 0, scope: !1854, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 886, column: 7, scope: !2442)
!2484 = !DILocation(line: 59, column: 10, scope: !1854, inlinedAt: !2483)
!2485 = !DILocation(line: 887, column: 16, scope: !2442)
!2486 = !DILocation(line: 887, column: 14, scope: !2442)
!2487 = !DILocation(line: 888, column: 5, scope: !2443)
!2488 = !DILocation(line: 888, column: 5, scope: !2442)
!2489 = !DILocation(line: 891, column: 19, scope: !2446)
!2490 = !DILocation(line: 891, column: 25, scope: !2446)
!2491 = !DILocation(line: 0, scope: !2446)
!2492 = !DILocation(line: 892, column: 23, scope: !2446)
!2493 = !DILocation(line: 894, column: 26, scope: !2446)
!2494 = !DILocation(line: 894, column: 32, scope: !2446)
!2495 = !DILocation(line: 896, column: 55, scope: !2446)
!2496 = !DILocation(line: 897, column: 55, scope: !2446)
!2497 = !DILocation(line: 898, column: 55, scope: !2446)
!2498 = !DILocation(line: 899, column: 55, scope: !2446)
!2499 = !DILocation(line: 895, column: 20, scope: !2446)
!2500 = !DILocation(line: 901, column: 14, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2446, file: !435, line: 901, column: 9)
!2502 = !DILocation(line: 901, column: 9, scope: !2446)
!2503 = !DILocation(line: 903, column: 35, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2501, file: !435, line: 902, column: 7)
!2505 = !DILocation(line: 903, column: 20, scope: !2504)
!2506 = !DILocation(line: 904, column: 17, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !435, line: 904, column: 13)
!2508 = !DILocation(line: 904, column: 13, scope: !2504)
!2509 = !DILocation(line: 905, column: 11, scope: !2507)
!2510 = !DILocation(line: 906, column: 27, scope: !2504)
!2511 = !DILocation(line: 906, column: 19, scope: !2504)
!2512 = !DILocation(line: 907, column: 69, scope: !2504)
!2513 = !DILocation(line: 909, column: 44, scope: !2504)
!2514 = !DILocation(line: 910, column: 44, scope: !2504)
!2515 = !DILocation(line: 907, column: 9, scope: !2504)
!2516 = !DILocation(line: 911, column: 7, scope: !2504)
!2517 = !DILocation(line: 913, column: 11, scope: !2446)
!2518 = !DILocation(line: 914, column: 5, scope: !2446)
!2519 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !435, file: !435, line: 925, type: !2520, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!244, !100, !78, !102}
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2519, file: !435, line: 925, type: !100)
!2524 = !DILocalVariable(name: "arg", arg: 2, scope: !2519, file: !435, line: 925, type: !78)
!2525 = !DILocalVariable(name: "argsize", arg: 3, scope: !2519, file: !435, line: 925, type: !102)
!2526 = !DILocation(line: 0, scope: !2519)
!2527 = !DILocation(line: 927, column: 10, scope: !2519)
!2528 = !DILocation(line: 927, column: 3, scope: !2519)
!2529 = distinct !DISubprogram(name: "quotearg", scope: !435, file: !435, line: 931, type: !988, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2530)
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !435, line: 931, type: !78)
!2532 = !DILocation(line: 0, scope: !2529)
!2533 = !DILocation(line: 0, scope: !2423, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 933, column: 10, scope: !2529)
!2535 = !DILocation(line: 921, column: 10, scope: !2423, inlinedAt: !2534)
!2536 = !DILocation(line: 933, column: 3, scope: !2529)
!2537 = distinct !DISubprogram(name: "quotearg_mem", scope: !435, file: !435, line: 937, type: !2538, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!244, !78, !102}
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !435, line: 937, type: !78)
!2542 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !435, line: 937, type: !102)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 0, scope: !2519, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 939, column: 10, scope: !2537)
!2546 = !DILocation(line: 927, column: 10, scope: !2519, inlinedAt: !2545)
!2547 = !DILocation(line: 939, column: 3, scope: !2537)
!2548 = distinct !DISubprogram(name: "quotearg_n_style", scope: !435, file: !435, line: 943, type: !2549, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!244, !100, !458, !78}
!2551 = !{!2552, !2553, !2554, !2555}
!2552 = !DILocalVariable(name: "n", arg: 1, scope: !2548, file: !435, line: 943, type: !100)
!2553 = !DILocalVariable(name: "s", arg: 2, scope: !2548, file: !435, line: 943, type: !458)
!2554 = !DILocalVariable(name: "arg", arg: 3, scope: !2548, file: !435, line: 943, type: !78)
!2555 = !DILocalVariable(name: "o", scope: !2548, file: !435, line: 945, type: !1633)
!2556 = distinct !DIAssignID()
!2557 = !DILocation(line: 0, scope: !2548)
!2558 = !DILocation(line: 945, column: 3, scope: !2548)
!2559 = !{!2560}
!2560 = distinct !{!2560, !2561, !"quoting_options_from_style: argument 0"}
!2561 = distinct !{!2561, !"quoting_options_from_style"}
!2562 = !DILocation(line: 945, column: 36, scope: !2548)
!2563 = !DILocalVariable(name: "style", arg: 1, scope: !2564, file: !435, line: 183, type: !458)
!2564 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !435, file: !435, line: 183, type: !2565, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!485, !458}
!2567 = !{!2563, !2568}
!2568 = !DILocalVariable(name: "o", scope: !2564, file: !435, line: 185, type: !485)
!2569 = !DILocation(line: 0, scope: !2564, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 945, column: 36, scope: !2548)
!2571 = !DILocation(line: 185, column: 26, scope: !2564, inlinedAt: !2570)
!2572 = distinct !DIAssignID()
!2573 = !DILocation(line: 186, column: 13, scope: !2574, inlinedAt: !2570)
!2574 = distinct !DILexicalBlock(scope: !2564, file: !435, line: 186, column: 7)
!2575 = !DILocation(line: 186, column: 7, scope: !2564, inlinedAt: !2570)
!2576 = !DILocation(line: 187, column: 5, scope: !2574, inlinedAt: !2570)
!2577 = !DILocation(line: 188, column: 11, scope: !2564, inlinedAt: !2570)
!2578 = distinct !DIAssignID()
!2579 = !DILocation(line: 946, column: 10, scope: !2548)
!2580 = !DILocation(line: 947, column: 1, scope: !2548)
!2581 = !DILocation(line: 946, column: 3, scope: !2548)
!2582 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !435, file: !435, line: 950, type: !2583, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!244, !100, !458, !78, !102}
!2585 = !{!2586, !2587, !2588, !2589, !2590}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !435, line: 950, type: !100)
!2587 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !435, line: 950, type: !458)
!2588 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !435, line: 951, type: !78)
!2589 = !DILocalVariable(name: "argsize", arg: 4, scope: !2582, file: !435, line: 951, type: !102)
!2590 = !DILocalVariable(name: "o", scope: !2582, file: !435, line: 953, type: !1633)
!2591 = distinct !DIAssignID()
!2592 = !DILocation(line: 0, scope: !2582)
!2593 = !DILocation(line: 953, column: 3, scope: !2582)
!2594 = !{!2595}
!2595 = distinct !{!2595, !2596, !"quoting_options_from_style: argument 0"}
!2596 = distinct !{!2596, !"quoting_options_from_style"}
!2597 = !DILocation(line: 953, column: 36, scope: !2582)
!2598 = !DILocation(line: 0, scope: !2564, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 953, column: 36, scope: !2582)
!2600 = !DILocation(line: 185, column: 26, scope: !2564, inlinedAt: !2599)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 186, column: 13, scope: !2574, inlinedAt: !2599)
!2603 = !DILocation(line: 186, column: 7, scope: !2564, inlinedAt: !2599)
!2604 = !DILocation(line: 187, column: 5, scope: !2574, inlinedAt: !2599)
!2605 = !DILocation(line: 188, column: 11, scope: !2564, inlinedAt: !2599)
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 954, column: 10, scope: !2582)
!2608 = !DILocation(line: 955, column: 1, scope: !2582)
!2609 = !DILocation(line: 954, column: 3, scope: !2582)
!2610 = distinct !DISubprogram(name: "quotearg_style", scope: !435, file: !435, line: 958, type: !2611, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!244, !458, !78}
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "s", arg: 1, scope: !2610, file: !435, line: 958, type: !458)
!2615 = !DILocalVariable(name: "arg", arg: 2, scope: !2610, file: !435, line: 958, type: !78)
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 0, scope: !2610)
!2618 = !DILocation(line: 0, scope: !2548, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 960, column: 10, scope: !2610)
!2620 = !DILocation(line: 945, column: 3, scope: !2548, inlinedAt: !2619)
!2621 = !{!2622}
!2622 = distinct !{!2622, !2623, !"quoting_options_from_style: argument 0"}
!2623 = distinct !{!2623, !"quoting_options_from_style"}
!2624 = !DILocation(line: 945, column: 36, scope: !2548, inlinedAt: !2619)
!2625 = !DILocation(line: 0, scope: !2564, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 945, column: 36, scope: !2548, inlinedAt: !2619)
!2627 = !DILocation(line: 185, column: 26, scope: !2564, inlinedAt: !2626)
!2628 = distinct !DIAssignID()
!2629 = !DILocation(line: 186, column: 13, scope: !2574, inlinedAt: !2626)
!2630 = !DILocation(line: 186, column: 7, scope: !2564, inlinedAt: !2626)
!2631 = !DILocation(line: 187, column: 5, scope: !2574, inlinedAt: !2626)
!2632 = !DILocation(line: 188, column: 11, scope: !2564, inlinedAt: !2626)
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 946, column: 10, scope: !2548, inlinedAt: !2619)
!2635 = !DILocation(line: 947, column: 1, scope: !2548, inlinedAt: !2619)
!2636 = !DILocation(line: 960, column: 3, scope: !2610)
!2637 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !435, file: !435, line: 964, type: !2638, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!244, !458, !78, !102}
!2640 = !{!2641, !2642, !2643}
!2641 = !DILocalVariable(name: "s", arg: 1, scope: !2637, file: !435, line: 964, type: !458)
!2642 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !435, line: 964, type: !78)
!2643 = !DILocalVariable(name: "argsize", arg: 3, scope: !2637, file: !435, line: 964, type: !102)
!2644 = distinct !DIAssignID()
!2645 = !DILocation(line: 0, scope: !2637)
!2646 = !DILocation(line: 0, scope: !2582, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 966, column: 10, scope: !2637)
!2648 = !DILocation(line: 953, column: 3, scope: !2582, inlinedAt: !2647)
!2649 = !{!2650}
!2650 = distinct !{!2650, !2651, !"quoting_options_from_style: argument 0"}
!2651 = distinct !{!2651, !"quoting_options_from_style"}
!2652 = !DILocation(line: 953, column: 36, scope: !2582, inlinedAt: !2647)
!2653 = !DILocation(line: 0, scope: !2564, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 953, column: 36, scope: !2582, inlinedAt: !2647)
!2655 = !DILocation(line: 185, column: 26, scope: !2564, inlinedAt: !2654)
!2656 = distinct !DIAssignID()
!2657 = !DILocation(line: 186, column: 13, scope: !2574, inlinedAt: !2654)
!2658 = !DILocation(line: 186, column: 7, scope: !2564, inlinedAt: !2654)
!2659 = !DILocation(line: 187, column: 5, scope: !2574, inlinedAt: !2654)
!2660 = !DILocation(line: 188, column: 11, scope: !2564, inlinedAt: !2654)
!2661 = distinct !DIAssignID()
!2662 = !DILocation(line: 954, column: 10, scope: !2582, inlinedAt: !2647)
!2663 = !DILocation(line: 955, column: 1, scope: !2582, inlinedAt: !2647)
!2664 = !DILocation(line: 966, column: 3, scope: !2637)
!2665 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !435, file: !435, line: 970, type: !2666, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!244, !78, !102, !4}
!2668 = !{!2669, !2670, !2671, !2672}
!2669 = !DILocalVariable(name: "arg", arg: 1, scope: !2665, file: !435, line: 970, type: !78)
!2670 = !DILocalVariable(name: "argsize", arg: 2, scope: !2665, file: !435, line: 970, type: !102)
!2671 = !DILocalVariable(name: "ch", arg: 3, scope: !2665, file: !435, line: 970, type: !4)
!2672 = !DILocalVariable(name: "options", scope: !2665, file: !435, line: 972, type: !485)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 0, scope: !2665)
!2675 = !DILocation(line: 972, column: 3, scope: !2665)
!2676 = !DILocation(line: 973, column: 13, scope: !2665)
!2677 = !{i64 0, i64 4, !858, i64 4, i64 4, !858, i64 8, i64 32, !867, i64 40, i64 8, !802, i64 48, i64 8, !802}
!2678 = distinct !DIAssignID()
!2679 = !DILocation(line: 0, scope: !1652, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 974, column: 3, scope: !2665)
!2681 = !DILocation(line: 147, column: 41, scope: !1652, inlinedAt: !2680)
!2682 = !DILocation(line: 147, column: 62, scope: !1652, inlinedAt: !2680)
!2683 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2680)
!2684 = !DILocation(line: 148, column: 15, scope: !1652, inlinedAt: !2680)
!2685 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2680)
!2686 = !DILocation(line: 149, column: 24, scope: !1652, inlinedAt: !2680)
!2687 = !DILocation(line: 150, column: 19, scope: !1652, inlinedAt: !2680)
!2688 = !DILocation(line: 150, column: 24, scope: !1652, inlinedAt: !2680)
!2689 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2680)
!2690 = !DILocation(line: 975, column: 10, scope: !2665)
!2691 = !DILocation(line: 976, column: 1, scope: !2665)
!2692 = !DILocation(line: 975, column: 3, scope: !2665)
!2693 = distinct !DISubprogram(name: "quotearg_char", scope: !435, file: !435, line: 979, type: !2694, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!244, !78, !4}
!2696 = !{!2697, !2698}
!2697 = !DILocalVariable(name: "arg", arg: 1, scope: !2693, file: !435, line: 979, type: !78)
!2698 = !DILocalVariable(name: "ch", arg: 2, scope: !2693, file: !435, line: 979, type: !4)
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocation(line: 0, scope: !2665, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 981, column: 10, scope: !2693)
!2703 = !DILocation(line: 972, column: 3, scope: !2665, inlinedAt: !2702)
!2704 = !DILocation(line: 973, column: 13, scope: !2665, inlinedAt: !2702)
!2705 = distinct !DIAssignID()
!2706 = !DILocation(line: 0, scope: !1652, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 974, column: 3, scope: !2665, inlinedAt: !2702)
!2708 = !DILocation(line: 147, column: 41, scope: !1652, inlinedAt: !2707)
!2709 = !DILocation(line: 147, column: 62, scope: !1652, inlinedAt: !2707)
!2710 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2707)
!2711 = !DILocation(line: 148, column: 15, scope: !1652, inlinedAt: !2707)
!2712 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2707)
!2713 = !DILocation(line: 149, column: 24, scope: !1652, inlinedAt: !2707)
!2714 = !DILocation(line: 150, column: 19, scope: !1652, inlinedAt: !2707)
!2715 = !DILocation(line: 150, column: 24, scope: !1652, inlinedAt: !2707)
!2716 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2707)
!2717 = !DILocation(line: 975, column: 10, scope: !2665, inlinedAt: !2702)
!2718 = !DILocation(line: 976, column: 1, scope: !2665, inlinedAt: !2702)
!2719 = !DILocation(line: 981, column: 3, scope: !2693)
!2720 = distinct !DISubprogram(name: "quotearg_colon", scope: !435, file: !435, line: 985, type: !988, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2721)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "arg", arg: 1, scope: !2720, file: !435, line: 985, type: !78)
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 0, scope: !2720)
!2725 = !DILocation(line: 0, scope: !2693, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 987, column: 10, scope: !2720)
!2727 = !DILocation(line: 0, scope: !2665, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 981, column: 10, scope: !2693, inlinedAt: !2726)
!2729 = !DILocation(line: 972, column: 3, scope: !2665, inlinedAt: !2728)
!2730 = !DILocation(line: 973, column: 13, scope: !2665, inlinedAt: !2728)
!2731 = distinct !DIAssignID()
!2732 = !DILocation(line: 0, scope: !1652, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 974, column: 3, scope: !2665, inlinedAt: !2728)
!2734 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2733)
!2735 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2733)
!2736 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2733)
!2737 = !DILocation(line: 975, column: 10, scope: !2665, inlinedAt: !2728)
!2738 = !DILocation(line: 976, column: 1, scope: !2665, inlinedAt: !2728)
!2739 = !DILocation(line: 987, column: 3, scope: !2720)
!2740 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !435, file: !435, line: 991, type: !2538, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2741)
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2740, file: !435, line: 991, type: !78)
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2740, file: !435, line: 991, type: !102)
!2744 = distinct !DIAssignID()
!2745 = !DILocation(line: 0, scope: !2740)
!2746 = !DILocation(line: 0, scope: !2665, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 993, column: 10, scope: !2740)
!2748 = !DILocation(line: 972, column: 3, scope: !2665, inlinedAt: !2747)
!2749 = !DILocation(line: 973, column: 13, scope: !2665, inlinedAt: !2747)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !1652, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 974, column: 3, scope: !2665, inlinedAt: !2747)
!2753 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2752)
!2754 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2752)
!2755 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2752)
!2756 = !DILocation(line: 975, column: 10, scope: !2665, inlinedAt: !2747)
!2757 = !DILocation(line: 976, column: 1, scope: !2665, inlinedAt: !2747)
!2758 = !DILocation(line: 993, column: 3, scope: !2740)
!2759 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !435, file: !435, line: 997, type: !2549, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2760)
!2760 = !{!2761, !2762, !2763, !2764}
!2761 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !435, line: 997, type: !100)
!2762 = !DILocalVariable(name: "s", arg: 2, scope: !2759, file: !435, line: 997, type: !458)
!2763 = !DILocalVariable(name: "arg", arg: 3, scope: !2759, file: !435, line: 997, type: !78)
!2764 = !DILocalVariable(name: "options", scope: !2759, file: !435, line: 999, type: !485)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 0, scope: !2759)
!2767 = !DILocation(line: 185, column: 26, scope: !2564, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1000, column: 13, scope: !2759)
!2769 = !DILocation(line: 999, column: 3, scope: !2759)
!2770 = !DILocation(line: 0, scope: !2564, inlinedAt: !2768)
!2771 = !DILocation(line: 186, column: 13, scope: !2574, inlinedAt: !2768)
!2772 = !DILocation(line: 186, column: 7, scope: !2564, inlinedAt: !2768)
!2773 = !DILocation(line: 187, column: 5, scope: !2574, inlinedAt: !2768)
!2774 = !{!2775}
!2775 = distinct !{!2775, !2776, !"quoting_options_from_style: argument 0"}
!2776 = distinct !{!2776, !"quoting_options_from_style"}
!2777 = !DILocation(line: 1000, column: 13, scope: !2759)
!2778 = distinct !DIAssignID()
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 0, scope: !1652, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1001, column: 3, scope: !2759)
!2782 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2781)
!2783 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2781)
!2784 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2781)
!2785 = distinct !DIAssignID()
!2786 = !DILocation(line: 1002, column: 10, scope: !2759)
!2787 = !DILocation(line: 1003, column: 1, scope: !2759)
!2788 = !DILocation(line: 1002, column: 3, scope: !2759)
!2789 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !435, file: !435, line: 1006, type: !2790, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!244, !100, !78, !78, !78}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2789, file: !435, line: 1006, type: !100)
!2794 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2789, file: !435, line: 1006, type: !78)
!2795 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2789, file: !435, line: 1007, type: !78)
!2796 = !DILocalVariable(name: "arg", arg: 4, scope: !2789, file: !435, line: 1007, type: !78)
!2797 = distinct !DIAssignID()
!2798 = !DILocation(line: 0, scope: !2789)
!2799 = !DILocalVariable(name: "o", scope: !2800, file: !435, line: 1018, type: !485)
!2800 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !435, file: !435, line: 1014, type: !2801, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!244, !100, !78, !78, !78, !102}
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2799}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !435, line: 1014, type: !100)
!2805 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2800, file: !435, line: 1014, type: !78)
!2806 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2800, file: !435, line: 1015, type: !78)
!2807 = !DILocalVariable(name: "arg", arg: 4, scope: !2800, file: !435, line: 1016, type: !78)
!2808 = !DILocalVariable(name: "argsize", arg: 5, scope: !2800, file: !435, line: 1016, type: !102)
!2809 = !DILocation(line: 0, scope: !2800, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 1009, column: 10, scope: !2789)
!2811 = !DILocation(line: 1018, column: 3, scope: !2800, inlinedAt: !2810)
!2812 = !DILocation(line: 1018, column: 30, scope: !2800, inlinedAt: !2810)
!2813 = distinct !DIAssignID()
!2814 = distinct !DIAssignID()
!2815 = !DILocation(line: 0, scope: !1692, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1019, column: 3, scope: !2800, inlinedAt: !2810)
!2817 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2816)
!2818 = distinct !DIAssignID()
!2819 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2816)
!2820 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2816)
!2821 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2816)
!2822 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2816)
!2823 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2816)
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2816)
!2826 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2816)
!2827 = distinct !DIAssignID()
!2828 = !DILocation(line: 1020, column: 10, scope: !2800, inlinedAt: !2810)
!2829 = !DILocation(line: 1021, column: 1, scope: !2800, inlinedAt: !2810)
!2830 = !DILocation(line: 1009, column: 3, scope: !2789)
!2831 = distinct !DIAssignID()
!2832 = !DILocation(line: 0, scope: !2800)
!2833 = !DILocation(line: 1018, column: 3, scope: !2800)
!2834 = !DILocation(line: 1018, column: 30, scope: !2800)
!2835 = distinct !DIAssignID()
!2836 = distinct !DIAssignID()
!2837 = !DILocation(line: 0, scope: !1692, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1019, column: 3, scope: !2800)
!2839 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2838)
!2840 = distinct !DIAssignID()
!2841 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2838)
!2842 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2838)
!2843 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2838)
!2844 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2838)
!2845 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2838)
!2846 = distinct !DIAssignID()
!2847 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2838)
!2848 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2838)
!2849 = distinct !DIAssignID()
!2850 = !DILocation(line: 1020, column: 10, scope: !2800)
!2851 = !DILocation(line: 1021, column: 1, scope: !2800)
!2852 = !DILocation(line: 1020, column: 3, scope: !2800)
!2853 = distinct !DISubprogram(name: "quotearg_custom", scope: !435, file: !435, line: 1024, type: !2854, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!244, !78, !78, !78}
!2856 = !{!2857, !2858, !2859}
!2857 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2853, file: !435, line: 1024, type: !78)
!2858 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2853, file: !435, line: 1024, type: !78)
!2859 = !DILocalVariable(name: "arg", arg: 3, scope: !2853, file: !435, line: 1025, type: !78)
!2860 = distinct !DIAssignID()
!2861 = !DILocation(line: 0, scope: !2853)
!2862 = !DILocation(line: 0, scope: !2789, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1027, column: 10, scope: !2853)
!2864 = !DILocation(line: 0, scope: !2800, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1009, column: 10, scope: !2789, inlinedAt: !2863)
!2866 = !DILocation(line: 1018, column: 3, scope: !2800, inlinedAt: !2865)
!2867 = !DILocation(line: 1018, column: 30, scope: !2800, inlinedAt: !2865)
!2868 = distinct !DIAssignID()
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 0, scope: !1692, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1019, column: 3, scope: !2800, inlinedAt: !2865)
!2872 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2871)
!2873 = distinct !DIAssignID()
!2874 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2871)
!2875 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2871)
!2876 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2871)
!2877 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2871)
!2878 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2871)
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2871)
!2881 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2871)
!2882 = distinct !DIAssignID()
!2883 = !DILocation(line: 1020, column: 10, scope: !2800, inlinedAt: !2865)
!2884 = !DILocation(line: 1021, column: 1, scope: !2800, inlinedAt: !2865)
!2885 = !DILocation(line: 1027, column: 3, scope: !2853)
!2886 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !435, file: !435, line: 1031, type: !2887, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!244, !78, !78, !78, !102}
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2886, file: !435, line: 1031, type: !78)
!2891 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2886, file: !435, line: 1031, type: !78)
!2892 = !DILocalVariable(name: "arg", arg: 3, scope: !2886, file: !435, line: 1032, type: !78)
!2893 = !DILocalVariable(name: "argsize", arg: 4, scope: !2886, file: !435, line: 1032, type: !102)
!2894 = distinct !DIAssignID()
!2895 = !DILocation(line: 0, scope: !2886)
!2896 = !DILocation(line: 0, scope: !2800, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1034, column: 10, scope: !2886)
!2898 = !DILocation(line: 1018, column: 3, scope: !2800, inlinedAt: !2897)
!2899 = !DILocation(line: 1018, column: 30, scope: !2800, inlinedAt: !2897)
!2900 = distinct !DIAssignID()
!2901 = distinct !DIAssignID()
!2902 = !DILocation(line: 0, scope: !1692, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1019, column: 3, scope: !2800, inlinedAt: !2897)
!2904 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2903)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2903)
!2907 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2903)
!2908 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2903)
!2909 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2903)
!2910 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2903)
!2911 = distinct !DIAssignID()
!2912 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2903)
!2913 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2903)
!2914 = distinct !DIAssignID()
!2915 = !DILocation(line: 1020, column: 10, scope: !2800, inlinedAt: !2897)
!2916 = !DILocation(line: 1021, column: 1, scope: !2800, inlinedAt: !2897)
!2917 = !DILocation(line: 1034, column: 3, scope: !2886)
!2918 = distinct !DISubprogram(name: "quote_n_mem", scope: !435, file: !435, line: 1049, type: !2919, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!78, !100, !78, !102}
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "n", arg: 1, scope: !2918, file: !435, line: 1049, type: !100)
!2923 = !DILocalVariable(name: "arg", arg: 2, scope: !2918, file: !435, line: 1049, type: !78)
!2924 = !DILocalVariable(name: "argsize", arg: 3, scope: !2918, file: !435, line: 1049, type: !102)
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocation(line: 1051, column: 10, scope: !2918)
!2927 = !DILocation(line: 1051, column: 3, scope: !2918)
!2928 = distinct !DISubprogram(name: "quote_mem", scope: !435, file: !435, line: 1055, type: !2929, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!78, !78, !102}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !435, line: 1055, type: !78)
!2933 = !DILocalVariable(name: "argsize", arg: 2, scope: !2928, file: !435, line: 1055, type: !102)
!2934 = !DILocation(line: 0, scope: !2928)
!2935 = !DILocation(line: 0, scope: !2918, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1057, column: 10, scope: !2928)
!2937 = !DILocation(line: 1051, column: 10, scope: !2918, inlinedAt: !2936)
!2938 = !DILocation(line: 1057, column: 3, scope: !2928)
!2939 = distinct !DISubprogram(name: "quote_n", scope: !435, file: !435, line: 1061, type: !2940, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!78, !100, !78}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !435, line: 1061, type: !100)
!2944 = !DILocalVariable(name: "arg", arg: 2, scope: !2939, file: !435, line: 1061, type: !78)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2918, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1063, column: 10, scope: !2939)
!2948 = !DILocation(line: 1051, column: 10, scope: !2918, inlinedAt: !2947)
!2949 = !DILocation(line: 1063, column: 3, scope: !2939)
!2950 = distinct !DISubprogram(name: "quote", scope: !435, file: !435, line: 1067, type: !2951, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!78, !78}
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !435, line: 1067, type: !78)
!2955 = !DILocation(line: 0, scope: !2950)
!2956 = !DILocation(line: 0, scope: !2939, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1069, column: 10, scope: !2950)
!2958 = !DILocation(line: 0, scope: !2918, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1063, column: 10, scope: !2939, inlinedAt: !2957)
!2960 = !DILocation(line: 1051, column: 10, scope: !2918, inlinedAt: !2959)
!2961 = !DILocation(line: 1069, column: 3, scope: !2950)
!2962 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 61, type: !2963, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3000)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2965, !78, !78, !78, !2999, !102}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2967, file: !240, line: 51, baseType: !100, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2967, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2967, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2967, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2967, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2967, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2967, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2967, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2967, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2967, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2967, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2967, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2967, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2967, file: !240, line: 70, baseType: !2983, size: 64, offset: 832)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2967, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2967, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2967, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2967, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2967, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2967, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2967, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2967, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2967, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2967, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2967, file: !240, line: 93, baseType: !2983, size: 64, offset: 1344)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2967, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2967, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2967, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2967, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006}
!3001 = !DILocalVariable(name: "stream", arg: 1, scope: !2962, file: !548, line: 61, type: !2965)
!3002 = !DILocalVariable(name: "command_name", arg: 2, scope: !2962, file: !548, line: 62, type: !78)
!3003 = !DILocalVariable(name: "package", arg: 3, scope: !2962, file: !548, line: 62, type: !78)
!3004 = !DILocalVariable(name: "version", arg: 4, scope: !2962, file: !548, line: 63, type: !78)
!3005 = !DILocalVariable(name: "authors", arg: 5, scope: !2962, file: !548, line: 64, type: !2999)
!3006 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2962, file: !548, line: 64, type: !102)
!3007 = !DILocation(line: 0, scope: !2962)
!3008 = !DILocation(line: 66, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2962, file: !548, line: 66, column: 7)
!3010 = !DILocation(line: 66, column: 7, scope: !2962)
!3011 = !DILocation(line: 67, column: 5, scope: !3009)
!3012 = !DILocation(line: 69, column: 5, scope: !3009)
!3013 = !DILocation(line: 83, column: 3, scope: !2962)
!3014 = !DILocation(line: 85, column: 3, scope: !2962)
!3015 = !DILocation(line: 88, column: 3, scope: !2962)
!3016 = !DILocation(line: 95, column: 3, scope: !2962)
!3017 = !DILocation(line: 97, column: 3, scope: !2962)
!3018 = !DILocation(line: 105, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2962, file: !548, line: 98, column: 5)
!3020 = !DILocation(line: 106, column: 7, scope: !3019)
!3021 = !DILocation(line: 109, column: 7, scope: !3019)
!3022 = !DILocation(line: 110, column: 7, scope: !3019)
!3023 = !DILocation(line: 113, column: 7, scope: !3019)
!3024 = !DILocation(line: 115, column: 7, scope: !3019)
!3025 = !DILocation(line: 120, column: 7, scope: !3019)
!3026 = !DILocation(line: 122, column: 7, scope: !3019)
!3027 = !DILocation(line: 127, column: 7, scope: !3019)
!3028 = !DILocation(line: 129, column: 7, scope: !3019)
!3029 = !DILocation(line: 134, column: 7, scope: !3019)
!3030 = !DILocation(line: 137, column: 7, scope: !3019)
!3031 = !DILocation(line: 142, column: 7, scope: !3019)
!3032 = !DILocation(line: 145, column: 7, scope: !3019)
!3033 = !DILocation(line: 150, column: 7, scope: !3019)
!3034 = !DILocation(line: 154, column: 7, scope: !3019)
!3035 = !DILocation(line: 159, column: 7, scope: !3019)
!3036 = !DILocation(line: 163, column: 7, scope: !3019)
!3037 = !DILocation(line: 170, column: 7, scope: !3019)
!3038 = !DILocation(line: 174, column: 7, scope: !3019)
!3039 = !DILocation(line: 176, column: 1, scope: !2962)
!3040 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 183, type: !3041, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2965, !78, !78, !78, !2999}
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049}
!3044 = !DILocalVariable(name: "stream", arg: 1, scope: !3040, file: !548, line: 183, type: !2965)
!3045 = !DILocalVariable(name: "command_name", arg: 2, scope: !3040, file: !548, line: 184, type: !78)
!3046 = !DILocalVariable(name: "package", arg: 3, scope: !3040, file: !548, line: 184, type: !78)
!3047 = !DILocalVariable(name: "version", arg: 4, scope: !3040, file: !548, line: 185, type: !78)
!3048 = !DILocalVariable(name: "authors", arg: 5, scope: !3040, file: !548, line: 185, type: !2999)
!3049 = !DILocalVariable(name: "n_authors", scope: !3040, file: !548, line: 187, type: !102)
!3050 = !DILocation(line: 0, scope: !3040)
!3051 = !DILocation(line: 189, column: 8, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3040, file: !548, line: 189, column: 3)
!3053 = !DILocation(line: 189, scope: !3052)
!3054 = !DILocation(line: 189, column: 23, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !548, line: 189, column: 3)
!3056 = !DILocation(line: 189, column: 3, scope: !3052)
!3057 = !DILocation(line: 189, column: 52, scope: !3055)
!3058 = distinct !{!3058, !3056, !3059, !905}
!3059 = !DILocation(line: 190, column: 5, scope: !3052)
!3060 = !DILocation(line: 191, column: 3, scope: !3040)
!3061 = !DILocation(line: 192, column: 1, scope: !3040)
!3062 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 199, type: !3063, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3072)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !2965, !78, !78, !78, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3066, file: !548, line: 192, baseType: !84, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3066, file: !548, line: 192, baseType: !84, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3066, file: !548, line: 192, baseType: !99, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3066, file: !548, line: 192, baseType: !99, size: 64, offset: 128)
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3073 = !DILocalVariable(name: "stream", arg: 1, scope: !3062, file: !548, line: 199, type: !2965)
!3074 = !DILocalVariable(name: "command_name", arg: 2, scope: !3062, file: !548, line: 200, type: !78)
!3075 = !DILocalVariable(name: "package", arg: 3, scope: !3062, file: !548, line: 200, type: !78)
!3076 = !DILocalVariable(name: "version", arg: 4, scope: !3062, file: !548, line: 201, type: !78)
!3077 = !DILocalVariable(name: "authors", arg: 5, scope: !3062, file: !548, line: 201, type: !3065)
!3078 = !DILocalVariable(name: "n_authors", scope: !3062, file: !548, line: 203, type: !102)
!3079 = !DILocalVariable(name: "authtab", scope: !3062, file: !548, line: 204, type: !3080)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !35)
!3081 = distinct !DIAssignID()
!3082 = !DILocation(line: 0, scope: !3062)
!3083 = !DILocation(line: 204, column: 3, scope: !3062)
!3084 = !DILocation(line: 208, column: 35, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !548, line: 206, column: 3)
!3086 = distinct !DILexicalBlock(scope: !3062, file: !548, line: 206, column: 3)
!3087 = !DILocation(line: 208, column: 33, scope: !3085)
!3088 = !DILocation(line: 208, column: 67, scope: !3085)
!3089 = !DILocation(line: 206, column: 3, scope: !3086)
!3090 = !DILocation(line: 208, column: 14, scope: !3085)
!3091 = !DILocation(line: 0, scope: !3086)
!3092 = !DILocation(line: 211, column: 3, scope: !3062)
!3093 = !DILocation(line: 213, column: 1, scope: !3062)
!3094 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 230, type: !3095, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !2965, !78, !78, !78, null}
!3097 = !{!3098, !3099, !3100, !3101, !3102}
!3098 = !DILocalVariable(name: "stream", arg: 1, scope: !3094, file: !548, line: 230, type: !2965)
!3099 = !DILocalVariable(name: "command_name", arg: 2, scope: !3094, file: !548, line: 231, type: !78)
!3100 = !DILocalVariable(name: "package", arg: 3, scope: !3094, file: !548, line: 231, type: !78)
!3101 = !DILocalVariable(name: "version", arg: 4, scope: !3094, file: !548, line: 232, type: !78)
!3102 = !DILocalVariable(name: "authors", scope: !3094, file: !548, line: 234, type: !3103)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !982, line: 52, baseType: !3104)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1385, line: 12, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !548, baseType: !3106)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3066, size: 192, elements: !30)
!3107 = distinct !DIAssignID()
!3108 = !DILocation(line: 0, scope: !3094)
!3109 = !DILocation(line: 234, column: 3, scope: !3094)
!3110 = !DILocation(line: 235, column: 3, scope: !3094)
!3111 = !DILocation(line: 236, column: 3, scope: !3094)
!3112 = !DILocation(line: 237, column: 3, scope: !3094)
!3113 = !DILocation(line: 238, column: 1, scope: !3094)
!3114 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 241, type: !366, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703)
!3115 = !DILocation(line: 243, column: 3, scope: !3114)
!3116 = !DILocation(line: 248, column: 3, scope: !3114)
!3117 = !DILocation(line: 254, column: 3, scope: !3114)
!3118 = !DILocation(line: 259, column: 3, scope: !3114)
!3119 = !DILocation(line: 261, column: 1, scope: !3114)
!3120 = distinct !DISubprogram(name: "xnrealloc", scope: !3121, file: !3121, line: 147, type: !3122, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3124)
!3121 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!99, !99, !102, !102}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3120, file: !3121, line: 147, type: !99)
!3126 = !DILocalVariable(name: "n", arg: 2, scope: !3120, file: !3121, line: 147, type: !102)
!3127 = !DILocalVariable(name: "s", arg: 3, scope: !3120, file: !3121, line: 147, type: !102)
!3128 = !DILocation(line: 0, scope: !3120)
!3129 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !710, line: 83, type: !99)
!3130 = distinct !DISubprogram(name: "xreallocarray", scope: !710, file: !710, line: 83, type: !3122, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3131)
!3131 = !{!3129, !3132, !3133}
!3132 = !DILocalVariable(name: "n", arg: 2, scope: !3130, file: !710, line: 83, type: !102)
!3133 = !DILocalVariable(name: "s", arg: 3, scope: !3130, file: !710, line: 83, type: !102)
!3134 = !DILocation(line: 0, scope: !3130, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 149, column: 10, scope: !3120)
!3136 = !DILocation(line: 85, column: 25, scope: !3130, inlinedAt: !3135)
!3137 = !DILocalVariable(name: "p", arg: 1, scope: !3138, file: !710, line: 37, type: !99)
!3138 = distinct !DISubprogram(name: "check_nonnull", scope: !710, file: !710, line: 37, type: !3139, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!99, !99}
!3141 = !{!3137}
!3142 = !DILocation(line: 0, scope: !3138, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !3130, inlinedAt: !3135)
!3144 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3143)
!3145 = distinct !DILexicalBlock(scope: !3138, file: !710, line: 39, column: 7)
!3146 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3143)
!3147 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3143)
!3148 = !DILocation(line: 149, column: 3, scope: !3120)
!3149 = !DILocation(line: 0, scope: !3130)
!3150 = !DILocation(line: 85, column: 25, scope: !3130)
!3151 = !DILocation(line: 0, scope: !3138, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 85, column: 10, scope: !3130)
!3153 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3152)
!3156 = !DILocation(line: 85, column: 3, scope: !3130)
!3157 = distinct !DISubprogram(name: "xmalloc", scope: !710, file: !710, line: 47, type: !3158, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!99, !102}
!3160 = !{!3161}
!3161 = !DILocalVariable(name: "s", arg: 1, scope: !3157, file: !710, line: 47, type: !102)
!3162 = !DILocation(line: 0, scope: !3157)
!3163 = !DILocation(line: 49, column: 25, scope: !3157)
!3164 = !DILocation(line: 0, scope: !3138, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 49, column: 10, scope: !3157)
!3166 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3165)
!3169 = !DILocation(line: 49, column: 3, scope: !3157)
!3170 = !DISubprogram(name: "malloc", scope: !986, file: !986, line: 540, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3171 = distinct !DISubprogram(name: "ximalloc", scope: !710, file: !710, line: 53, type: !3172, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!99, !729}
!3174 = !{!3175}
!3175 = !DILocalVariable(name: "s", arg: 1, scope: !3171, file: !710, line: 53, type: !729)
!3176 = !DILocation(line: 0, scope: !3171)
!3177 = !DILocalVariable(name: "s", arg: 1, scope: !3178, file: !3179, line: 55, type: !729)
!3178 = distinct !DISubprogram(name: "imalloc", scope: !3179, file: !3179, line: 55, type: !3172, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3180)
!3179 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3180 = !{!3177}
!3181 = !DILocation(line: 0, scope: !3178, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 55, column: 25, scope: !3171)
!3183 = !DILocation(line: 57, column: 26, scope: !3178, inlinedAt: !3182)
!3184 = !DILocation(line: 0, scope: !3138, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 55, column: 10, scope: !3171)
!3186 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3185)
!3187 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3185)
!3188 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3185)
!3189 = !DILocation(line: 55, column: 3, scope: !3171)
!3190 = distinct !DISubprogram(name: "xcharalloc", scope: !710, file: !710, line: 59, type: !3191, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!244, !102}
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !710, line: 59, type: !102)
!3195 = !DILocation(line: 0, scope: !3190)
!3196 = !DILocation(line: 0, scope: !3157, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 61, column: 10, scope: !3190)
!3198 = !DILocation(line: 49, column: 25, scope: !3157, inlinedAt: !3197)
!3199 = !DILocation(line: 0, scope: !3138, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 49, column: 10, scope: !3157, inlinedAt: !3197)
!3201 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3200)
!3202 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3200)
!3203 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3200)
!3204 = !DILocation(line: 61, column: 3, scope: !3190)
!3205 = distinct !DISubprogram(name: "xrealloc", scope: !710, file: !710, line: 68, type: !3206, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!99, !99, !102}
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "p", arg: 1, scope: !3205, file: !710, line: 68, type: !99)
!3210 = !DILocalVariable(name: "s", arg: 2, scope: !3205, file: !710, line: 68, type: !102)
!3211 = !DILocation(line: 0, scope: !3205)
!3212 = !DILocalVariable(name: "ptr", arg: 1, scope: !3213, file: !3214, line: 2057, type: !99)
!3213 = distinct !DISubprogram(name: "rpl_realloc", scope: !3214, file: !3214, line: 2057, type: !3206, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3215)
!3214 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3215 = !{!3212, !3216}
!3216 = !DILocalVariable(name: "size", arg: 2, scope: !3213, file: !3214, line: 2057, type: !102)
!3217 = !DILocation(line: 0, scope: !3213, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 70, column: 25, scope: !3205)
!3219 = !DILocation(line: 2059, column: 24, scope: !3213, inlinedAt: !3218)
!3220 = !DILocation(line: 2059, column: 10, scope: !3213, inlinedAt: !3218)
!3221 = !DILocation(line: 0, scope: !3138, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 70, column: 10, scope: !3205)
!3223 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3222)
!3224 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3222)
!3225 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3222)
!3226 = !DILocation(line: 70, column: 3, scope: !3205)
!3227 = !DISubprogram(name: "realloc", scope: !986, file: !986, line: 551, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3228 = distinct !DISubprogram(name: "xirealloc", scope: !710, file: !710, line: 74, type: !3229, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!99, !99, !729}
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "p", arg: 1, scope: !3228, file: !710, line: 74, type: !99)
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !710, line: 74, type: !729)
!3234 = !DILocation(line: 0, scope: !3228)
!3235 = !DILocalVariable(name: "p", arg: 1, scope: !3236, file: !3179, line: 66, type: !99)
!3236 = distinct !DISubprogram(name: "irealloc", scope: !3179, file: !3179, line: 66, type: !3229, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3237)
!3237 = !{!3235, !3238}
!3238 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !3179, line: 66, type: !729)
!3239 = !DILocation(line: 0, scope: !3236, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 76, column: 25, scope: !3228)
!3241 = !DILocation(line: 0, scope: !3213, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 68, column: 26, scope: !3236, inlinedAt: !3240)
!3243 = !DILocation(line: 2059, column: 24, scope: !3213, inlinedAt: !3242)
!3244 = !DILocation(line: 2059, column: 10, scope: !3213, inlinedAt: !3242)
!3245 = !DILocation(line: 0, scope: !3138, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 76, column: 10, scope: !3228)
!3247 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3246)
!3248 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3246)
!3249 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3246)
!3250 = !DILocation(line: 76, column: 3, scope: !3228)
!3251 = distinct !DISubprogram(name: "xireallocarray", scope: !710, file: !710, line: 89, type: !3252, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!99, !99, !729, !729}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3251, file: !710, line: 89, type: !99)
!3256 = !DILocalVariable(name: "n", arg: 2, scope: !3251, file: !710, line: 89, type: !729)
!3257 = !DILocalVariable(name: "s", arg: 3, scope: !3251, file: !710, line: 89, type: !729)
!3258 = !DILocation(line: 0, scope: !3251)
!3259 = !DILocalVariable(name: "p", arg: 1, scope: !3260, file: !3179, line: 98, type: !99)
!3260 = distinct !DISubprogram(name: "ireallocarray", scope: !3179, file: !3179, line: 98, type: !3252, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3261)
!3261 = !{!3259, !3262, !3263}
!3262 = !DILocalVariable(name: "n", arg: 2, scope: !3260, file: !3179, line: 98, type: !729)
!3263 = !DILocalVariable(name: "s", arg: 3, scope: !3260, file: !3179, line: 98, type: !729)
!3264 = !DILocation(line: 0, scope: !3260, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 91, column: 25, scope: !3251)
!3266 = !DILocation(line: 101, column: 13, scope: !3260, inlinedAt: !3265)
!3267 = !DILocation(line: 0, scope: !3138, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 91, column: 10, scope: !3251)
!3269 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3268)
!3270 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3268)
!3271 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3268)
!3272 = !DILocation(line: 91, column: 3, scope: !3251)
!3273 = distinct !DISubprogram(name: "xnmalloc", scope: !710, file: !710, line: 98, type: !3274, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!99, !102, !102}
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !710, line: 98, type: !102)
!3278 = !DILocalVariable(name: "s", arg: 2, scope: !3273, file: !710, line: 98, type: !102)
!3279 = !DILocation(line: 0, scope: !3273)
!3280 = !DILocation(line: 0, scope: !3130, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 100, column: 10, scope: !3273)
!3282 = !DILocation(line: 85, column: 25, scope: !3130, inlinedAt: !3281)
!3283 = !DILocation(line: 0, scope: !3138, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 85, column: 10, scope: !3130, inlinedAt: !3281)
!3285 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3284)
!3286 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3284)
!3287 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3284)
!3288 = !DILocation(line: 100, column: 3, scope: !3273)
!3289 = distinct !DISubprogram(name: "xinmalloc", scope: !710, file: !710, line: 104, type: !3290, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!99, !729, !729}
!3292 = !{!3293, !3294}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3289, file: !710, line: 104, type: !729)
!3294 = !DILocalVariable(name: "s", arg: 2, scope: !3289, file: !710, line: 104, type: !729)
!3295 = !DILocation(line: 0, scope: !3289)
!3296 = !DILocation(line: 0, scope: !3251, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 106, column: 10, scope: !3289)
!3298 = !DILocation(line: 0, scope: !3260, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 91, column: 25, scope: !3251, inlinedAt: !3297)
!3300 = !DILocation(line: 101, column: 13, scope: !3260, inlinedAt: !3299)
!3301 = !DILocation(line: 0, scope: !3138, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 91, column: 10, scope: !3251, inlinedAt: !3297)
!3303 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3302)
!3304 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3302)
!3305 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3302)
!3306 = !DILocation(line: 106, column: 3, scope: !3289)
!3307 = distinct !DISubprogram(name: "x2realloc", scope: !710, file: !710, line: 116, type: !3308, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!99, !99, !716}
!3310 = !{!3311, !3312}
!3311 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !710, line: 116, type: !99)
!3312 = !DILocalVariable(name: "ps", arg: 2, scope: !3307, file: !710, line: 116, type: !716)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 0, scope: !713, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 118, column: 10, scope: !3307)
!3316 = !DILocation(line: 178, column: 14, scope: !713, inlinedAt: !3315)
!3317 = !DILocation(line: 180, column: 9, scope: !3318, inlinedAt: !3315)
!3318 = distinct !DILexicalBlock(scope: !713, file: !710, line: 180, column: 7)
!3319 = !DILocation(line: 180, column: 7, scope: !713, inlinedAt: !3315)
!3320 = !DILocation(line: 182, column: 13, scope: !3321, inlinedAt: !3315)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !710, line: 182, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !710, line: 181, column: 5)
!3323 = !DILocation(line: 182, column: 11, scope: !3322, inlinedAt: !3315)
!3324 = !DILocation(line: 197, column: 11, scope: !3325, inlinedAt: !3315)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !710, line: 197, column: 11)
!3326 = distinct !DILexicalBlock(scope: !3318, file: !710, line: 195, column: 5)
!3327 = !DILocation(line: 197, column: 11, scope: !3326, inlinedAt: !3315)
!3328 = !DILocation(line: 198, column: 9, scope: !3325, inlinedAt: !3315)
!3329 = !DILocation(line: 0, scope: !3130, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 201, column: 7, scope: !713, inlinedAt: !3315)
!3331 = !DILocation(line: 85, column: 25, scope: !3130, inlinedAt: !3330)
!3332 = !DILocation(line: 0, scope: !3138, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 85, column: 10, scope: !3130, inlinedAt: !3330)
!3334 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3333)
!3335 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3333)
!3336 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3333)
!3337 = !DILocation(line: 202, column: 7, scope: !713, inlinedAt: !3315)
!3338 = !DILocation(line: 118, column: 3, scope: !3307)
!3339 = !DILocation(line: 0, scope: !713)
!3340 = !DILocation(line: 178, column: 14, scope: !713)
!3341 = !DILocation(line: 180, column: 9, scope: !3318)
!3342 = !DILocation(line: 180, column: 7, scope: !713)
!3343 = !DILocation(line: 182, column: 13, scope: !3321)
!3344 = !DILocation(line: 182, column: 11, scope: !3322)
!3345 = !DILocation(line: 190, column: 30, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3321, file: !710, line: 183, column: 9)
!3347 = !DILocation(line: 191, column: 16, scope: !3346)
!3348 = !DILocation(line: 191, column: 13, scope: !3346)
!3349 = !DILocation(line: 192, column: 9, scope: !3346)
!3350 = !DILocation(line: 197, column: 11, scope: !3325)
!3351 = !DILocation(line: 197, column: 11, scope: !3326)
!3352 = !DILocation(line: 198, column: 9, scope: !3325)
!3353 = !DILocation(line: 0, scope: !3130, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 201, column: 7, scope: !713)
!3355 = !DILocation(line: 85, column: 25, scope: !3130, inlinedAt: !3354)
!3356 = !DILocation(line: 0, scope: !3138, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 85, column: 10, scope: !3130, inlinedAt: !3354)
!3358 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3357)
!3359 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3357)
!3360 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3357)
!3361 = !DILocation(line: 202, column: 7, scope: !713)
!3362 = !DILocation(line: 203, column: 3, scope: !713)
!3363 = !DILocation(line: 0, scope: !725)
!3364 = !DILocation(line: 230, column: 14, scope: !725)
!3365 = !DILocation(line: 238, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !725, file: !710, line: 238, column: 7)
!3367 = !DILocation(line: 238, column: 7, scope: !725)
!3368 = !DILocation(line: 240, column: 9, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !725, file: !710, line: 240, column: 7)
!3370 = !DILocation(line: 240, column: 18, scope: !3369)
!3371 = !DILocation(line: 253, column: 8, scope: !725)
!3372 = !DILocation(line: 256, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !725, file: !710, line: 256, column: 7)
!3374 = !DILocation(line: 256, column: 7, scope: !725)
!3375 = !DILocation(line: 258, column: 27, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !710, line: 257, column: 5)
!3377 = !DILocation(line: 259, column: 50, scope: !3376)
!3378 = !DILocation(line: 259, column: 32, scope: !3376)
!3379 = !DILocation(line: 260, column: 5, scope: !3376)
!3380 = !DILocation(line: 262, column: 9, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !725, file: !710, line: 262, column: 7)
!3382 = !DILocation(line: 262, column: 7, scope: !725)
!3383 = !DILocation(line: 263, column: 9, scope: !3381)
!3384 = !DILocation(line: 263, column: 5, scope: !3381)
!3385 = !DILocation(line: 264, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !725, file: !710, line: 264, column: 7)
!3387 = !DILocation(line: 264, column: 14, scope: !3386)
!3388 = !DILocation(line: 265, column: 7, scope: !3386)
!3389 = !DILocation(line: 265, column: 11, scope: !3386)
!3390 = !DILocation(line: 266, column: 11, scope: !3386)
!3391 = !DILocation(line: 267, column: 14, scope: !3386)
!3392 = !DILocation(line: 264, column: 7, scope: !725)
!3393 = !DILocation(line: 268, column: 5, scope: !3386)
!3394 = !DILocation(line: 0, scope: !3205, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 269, column: 8, scope: !725)
!3396 = !DILocation(line: 0, scope: !3213, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 70, column: 25, scope: !3205, inlinedAt: !3395)
!3398 = !DILocation(line: 2059, column: 24, scope: !3213, inlinedAt: !3397)
!3399 = !DILocation(line: 2059, column: 10, scope: !3213, inlinedAt: !3397)
!3400 = !DILocation(line: 0, scope: !3138, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 70, column: 10, scope: !3205, inlinedAt: !3395)
!3402 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3401)
!3403 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3401)
!3404 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3401)
!3405 = !DILocation(line: 270, column: 7, scope: !725)
!3406 = !DILocation(line: 271, column: 3, scope: !725)
!3407 = distinct !DISubprogram(name: "xzalloc", scope: !710, file: !710, line: 279, type: !3158, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3408)
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3407, file: !710, line: 279, type: !102)
!3410 = !DILocation(line: 0, scope: !3407)
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !710, line: 294, type: !102)
!3412 = distinct !DISubprogram(name: "xcalloc", scope: !710, file: !710, line: 294, type: !3274, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3413)
!3413 = !{!3411, !3414}
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !710, line: 294, type: !102)
!3415 = !DILocation(line: 0, scope: !3412, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 281, column: 10, scope: !3407)
!3417 = !DILocation(line: 296, column: 25, scope: !3412, inlinedAt: !3416)
!3418 = !DILocation(line: 0, scope: !3138, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 296, column: 10, scope: !3412, inlinedAt: !3416)
!3420 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3419)
!3421 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3419)
!3422 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3419)
!3423 = !DILocation(line: 281, column: 3, scope: !3407)
!3424 = !DISubprogram(name: "calloc", scope: !986, file: !986, line: 543, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3425 = !DILocation(line: 0, scope: !3412)
!3426 = !DILocation(line: 296, column: 25, scope: !3412)
!3427 = !DILocation(line: 0, scope: !3138, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 296, column: 10, scope: !3412)
!3429 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3428)
!3430 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3428)
!3431 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3428)
!3432 = !DILocation(line: 296, column: 3, scope: !3412)
!3433 = distinct !DISubprogram(name: "xizalloc", scope: !710, file: !710, line: 285, type: !3172, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3434)
!3434 = !{!3435}
!3435 = !DILocalVariable(name: "s", arg: 1, scope: !3433, file: !710, line: 285, type: !729)
!3436 = !DILocation(line: 0, scope: !3433)
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3438, file: !710, line: 300, type: !729)
!3438 = distinct !DISubprogram(name: "xicalloc", scope: !710, file: !710, line: 300, type: !3290, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3439)
!3439 = !{!3437, !3440}
!3440 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !710, line: 300, type: !729)
!3441 = !DILocation(line: 0, scope: !3438, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 287, column: 10, scope: !3433)
!3443 = !DILocalVariable(name: "n", arg: 1, scope: !3444, file: !3179, line: 77, type: !729)
!3444 = distinct !DISubprogram(name: "icalloc", scope: !3179, file: !3179, line: 77, type: !3290, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3445)
!3445 = !{!3443, !3446}
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3444, file: !3179, line: 77, type: !729)
!3447 = !DILocation(line: 0, scope: !3444, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 302, column: 25, scope: !3438, inlinedAt: !3442)
!3449 = !DILocation(line: 91, column: 10, scope: !3444, inlinedAt: !3448)
!3450 = !DILocation(line: 0, scope: !3138, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 302, column: 10, scope: !3438, inlinedAt: !3442)
!3452 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3451)
!3453 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3451)
!3454 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3451)
!3455 = !DILocation(line: 287, column: 3, scope: !3433)
!3456 = !DILocation(line: 0, scope: !3438)
!3457 = !DILocation(line: 0, scope: !3444, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 302, column: 25, scope: !3438)
!3459 = !DILocation(line: 91, column: 10, scope: !3444, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !3138, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 302, column: 10, scope: !3438)
!3462 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3461)
!3465 = !DILocation(line: 302, column: 3, scope: !3438)
!3466 = distinct !DISubprogram(name: "xmemdup", scope: !710, file: !710, line: 310, type: !3467, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!99, !1008, !102}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3466, file: !710, line: 310, type: !1008)
!3471 = !DILocalVariable(name: "s", arg: 2, scope: !3466, file: !710, line: 310, type: !102)
!3472 = !DILocation(line: 0, scope: !3466)
!3473 = !DILocation(line: 0, scope: !3157, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 312, column: 18, scope: !3466)
!3475 = !DILocation(line: 49, column: 25, scope: !3157, inlinedAt: !3474)
!3476 = !DILocation(line: 0, scope: !3138, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 49, column: 10, scope: !3157, inlinedAt: !3474)
!3478 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3477)
!3479 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3477)
!3480 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3477)
!3481 = !DILocalVariable(name: "__dest", arg: 1, scope: !3482, file: !1595, line: 26, type: !3485)
!3482 = distinct !DISubprogram(name: "memcpy", scope: !1595, file: !1595, line: 26, type: !3483, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3486)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!99, !3485, !1007, !102}
!3485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3486 = !{!3481, !3487, !3488}
!3487 = !DILocalVariable(name: "__src", arg: 2, scope: !3482, file: !1595, line: 26, type: !1007)
!3488 = !DILocalVariable(name: "__len", arg: 3, scope: !3482, file: !1595, line: 26, type: !102)
!3489 = !DILocation(line: 0, scope: !3482, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 312, column: 10, scope: !3466)
!3491 = !DILocation(line: 29, column: 10, scope: !3482, inlinedAt: !3490)
!3492 = !DILocation(line: 312, column: 3, scope: !3466)
!3493 = distinct !DISubprogram(name: "ximemdup", scope: !710, file: !710, line: 316, type: !3494, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!99, !1008, !729}
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "p", arg: 1, scope: !3493, file: !710, line: 316, type: !1008)
!3498 = !DILocalVariable(name: "s", arg: 2, scope: !3493, file: !710, line: 316, type: !729)
!3499 = !DILocation(line: 0, scope: !3493)
!3500 = !DILocation(line: 0, scope: !3171, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 318, column: 18, scope: !3493)
!3502 = !DILocation(line: 0, scope: !3178, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 55, column: 25, scope: !3171, inlinedAt: !3501)
!3504 = !DILocation(line: 57, column: 26, scope: !3178, inlinedAt: !3503)
!3505 = !DILocation(line: 0, scope: !3138, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 55, column: 10, scope: !3171, inlinedAt: !3501)
!3507 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3506)
!3508 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3506)
!3509 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3506)
!3510 = !DILocation(line: 0, scope: !3482, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 318, column: 10, scope: !3493)
!3512 = !DILocation(line: 29, column: 10, scope: !3482, inlinedAt: !3511)
!3513 = !DILocation(line: 318, column: 3, scope: !3493)
!3514 = distinct !DISubprogram(name: "ximemdup0", scope: !710, file: !710, line: 325, type: !3515, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!244, !1008, !729}
!3517 = !{!3518, !3519, !3520}
!3518 = !DILocalVariable(name: "p", arg: 1, scope: !3514, file: !710, line: 325, type: !1008)
!3519 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !710, line: 325, type: !729)
!3520 = !DILocalVariable(name: "result", scope: !3514, file: !710, line: 327, type: !244)
!3521 = !DILocation(line: 0, scope: !3514)
!3522 = !DILocation(line: 327, column: 30, scope: !3514)
!3523 = !DILocation(line: 0, scope: !3171, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 327, column: 18, scope: !3514)
!3525 = !DILocation(line: 0, scope: !3178, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 55, column: 25, scope: !3171, inlinedAt: !3524)
!3527 = !DILocation(line: 57, column: 26, scope: !3178, inlinedAt: !3526)
!3528 = !DILocation(line: 0, scope: !3138, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 55, column: 10, scope: !3171, inlinedAt: !3524)
!3530 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3529)
!3531 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3529)
!3532 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3529)
!3533 = !DILocation(line: 328, column: 3, scope: !3514)
!3534 = !DILocation(line: 328, column: 13, scope: !3514)
!3535 = !DILocation(line: 0, scope: !3482, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 329, column: 10, scope: !3514)
!3537 = !DILocation(line: 29, column: 10, scope: !3482, inlinedAt: !3536)
!3538 = !DILocation(line: 329, column: 3, scope: !3514)
!3539 = distinct !DISubprogram(name: "xstrdup", scope: !710, file: !710, line: 335, type: !988, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3540)
!3540 = !{!3541}
!3541 = !DILocalVariable(name: "string", arg: 1, scope: !3539, file: !710, line: 335, type: !78)
!3542 = !DILocation(line: 0, scope: !3539)
!3543 = !DILocation(line: 337, column: 27, scope: !3539)
!3544 = !DILocation(line: 337, column: 43, scope: !3539)
!3545 = !DILocation(line: 0, scope: !3466, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 337, column: 10, scope: !3539)
!3547 = !DILocation(line: 0, scope: !3157, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 312, column: 18, scope: !3466, inlinedAt: !3546)
!3549 = !DILocation(line: 49, column: 25, scope: !3157, inlinedAt: !3548)
!3550 = !DILocation(line: 0, scope: !3138, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 49, column: 10, scope: !3157, inlinedAt: !3548)
!3552 = !DILocation(line: 39, column: 8, scope: !3145, inlinedAt: !3551)
!3553 = !DILocation(line: 39, column: 7, scope: !3138, inlinedAt: !3551)
!3554 = !DILocation(line: 40, column: 5, scope: !3145, inlinedAt: !3551)
!3555 = !DILocation(line: 0, scope: !3482, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 312, column: 10, scope: !3466, inlinedAt: !3546)
!3557 = !DILocation(line: 29, column: 10, scope: !3482, inlinedAt: !3556)
!3558 = !DILocation(line: 337, column: 3, scope: !3539)
!3559 = distinct !DISubprogram(name: "xalloc_die", scope: !644, file: !644, line: 32, type: !366, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3560)
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "__errstatus", scope: !3562, file: !644, line: 34, type: !670)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !644, line: 34, column: 3)
!3563 = !DILocation(line: 34, column: 3, scope: !3562)
!3564 = !DILocation(line: 0, scope: !3562)
!3565 = !DILocation(line: 40, column: 3, scope: !3559)
!3566 = distinct !DISubprogram(name: "xnanosleep", scope: !747, file: !747, line: 40, type: !3567, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!100, !1018}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "seconds", arg: 1, scope: !3566, file: !747, line: 40, type: !1018)
!3571 = !DILocalVariable(name: "ts_sleep", scope: !3566, file: !747, line: 53, type: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3573, line: 11, size: 128, elements: !3574)
!3573 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3572, file: !3573, line: 16, baseType: !751, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3572, file: !3573, line: 21, baseType: !3577, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !264, line: 197, baseType: !265)
!3578 = distinct !DIAssignID()
!3579 = !DILocation(line: 0, scope: !3566)
!3580 = !DILocation(line: 43, column: 35, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3566, file: !747, line: 43, column: 7)
!3582 = !DILocation(line: 43, column: 7, scope: !3566)
!3583 = !DILocation(line: 46, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !747, line: 44, column: 5)
!3585 = !DILocation(line: 47, column: 14, scope: !3584)
!3586 = !DILocation(line: 47, column: 20, scope: !3584)
!3587 = distinct !{!3587, !3588, !3589, !905}
!3588 = !DILocation(line: 45, column: 7, scope: !3584)
!3589 = !DILocation(line: 47, column: 28, scope: !3584)
!3590 = !DILocation(line: 53, column: 3, scope: !3566)
!3591 = !DILocation(line: 53, column: 30, scope: !3566)
!3592 = distinct !DIAssignID()
!3593 = distinct !DIAssignID()
!3594 = !DILocation(line: 68, column: 13, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !747, line: 56, column: 5)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !747, line: 55, column: 3)
!3597 = distinct !DILexicalBlock(scope: !3566, file: !747, line: 55, column: 3)
!3598 = !DILocation(line: 69, column: 11, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !747, line: 69, column: 11)
!3600 = !DILocation(line: 69, column: 44, scope: !3599)
!3601 = !DILocation(line: 69, column: 11, scope: !3595)
!3602 = !DILocation(line: 71, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !747, line: 71, column: 11)
!3604 = !DILocation(line: 71, column: 26, scope: !3603)
!3605 = distinct !{!3605, !3606, !3607}
!3606 = !DILocation(line: 55, column: 3, scope: !3597)
!3607 = !DILocation(line: 73, column: 5, scope: !3597)
!3608 = !DILocation(line: 76, column: 1, scope: !3566)
!3609 = !DISubprogram(name: "pause", scope: !1223, file: !1223, line: 489, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!100}
!3612 = distinct !DISubprogram(name: "c_strtod", scope: !652, file: !652, line: 102, type: !3613, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!1018, !78, !1013}
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DILocalVariable(name: "nptr", arg: 1, scope: !3612, file: !652, line: 102, type: !78)
!3617 = !DILocalVariable(name: "endptr", arg: 2, scope: !3612, file: !652, line: 102, type: !1013)
!3618 = !DILocalVariable(name: "r", scope: !3612, file: !652, line: 104, type: !1018)
!3619 = !DILocalVariable(name: "locale", scope: !3612, file: !652, line: 108, type: !654)
!3620 = !DILocation(line: 0, scope: !3612)
!3621 = !DILocation(line: 65, column: 8, scope: !3622, inlinedAt: !3626)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !652, line: 65, column: 7)
!3623 = distinct !DISubprogram(name: "c_locale", scope: !652, file: !652, line: 63, type: !3624, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!654}
!3626 = distinct !DILocation(line: 108, column: 21, scope: !3612)
!3627 = !DILocation(line: 65, column: 7, scope: !3623, inlinedAt: !3626)
!3628 = !DILocation(line: 66, column: 22, scope: !3622, inlinedAt: !3626)
!3629 = !DILocation(line: 66, column: 20, scope: !3622, inlinedAt: !3626)
!3630 = !DILocation(line: 66, column: 5, scope: !3622, inlinedAt: !3626)
!3631 = !DILocation(line: 67, column: 10, scope: !3623, inlinedAt: !3626)
!3632 = !DILocation(line: 109, column: 8, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3612, file: !652, line: 109, column: 7)
!3634 = !DILocation(line: 109, column: 7, scope: !3612)
!3635 = !DILocation(line: 111, column: 11, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !652, line: 111, column: 11)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !652, line: 110, column: 5)
!3638 = !DILocation(line: 111, column: 11, scope: !3637)
!3639 = !DILocation(line: 112, column: 17, scope: !3636)
!3640 = !DILocation(line: 112, column: 9, scope: !3636)
!3641 = !DILocation(line: 118, column: 7, scope: !3612)
!3642 = !DILocation(line: 342, column: 3, scope: !3612)
!3643 = !DILocation(line: 343, column: 1, scope: !3612)
!3644 = !DISubprogram(name: "newlocale", scope: !974, file: !974, line: 141, type: !3645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!654, !100, !78, !654}
!3647 = !DISubprogram(name: "strtod_l", scope: !986, file: !986, line: 296, type: !3648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!1018, !852, !1133, !654}
!3650 = distinct !DISubprogram(name: "close_stream", scope: !753, file: !753, line: 55, type: !3651, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3687)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!100, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3655)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3655, file: !240, line: 51, baseType: !100, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3655, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3655, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3655, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3655, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3655, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3655, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3655, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3655, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3655, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3655, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3655, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3655, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3655, file: !240, line: 70, baseType: !3671, size: 64, offset: 832)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3655, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3655, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3655, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3655, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3655, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3655, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3655, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3655, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3655, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3655, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3655, file: !240, line: 93, baseType: !3671, size: 64, offset: 1344)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3655, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3655, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3655, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3655, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3687 = !{!3688, !3689, !3691, !3692}
!3688 = !DILocalVariable(name: "stream", arg: 1, scope: !3650, file: !753, line: 55, type: !3653)
!3689 = !DILocalVariable(name: "some_pending", scope: !3650, file: !753, line: 57, type: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!3691 = !DILocalVariable(name: "prev_fail", scope: !3650, file: !753, line: 58, type: !3690)
!3692 = !DILocalVariable(name: "fclose_fail", scope: !3650, file: !753, line: 59, type: !3690)
!3693 = !DILocation(line: 0, scope: !3650)
!3694 = !DILocation(line: 57, column: 30, scope: !3650)
!3695 = !DILocalVariable(name: "__stream", arg: 1, scope: !3696, file: !1340, line: 135, type: !3653)
!3696 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1340, file: !1340, line: 135, type: !3651, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3697)
!3697 = !{!3695}
!3698 = !DILocation(line: 0, scope: !3696, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 58, column: 27, scope: !3650)
!3700 = !DILocation(line: 137, column: 10, scope: !3696, inlinedAt: !3699)
!3701 = !{!1349, !859, i64 0}
!3702 = !DILocation(line: 58, column: 43, scope: !3650)
!3703 = !DILocation(line: 59, column: 29, scope: !3650)
!3704 = !DILocation(line: 59, column: 45, scope: !3650)
!3705 = !DILocation(line: 69, column: 17, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3650, file: !753, line: 69, column: 7)
!3707 = !DILocation(line: 57, column: 50, scope: !3650)
!3708 = !DILocation(line: 69, column: 33, scope: !3706)
!3709 = !DILocation(line: 69, column: 53, scope: !3706)
!3710 = !DILocation(line: 69, column: 59, scope: !3706)
!3711 = !DILocation(line: 69, column: 7, scope: !3650)
!3712 = !DILocation(line: 71, column: 11, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3706, file: !753, line: 70, column: 5)
!3714 = !DILocation(line: 72, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3713, file: !753, line: 71, column: 11)
!3716 = !DILocation(line: 72, column: 15, scope: !3715)
!3717 = !DILocation(line: 77, column: 1, scope: !3650)
!3718 = !DISubprogram(name: "__fpending", scope: !3719, file: !3719, line: 75, type: !3720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3719 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!102, !3653}
!3722 = distinct !DISubprogram(name: "dtotimespec", scope: !755, file: !755, line: 30, type: !3723, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3729)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!3725, !1018}
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3573, line: 11, size: 128, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3725, file: !3573, line: 16, baseType: !751, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3725, file: !3573, line: 21, baseType: !3577, size: 64, offset: 64)
!3729 = !{!3730, !3731, !3735, !3736}
!3730 = !DILocalVariable(name: "sec", arg: 1, scope: !3722, file: !755, line: 30, type: !1018)
!3731 = !DILocalVariable(name: "s", scope: !3732, file: !755, line: 38, type: !749)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !755, line: 37, column: 5)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !755, line: 34, column: 12)
!3734 = distinct !DILexicalBlock(scope: !3722, file: !755, line: 32, column: 7)
!3735 = !DILocalVariable(name: "frac", scope: !3732, file: !755, line: 39, type: !1018)
!3736 = !DILocalVariable(name: "ns", scope: !3732, file: !755, line: 40, type: !265)
!3737 = !DILocation(line: 0, scope: !3722)
!3738 = !DILocation(line: 32, column: 32, scope: !3734)
!3739 = !DILocation(line: 32, column: 7, scope: !3722)
!3740 = !DILocation(line: 34, column: 19, scope: !3733)
!3741 = !DILocation(line: 34, column: 12, scope: !3734)
!3742 = !DILocation(line: 38, column: 18, scope: !3732)
!3743 = !DILocation(line: 0, scope: !3732)
!3744 = !DILocation(line: 39, column: 42, scope: !3732)
!3745 = !DILocation(line: 39, column: 40, scope: !3732)
!3746 = !DILocation(line: 39, column: 33, scope: !3732)
!3747 = !DILocation(line: 40, column: 17, scope: !3732)
!3748 = !DILocation(line: 41, column: 13, scope: !3732)
!3749 = !DILocation(line: 41, column: 16, scope: !3732)
!3750 = !DILocation(line: 41, column: 10, scope: !3732)
!3751 = !DILocation(line: 42, column: 15, scope: !3732)
!3752 = !DILocation(line: 42, column: 9, scope: !3732)
!3753 = !DILocation(line: 43, column: 10, scope: !3732)
!3754 = !DILocation(line: 45, column: 14, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3732, file: !755, line: 45, column: 11)
!3756 = !DILocation(line: 45, column: 11, scope: !3732)
!3757 = !DILocalVariable(name: "s", arg: 1, scope: !3758, file: !758, line: 56, type: !749)
!3758 = distinct !DISubprogram(name: "make_timespec", scope: !758, file: !758, line: 56, type: !3759, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!3725, !749, !265}
!3761 = !{!3757, !3762}
!3762 = !DILocalVariable(name: "ns", arg: 2, scope: !3758, file: !758, line: 56, type: !265)
!3763 = !DILocation(line: 0, scope: !3758, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 51, column: 14, scope: !3732)
!3765 = !DILocation(line: 58, column: 3, scope: !3758, inlinedAt: !3764)
!3766 = !DILocation(line: 53, column: 1, scope: !3722)
!3767 = distinct !DISubprogram(name: "rpl_fclose", scope: !762, file: !762, line: 58, type: !3768, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3804)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!100, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3772)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3772, file: !240, line: 51, baseType: !100, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3772, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3772, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3772, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3772, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3772, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3772, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3772, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3772, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3772, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3772, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3772, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3772, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3772, file: !240, line: 70, baseType: !3788, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3772, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3772, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3772, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3772, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3772, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3772, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3772, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3772, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3772, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3772, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3772, file: !240, line: 93, baseType: !3788, size: 64, offset: 1344)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3772, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3772, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3772, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3772, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DILocalVariable(name: "fp", arg: 1, scope: !3767, file: !762, line: 58, type: !3770)
!3806 = !DILocalVariable(name: "saved_errno", scope: !3767, file: !762, line: 60, type: !100)
!3807 = !DILocalVariable(name: "fd", scope: !3767, file: !762, line: 63, type: !100)
!3808 = !DILocalVariable(name: "result", scope: !3767, file: !762, line: 74, type: !100)
!3809 = !DILocation(line: 0, scope: !3767)
!3810 = !DILocation(line: 63, column: 12, scope: !3767)
!3811 = !DILocation(line: 64, column: 10, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3767, file: !762, line: 64, column: 7)
!3813 = !DILocation(line: 64, column: 7, scope: !3767)
!3814 = !DILocation(line: 65, column: 12, scope: !3812)
!3815 = !DILocation(line: 65, column: 5, scope: !3812)
!3816 = !DILocation(line: 70, column: 9, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3767, file: !762, line: 70, column: 7)
!3818 = !DILocation(line: 70, column: 23, scope: !3817)
!3819 = !DILocation(line: 70, column: 33, scope: !3817)
!3820 = !DILocation(line: 70, column: 26, scope: !3817)
!3821 = !DILocation(line: 70, column: 59, scope: !3817)
!3822 = !DILocation(line: 71, column: 7, scope: !3817)
!3823 = !DILocation(line: 71, column: 10, scope: !3817)
!3824 = !DILocation(line: 70, column: 7, scope: !3767)
!3825 = !DILocation(line: 100, column: 12, scope: !3767)
!3826 = !DILocation(line: 105, column: 7, scope: !3767)
!3827 = !DILocation(line: 72, column: 19, scope: !3817)
!3828 = !DILocation(line: 105, column: 19, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3767, file: !762, line: 105, column: 7)
!3830 = !DILocation(line: 107, column: 13, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3829, file: !762, line: 106, column: 5)
!3832 = !DILocation(line: 109, column: 5, scope: !3831)
!3833 = !DILocation(line: 112, column: 1, scope: !3767)
!3834 = !DISubprogram(name: "fileno", scope: !982, file: !982, line: 809, type: !3768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3835 = !DISubprogram(name: "fclose", scope: !982, file: !982, line: 178, type: !3768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3836 = !DISubprogram(name: "__freading", scope: !3719, file: !3719, line: 51, type: !3768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3837 = !DISubprogram(name: "lseek", scope: !1223, file: !1223, line: 339, type: !3838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!263, !100, !263, !100}
!3840 = distinct !DISubprogram(name: "rpl_fflush", scope: !764, file: !764, line: 130, type: !3841, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3877)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!100, !3843}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3845, file: !240, line: 51, baseType: !100, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3845, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3845, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3845, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3845, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3845, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3845, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3845, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3845, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3845, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3845, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3845, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3845, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3845, file: !240, line: 70, baseType: !3861, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3845, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3845, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3845, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3845, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3845, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3845, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3845, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3845, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3845, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3845, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3845, file: !240, line: 93, baseType: !3861, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3845, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3845, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3845, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3845, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3877 = !{!3878}
!3878 = !DILocalVariable(name: "stream", arg: 1, scope: !3840, file: !764, line: 130, type: !3843)
!3879 = !DILocation(line: 0, scope: !3840)
!3880 = !DILocation(line: 151, column: 14, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3840, file: !764, line: 151, column: 7)
!3882 = !DILocation(line: 151, column: 22, scope: !3881)
!3883 = !DILocation(line: 151, column: 27, scope: !3881)
!3884 = !DILocation(line: 151, column: 7, scope: !3840)
!3885 = !DILocation(line: 152, column: 12, scope: !3881)
!3886 = !DILocation(line: 152, column: 5, scope: !3881)
!3887 = !DILocalVariable(name: "fp", arg: 1, scope: !3888, file: !764, line: 42, type: !3843)
!3888 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !764, file: !764, line: 42, type: !3889, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3843}
!3891 = !{!3887}
!3892 = !DILocation(line: 0, scope: !3888, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 157, column: 3, scope: !3840)
!3894 = !DILocation(line: 44, column: 12, scope: !3895, inlinedAt: !3893)
!3895 = distinct !DILexicalBlock(scope: !3888, file: !764, line: 44, column: 7)
!3896 = !DILocation(line: 44, column: 19, scope: !3895, inlinedAt: !3893)
!3897 = !DILocation(line: 44, column: 7, scope: !3888, inlinedAt: !3893)
!3898 = !DILocation(line: 46, column: 5, scope: !3895, inlinedAt: !3893)
!3899 = !DILocation(line: 159, column: 10, scope: !3840)
!3900 = !DILocation(line: 159, column: 3, scope: !3840)
!3901 = !DILocation(line: 236, column: 1, scope: !3840)
!3902 = !DISubprogram(name: "fflush", scope: !982, file: !982, line: 230, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3903 = distinct !DISubprogram(name: "rpl_fseeko", scope: !766, file: !766, line: 28, type: !3904, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3941)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!100, !3906, !3940, !100}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3908)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3908, file: !240, line: 51, baseType: !100, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3908, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3908, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3908, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3908, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3908, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3908, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3908, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3908, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3908, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3908, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3908, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3908, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3908, file: !240, line: 70, baseType: !3924, size: 64, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3908, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3908, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3908, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3908, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3908, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3908, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3908, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3908, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3908, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3908, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3908, file: !240, line: 93, baseType: !3924, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3908, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3908, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3908, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3908, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !982, line: 63, baseType: !263)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DILocalVariable(name: "fp", arg: 1, scope: !3903, file: !766, line: 28, type: !3906)
!3943 = !DILocalVariable(name: "offset", arg: 2, scope: !3903, file: !766, line: 28, type: !3940)
!3944 = !DILocalVariable(name: "whence", arg: 3, scope: !3903, file: !766, line: 28, type: !100)
!3945 = !DILocalVariable(name: "pos", scope: !3946, file: !766, line: 123, type: !3940)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !766, line: 119, column: 5)
!3947 = distinct !DILexicalBlock(scope: !3903, file: !766, line: 55, column: 7)
!3948 = !DILocation(line: 0, scope: !3903)
!3949 = !DILocation(line: 55, column: 12, scope: !3947)
!3950 = !{!1349, !803, i64 16}
!3951 = !DILocation(line: 55, column: 33, scope: !3947)
!3952 = !{!1349, !803, i64 8}
!3953 = !DILocation(line: 55, column: 25, scope: !3947)
!3954 = !DILocation(line: 56, column: 7, scope: !3947)
!3955 = !DILocation(line: 56, column: 15, scope: !3947)
!3956 = !DILocation(line: 56, column: 37, scope: !3947)
!3957 = !{!1349, !803, i64 32}
!3958 = !DILocation(line: 56, column: 29, scope: !3947)
!3959 = !DILocation(line: 57, column: 7, scope: !3947)
!3960 = !DILocation(line: 57, column: 15, scope: !3947)
!3961 = !{!1349, !803, i64 72}
!3962 = !DILocation(line: 57, column: 29, scope: !3947)
!3963 = !DILocation(line: 55, column: 7, scope: !3903)
!3964 = !DILocation(line: 123, column: 26, scope: !3946)
!3965 = !DILocation(line: 123, column: 19, scope: !3946)
!3966 = !DILocation(line: 0, scope: !3946)
!3967 = !DILocation(line: 124, column: 15, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3946, file: !766, line: 124, column: 11)
!3969 = !DILocation(line: 124, column: 11, scope: !3946)
!3970 = !DILocation(line: 135, column: 19, scope: !3946)
!3971 = !DILocation(line: 136, column: 12, scope: !3946)
!3972 = !DILocation(line: 136, column: 20, scope: !3946)
!3973 = !{!1349, !1350, i64 144}
!3974 = !DILocation(line: 167, column: 7, scope: !3946)
!3975 = !DILocation(line: 169, column: 10, scope: !3903)
!3976 = !DILocation(line: 169, column: 3, scope: !3903)
!3977 = !DILocation(line: 170, column: 1, scope: !3903)
!3978 = !DISubprogram(name: "fseeko", scope: !982, file: !982, line: 736, type: !3979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!100, !3906, !263, !100}
!3981 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !680, file: !680, line: 100, type: !3982, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3985)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!102, !1613, !78, !102, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3985 = !{!3986, !3987, !3988, !3989, !3990}
!3986 = !DILocalVariable(name: "pwc", arg: 1, scope: !3981, file: !680, line: 100, type: !1613)
!3987 = !DILocalVariable(name: "s", arg: 2, scope: !3981, file: !680, line: 100, type: !78)
!3988 = !DILocalVariable(name: "n", arg: 3, scope: !3981, file: !680, line: 100, type: !102)
!3989 = !DILocalVariable(name: "ps", arg: 4, scope: !3981, file: !680, line: 100, type: !3984)
!3990 = !DILocalVariable(name: "ret", scope: !3981, file: !680, line: 130, type: !102)
!3991 = !DILocation(line: 0, scope: !3981)
!3992 = !DILocation(line: 105, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3981, file: !680, line: 105, column: 7)
!3994 = !DILocation(line: 105, column: 7, scope: !3981)
!3995 = !DILocation(line: 117, column: 10, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3981, file: !680, line: 117, column: 7)
!3997 = !DILocation(line: 117, column: 7, scope: !3981)
!3998 = !DILocation(line: 130, column: 16, scope: !3981)
!3999 = !DILocation(line: 135, column: 11, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3981, file: !680, line: 135, column: 7)
!4001 = !DILocation(line: 135, column: 25, scope: !4000)
!4002 = !DILocation(line: 135, column: 30, scope: !4000)
!4003 = !DILocation(line: 135, column: 7, scope: !3981)
!4004 = !DILocalVariable(name: "ps", arg: 1, scope: !4005, file: !1586, line: 1135, type: !3984)
!4005 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !4006, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3984}
!4008 = !{!4004}
!4009 = !DILocation(line: 0, scope: !4005, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 137, column: 5, scope: !4000)
!4011 = !DILocalVariable(name: "__dest", arg: 1, scope: !4012, file: !1595, line: 57, type: !99)
!4012 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4013)
!4013 = !{!4011, !4014, !4015}
!4014 = !DILocalVariable(name: "__ch", arg: 2, scope: !4012, file: !1595, line: 57, type: !100)
!4015 = !DILocalVariable(name: "__len", arg: 3, scope: !4012, file: !1595, line: 57, type: !102)
!4016 = !DILocation(line: 0, scope: !4012, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 1137, column: 3, scope: !4005, inlinedAt: !4010)
!4018 = !DILocation(line: 59, column: 10, scope: !4012, inlinedAt: !4017)
!4019 = !DILocation(line: 137, column: 5, scope: !4000)
!4020 = !DILocation(line: 138, column: 11, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3981, file: !680, line: 138, column: 7)
!4022 = !DILocation(line: 138, column: 7, scope: !3981)
!4023 = !DILocation(line: 139, column: 5, scope: !4021)
!4024 = !DILocation(line: 143, column: 26, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3981, file: !680, line: 143, column: 7)
!4026 = !DILocation(line: 143, column: 41, scope: !4025)
!4027 = !DILocation(line: 143, column: 7, scope: !3981)
!4028 = !DILocation(line: 145, column: 15, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !680, line: 145, column: 11)
!4030 = distinct !DILexicalBlock(scope: !4025, file: !680, line: 144, column: 5)
!4031 = !DILocation(line: 145, column: 11, scope: !4030)
!4032 = !DILocation(line: 146, column: 32, scope: !4029)
!4033 = !DILocation(line: 146, column: 16, scope: !4029)
!4034 = !DILocation(line: 146, column: 14, scope: !4029)
!4035 = !DILocation(line: 146, column: 9, scope: !4029)
!4036 = !DILocation(line: 286, column: 1, scope: !3981)
!4037 = !DISubprogram(name: "mbsinit", scope: !4038, file: !4038, line: 293, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4038 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!100, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!4043 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !768, file: !768, line: 42, type: !4044, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !4053)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!100, !4046, !4052}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3573, line: 11, size: 128, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4048, file: !3573, line: 16, baseType: !751, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4048, file: !3573, line: 21, baseType: !3577, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4053 = !{!4054, !4055, !4056, !4059, !4060, !4061}
!4054 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !4043, file: !768, line: 42, type: !4046)
!4055 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !4043, file: !768, line: 43, type: !4052)
!4056 = !DILocalVariable(name: "limit", scope: !4057, file: !768, line: 61, type: !4058)
!4057 = distinct !DILexicalBlock(scope: !4043, file: !768, line: 58, column: 3)
!4058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!4059 = !DILocalVariable(name: "seconds", scope: !4057, file: !768, line: 62, type: !749)
!4060 = !DILocalVariable(name: "intermediate", scope: !4057, file: !768, line: 63, type: !4048)
!4061 = !DILocalVariable(name: "result", scope: !4062, file: !768, line: 68, type: !100)
!4062 = distinct !DILexicalBlock(scope: !4057, file: !768, line: 66, column: 7)
!4063 = distinct !DIAssignID()
!4064 = !DILocation(line: 0, scope: !4057)
!4065 = !DILocation(line: 0, scope: !4043)
!4066 = !DILocation(line: 52, column: 24, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4043, file: !768, line: 52, column: 7)
!4068 = !{!4069, !1350, i64 8}
!4069 = !{!"timespec", !1350, i64 0, !1350, i64 8}
!4070 = !DILocation(line: 52, column: 36, scope: !4067)
!4071 = !DILocation(line: 54, column: 7, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !768, line: 53, column: 5)
!4073 = !DILocation(line: 54, column: 13, scope: !4072)
!4074 = !DILocation(line: 55, column: 7, scope: !4072)
!4075 = !DILocation(line: 62, column: 39, scope: !4057)
!4076 = !{!4069, !1350, i64 0}
!4077 = !DILocation(line: 63, column: 5, scope: !4057)
!4078 = !DILocation(line: 63, column: 36, scope: !4057)
!4079 = !{i64 0, i64 8, !2380, i64 8, i64 8, !2380}
!4080 = distinct !DIAssignID()
!4081 = !DILocation(line: 65, column: 18, scope: !4057)
!4082 = !DILocation(line: 65, column: 5, scope: !4057)
!4083 = !DILocation(line: 67, column: 29, scope: !4062)
!4084 = distinct !DIAssignID()
!4085 = !DILocation(line: 68, column: 22, scope: !4062)
!4086 = !DILocation(line: 0, scope: !4062)
!4087 = !DILocation(line: 69, column: 17, scope: !4062)
!4088 = !DILocation(line: 70, column: 13, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4062, file: !768, line: 70, column: 13)
!4090 = !DILocation(line: 70, column: 13, scope: !4062)
!4091 = !DILocation(line: 72, column: 17, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !768, line: 72, column: 17)
!4093 = distinct !DILexicalBlock(scope: !4089, file: !768, line: 71, column: 11)
!4094 = !DILocation(line: 72, column: 17, scope: !4093)
!4095 = !DILocation(line: 73, column: 39, scope: !4092)
!4096 = !DILocation(line: 73, column: 15, scope: !4092)
!4097 = !DILocation(line: 76, column: 30, scope: !4062)
!4098 = distinct !DIAssignID()
!4099 = distinct !{!4099, !4082, !4100, !905}
!4100 = !DILocation(line: 77, column: 7, scope: !4057)
!4101 = !DILocation(line: 78, column: 25, scope: !4057)
!4102 = distinct !DIAssignID()
!4103 = !DILocation(line: 79, column: 12, scope: !4057)
!4104 = !DILocation(line: 79, column: 5, scope: !4057)
!4105 = !DILocation(line: 80, column: 3, scope: !4043)
!4106 = !DILocation(line: 81, column: 1, scope: !4043)
!4107 = !DISubprogram(name: "nanosleep", scope: !4108, file: !4108, line: 272, type: !4044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4108 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!4109 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !774, file: !774, line: 27, type: !3122, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4110)
!4110 = !{!4111, !4112, !4113, !4114}
!4111 = !DILocalVariable(name: "ptr", arg: 1, scope: !4109, file: !774, line: 27, type: !99)
!4112 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4109, file: !774, line: 27, type: !102)
!4113 = !DILocalVariable(name: "size", arg: 3, scope: !4109, file: !774, line: 27, type: !102)
!4114 = !DILocalVariable(name: "nbytes", scope: !4109, file: !774, line: 29, type: !102)
!4115 = !DILocation(line: 0, scope: !4109)
!4116 = !DILocation(line: 30, column: 7, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4109, file: !774, line: 30, column: 7)
!4118 = !DILocation(line: 30, column: 7, scope: !4109)
!4119 = !DILocation(line: 32, column: 7, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4117, file: !774, line: 31, column: 5)
!4121 = !DILocation(line: 32, column: 13, scope: !4120)
!4122 = !DILocation(line: 33, column: 7, scope: !4120)
!4123 = !DILocalVariable(name: "ptr", arg: 1, scope: !4124, file: !3214, line: 2057, type: !99)
!4124 = distinct !DISubprogram(name: "rpl_realloc", scope: !3214, file: !3214, line: 2057, type: !3206, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4125)
!4125 = !{!4123, !4126}
!4126 = !DILocalVariable(name: "size", arg: 2, scope: !4124, file: !3214, line: 2057, type: !102)
!4127 = !DILocation(line: 0, scope: !4124, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 37, column: 10, scope: !4109)
!4129 = !DILocation(line: 2059, column: 24, scope: !4124, inlinedAt: !4128)
!4130 = !DILocation(line: 2059, column: 10, scope: !4124, inlinedAt: !4128)
!4131 = !DILocation(line: 37, column: 3, scope: !4109)
!4132 = !DILocation(line: 38, column: 1, scope: !4109)
!4133 = distinct !DISubprogram(name: "hard_locale", scope: !698, file: !698, line: 28, type: !4134, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!223, !100}
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "category", arg: 1, scope: !4133, file: !698, line: 28, type: !100)
!4138 = !DILocalVariable(name: "locale", scope: !4133, file: !698, line: 30, type: !4139)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 257)
!4142 = distinct !DIAssignID()
!4143 = !DILocation(line: 0, scope: !4133)
!4144 = !DILocation(line: 30, column: 3, scope: !4133)
!4145 = !DILocation(line: 32, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4133, file: !698, line: 32, column: 7)
!4147 = !DILocation(line: 32, column: 7, scope: !4133)
!4148 = !DILocalVariable(name: "__s1", arg: 1, scope: !4149, file: !871, line: 1359, type: !78)
!4149 = distinct !DISubprogram(name: "streq", scope: !871, file: !871, line: 1359, type: !872, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4150)
!4150 = !{!4148, !4151}
!4151 = !DILocalVariable(name: "__s2", arg: 2, scope: !4149, file: !871, line: 1359, type: !78)
!4152 = !DILocation(line: 0, scope: !4149, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 35, column: 9, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4133, file: !698, line: 35, column: 7)
!4155 = !DILocation(line: 1361, column: 11, scope: !4149, inlinedAt: !4153)
!4156 = !DILocation(line: 35, column: 29, scope: !4154)
!4157 = !DILocation(line: 0, scope: !4149, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 35, column: 32, scope: !4154)
!4159 = !DILocation(line: 1361, column: 11, scope: !4149, inlinedAt: !4158)
!4160 = !DILocation(line: 1361, column: 10, scope: !4149, inlinedAt: !4158)
!4161 = !DILocation(line: 35, column: 7, scope: !4133)
!4162 = !DILocation(line: 46, column: 3, scope: !4133)
!4163 = !DILocation(line: 47, column: 1, scope: !4133)
!4164 = distinct !DISubprogram(name: "setlocale_null_r", scope: !780, file: !780, line: 154, type: !4165, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!100, !100, !244, !102}
!4167 = !{!4168, !4169, !4170}
!4168 = !DILocalVariable(name: "category", arg: 1, scope: !4164, file: !780, line: 154, type: !100)
!4169 = !DILocalVariable(name: "buf", arg: 2, scope: !4164, file: !780, line: 154, type: !244)
!4170 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4164, file: !780, line: 154, type: !102)
!4171 = !DILocation(line: 0, scope: !4164)
!4172 = !DILocation(line: 159, column: 10, scope: !4164)
!4173 = !DILocation(line: 159, column: 3, scope: !4164)
!4174 = distinct !DISubprogram(name: "setlocale_null", scope: !780, file: !780, line: 186, type: !4175, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!78, !100}
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "category", arg: 1, scope: !4174, file: !780, line: 186, type: !100)
!4179 = !DILocation(line: 0, scope: !4174)
!4180 = !DILocation(line: 189, column: 10, scope: !4174)
!4181 = !DILocation(line: 189, column: 3, scope: !4174)
!4182 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !782, file: !782, line: 35, type: !4175, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4183)
!4183 = !{!4184, !4185}
!4184 = !DILocalVariable(name: "category", arg: 1, scope: !4182, file: !782, line: 35, type: !100)
!4185 = !DILocalVariable(name: "result", scope: !4182, file: !782, line: 37, type: !78)
!4186 = !DILocation(line: 0, scope: !4182)
!4187 = !DILocation(line: 37, column: 24, scope: !4182)
!4188 = !DILocation(line: 62, column: 3, scope: !4182)
!4189 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !782, file: !782, line: 66, type: !4165, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195}
!4191 = !DILocalVariable(name: "category", arg: 1, scope: !4189, file: !782, line: 66, type: !100)
!4192 = !DILocalVariable(name: "buf", arg: 2, scope: !4189, file: !782, line: 66, type: !244)
!4193 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4189, file: !782, line: 66, type: !102)
!4194 = !DILocalVariable(name: "result", scope: !4189, file: !782, line: 111, type: !78)
!4195 = !DILocalVariable(name: "length", scope: !4196, file: !782, line: 125, type: !102)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !782, line: 124, column: 5)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !782, line: 113, column: 7)
!4198 = !DILocation(line: 0, scope: !4189)
!4199 = !DILocation(line: 0, scope: !4182, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 111, column: 24, scope: !4189)
!4201 = !DILocation(line: 37, column: 24, scope: !4182, inlinedAt: !4200)
!4202 = !DILocation(line: 113, column: 14, scope: !4197)
!4203 = !DILocation(line: 113, column: 7, scope: !4189)
!4204 = !DILocation(line: 116, column: 19, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !782, line: 116, column: 11)
!4206 = distinct !DILexicalBlock(scope: !4197, file: !782, line: 114, column: 5)
!4207 = !DILocation(line: 116, column: 11, scope: !4206)
!4208 = !DILocation(line: 120, column: 16, scope: !4205)
!4209 = !DILocation(line: 120, column: 9, scope: !4205)
!4210 = !DILocation(line: 125, column: 23, scope: !4196)
!4211 = !DILocation(line: 0, scope: !4196)
!4212 = !DILocation(line: 126, column: 18, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4196, file: !782, line: 126, column: 11)
!4214 = !DILocation(line: 126, column: 11, scope: !4196)
!4215 = !DILocation(line: 128, column: 39, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4213, file: !782, line: 127, column: 9)
!4217 = !DILocalVariable(name: "__dest", arg: 1, scope: !4218, file: !1595, line: 26, type: !3485)
!4218 = distinct !DISubprogram(name: "memcpy", scope: !1595, file: !1595, line: 26, type: !3483, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4219)
!4219 = !{!4217, !4220, !4221}
!4220 = !DILocalVariable(name: "__src", arg: 2, scope: !4218, file: !1595, line: 26, type: !1007)
!4221 = !DILocalVariable(name: "__len", arg: 3, scope: !4218, file: !1595, line: 26, type: !102)
!4222 = !DILocation(line: 0, scope: !4218, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 128, column: 11, scope: !4216)
!4224 = !DILocation(line: 29, column: 10, scope: !4218, inlinedAt: !4223)
!4225 = !DILocation(line: 129, column: 11, scope: !4216)
!4226 = !DILocation(line: 133, column: 23, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !782, line: 133, column: 15)
!4228 = distinct !DILexicalBlock(scope: !4213, file: !782, line: 132, column: 9)
!4229 = !DILocation(line: 133, column: 15, scope: !4228)
!4230 = !DILocation(line: 138, column: 44, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4227, file: !782, line: 134, column: 13)
!4232 = !DILocation(line: 0, scope: !4218, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 138, column: 15, scope: !4231)
!4234 = !DILocation(line: 29, column: 10, scope: !4218, inlinedAt: !4233)
!4235 = !DILocation(line: 139, column: 15, scope: !4231)
!4236 = !DILocation(line: 139, column: 32, scope: !4231)
!4237 = !DILocation(line: 140, column: 13, scope: !4231)
!4238 = !DILocation(line: 0, scope: !4197)
!4239 = !DILocation(line: 145, column: 1, scope: !4189)
