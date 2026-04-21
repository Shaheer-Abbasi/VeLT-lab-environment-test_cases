; ModuleID = 'src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !315
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !307
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !309
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !311
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !313
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !317
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !323
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !360
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !325
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !350
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !352
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !354
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !356
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !358
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !362
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !364
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !369
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !374
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !377
@optind = external local_unnamed_addr global i32, align 4
@.str.1.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !381
@.str.2.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !383
@.str.3.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !385
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !397
@.str.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !403
@.str.1.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !405
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !407
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !438
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !441
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !443
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !445
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !447
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !449
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !451
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !453
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !455
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !457
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 8, !dbg !459
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !484
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !498
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !536
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !543
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !500
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !545
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !488
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !505
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !507
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !509
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !511
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !513
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !551
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !554
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !556
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !558
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !560
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !562
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !567
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !572
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !574
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !579
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !584
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !589
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !594
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !596
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !601
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !606
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !611
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !616
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !618
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !620
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !622
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !624
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !626
@.str.23.96 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !628
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !633
@exit_failure = dso_local global i32 1, align 4, !dbg !641
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !647
@.str.1.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !650
@.str.2.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !652
@c_locale_cache = internal global ptr null, align 8, !dbg !654
@.str.114 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !680
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !683
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !686
@.str.134 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !701
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !704

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !802
  %2 = icmp eq i32 %0, 0, !dbg !803
  br i1 %2, label %8, label %3, !dbg !805

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !806, !tbaa !808
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !806
  %6 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !808
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !806
  br label %28, !dbg !806

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !812
  %10 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !808
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #38, !dbg !812
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #38, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !814
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !815
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !816, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr poison, metadata !828, metadata !DIExpression()), !dbg !833
  tail call void @emit_bug_reporting_address() #38, !dbg !835
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !836
  call void @llvm.dbg.value(metadata ptr %14, metadata !831, metadata !DIExpression()), !dbg !833
  %15 = icmp eq ptr %14, null, !dbg !837
  br i1 %15, label %23, label %16, !dbg !839

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #39, !dbg !840
  %18 = icmp eq i32 %17, 0, !dbg !840
  br i1 %18, label %23, label %19, !dbg !841

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #38, !dbg !842
  %21 = load ptr, ptr @stdout, align 8, !dbg !842, !tbaa !808
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !842
  br label %23, !dbg !844

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !832, metadata !DIExpression()), !dbg !833
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !845
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #38, !dbg !845
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !846
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38, !dbg !846
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !847
  unreachable, !dbg !847
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !848 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !853 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !859 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !74 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !217, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !862
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !863, !tbaa !864
  %3 = icmp eq i32 %2, -1, !dbg !866
  br i1 %3, label %4, label %16, !dbg !867

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #38, !dbg !868
  call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !869
  %6 = icmp eq ptr %5, null, !dbg !870
  br i1 %6, label %14, label %7, !dbg !871

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !872, !tbaa !873
  %9 = icmp eq i8 %8, 0, !dbg !872
  br i1 %9, label %14, label %10, !dbg !874

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !875, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !881, metadata !DIExpression()), !dbg !882
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !884
  %12 = icmp eq i32 %11, 0, !dbg !885
  %13 = zext i1 %12 to i32, !dbg !874
  br label %14, !dbg !874

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !886, !tbaa !864
  br label %16, !dbg !887

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !888
  %18 = icmp eq i32 %17, 0, !dbg !888
  br i1 %18, label %22, label %19, !dbg !890

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !808
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !891
  br label %122, !dbg !893

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !862
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !894
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !895
  call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !862
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !896
  call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !862
  %26 = icmp eq ptr %25, null, !dbg !897
  br i1 %26, label %54, label %27, !dbg !898

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !899
  br i1 %28, label %54, label %29, !dbg !900

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !901
  %30 = icmp ult ptr %24, %25, !dbg !902
  br i1 %30, label %31, label %52, !dbg !903

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !862
  %33 = load ptr, ptr %32, align 8, !tbaa !808
  br label %34, !dbg !903

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !901
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !904
  call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !901
  %38 = load i8, ptr %35, align 1, !dbg !904, !tbaa !873
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !904
  %41 = load i16, ptr %40, align 2, !dbg !904, !tbaa !905
  %42 = freeze i16 %41, !dbg !907
  %43 = lshr i16 %42, 13, !dbg !907
  %44 = and i16 %43, 1, !dbg !907
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !908
  call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !901
  %47 = icmp ult ptr %37, %25, !dbg !902
  %48 = icmp ult i64 %46, 2, !dbg !909
  %49 = select i1 %47, i1 %48, i1 false, !dbg !909
  br i1 %49, label %34, label %50, !dbg !903, !llvm.loop !910

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !912
  br i1 %51, label %52, label %54, !dbg !914

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !914

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !862
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata ptr %55, metadata !225, metadata !DIExpression()), !dbg !862
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #39, !dbg !915
  call void @llvm.dbg.value(metadata i64 %57, metadata !231, metadata !DIExpression()), !dbg !862
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !916
  call void @llvm.dbg.value(metadata ptr %58, metadata !232, metadata !DIExpression()), !dbg !862
  br label %59, !dbg !917

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !862
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata ptr %60, metadata !232, metadata !DIExpression()), !dbg !862
  %62 = load i8, ptr %60, align 1, !dbg !918, !tbaa !873
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !919

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !920
  %65 = load i8, ptr %64, align 1, !dbg !923, !tbaa !873
  %66 = icmp ne i8 %65, 45, !dbg !924
  %67 = select i1 %66, i1 %61, i1 false, !dbg !925
  br label %68, !dbg !925

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !926
  %71 = load ptr, ptr %70, align 8, !dbg !926, !tbaa !808
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !926
  %74 = load i16, ptr %73, align 2, !dbg !926, !tbaa !905
  %75 = and i16 %74, 8192, !dbg !926
  %76 = icmp eq i16 %75, 0, !dbg !926
  br i1 %76, label %90, label %77, !dbg !928

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !929
  br i1 %78, label %92, label %79, !dbg !932

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !933
  %81 = load i8, ptr %80, align 1, !dbg !933, !tbaa !873
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !933
  %84 = load i16, ptr %83, align 2, !dbg !933, !tbaa !905
  %85 = and i16 %84, 8192, !dbg !933
  %86 = icmp eq i16 %85, 0, !dbg !933
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !934
  br i1 %89, label %90, label %92, !dbg !934

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !935
  call void @llvm.dbg.value(metadata ptr %91, metadata !232, metadata !DIExpression()), !dbg !862
  br label %59, !dbg !917, !llvm.loop !936

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !938
  %94 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !808
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !290, metadata !DIExpression()), !dbg !862
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #39, !dbg !959
  %97 = icmp eq i32 %96, 0, !dbg !959
  br i1 %97, label %101, label %98, !dbg !961

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #39, !dbg !962
  %100 = icmp eq i32 %99, 0, !dbg !962
  br i1 %100, label %101, label %104, !dbg !963

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !964
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %102, ptr noundef %55) #38, !dbg !964
  br label %107, !dbg !966

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !967
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef %105, ptr noundef %55) #38, !dbg !967
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !808
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %108), !dbg !969
  %110 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !808
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !970
  %112 = ptrtoint ptr %60 to i64, !dbg !971
  %113 = sub i64 %112, %93, !dbg !971
  %114 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !808
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !971
  %116 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !808
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !972
  %118 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !808
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !973
  %120 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !808
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !974
  br label %122, !dbg !975

122:                                              ; preds = %107, %19
  ret void, !dbg !975
}

; Function Attrs: nounwind
declare !dbg !976 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !980 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !984 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !987 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !989 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !992 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !995 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !998 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1001 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1006 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1012 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr %1, metadata !1018, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8 1, metadata !1021, metadata !DIExpression()), !dbg !1029
  %4 = load ptr, ptr %1, align 8, !dbg !1030, !tbaa !808
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1031
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #38, !dbg !1032
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #38, !dbg !1033
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #38, !dbg !1034
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1035
  %9 = load ptr, ptr @Version, align 8, !dbg !1036, !tbaa !808
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #38, !dbg !1037
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #38, !dbg !1037
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %9, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %10, ptr noundef %11, ptr noundef null) #38, !dbg !1038
  %12 = icmp eq i32 %0, 1, !dbg !1039
  br i1 %12, label %13, label %15, !dbg !1041

13:                                               ; preds = %2
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !1042
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %14) #38, !dbg !1042
  tail call void @usage(i32 noundef 1) #42, !dbg !1044
  unreachable, !dbg !1044

15:                                               ; preds = %2
  %16 = load i32, ptr @optind, align 4, !dbg !1045, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %16, metadata !1022, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8 poison, metadata !1021, metadata !DIExpression()), !dbg !1029
  %17 = icmp slt i32 %16, %0, !dbg !1047
  br i1 %17, label %18, label %69, !dbg !1048

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #41, !dbg !1029
  %20 = sext i32 %16 to i64, !dbg !1048
  br label %22, !dbg !1048

21:                                               ; preds = %60
  br i1 %62, label %69, label %68, !dbg !1049

22:                                               ; preds = %18, %60
  %23 = phi i64 [ %20, %18 ], [ %65, %60 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %64, %60 ]
  %25 = phi i1 [ true, %18 ], [ %62, %60 ]
  call void @llvm.dbg.value(metadata double %24, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %23, metadata !1022, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1050
  store i32 0, ptr %19, align 4, !dbg !1051, !tbaa !864
  %26 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1052
  %27 = load ptr, ptr %26, align 8, !dbg !1052, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %3, metadata !1024, metadata !DIExpression(DW_OP_deref)), !dbg !1053
  %28 = call double @cl_strtod(ptr noundef %27, ptr noundef nonnull %3) #38, !dbg !1054
  call void @llvm.dbg.value(metadata double %28, metadata !1027, metadata !DIExpression()), !dbg !1053
  %29 = load i32, ptr %19, align 4, !dbg !1055, !tbaa !864
  call void @llvm.dbg.value(metadata double %28, metadata !1056, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i32 %29, metadata !1062, metadata !DIExpression()), !dbg !1064
  %30 = icmp eq i32 %29, 34, !dbg !1066
  %31 = fcmp oeq double %28, 0.000000e+00
  %32 = and i1 %31, %30, !dbg !1068
  %33 = call double @llvm.copysign.f64(double 4.940660e-324, double %28), !dbg !1068
  %34 = call double @llvm.fmuladd.f64(double %28, double 0x3CA0000000000001, double %28), !dbg !1068
  %35 = select i1 %32, double %33, double %34, !dbg !1068
  call void @llvm.dbg.value(metadata double %35, metadata !1028, metadata !DIExpression()), !dbg !1053
  %36 = load ptr, ptr %26, align 8, !dbg !1069, !tbaa !808
  %37 = load ptr, ptr %3, align 8, !dbg !1071, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %37, metadata !1024, metadata !DIExpression()), !dbg !1053
  %38 = icmp ne ptr %36, %37, !dbg !1072
  %39 = fcmp oge double %35, 0.000000e+00
  %40 = select i1 %38, i1 %39, i1 false, !dbg !1073
  br i1 %40, label %41, label %56, !dbg !1073

41:                                               ; preds = %22
  %42 = load i8, ptr %37, align 1, !dbg !1074, !tbaa !873
  %43 = icmp eq i8 %42, 0, !dbg !1074
  br i1 %43, label %52, label %44, !dbg !1075

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1076
  %46 = load i8, ptr %45, align 1, !dbg !1077, !tbaa !873
  %47 = icmp eq i8 %46, 0, !dbg !1077
  br i1 %47, label %48, label %56, !dbg !1078

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %37, metadata !1024, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr undef, metadata !1079, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %42, metadata !1085, metadata !DIExpression()), !dbg !1087
  switch i8 %42, label %56 [
    i8 100, label %51
    i8 115, label %52
    i8 109, label %49
    i8 104, label %50
  ], !dbg !1089

49:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 60, metadata !1086, metadata !DIExpression()), !dbg !1087
  br label %52, !dbg !1090

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 3600, metadata !1086, metadata !DIExpression()), !dbg !1087
  br label %52, !dbg !1092

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 86400, metadata !1086, metadata !DIExpression()), !dbg !1087
  br label %52, !dbg !1093

52:                                               ; preds = %48, %49, %50, %51, %41
  %53 = phi double [ 8.640000e+04, %51 ], [ 3.600000e+03, %50 ], [ 6.000000e+01, %49 ], [ 1.000000e+00, %48 ], [ 1.000000e+00, %41 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1086, metadata !DIExpression()), !dbg !1087
  %54 = fmul double %35, %53, !dbg !1094
  call void @llvm.dbg.value(metadata double %54, metadata !1056, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1095
  %55 = call double @llvm.fmuladd.f64(double %54, double 0x3CA0000000000001, double %54), !dbg !1097
  br label %60, !dbg !1098

56:                                               ; preds = %48, %44, %22
  %57 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !1099
  %58 = load ptr, ptr %26, align 8, !dbg !1099, !tbaa !808
  %59 = call ptr @quote(ptr noundef %58) #38, !dbg !1099
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %57, ptr noundef %59) #38, !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, metadata !1021, metadata !DIExpression()), !dbg !1029
  br label %60, !dbg !1101

60:                                               ; preds = %52, %56
  %61 = phi double [ %35, %56 ], [ %55, %52 ], !dbg !1102
  %62 = phi i1 [ false, %56 ], [ %25, %52 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1021, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata double %61, metadata !1028, metadata !DIExpression()), !dbg !1053
  %63 = fadd double %24, %61, !dbg !1103
  call void @llvm.dbg.value(metadata double %63, metadata !1056, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1104
  %64 = call double @llvm.fmuladd.f64(double %63, double 0x3CA0000000000001, double %63), !dbg !1106
  call void @llvm.dbg.value(metadata double %64, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1107
  %65 = add nsw i64 %23, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %65, metadata !1022, metadata !DIExpression()), !dbg !1046
  %66 = trunc i64 %65 to i32, !dbg !1047
  %67 = icmp eq i32 %66, %0, !dbg !1047
  br i1 %67, label %21, label %22, !dbg !1048, !llvm.loop !1109

68:                                               ; preds = %21
  call void @usage(i32 noundef 1) #42, !dbg !1111
  unreachable, !dbg !1111

69:                                               ; preds = %15, %21
  %70 = phi double [ %64, %21 ], [ 0.000000e+00, %15 ]
  %71 = call i32 @xnanosleep(double noundef %70) #38, !dbg !1113
  %72 = icmp eq i32 %71, 0, !dbg !1113
  br i1 %72, label %77, label %73, !dbg !1115

73:                                               ; preds = %69
  %74 = tail call ptr @__errno_location() #41, !dbg !1116
  %75 = load i32, ptr %74, align 4, !dbg !1116, !tbaa !864
  %76 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1116
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %75, ptr noundef %76) #38, !dbg !1116
  unreachable, !dbg !1116

77:                                               ; preds = %69
  ret i32 0, !dbg !1117
}

; Function Attrs: nounwind
declare !dbg !1118 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1121 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1122 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1125 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !1129 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1134, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %1, metadata !1135, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %3, metadata !1136, metadata !DIExpression(DW_OP_deref)), !dbg !1143
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #38, !dbg !1145
  call void @llvm.dbg.value(metadata double %5, metadata !1137, metadata !DIExpression()), !dbg !1143
  %6 = load ptr, ptr %3, align 8, !dbg !1146, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %6, metadata !1136, metadata !DIExpression()), !dbg !1143
  %7 = load i8, ptr %6, align 1, !dbg !1147, !tbaa !873
  %8 = icmp eq i8 %7, 0, !dbg !1147
  br i1 %8, label %19, label %9, !dbg !1148

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #41, !dbg !1149
  %11 = load i32, ptr %10, align 4, !dbg !1149, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %11, metadata !1138, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %4, metadata !1141, metadata !DIExpression(DW_OP_deref)), !dbg !1150
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #38, !dbg !1152
  call void @llvm.dbg.value(metadata double %12, metadata !1142, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr %6, metadata !1136, metadata !DIExpression()), !dbg !1143
  %13 = load ptr, ptr %4, align 8, !dbg !1153, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %13, metadata !1141, metadata !DIExpression()), !dbg !1150
  %14 = icmp ult ptr %6, %13, !dbg !1155
  br i1 %14, label %16, label %15, !dbg !1156

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !1157, !tbaa !864
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !1143
  call void @llvm.dbg.value(metadata double %18, metadata !1137, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1158
  br label %19, !dbg !1159

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !1143
  call void @llvm.dbg.value(metadata double %21, metadata !1137, metadata !DIExpression()), !dbg !1143
  %22 = icmp eq ptr %1, null, !dbg !1160
  br i1 %22, label %24, label %23, !dbg !1162

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1136, metadata !DIExpression()), !dbg !1143
  store ptr %20, ptr %1, align 8, !dbg !1163, !tbaa !808
  br label %24, !dbg !1164

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1165
  ret double %21, !dbg !1166
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1167 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1170 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1172, metadata !DIExpression()), !dbg !1173
  store ptr %0, ptr @file_name, align 8, !dbg !1174, !tbaa !808
  ret void, !dbg !1175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1176 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1182, !tbaa !1183
  ret void, !dbg !1185
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1186 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !808
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1192
  %3 = icmp eq i32 %2, 0, !dbg !1193
  br i1 %3, label %22, label %4, !dbg !1194

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1195, !tbaa !1183, !range !1196, !noundef !852
  %6 = icmp eq i8 %5, 0, !dbg !1195
  br i1 %6, label %11, label %7, !dbg !1197

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1198
  %9 = load i32, ptr %8, align 4, !dbg !1198, !tbaa !864
  %10 = icmp eq i32 %9, 32, !dbg !1199
  br i1 %10, label %22, label %11, !dbg !1200

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #38, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %12, metadata !1188, metadata !DIExpression()), !dbg !1202
  %13 = load ptr, ptr @file_name, align 8, !dbg !1203, !tbaa !808
  %14 = icmp eq ptr %13, null, !dbg !1203
  %15 = tail call ptr @__errno_location() #41, !dbg !1205
  %16 = load i32, ptr %15, align 4, !dbg !1205, !tbaa !864
  br i1 %14, label %19, label %17, !dbg !1206

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1207
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #38, !dbg !1207
  br label %20, !dbg !1207

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #38, !dbg !1208
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1209, !tbaa !864
  tail call void @_exit(i32 noundef %21) #40, !dbg !1210
  unreachable, !dbg !1210

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1211, !tbaa !808
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1213
  %25 = icmp eq i32 %24, 0, !dbg !1214
  br i1 %25, label %28, label %26, !dbg !1215

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1216, !tbaa !864
  tail call void @_exit(i32 noundef %27) #40, !dbg !1217
  unreachable, !dbg !1217

28:                                               ; preds = %22
  ret void, !dbg !1218
}

; Function Attrs: noreturn
declare !dbg !1219 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1221 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1225, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 %1, metadata !1226, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %2, metadata !1227, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1228, metadata !DIExpression()), !dbg !1230
  tail call fastcc void @flush_stdout(), !dbg !1231
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1232, !tbaa !808
  %7 = icmp eq ptr %6, null, !dbg !1232
  br i1 %7, label %9, label %8, !dbg !1234

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1235
  br label %13, !dbg !1235

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !808
  %11 = tail call ptr @getprogname() #39, !dbg !1236
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #38, !dbg !1236
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1238, !tbaa.struct !1239
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1238
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1238
  ret void, !dbg !1240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1241 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 1, metadata !1245, metadata !DIExpression()), !dbg !1250
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1253
  %2 = icmp slt i32 %1, 0, !dbg !1254
  br i1 %2, label %6, label %3, !dbg !1255

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1256, !tbaa !808
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1256
  br label %6, !dbg !1256

6:                                                ; preds = %3, %0
  ret void, !dbg !1257
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1258 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %1, metadata !1261, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %2, metadata !1262, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1263, metadata !DIExpression()), !dbg !1265
  %7 = load ptr, ptr @stderr, align 8, !dbg !1266, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1267, !noalias !1311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1315
  call void @llvm.dbg.value(metadata ptr %7, metadata !1307, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata ptr %2, metadata !1308, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1309, metadata !DIExpression()), !dbg !1317
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1267, !noalias !1311
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1318, !tbaa !864
  %10 = add i32 %9, 1, !dbg !1318
  store i32 %10, ptr @error_message_count, align 4, !dbg !1318, !tbaa !864
  %11 = icmp eq i32 %1, 0, !dbg !1319
  br i1 %11, label %21, label %12, !dbg !1321

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1322, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1326, metadata !DIExpression()), !dbg !1333
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1334
  call void @llvm.dbg.value(metadata ptr %13, metadata !1325, metadata !DIExpression()), !dbg !1330
  %14 = icmp eq ptr %13, null, !dbg !1335
  br i1 %14, label %15, label %17, !dbg !1337

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #38, !dbg !1338
  call void @llvm.dbg.value(metadata ptr %16, metadata !1325, metadata !DIExpression()), !dbg !1330
  br label %17, !dbg !1339

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1330
  call void @llvm.dbg.value(metadata ptr %18, metadata !1325, metadata !DIExpression()), !dbg !1330
  %19 = load ptr, ptr @stderr, align 8, !dbg !1340, !tbaa !808
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #38, !dbg !1340
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1341
  br label %21, !dbg !1342

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1343, !tbaa !808
  call void @llvm.dbg.value(metadata i32 10, metadata !1344, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata ptr %22, metadata !1350, metadata !DIExpression()), !dbg !1351
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1353
  %24 = load ptr, ptr %23, align 8, !dbg !1353, !tbaa !1354
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1353
  %26 = load ptr, ptr %25, align 8, !dbg !1353, !tbaa !1357
  %27 = icmp ult ptr %24, %26, !dbg !1353
  br i1 %27, label %30, label %28, !dbg !1353, !prof !1358

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1353
  br label %32, !dbg !1353

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1353
  store ptr %31, ptr %23, align 8, !dbg !1353, !tbaa !1354
  store i8 10, ptr %24, align 1, !dbg !1353, !tbaa !873
  br label %32, !dbg !1353

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1359, !tbaa !808
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1359
  %35 = icmp eq i32 %0, 0, !dbg !1360
  br i1 %35, label %37, label %36, !dbg !1362

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1363
  unreachable, !dbg !1363

37:                                               ; preds = %32
  ret void, !dbg !1364
}

declare !dbg !1365 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1368 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1371 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1374 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1377 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1381 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %1, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.va_start(ptr nonnull %4), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1393, !tbaa.struct !1239
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1393
  call void @llvm.va_end(ptr nonnull %4), !dbg !1394
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1395
  ret void, !dbg !1395
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !327 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !344, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i32 %1, metadata !345, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i32 %3, metadata !347, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata ptr %4, metadata !348, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %5, metadata !349, metadata !DIExpression()), !dbg !1397
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1398, !tbaa !864
  %9 = icmp eq i32 %8, 0, !dbg !1398
  br i1 %9, label %24, label %10, !dbg !1400

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1401, !tbaa !864
  %12 = icmp eq i32 %11, %3, !dbg !1404
  br i1 %12, label %13, label %23, !dbg !1405

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1406, !tbaa !808
  %15 = icmp eq ptr %14, %2, !dbg !1407
  br i1 %15, label %37, label %16, !dbg !1408

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1409
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1410
  br i1 %19, label %20, label %23, !dbg !1410

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1411
  %22 = icmp eq i32 %21, 0, !dbg !1412
  br i1 %22, label %37, label %23, !dbg !1413

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1414, !tbaa !808
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1415, !tbaa !864
  br label %24, !dbg !1416

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1417
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1418, !tbaa !808
  %26 = icmp eq ptr %25, null, !dbg !1418
  br i1 %26, label %28, label %27, !dbg !1420

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1421
  br label %32, !dbg !1421

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1422, !tbaa !808
  %30 = tail call ptr @getprogname() #39, !dbg !1422
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #38, !dbg !1422
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1424, !tbaa !808
  %34 = icmp eq ptr %2, null, !dbg !1424
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1424
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1425, !tbaa.struct !1239
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1425
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1425
  br label %37, !dbg !1426

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1426
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1427 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1431, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %1, metadata !1432, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %2, metadata !1433, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %3, metadata !1434, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %4, metadata !1435, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1436, metadata !DIExpression()), !dbg !1439
  call void @llvm.va_start(ptr nonnull %6), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1441, !tbaa.struct !1239
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1441
  call void @llvm.va_end(ptr nonnull %6), !dbg !1442
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1444 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1447, !tbaa !808
  ret ptr %1, !dbg !1448
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1449 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1454, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %1, metadata !1455, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %2, metadata !1456, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %4, metadata !1458, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %5, metadata !1459, metadata !DIExpression()), !dbg !1480
  %9 = load i32, ptr @opterr, align 4, !dbg !1481, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %9, metadata !1460, metadata !DIExpression()), !dbg !1480
  store i32 0, ptr @opterr, align 4, !dbg !1482, !tbaa !864
  %10 = icmp eq i32 %0, 2, !dbg !1483
  br i1 %10, label %11, label %16, !dbg !1484

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %12, metadata !1461, metadata !DIExpression()), !dbg !1486
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1487

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #38, !dbg !1488
  br label %16, !dbg !1489

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1464, metadata !DIExpression()), !dbg !1491
  call void @llvm.va_start(ptr nonnull %7), !dbg !1492
  %15 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #38, !dbg !1494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1494, !tbaa.struct !1239
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #38, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #38, !dbg !1494
  call void @exit(i32 noundef 0) #40, !dbg !1495
  unreachable, !dbg !1495

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1496, !tbaa !864
  store i32 0, ptr @optind, align 4, !dbg !1497, !tbaa !864
  ret void, !dbg !1498
}

; Function Attrs: nounwind
declare !dbg !1499 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1505 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1509, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %1, metadata !1510, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %3, metadata !1512, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i1 %5, metadata !1514, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %6, metadata !1515, metadata !DIExpression()), !dbg !1524
  %10 = load i32, ptr @opterr, align 4, !dbg !1525, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %10, metadata !1516, metadata !DIExpression()), !dbg !1524
  store i32 1, ptr @opterr, align 4, !dbg !1526, !tbaa !864
  %11 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %11, metadata !1517, metadata !DIExpression()), !dbg !1524
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %12, metadata !1518, metadata !DIExpression()), !dbg !1524
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1529

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #38, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1519, metadata !DIExpression()), !dbg !1531
  call void @llvm.va_start(ptr nonnull %8), !dbg !1532
  %14 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #38, !dbg !1534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1534, !tbaa.struct !1239
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #38, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #38, !dbg !1534
  call void @exit(i32 noundef 0) #40, !dbg !1535
  unreachable, !dbg !1535

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1536, !tbaa !864
  br label %17, !dbg !1537

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #38, !dbg !1538
  br label %19, !dbg !1539

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1539, !tbaa !864
  ret void, !dbg !1540
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1541 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !1546
  %3 = icmp eq ptr %2, null, !dbg !1548
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1548
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !1546
  %6 = ptrtoint ptr %5 to i64, !dbg !1549
  %7 = ptrtoint ptr %0 to i64, !dbg !1549
  %8 = sub i64 %6, %7, !dbg !1549
  %9 = icmp sgt i64 %8, 6, !dbg !1551
  br i1 %9, label %10, label %19, !dbg !1552

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1553
  call void @llvm.dbg.value(metadata ptr %11, metadata !1554, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1559, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 7, metadata !1560, metadata !DIExpression()), !dbg !1561
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1563
  %13 = icmp eq i32 %12, 0, !dbg !1564
  br i1 %13, label %14, label %19, !dbg !1565

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !1546
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #39, !dbg !1566
  %16 = icmp eq i32 %15, 0, !dbg !1569
  %17 = select i1 %16, i64 3, i64 0, !dbg !1570
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1570
  br label %19, !dbg !1570

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1546
  call void @llvm.dbg.value(metadata ptr %21, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr %20, metadata !1543, metadata !DIExpression()), !dbg !1546
  store ptr %20, ptr @program_name, align 8, !dbg !1571, !tbaa !808
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1572, !tbaa !808
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1573, !tbaa !808
  ret void, !dbg !1574
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1575 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !409 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1576
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1577
  call void @llvm.dbg.value(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !1576
  %6 = icmp eq ptr %5, %0, !dbg !1578
  br i1 %6, label %7, label %14, !dbg !1580

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1581
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %4, metadata !424, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata ptr %4, metadata !1584, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %4, metadata !1593, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 8, metadata !1600, metadata !DIExpression()), !dbg !1601
  store i64 0, ptr %4, align 8, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %3, metadata !419, metadata !DIExpression(DW_OP_deref)), !dbg !1576
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1604
  %9 = icmp eq i64 %8, 2, !dbg !1606
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !419, metadata !DIExpression()), !dbg !1576
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1607
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1608
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1608
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1576
  ret ptr %15, !dbg !1608
}

; Function Attrs: nounwind
declare !dbg !1609 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1620, metadata !DIExpression()), !dbg !1623
  %2 = tail call ptr @__errno_location() #41, !dbg !1624
  %3 = load i32, ptr %2, align 4, !dbg !1624, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %3, metadata !1621, metadata !DIExpression()), !dbg !1623
  %4 = icmp eq ptr %0, null, !dbg !1625
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1625
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %6, metadata !1622, metadata !DIExpression()), !dbg !1623
  store i32 %3, ptr %2, align 4, !dbg !1627, !tbaa !864
  ret ptr %6, !dbg !1628
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1629 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1635, metadata !DIExpression()), !dbg !1636
  %2 = icmp eq ptr %0, null, !dbg !1637
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1637
  %4 = load i32, ptr %3, align 8, !dbg !1638, !tbaa !1639
  ret i32 %4, !dbg !1641
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1642 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1646, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %1, metadata !1647, metadata !DIExpression()), !dbg !1648
  %3 = icmp eq ptr %0, null, !dbg !1649
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1649
  store i32 %1, ptr %4, align 8, !dbg !1650, !tbaa !1639
  ret void, !dbg !1651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1652 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 %2, metadata !1658, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !1664
  %4 = icmp eq ptr %0, null, !dbg !1665
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1665
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1666
  %7 = lshr i8 %1, 5, !dbg !1667
  %8 = zext i8 %7 to i64, !dbg !1667
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %9, metadata !1660, metadata !DIExpression()), !dbg !1664
  %10 = and i8 %1, 31, !dbg !1669
  %11 = zext i8 %10 to i32, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %11, metadata !1662, metadata !DIExpression()), !dbg !1664
  %12 = load i32, ptr %9, align 4, !dbg !1670, !tbaa !864
  %13 = lshr i32 %12, %11, !dbg !1671
  %14 = and i32 %13, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %14, metadata !1663, metadata !DIExpression()), !dbg !1664
  %15 = xor i32 %13, %2, !dbg !1673
  %16 = and i32 %15, 1, !dbg !1673
  %17 = shl nuw i32 %16, %11, !dbg !1674
  %18 = xor i32 %17, %12, !dbg !1675
  store i32 %18, ptr %9, align 4, !dbg !1675, !tbaa !864
  ret i32 %14, !dbg !1676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %1, metadata !1682, metadata !DIExpression()), !dbg !1684
  %3 = icmp eq ptr %0, null, !dbg !1685
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1687
  call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !1684
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1688
  %6 = load i32, ptr %5, align 4, !dbg !1688, !tbaa !1689
  call void @llvm.dbg.value(metadata i32 %6, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i32 %1, ptr %5, align 4, !dbg !1690, !tbaa !1689
  ret i32 %6, !dbg !1691
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !1699
  %4 = icmp eq ptr %0, null, !dbg !1700
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !1699
  store i32 10, ptr %5, align 8, !dbg !1703, !tbaa !1639
  %6 = icmp ne ptr %1, null, !dbg !1704
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1706
  br i1 %8, label %10, label %9, !dbg !1706

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1707
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1720, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %1, metadata !1721, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %2, metadata !1722, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %3, metadata !1723, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %4, metadata !1724, metadata !DIExpression()), !dbg !1728
  %6 = icmp eq ptr %4, null, !dbg !1729
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %7, metadata !1725, metadata !DIExpression()), !dbg !1728
  %8 = tail call ptr @__errno_location() #41, !dbg !1730
  %9 = load i32, ptr %8, align 4, !dbg !1730, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %9, metadata !1726, metadata !DIExpression()), !dbg !1728
  %10 = load i32, ptr %7, align 8, !dbg !1731, !tbaa !1639
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1732
  %12 = load i32, ptr %11, align 4, !dbg !1732, !tbaa !1689
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1733
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1734
  %15 = load ptr, ptr %14, align 8, !dbg !1734, !tbaa !1710
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1735
  %17 = load ptr, ptr %16, align 8, !dbg !1735, !tbaa !1713
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1736
  call void @llvm.dbg.value(metadata i64 %18, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i32 %9, ptr %8, align 4, !dbg !1737, !tbaa !864
  ret i64 %18, !dbg !1738
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1739 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %1, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %3, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %4, metadata !1749, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %5, metadata !1750, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %6, metadata !1751, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %7, metadata !1752, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %8, metadata !1753, metadata !DIExpression()), !dbg !1807
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1808
  %17 = icmp eq i64 %16, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i1 %17, metadata !1754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr null, metadata !1757, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %5, metadata !1760, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1807
  %18 = and i32 %5, 2, !dbg !1810
  %19 = icmp ne i32 %18, 0, !dbg !1810
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1810

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1811
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1812
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1813
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %34, metadata !1758, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %33, metadata !1757, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %32, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %31, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %30, metadata !1753, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %29, metadata !1752, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %28, metadata !1749, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.label(metadata !1800), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1807
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
  ], !dbg !1815

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 5, metadata !1749, metadata !DIExpression()), !dbg !1807
  br label %102, !dbg !1816

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 5, metadata !1749, metadata !DIExpression()), !dbg !1807
  br i1 %36, label %102, label %42, !dbg !1816

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1817
  br i1 %43, label %102, label %44, !dbg !1821

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1817, !tbaa !873
  br label %102, !dbg !1817

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !519, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1822
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #38, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %46, metadata !521, metadata !DIExpression()), !dbg !1822
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1827
  br i1 %47, label %48, label %57, !dbg !1829

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1830
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %13, metadata !523, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata ptr %13, metadata !1833, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %13, metadata !1841, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i64 8, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i64 0, ptr %13, align 8, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %12, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1822
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1849
  %50 = icmp eq i64 %49, 3, !dbg !1851
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !522, metadata !DIExpression()), !dbg !1822
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1852
  %54 = icmp eq i32 %28, 9, !dbg !1852
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1852
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1853
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1853
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1822
  call void @llvm.dbg.value(metadata ptr %58, metadata !1752, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !519, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1854
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #38, !dbg !1856
  call void @llvm.dbg.value(metadata ptr %59, metadata !521, metadata !DIExpression()), !dbg !1854
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1857
  br i1 %60, label %61, label %70, !dbg !1858

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1859
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1860
  call void @llvm.dbg.declare(metadata ptr %11, metadata !523, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %11, metadata !1833, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %11, metadata !1841, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 8, metadata !1845, metadata !DIExpression()), !dbg !1864
  store i64 0, ptr %11, align 8, !dbg !1866
  call void @llvm.dbg.value(metadata ptr %10, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1854
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1867
  %63 = icmp eq i64 %62, 3, !dbg !1868
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !522, metadata !DIExpression()), !dbg !1854
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1869
  %67 = icmp eq i32 %28, 9, !dbg !1869
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1869
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1869
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1870
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1870
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1753, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %71, metadata !1752, metadata !DIExpression()), !dbg !1807
  br i1 %36, label %88, label %73, !dbg !1871

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1764, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1807
  %74 = load i8, ptr %71, align 1, !dbg !1873, !tbaa !873
  %75 = icmp eq i8 %74, 0, !dbg !1875
  br i1 %75, label %88, label %76, !dbg !1875

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1764, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %79, metadata !1755, metadata !DIExpression()), !dbg !1807
  %80 = icmp ult i64 %79, %39, !dbg !1876
  br i1 %80, label %81, label %83, !dbg !1879

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1876
  store i8 %77, ptr %82, align 1, !dbg !1876, !tbaa !873
  br label %83, !dbg !1876

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %84, metadata !1755, metadata !DIExpression()), !dbg !1807
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %85, metadata !1764, metadata !DIExpression()), !dbg !1872
  %86 = load i8, ptr %85, align 1, !dbg !1873, !tbaa !873
  %87 = icmp eq i8 %86, 0, !dbg !1875
  br i1 %87, label %88, label %76, !dbg !1875, !llvm.loop !1881

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1883
  call void @llvm.dbg.value(metadata i64 %89, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %72, metadata !1757, metadata !DIExpression()), !dbg !1807
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %90, metadata !1758, metadata !DIExpression()), !dbg !1807
  br label %102, !dbg !1885

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1807
  br label %93, !dbg !1886

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1807
  br i1 %36, label %102, label %96, !dbg !1887

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 2, metadata !1749, metadata !DIExpression()), !dbg !1807
  br label %102, !dbg !1888

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 2, metadata !1749, metadata !DIExpression()), !dbg !1807
  br i1 %36, label %102, label %96, !dbg !1888

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1889
  br i1 %98, label %102, label %99, !dbg !1893

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1889, !tbaa !873
  br label %102, !dbg !1889

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1807
  br label %102, !dbg !1894

101:                                              ; preds = %27
  call void @abort() #40, !dbg !1895
  unreachable, !dbg !1895

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1883
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %96 ], [ @.str.12.68, %99 ], [ @.str.12.68, %95 ], [ @.str.10.67, %40 ], [ @.str.12.68, %93 ], [ @.str.12.68, %92 ], !dbg !1807
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1807
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %108, metadata !1758, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %107, metadata !1757, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %106, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %105, metadata !1753, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %104, metadata !1752, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %103, metadata !1749, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 0, metadata !1769, metadata !DIExpression()), !dbg !1896
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
  br label %122, !dbg !1897

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1883
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1811
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1898
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %129, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %125, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %124, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %123, metadata !1748, metadata !DIExpression()), !dbg !1807
  %131 = icmp eq i64 %123, -1, !dbg !1899
  br i1 %131, label %132, label %136, !dbg !1900

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1901
  %134 = load i8, ptr %133, align 1, !dbg !1901, !tbaa !873
  %135 = icmp eq i8 %134, 0, !dbg !1902
  br i1 %135, label %579, label %138, !dbg !1903

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1904
  br i1 %137, label %579, label %138, !dbg !1903

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1905
  br i1 %114, label %139, label %152, !dbg !1906

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1908
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1909
  br i1 %141, label %142, label %144, !dbg !1909

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %143, metadata !1748, metadata !DIExpression()), !dbg !1807
  br label %144, !dbg !1911

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1911
  call void @llvm.dbg.value(metadata i64 %145, metadata !1748, metadata !DIExpression()), !dbg !1807
  %146 = icmp ugt i64 %140, %145, !dbg !1912
  br i1 %146, label %152, label %147, !dbg !1913

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %148, metadata !1915, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata ptr %107, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %108, metadata !1919, metadata !DIExpression()), !dbg !1920
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1922
  %150 = icmp eq i32 %149, 0, !dbg !1923
  %151 = and i1 %150, %110, !dbg !1924
  br i1 %151, label %630, label %152, !dbg !1924

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %153, metadata !1748, metadata !DIExpression()), !dbg !1807
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1925
  %156 = load i8, ptr %155, align 1, !dbg !1925, !tbaa !873
  call void @llvm.dbg.value(metadata i8 %156, metadata !1776, metadata !DIExpression()), !dbg !1905
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
  ], !dbg !1926

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1927

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1928

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1905
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1932
  br i1 %160, label %177, label %161, !dbg !1932

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1934
  br i1 %162, label %163, label %165, !dbg !1938

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1934
  store i8 39, ptr %164, align 1, !dbg !1934, !tbaa !873
  br label %165, !dbg !1934

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %166, metadata !1755, metadata !DIExpression()), !dbg !1807
  %167 = icmp ult i64 %166, %130, !dbg !1939
  br i1 %167, label %168, label %170, !dbg !1942

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1939
  store i8 36, ptr %169, align 1, !dbg !1939, !tbaa !873
  br label %170, !dbg !1939

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %171, metadata !1755, metadata !DIExpression()), !dbg !1807
  %172 = icmp ult i64 %171, %130, !dbg !1943
  br i1 %172, label %173, label %175, !dbg !1946

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1943
  store i8 39, ptr %174, align 1, !dbg !1943, !tbaa !873
  br label %175, !dbg !1943

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %176, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %177, !dbg !1947

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1807
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %178, metadata !1755, metadata !DIExpression()), !dbg !1807
  %180 = icmp ult i64 %178, %130, !dbg !1948
  br i1 %180, label %181, label %183, !dbg !1951

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1948
  store i8 92, ptr %182, align 1, !dbg !1948, !tbaa !873
  br label %183, !dbg !1948

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %184, metadata !1755, metadata !DIExpression()), !dbg !1807
  br i1 %111, label %185, label %482, !dbg !1952

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1954
  %187 = icmp ult i64 %186, %153, !dbg !1955
  br i1 %187, label %188, label %439, !dbg !1956

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1957
  %190 = load i8, ptr %189, align 1, !dbg !1957, !tbaa !873
  %191 = add i8 %190, -48, !dbg !1958
  %192 = icmp ult i8 %191, 10, !dbg !1958
  br i1 %192, label %193, label %439, !dbg !1958

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1959
  br i1 %194, label %195, label %197, !dbg !1963

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1959
  store i8 48, ptr %196, align 1, !dbg !1959, !tbaa !873
  br label %197, !dbg !1959

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %198, metadata !1755, metadata !DIExpression()), !dbg !1807
  %199 = icmp ult i64 %198, %130, !dbg !1964
  br i1 %199, label %200, label %202, !dbg !1967

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1964
  store i8 48, ptr %201, align 1, !dbg !1964, !tbaa !873
  br label %202, !dbg !1964

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %203, metadata !1755, metadata !DIExpression()), !dbg !1807
  br label %439, !dbg !1968

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1969

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1970

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1971

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1973

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1975
  %210 = icmp ult i64 %209, %153, !dbg !1976
  br i1 %210, label %211, label %439, !dbg !1977

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1978
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1979
  %214 = load i8, ptr %213, align 1, !dbg !1979, !tbaa !873
  %215 = icmp eq i8 %214, 63, !dbg !1980
  br i1 %215, label %216, label %439, !dbg !1981

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1982
  %218 = load i8, ptr %217, align 1, !dbg !1982, !tbaa !873
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
  ], !dbg !1983

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1984

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %209, metadata !1769, metadata !DIExpression()), !dbg !1896
  %221 = icmp ult i64 %124, %130, !dbg !1986
  br i1 %221, label %222, label %224, !dbg !1989

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1986
  store i8 63, ptr %223, align 1, !dbg !1986, !tbaa !873
  br label %224, !dbg !1986

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %225, metadata !1755, metadata !DIExpression()), !dbg !1807
  %226 = icmp ult i64 %225, %130, !dbg !1990
  br i1 %226, label %227, label %229, !dbg !1993

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1990
  store i8 34, ptr %228, align 1, !dbg !1990, !tbaa !873
  br label %229, !dbg !1990

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %230, metadata !1755, metadata !DIExpression()), !dbg !1807
  %231 = icmp ult i64 %230, %130, !dbg !1994
  br i1 %231, label %232, label %234, !dbg !1997

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1994
  store i8 34, ptr %233, align 1, !dbg !1994, !tbaa !873
  br label %234, !dbg !1994

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %235, metadata !1755, metadata !DIExpression()), !dbg !1807
  %236 = icmp ult i64 %235, %130, !dbg !1998
  br i1 %236, label %237, label %239, !dbg !2001

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1998
  store i8 63, ptr %238, align 1, !dbg !1998, !tbaa !873
  br label %239, !dbg !1998

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %240, metadata !1755, metadata !DIExpression()), !dbg !1807
  br label %439, !dbg !2002

241:                                              ; preds = %152
  br label %251, !dbg !2003

242:                                              ; preds = %152
  br label %251, !dbg !2004

243:                                              ; preds = %152
  br label %249, !dbg !2005

244:                                              ; preds = %152
  br label %249, !dbg !2006

245:                                              ; preds = %152
  br label %251, !dbg !2007

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2008

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2009

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2012

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2014
  call void @llvm.dbg.label(metadata !1801), !dbg !2015
  br i1 %119, label %621, label %251, !dbg !2016

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2014
  call void @llvm.dbg.label(metadata !1803), !dbg !2018
  br i1 %109, label %493, label %450, !dbg !2019

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2020

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2021, !tbaa !873
  %256 = icmp eq i8 %255, 0, !dbg !2023
  br i1 %256, label %257, label %439, !dbg !2024

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2025
  br i1 %258, label %259, label %439, !dbg !2027

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1905
  br label %260, !dbg !2028

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1905
  br i1 %116, label %262, label %439, !dbg !2029

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2031

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1905
  br i1 %116, label %264, label %439, !dbg !2032

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2033

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2036
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2038
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2038
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %270, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %269, metadata !1756, metadata !DIExpression()), !dbg !1807
  %271 = icmp ult i64 %124, %270, !dbg !2039
  br i1 %271, label %272, label %274, !dbg !2042

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2039
  store i8 39, ptr %273, align 1, !dbg !2039, !tbaa !873
  br label %274, !dbg !2039

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %275, metadata !1755, metadata !DIExpression()), !dbg !1807
  %276 = icmp ult i64 %275, %270, !dbg !2043
  br i1 %276, label %277, label %279, !dbg !2046

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2043
  store i8 92, ptr %278, align 1, !dbg !2043, !tbaa !873
  br label %279, !dbg !2043

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %280, metadata !1755, metadata !DIExpression()), !dbg !1807
  %281 = icmp ult i64 %280, %270, !dbg !2047
  br i1 %281, label %282, label %284, !dbg !2050

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2047
  store i8 39, ptr %283, align 1, !dbg !2047, !tbaa !873
  br label %284, !dbg !2047

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %285, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %439, !dbg !2051

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2052

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1777, metadata !DIExpression()), !dbg !2053
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2054
  %289 = load ptr, ptr %288, align 8, !dbg !2054, !tbaa !808
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2054
  %292 = load i16, ptr %291, align 2, !dbg !2054, !tbaa !905
  %293 = and i16 %292, 16384, !dbg !2054
  %294 = icmp ne i16 %293, 0, !dbg !2056
  call void @llvm.dbg.value(metadata i1 %294, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2053
  br label %337, !dbg !2057

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1781, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata ptr %14, metadata !1833, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %14, metadata !1841, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 8, metadata !1845, metadata !DIExpression()), !dbg !2062
  store i64 0, ptr %14, align 8, !dbg !2064
  call void @llvm.dbg.value(metadata i64 0, metadata !1777, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !2053
  %296 = icmp eq i64 %153, -1, !dbg !2065
  br i1 %296, label %297, label %299, !dbg !2067

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %298, metadata !1748, metadata !DIExpression()), !dbg !1807
  br label %299, !dbg !2069

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1905
  call void @llvm.dbg.value(metadata i64 %300, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2070
  %301 = sub i64 %300, %129, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %15, metadata !1784, metadata !DIExpression(DW_OP_deref)), !dbg !2072
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %302, metadata !1788, metadata !DIExpression()), !dbg !2072
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2074

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1777, metadata !DIExpression()), !dbg !2053
  %304 = icmp ugt i64 %300, %129, !dbg !2075
  br i1 %304, label %306, label %332, !dbg !2077

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !2053
  br label %332, !dbg !2078

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1777, metadata !DIExpression()), !dbg !2053
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2080
  %310 = load i8, ptr %309, align 1, !dbg !2080, !tbaa !873
  %311 = icmp eq i8 %310, 0, !dbg !2077
  br i1 %311, label %332, label %312, !dbg !2081

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %313, metadata !1777, metadata !DIExpression()), !dbg !2053
  %314 = add i64 %313, %129, !dbg !2083
  %315 = icmp eq i64 %313, %301, !dbg !2075
  br i1 %315, label %332, label %306, !dbg !2077, !llvm.loop !2084

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2085
  %319 = and i1 %318, %110, !dbg !2085
  call void @llvm.dbg.value(metadata i64 1, metadata !1789, metadata !DIExpression()), !dbg !2086
  br i1 %319, label %320, label %328, !dbg !2085

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1789, metadata !DIExpression()), !dbg !2086
  %322 = add i64 %321, %129, !dbg !2087
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2089
  %324 = load i8, ptr %323, align 1, !dbg !2089, !tbaa !873
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2090

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %326, metadata !1789, metadata !DIExpression()), !dbg !2086
  %327 = icmp eq i64 %326, %302, !dbg !2092
  br i1 %327, label %328, label %320, !dbg !2093, !llvm.loop !2094

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2096, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %329, metadata !1784, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %329, metadata !2098, metadata !DIExpression()), !dbg !2106
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2108
  %331 = icmp ne i32 %330, 0, !dbg !2109
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %302, metadata !1777, metadata !DIExpression()), !dbg !2053
  br label %332, !dbg !2110

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %333, metadata !1777, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2112
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 0, metadata !1777, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2112
  call void @llvm.dbg.label(metadata !1806), !dbg !2113
  %336 = select i1 %109, i32 4, i32 2, !dbg !2114
  br label %626, !dbg !2114

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1905
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2116
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %339, metadata !1777, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %338, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i1 %340, metadata !1775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1905
  %341 = icmp ult i64 %339, 2, !dbg !2117
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2118
  br i1 %343, label %439, label %344, !dbg !2118

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %345, metadata !1797, metadata !DIExpression()), !dbg !2120
  br label %346, !dbg !2121

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1807
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1896
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2122
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %352, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %351, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %349, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %347, metadata !1755, metadata !DIExpression()), !dbg !1807
  br i1 %342, label %397, label %353, !dbg !2123

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2128

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1905
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2131
  br i1 %355, label %372, label %356, !dbg !2131

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2133
  br i1 %357, label %358, label %360, !dbg !2137

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2133
  store i8 39, ptr %359, align 1, !dbg !2133, !tbaa !873
  br label %360, !dbg !2133

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %361, metadata !1755, metadata !DIExpression()), !dbg !1807
  %362 = icmp ult i64 %361, %130, !dbg !2138
  br i1 %362, label %363, label %365, !dbg !2141

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2138
  store i8 36, ptr %364, align 1, !dbg !2138, !tbaa !873
  br label %365, !dbg !2138

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %366, metadata !1755, metadata !DIExpression()), !dbg !1807
  %367 = icmp ult i64 %366, %130, !dbg !2142
  br i1 %367, label %368, label %370, !dbg !2145

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2142
  store i8 39, ptr %369, align 1, !dbg !2142, !tbaa !873
  br label %370, !dbg !2142

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %371, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %372, !dbg !2146

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1807
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %373, metadata !1755, metadata !DIExpression()), !dbg !1807
  %375 = icmp ult i64 %373, %130, !dbg !2147
  br i1 %375, label %376, label %378, !dbg !2150

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2147
  store i8 92, ptr %377, align 1, !dbg !2147, !tbaa !873
  br label %378, !dbg !2147

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %379, metadata !1755, metadata !DIExpression()), !dbg !1807
  %380 = icmp ult i64 %379, %130, !dbg !2151
  br i1 %380, label %381, label %385, !dbg !2154

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2151
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2151
  store i8 %383, ptr %384, align 1, !dbg !2151, !tbaa !873
  br label %385, !dbg !2151

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %386, metadata !1755, metadata !DIExpression()), !dbg !1807
  %387 = icmp ult i64 %386, %130, !dbg !2155
  br i1 %387, label %388, label %393, !dbg !2158

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2155
  %391 = or i8 %390, 48, !dbg !2155
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2155
  store i8 %391, ptr %392, align 1, !dbg !2155, !tbaa !873
  br label %393, !dbg !2155

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %394, metadata !1755, metadata !DIExpression()), !dbg !1807
  %395 = and i8 %352, 7, !dbg !2159
  %396 = or i8 %395, 48, !dbg !2160
  call void @llvm.dbg.value(metadata i8 %396, metadata !1776, metadata !DIExpression()), !dbg !1905
  br label %404, !dbg !2161

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2162

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2163
  br i1 %399, label %400, label %402, !dbg !2168

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2163
  store i8 92, ptr %401, align 1, !dbg !2163, !tbaa !873
  br label %402, !dbg !2163

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %403, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1905
  br label %404, !dbg !2169

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1807
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1905
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1905
  call void @llvm.dbg.value(metadata i8 %409, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %408, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %405, metadata !1755, metadata !DIExpression()), !dbg !1807
  %410 = add i64 %349, 1, !dbg !2170
  %411 = icmp ugt i64 %345, %410, !dbg !2172
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2173

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2174
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2174
  br i1 %415, label %416, label %427, !dbg !2174

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2177
  br i1 %417, label %418, label %420, !dbg !2181

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2177
  store i8 39, ptr %419, align 1, !dbg !2177, !tbaa !873
  br label %420, !dbg !2177

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %421, metadata !1755, metadata !DIExpression()), !dbg !1807
  %422 = icmp ult i64 %421, %130, !dbg !2182
  br i1 %422, label %423, label %425, !dbg !2185

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2182
  store i8 39, ptr %424, align 1, !dbg !2182, !tbaa !873
  br label %425, !dbg !2182

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %426, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %427, !dbg !2186

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2187
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %428, metadata !1755, metadata !DIExpression()), !dbg !1807
  %430 = icmp ult i64 %428, %130, !dbg !2188
  br i1 %430, label %431, label %433, !dbg !2191

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2188
  store i8 %409, ptr %432, align 1, !dbg !2188, !tbaa !873
  br label %433, !dbg !2188

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %434, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %410, metadata !1769, metadata !DIExpression()), !dbg !1896
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2192
  %436 = load i8, ptr %435, align 1, !dbg !2192, !tbaa !873
  call void @llvm.dbg.value(metadata i8 %436, metadata !1776, metadata !DIExpression()), !dbg !1905
  br label %346, !dbg !2193, !llvm.loop !2194

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i1 %340, metadata !1775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %408, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %349, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %405, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %338, metadata !1748, metadata !DIExpression()), !dbg !1807
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2197
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1807
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1811
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1896
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1905
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %448, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1771, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %445, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %442, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %441, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %440, metadata !1748, metadata !DIExpression()), !dbg !1807
  br i1 %112, label %461, label %450, !dbg !2198

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
  br i1 %121, label %462, label %482, !dbg !2200

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2201

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
  %473 = lshr i8 %464, 5, !dbg !2202
  %474 = zext i8 %473 to i64, !dbg !2202
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2203
  %476 = load i32, ptr %475, align 4, !dbg !2203, !tbaa !864
  %477 = and i8 %464, 31, !dbg !2204
  %478 = zext i8 %477 to i32, !dbg !2204
  %479 = shl nuw i32 1, %478, !dbg !2205
  %480 = and i32 %476, %479, !dbg !2205
  %481 = icmp eq i32 %480, 0, !dbg !2205
  br i1 %481, label %482, label %493, !dbg !2206

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
  br i1 %154, label %493, label %529, !dbg !2207

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2197
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1807
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1811
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2208
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1905
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %501, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %499, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %496, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %495, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %494, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.label(metadata !1804), !dbg !2209
  br i1 %110, label %621, label %503, !dbg !2210

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1905
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2212
  br i1 %504, label %521, label %505, !dbg !2212

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2214
  br i1 %506, label %507, label %509, !dbg !2218

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2214
  store i8 39, ptr %508, align 1, !dbg !2214, !tbaa !873
  br label %509, !dbg !2214

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %510, metadata !1755, metadata !DIExpression()), !dbg !1807
  %511 = icmp ult i64 %510, %502, !dbg !2219
  br i1 %511, label %512, label %514, !dbg !2222

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2219
  store i8 36, ptr %513, align 1, !dbg !2219, !tbaa !873
  br label %514, !dbg !2219

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %515, metadata !1755, metadata !DIExpression()), !dbg !1807
  %516 = icmp ult i64 %515, %502, !dbg !2223
  br i1 %516, label %517, label %519, !dbg !2226

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2223
  store i8 39, ptr %518, align 1, !dbg !2223, !tbaa !873
  br label %519, !dbg !2223

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %520, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %521, !dbg !2227

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1905
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %522, metadata !1755, metadata !DIExpression()), !dbg !1807
  %524 = icmp ult i64 %522, %502, !dbg !2228
  br i1 %524, label %525, label %527, !dbg !2231

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2228
  store i8 92, ptr %526, align 1, !dbg !2228, !tbaa !873
  br label %527, !dbg !2228

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %502, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %501, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %499, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %496, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %528, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %494, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.label(metadata !1805), !dbg !2232
  br label %553, !dbg !2233

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2197
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1807
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1811
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2208
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2236
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %538, metadata !1776, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %535, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %532, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %531, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %530, metadata !1748, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.label(metadata !1805), !dbg !2232
  %540 = xor i1 %534, true, !dbg !2233
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2233
  br i1 %541, label %553, label %542, !dbg !2233

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2237
  br i1 %543, label %544, label %546, !dbg !2241

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2237
  store i8 39, ptr %545, align 1, !dbg !2237, !tbaa !873
  br label %546, !dbg !2237

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %547, metadata !1755, metadata !DIExpression()), !dbg !1807
  %548 = icmp ult i64 %547, %539, !dbg !2242
  br i1 %548, label %549, label %551, !dbg !2245

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2242
  store i8 39, ptr %550, align 1, !dbg !2242, !tbaa !873
  br label %551, !dbg !2242

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %552, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1807
  br label %553, !dbg !2246

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1905
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %561, metadata !1755, metadata !DIExpression()), !dbg !1807
  %563 = icmp ult i64 %561, %554, !dbg !2247
  br i1 %563, label %564, label %566, !dbg !2250

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2247
  store i8 %555, ptr %565, align 1, !dbg !2247, !tbaa !873
  br label %566, !dbg !2247

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %567, metadata !1755, metadata !DIExpression()), !dbg !1807
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2251
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1807
  br label %569, !dbg !2252

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2197
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1807
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1811
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2208
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %576, metadata !1769, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %572, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %571, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %570, metadata !1748, metadata !DIExpression()), !dbg !1807
  %578 = add i64 %576, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %578, metadata !1769, metadata !DIExpression()), !dbg !1896
  br label %122, !dbg !2254, !llvm.loop !2255

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1746, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %125, metadata !1756, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %124, metadata !1755, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %123, metadata !1748, metadata !DIExpression()), !dbg !1807
  %580 = icmp ne i64 %124, 0, !dbg !2257
  %581 = xor i1 %110, true, !dbg !2259
  %582 = or i1 %580, %581, !dbg !2259
  %583 = or i1 %582, %111, !dbg !2259
  br i1 %583, label %584, label %621, !dbg !2259

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2260
  %586 = xor i1 %126, true, !dbg !2260
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2260
  br i1 %587, label %595, label %588, !dbg !2260

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2262

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2264
  br label %636, !dbg !2266

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2267
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2269
  br i1 %594, label %27, label %595, !dbg !2269

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2270
  %598 = or i1 %597, %596, !dbg !2272
  br i1 %598, label %614, label %599, !dbg !2272

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1757, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %124, metadata !1755, metadata !DIExpression()), !dbg !1807
  %600 = load i8, ptr %107, align 1, !dbg !2273, !tbaa !873
  %601 = icmp eq i8 %600, 0, !dbg !2276
  br i1 %601, label %614, label %602, !dbg !2276

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1757, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %605, metadata !1755, metadata !DIExpression()), !dbg !1807
  %606 = icmp ult i64 %605, %130, !dbg !2277
  br i1 %606, label %607, label %609, !dbg !2280

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2277
  store i8 %603, ptr %608, align 1, !dbg !2277, !tbaa !873
  br label %609, !dbg !2277

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %610, metadata !1755, metadata !DIExpression()), !dbg !1807
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %611, metadata !1757, metadata !DIExpression()), !dbg !1807
  %612 = load i8, ptr %611, align 1, !dbg !2273, !tbaa !873
  %613 = icmp eq i8 %612, 0, !dbg !2276
  br i1 %613, label %614, label %602, !dbg !2276, !llvm.loop !2282

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1883
  call void @llvm.dbg.value(metadata i64 %615, metadata !1755, metadata !DIExpression()), !dbg !1807
  %616 = icmp ult i64 %615, %130, !dbg !2284
  br i1 %616, label %617, label %636, !dbg !2286

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2287
  store i8 0, ptr %618, align 1, !dbg !2288, !tbaa !873
  br label %636, !dbg !2287

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1806), !dbg !2113
  %620 = icmp eq i32 %103, 2, !dbg !2289
  br i1 %620, label %626, label %630, !dbg !2114

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1806), !dbg !2113
  %624 = icmp eq i32 %103, 2, !dbg !2289
  %625 = select i1 %109, i32 4, i32 2, !dbg !2114
  br i1 %624, label %626, label %630, !dbg !2114

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2114

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1749, metadata !DIExpression()), !dbg !1807
  %634 = and i32 %5, -3, !dbg !2290
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2291
  br label %636, !dbg !2292

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2293
}

; Function Attrs: nounwind
declare !dbg !2294 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2297 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2300 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2302 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %1, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %2, metadata !2308, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %0, metadata !2310, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i64 %1, metadata !2315, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr null, metadata !2316, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %2, metadata !2317, metadata !DIExpression()), !dbg !2323
  %4 = icmp eq ptr %2, null, !dbg !2325
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %5, metadata !2318, metadata !DIExpression()), !dbg !2323
  %6 = tail call ptr @__errno_location() #41, !dbg !2326
  %7 = load i32, ptr %6, align 4, !dbg !2326, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %7, metadata !2319, metadata !DIExpression()), !dbg !2323
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2327
  %9 = load i32, ptr %8, align 4, !dbg !2327, !tbaa !1689
  %10 = or i32 %9, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %10, metadata !2320, metadata !DIExpression()), !dbg !2323
  %11 = load i32, ptr %5, align 8, !dbg !2329, !tbaa !1639
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2330
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2331
  %14 = load ptr, ptr %13, align 8, !dbg !2331, !tbaa !1710
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2332
  %16 = load ptr, ptr %15, align 8, !dbg !2332, !tbaa !1713
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2333
  %18 = add i64 %17, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %18, metadata !2321, metadata !DIExpression()), !dbg !2323
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %19, metadata !2322, metadata !DIExpression()), !dbg !2323
  %20 = load i32, ptr %5, align 8, !dbg !2336, !tbaa !1639
  %21 = load ptr, ptr %13, align 8, !dbg !2337, !tbaa !1710
  %22 = load ptr, ptr %15, align 8, !dbg !2338, !tbaa !1713
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2339
  store i32 %7, ptr %6, align 4, !dbg !2340, !tbaa !864
  ret ptr %19, !dbg !2341
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2311 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2310, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2315, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata ptr %2, metadata !2316, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata ptr %3, metadata !2317, metadata !DIExpression()), !dbg !2342
  %5 = icmp eq ptr %3, null, !dbg !2343
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %6, metadata !2318, metadata !DIExpression()), !dbg !2342
  %7 = tail call ptr @__errno_location() #41, !dbg !2344
  %8 = load i32, ptr %7, align 4, !dbg !2344, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %8, metadata !2319, metadata !DIExpression()), !dbg !2342
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2345
  %10 = load i32, ptr %9, align 4, !dbg !2345, !tbaa !1689
  %11 = icmp eq ptr %2, null, !dbg !2346
  %12 = zext i1 %11 to i32, !dbg !2346
  %13 = or i32 %10, %12, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %13, metadata !2320, metadata !DIExpression()), !dbg !2342
  %14 = load i32, ptr %6, align 8, !dbg !2348, !tbaa !1639
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2349
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2350
  %17 = load ptr, ptr %16, align 8, !dbg !2350, !tbaa !1710
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2351
  %19 = load ptr, ptr %18, align 8, !dbg !2351, !tbaa !1713
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2352
  %21 = add i64 %20, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %21, metadata !2321, metadata !DIExpression()), !dbg !2342
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2354
  call void @llvm.dbg.value(metadata ptr %22, metadata !2322, metadata !DIExpression()), !dbg !2342
  %23 = load i32, ptr %6, align 8, !dbg !2355, !tbaa !1639
  %24 = load ptr, ptr %16, align 8, !dbg !2356, !tbaa !1710
  %25 = load ptr, ptr %18, align 8, !dbg !2357, !tbaa !1713
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2358
  store i32 %8, ptr %7, align 4, !dbg !2359, !tbaa !864
  br i1 %11, label %28, label %27, !dbg !2360

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2361, !tbaa !2363
  br label %28, !dbg !2364

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2365
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2366 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2371, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !2373
  %2 = load i32, ptr @nslots, align 4, !tbaa !864
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !2373
  %3 = icmp sgt i32 %2, 1, !dbg !2374
  br i1 %3, label %4, label %6, !dbg !2376

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2374
  br label %10, !dbg !2376

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2377
  %8 = load ptr, ptr %7, align 8, !dbg !2377, !tbaa !2379
  %9 = icmp eq ptr %8, @slot0, !dbg !2381
  br i1 %9, label %17, label %16, !dbg !2382

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2369, metadata !DIExpression()), !dbg !2373
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2383
  %13 = load ptr, ptr %12, align 8, !dbg !2383, !tbaa !2379
  tail call void @free(ptr noundef %13) #38, !dbg !2384
  %14 = add nuw nsw i64 %11, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %14, metadata !2369, metadata !DIExpression()), !dbg !2373
  %15 = icmp eq i64 %14, %5, !dbg !2374
  br i1 %15, label %6, label %10, !dbg !2376, !llvm.loop !2386

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2388
  store i64 256, ptr @slotvec0, align 8, !dbg !2390, !tbaa !2391
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2392, !tbaa !2379
  br label %17, !dbg !2393

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2394
  br i1 %18, label %20, label %19, !dbg !2396

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2397
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2399, !tbaa !808
  br label %20, !dbg !2400

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2401, !tbaa !864
  ret void, !dbg !2402
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2403 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr %1, metadata !2409, metadata !DIExpression()), !dbg !2410
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2411
  ret ptr %3, !dbg !2412
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2413 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %1, metadata !2418, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %2, metadata !2419, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %3, metadata !2420, metadata !DIExpression()), !dbg !2433
  %6 = tail call ptr @__errno_location() #41, !dbg !2434
  %7 = load i32, ptr %6, align 4, !dbg !2434, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %7, metadata !2421, metadata !DIExpression()), !dbg !2433
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2435, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %8, metadata !2422, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2423, metadata !DIExpression()), !dbg !2433
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2436
  br i1 %9, label %10, label %11, !dbg !2436

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2438
  unreachable, !dbg !2438

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2439, !tbaa !864
  %13 = icmp sgt i32 %12, %0, !dbg !2440
  br i1 %13, label %32, label %14, !dbg !2441

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2442
  call void @llvm.dbg.value(metadata i1 %15, metadata !2424, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2444
  %16 = sext i32 %12 to i64, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %16, metadata !2427, metadata !DIExpression()), !dbg !2443
  store i64 %16, ptr %5, align 8, !dbg !2446, !tbaa !2363
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2447
  %18 = add nuw nsw i32 %0, 1, !dbg !2448
  %19 = sub i32 %18, %12, !dbg !2449
  %20 = sext i32 %19 to i64, !dbg !2450
  call void @llvm.dbg.value(metadata ptr %5, metadata !2427, metadata !DIExpression(DW_OP_deref)), !dbg !2443
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %21, metadata !2422, metadata !DIExpression()), !dbg !2433
  store ptr %21, ptr @slotvec, align 8, !dbg !2452, !tbaa !808
  br i1 %15, label %22, label %23, !dbg !2453

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2454, !tbaa.struct !2456
  br label %23, !dbg !2457

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2458, !tbaa !864
  %25 = sext i32 %24 to i64, !dbg !2459
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2459
  %27 = load i64, ptr %5, align 8, !dbg !2460, !tbaa !2363
  call void @llvm.dbg.value(metadata i64 %27, metadata !2427, metadata !DIExpression()), !dbg !2443
  %28 = sub nsw i64 %27, %25, !dbg !2461
  %29 = shl i64 %28, 4, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %26, metadata !1841, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %29, metadata !1845, metadata !DIExpression()), !dbg !2463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2465
  %30 = load i64, ptr %5, align 8, !dbg !2466, !tbaa !2363
  call void @llvm.dbg.value(metadata i64 %30, metadata !2427, metadata !DIExpression()), !dbg !2443
  %31 = trunc i64 %30 to i32, !dbg !2466
  store i32 %31, ptr @nslots, align 4, !dbg !2467, !tbaa !864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2468
  br label %32, !dbg !2469

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2433
  call void @llvm.dbg.value(metadata ptr %33, metadata !2422, metadata !DIExpression()), !dbg !2433
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2470
  %36 = load i64, ptr %35, align 8, !dbg !2471, !tbaa !2391
  call void @llvm.dbg.value(metadata i64 %36, metadata !2428, metadata !DIExpression()), !dbg !2472
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2473
  %38 = load ptr, ptr %37, align 8, !dbg !2473, !tbaa !2379
  call void @llvm.dbg.value(metadata ptr %38, metadata !2430, metadata !DIExpression()), !dbg !2472
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2474
  %40 = load i32, ptr %39, align 4, !dbg !2474, !tbaa !1689
  %41 = or i32 %40, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %41, metadata !2431, metadata !DIExpression()), !dbg !2472
  %42 = load i32, ptr %3, align 8, !dbg !2476, !tbaa !1639
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2477
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2478
  %45 = load ptr, ptr %44, align 8, !dbg !2478, !tbaa !1710
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2479
  %47 = load ptr, ptr %46, align 8, !dbg !2479, !tbaa !1713
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %48, metadata !2432, metadata !DIExpression()), !dbg !2472
  %49 = icmp ugt i64 %36, %48, !dbg !2481
  br i1 %49, label %60, label %50, !dbg !2483

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %51, metadata !2428, metadata !DIExpression()), !dbg !2472
  store i64 %51, ptr %35, align 8, !dbg !2486, !tbaa !2391
  %52 = icmp eq ptr %38, @slot0, !dbg !2487
  br i1 %52, label %54, label %53, !dbg !2489

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2490
  br label %54, !dbg !2490

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %55, metadata !2430, metadata !DIExpression()), !dbg !2472
  store ptr %55, ptr %37, align 8, !dbg !2492, !tbaa !2379
  %56 = load i32, ptr %3, align 8, !dbg !2493, !tbaa !1639
  %57 = load ptr, ptr %44, align 8, !dbg !2494, !tbaa !1710
  %58 = load ptr, ptr %46, align 8, !dbg !2495, !tbaa !1713
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2496
  br label %60, !dbg !2497

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2472
  call void @llvm.dbg.value(metadata ptr %61, metadata !2430, metadata !DIExpression()), !dbg !2472
  store i32 %7, ptr %6, align 4, !dbg !2498, !tbaa !864
  ret ptr %61, !dbg !2499
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2500 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %2, metadata !2506, metadata !DIExpression()), !dbg !2507
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2508
  ret ptr %4, !dbg !2509
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2510 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata ptr %0, metadata !2409, metadata !DIExpression()), !dbg !2514
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2516
  ret ptr %2, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2518 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %1, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 0, metadata !2504, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2525
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2527
  ret ptr %3, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2529 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %1, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %2, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2536, metadata !DIExpression()), !dbg !2539
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %1, metadata !2544, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2552, !alias.scope !2540
  %5 = icmp eq i32 %1, 10, !dbg !2553
  br i1 %5, label %6, label %7, !dbg !2555

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2556, !noalias !2540
  unreachable, !dbg !2556

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2557, !tbaa !1639, !alias.scope !2540
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2559
  ret ptr %8, !dbg !2560
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2561 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2565, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %2, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %3, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2569, metadata !DIExpression()), !dbg !2572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %1, metadata !2544, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2549, metadata !DIExpression()), !dbg !2579
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2579, !alias.scope !2573
  %6 = icmp eq i32 %1, 10, !dbg !2580
  br i1 %6, label %7, label %8, !dbg !2581

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2582, !noalias !2573
  unreachable, !dbg !2582

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2583, !tbaa !1639, !alias.scope !2573
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2585
  ret ptr %9, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2587 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %1, metadata !2592, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %0, metadata !2534, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %1, metadata !2535, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2596
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2536, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598), !dbg !2601
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2549, metadata !DIExpression()), !dbg !2604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2604, !alias.scope !2598
  %4 = icmp eq i32 %0, 10, !dbg !2605
  br i1 %4, label %5, label %6, !dbg !2606

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2607, !noalias !2598
  unreachable, !dbg !2607

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2608, !tbaa !1639, !alias.scope !2598
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2610
  ret ptr %7, !dbg !2611
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2612 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 %2, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 0, metadata !2565, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2567, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %2, metadata !2568, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2569, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2549, metadata !DIExpression()), !dbg !2630
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2630, !alias.scope !2624
  %5 = icmp eq i32 %0, 10, !dbg !2631
  br i1 %5, label %6, label %7, !dbg !2632

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2633, !noalias !2624
  unreachable, !dbg !2633

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2634, !tbaa !1639, !alias.scope !2624
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2636
  ret ptr %8, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2638 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %1, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %2, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2647
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2649, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 %2, metadata !1657, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 %2, metadata !1659, metadata !DIExpression()), !dbg !2651
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2653
  %6 = lshr i8 %2, 5, !dbg !2654
  %7 = zext i8 %6 to i64, !dbg !2654
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %8, metadata !1660, metadata !DIExpression()), !dbg !2651
  %9 = and i8 %2, 31, !dbg !2656
  %10 = zext i8 %9 to i32, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %10, metadata !1662, metadata !DIExpression()), !dbg !2651
  %11 = load i32, ptr %8, align 4, !dbg !2657, !tbaa !864
  %12 = lshr i32 %11, %10, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %12, metadata !1663, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2651
  %13 = and i32 %12, 1, !dbg !2659
  %14 = xor i32 %13, 1, !dbg !2659
  %15 = shl nuw i32 %14, %10, !dbg !2660
  %16 = xor i32 %15, %11, !dbg !2661
  store i32 %16, ptr %8, align 4, !dbg !2661, !tbaa !864
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2663
  ret ptr %17, !dbg !2664
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2665 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %1, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 -1, metadata !2643, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !2644, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2645, metadata !DIExpression()), !dbg !2675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2676, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !2677
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2679
  %5 = lshr i8 %1, 5, !dbg !2680
  %6 = zext i8 %5 to i64, !dbg !2680
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2681
  call void @llvm.dbg.value(metadata ptr %7, metadata !1660, metadata !DIExpression()), !dbg !2677
  %8 = and i8 %1, 31, !dbg !2682
  %9 = zext i8 %8 to i32, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %9, metadata !1662, metadata !DIExpression()), !dbg !2677
  %10 = load i32, ptr %7, align 4, !dbg !2683, !tbaa !864
  %11 = lshr i32 %10, %9, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %11, metadata !1663, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2677
  %12 = and i32 %11, 1, !dbg !2685
  %13 = xor i32 %12, 1, !dbg !2685
  %14 = shl nuw i32 %13, %9, !dbg !2686
  %15 = xor i32 %14, %10, !dbg !2687
  store i32 %15, ptr %7, align 4, !dbg !2687, !tbaa !864
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2688
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2689
  ret ptr %16, !dbg !2690
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2691 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !2670, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 -1, metadata !2643, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2645, metadata !DIExpression()), !dbg !2700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2701, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %2, metadata !1656, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2702
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %3, metadata !1660, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2702
  %4 = load i32, ptr %3, align 4, !dbg !2705, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %4, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2702
  %5 = or i32 %4, 67108864, !dbg !2706
  store i32 %5, ptr %3, align 4, !dbg !2706, !tbaa !864
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2708
  ret ptr %6, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2710 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %1, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2643, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 58, metadata !2644, metadata !DIExpression()), !dbg !2715
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2645, metadata !DIExpression()), !dbg !2718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2719, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2720
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2722
  call void @llvm.dbg.value(metadata ptr %4, metadata !1660, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2720
  %5 = load i32, ptr %4, align 4, !dbg !2723, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %5, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2720
  %6 = or i32 %5, 67108864, !dbg !2724
  store i32 %6, ptr %4, align 4, !dbg !2724, !tbaa !864
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2725
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2726
  ret ptr %7, !dbg !2727
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2728 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2734
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %1, metadata !2731, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %2, metadata !2732, metadata !DIExpression()), !dbg !2736
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2737
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2733, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %1, metadata !2544, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 0, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2739
  %5 = icmp eq i32 %1, 10, !dbg !2740
  br i1 %5, label %6, label %7, !dbg !2741

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2742, !noalias !2743
  unreachable, !dbg !2742

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2739
  store i32 %1, ptr %4, align 8, !dbg !2746, !tbaa.struct !2650
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2747
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %9, metadata !1660, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 26, metadata !1662, metadata !DIExpression()), !dbg !2747
  %10 = load i32, ptr %9, align 4, !dbg !2750, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %10, metadata !1663, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2747
  %11 = or i32 %10, 67108864, !dbg !2751
  store i32 %11, ptr %9, align 4, !dbg !2751, !tbaa !864
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2752
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2753
  ret ptr %12, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2755 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2759, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %1, metadata !2760, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %2, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %3, metadata !2762, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %1, metadata !2769, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %3, metadata !2771, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 -1, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2778, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2779
  store i32 10, ptr %5, align 8, !dbg !2781, !tbaa !1639
  %6 = icmp ne ptr %1, null, !dbg !2782
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2783
  br i1 %8, label %10, label %9, !dbg !2783

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2784
  unreachable, !dbg !2784

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2785
  store ptr %1, ptr %11, align 8, !dbg !2786, !tbaa !1710
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2787
  store ptr %2, ptr %12, align 8, !dbg !2788, !tbaa !1713
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2789
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2790
  ret ptr %13, !dbg !2791
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2765 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %1, metadata !2769, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %3, metadata !2771, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %4, metadata !2772, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2793
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2773, metadata !DIExpression()), !dbg !2794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2795, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !2796
  store i32 10, ptr %6, align 8, !dbg !2798, !tbaa !1639
  %7 = icmp ne ptr %1, null, !dbg !2799
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2800
  br i1 %9, label %11, label %10, !dbg !2800

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2801
  unreachable, !dbg !2801

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2802
  store ptr %1, ptr %12, align 8, !dbg !2803, !tbaa !1710
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2804
  store ptr %2, ptr %13, align 8, !dbg !2805, !tbaa !1713
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2806
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2807
  ret ptr %14, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2809 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %1, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %2, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 0, metadata !2759, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %0, metadata !2760, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %1, metadata !2761, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2770, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 -1, metadata !2772, metadata !DIExpression()), !dbg !2819
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2773, metadata !DIExpression()), !dbg !2822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2823, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %0, metadata !1697, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !2824
  store i32 10, ptr %4, align 8, !dbg !2826, !tbaa !1639
  %5 = icmp ne ptr %0, null, !dbg !2827
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2828
  br i1 %7, label %9, label %8, !dbg !2828

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2829
  unreachable, !dbg !2829

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2830
  store ptr %0, ptr %10, align 8, !dbg !2831, !tbaa !1710
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2832
  store ptr %1, ptr %11, align 8, !dbg !2833, !tbaa !1713
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2835
  ret ptr %12, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2837 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %1, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %2, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %3, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %1, metadata !2770, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %3, metadata !2772, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2773, metadata !DIExpression()), !dbg !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2850, !tbaa.struct !2650
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %0, metadata !1697, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !2851
  store i32 10, ptr %5, align 8, !dbg !2853, !tbaa !1639
  %6 = icmp ne ptr %0, null, !dbg !2854
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2855
  br i1 %8, label %10, label %9, !dbg !2855

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2856
  unreachable, !dbg !2856

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2857
  store ptr %0, ptr %11, align 8, !dbg !2858, !tbaa !1710
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2859
  store ptr %1, ptr %12, align 8, !dbg !2860, !tbaa !1713
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2861
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2862
  ret ptr %13, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %2, metadata !2870, metadata !DIExpression()), !dbg !2871
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2872
  ret ptr %4, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2874 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 0, metadata !2868, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %0, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()), !dbg !2881
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2883
  ret ptr %3, !dbg !2884
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2870, metadata !DIExpression()), !dbg !2892
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2894
  ret ptr %3, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 0, metadata !2868, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %0, metadata !2869, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 -1, metadata !2870, metadata !DIExpression()), !dbg !2904
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2906
  ret ptr %2, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2947, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %1, metadata !2948, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %2, metadata !2949, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %3, metadata !2950, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %4, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %5, metadata !2952, metadata !DIExpression()), !dbg !2953
  %7 = icmp eq ptr %1, null, !dbg !2954
  br i1 %7, label %10, label %8, !dbg !2956

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2957
  br label %12, !dbg !2957

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #38, !dbg !2958
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #38, !dbg !2959
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2959
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2960
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #38, !dbg !2961
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #38, !dbg !2961
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2962
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
  ], !dbg !2963

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #38, !dbg !2964
  %21 = load ptr, ptr %4, align 8, !dbg !2964, !tbaa !808
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2964
  br label %147, !dbg !2966

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #38, !dbg !2967
  %25 = load ptr, ptr %4, align 8, !dbg !2967, !tbaa !808
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2967
  %27 = load ptr, ptr %26, align 8, !dbg !2967, !tbaa !808
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2967
  br label %147, !dbg !2968

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #38, !dbg !2969
  %31 = load ptr, ptr %4, align 8, !dbg !2969, !tbaa !808
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2969
  %33 = load ptr, ptr %32, align 8, !dbg !2969, !tbaa !808
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2969
  %35 = load ptr, ptr %34, align 8, !dbg !2969, !tbaa !808
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2969
  br label %147, !dbg !2970

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #38, !dbg !2971
  %39 = load ptr, ptr %4, align 8, !dbg !2971, !tbaa !808
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2971
  %41 = load ptr, ptr %40, align 8, !dbg !2971, !tbaa !808
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2971
  %43 = load ptr, ptr %42, align 8, !dbg !2971, !tbaa !808
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2971
  %45 = load ptr, ptr %44, align 8, !dbg !2971, !tbaa !808
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2971
  br label %147, !dbg !2972

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #38, !dbg !2973
  %49 = load ptr, ptr %4, align 8, !dbg !2973, !tbaa !808
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2973
  %51 = load ptr, ptr %50, align 8, !dbg !2973, !tbaa !808
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2973
  %53 = load ptr, ptr %52, align 8, !dbg !2973, !tbaa !808
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2973
  %55 = load ptr, ptr %54, align 8, !dbg !2973, !tbaa !808
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2973
  %57 = load ptr, ptr %56, align 8, !dbg !2973, !tbaa !808
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2973
  br label %147, !dbg !2974

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #38, !dbg !2975
  %61 = load ptr, ptr %4, align 8, !dbg !2975, !tbaa !808
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2975
  %63 = load ptr, ptr %62, align 8, !dbg !2975, !tbaa !808
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2975
  %65 = load ptr, ptr %64, align 8, !dbg !2975, !tbaa !808
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2975
  %67 = load ptr, ptr %66, align 8, !dbg !2975, !tbaa !808
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2975
  %69 = load ptr, ptr %68, align 8, !dbg !2975, !tbaa !808
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2975
  %71 = load ptr, ptr %70, align 8, !dbg !2975, !tbaa !808
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2975
  br label %147, !dbg !2976

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #38, !dbg !2977
  %75 = load ptr, ptr %4, align 8, !dbg !2977, !tbaa !808
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2977
  %77 = load ptr, ptr %76, align 8, !dbg !2977, !tbaa !808
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2977
  %79 = load ptr, ptr %78, align 8, !dbg !2977, !tbaa !808
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2977
  %81 = load ptr, ptr %80, align 8, !dbg !2977, !tbaa !808
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2977
  %83 = load ptr, ptr %82, align 8, !dbg !2977, !tbaa !808
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2977
  %85 = load ptr, ptr %84, align 8, !dbg !2977, !tbaa !808
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2977
  %87 = load ptr, ptr %86, align 8, !dbg !2977, !tbaa !808
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2977
  br label %147, !dbg !2978

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #38, !dbg !2979
  %91 = load ptr, ptr %4, align 8, !dbg !2979, !tbaa !808
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2979
  %93 = load ptr, ptr %92, align 8, !dbg !2979, !tbaa !808
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2979
  %95 = load ptr, ptr %94, align 8, !dbg !2979, !tbaa !808
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2979
  %97 = load ptr, ptr %96, align 8, !dbg !2979, !tbaa !808
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2979
  %99 = load ptr, ptr %98, align 8, !dbg !2979, !tbaa !808
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2979
  %101 = load ptr, ptr %100, align 8, !dbg !2979, !tbaa !808
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2979
  %103 = load ptr, ptr %102, align 8, !dbg !2979, !tbaa !808
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2979
  %105 = load ptr, ptr %104, align 8, !dbg !2979, !tbaa !808
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2979
  br label %147, !dbg !2980

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #38, !dbg !2981
  %109 = load ptr, ptr %4, align 8, !dbg !2981, !tbaa !808
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2981
  %111 = load ptr, ptr %110, align 8, !dbg !2981, !tbaa !808
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2981
  %113 = load ptr, ptr %112, align 8, !dbg !2981, !tbaa !808
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2981
  %115 = load ptr, ptr %114, align 8, !dbg !2981, !tbaa !808
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2981
  %117 = load ptr, ptr %116, align 8, !dbg !2981, !tbaa !808
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2981
  %119 = load ptr, ptr %118, align 8, !dbg !2981, !tbaa !808
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2981
  %121 = load ptr, ptr %120, align 8, !dbg !2981, !tbaa !808
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2981
  %123 = load ptr, ptr %122, align 8, !dbg !2981, !tbaa !808
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2981
  %125 = load ptr, ptr %124, align 8, !dbg !2981, !tbaa !808
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2981
  br label %147, !dbg !2982

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #38, !dbg !2983
  %129 = load ptr, ptr %4, align 8, !dbg !2983, !tbaa !808
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2983
  %131 = load ptr, ptr %130, align 8, !dbg !2983, !tbaa !808
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2983
  %133 = load ptr, ptr %132, align 8, !dbg !2983, !tbaa !808
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2983
  %135 = load ptr, ptr %134, align 8, !dbg !2983, !tbaa !808
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2983
  %137 = load ptr, ptr %136, align 8, !dbg !2983, !tbaa !808
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2983
  %139 = load ptr, ptr %138, align 8, !dbg !2983, !tbaa !808
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2983
  %141 = load ptr, ptr %140, align 8, !dbg !2983, !tbaa !808
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2983
  %143 = load ptr, ptr %142, align 8, !dbg !2983, !tbaa !808
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2983
  %145 = load ptr, ptr %144, align 8, !dbg !2983, !tbaa !808
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2983
  br label %147, !dbg !2984

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2985
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2986 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !2996
  br label %6, !dbg !2997

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2999
  call void @llvm.dbg.value(metadata i64 %7, metadata !2995, metadata !DIExpression()), !dbg !2996
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3000
  %9 = load ptr, ptr %8, align 8, !dbg !3000, !tbaa !808
  %10 = icmp eq ptr %9, null, !dbg !3002
  %11 = add i64 %7, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %11, metadata !2995, metadata !DIExpression()), !dbg !2996
  br i1 %10, label %12, label %6, !dbg !3002, !llvm.loop !3004

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3006
  ret void, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3008 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3023, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %1, metadata !3024, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %2, metadata !3025, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %3, metadata !3026, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3029, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 0, metadata !3028, metadata !DIExpression()), !dbg !3031
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3028, metadata !DIExpression()), !dbg !3031
  %10 = icmp sgt i32 %9, -1, !dbg !3035
  br i1 %10, label %18, label %11, !dbg !3035

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3035
  store i32 %12, ptr %7, align 8, !dbg !3035
  %13 = icmp ult i32 %9, -7, !dbg !3035
  br i1 %13, label %14, label %18, !dbg !3035

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3035
  %16 = sext i32 %9 to i64, !dbg !3035
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3035
  br label %22, !dbg !3035

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3035
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3035
  store ptr %21, ptr %4, align 8, !dbg !3035
  br label %22, !dbg !3035

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3035
  %25 = load ptr, ptr %24, align 8, !dbg !3035
  store ptr %25, ptr %6, align 8, !dbg !3038, !tbaa !808
  %26 = icmp eq ptr %25, null, !dbg !3039
  br i1 %26, label %197, label %27, !dbg !3040

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 1, metadata !3028, metadata !DIExpression()), !dbg !3031
  %28 = icmp sgt i32 %23, -1, !dbg !3035
  br i1 %28, label %36, label %29, !dbg !3035

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3035
  store i32 %30, ptr %7, align 8, !dbg !3035
  %31 = icmp ult i32 %23, -7, !dbg !3035
  br i1 %31, label %32, label %36, !dbg !3035

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3035
  %34 = sext i32 %23 to i64, !dbg !3035
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3035
  br label %40, !dbg !3035

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3035
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3035
  store ptr %39, ptr %4, align 8, !dbg !3035
  br label %40, !dbg !3035

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3035
  %43 = load ptr, ptr %42, align 8, !dbg !3035
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3041
  store ptr %43, ptr %44, align 8, !dbg !3038, !tbaa !808
  %45 = icmp eq ptr %43, null, !dbg !3039
  br i1 %45, label %197, label %46, !dbg !3040

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 2, metadata !3028, metadata !DIExpression()), !dbg !3031
  %47 = icmp sgt i32 %41, -1, !dbg !3035
  br i1 %47, label %55, label %48, !dbg !3035

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3035
  store i32 %49, ptr %7, align 8, !dbg !3035
  %50 = icmp ult i32 %41, -7, !dbg !3035
  br i1 %50, label %51, label %55, !dbg !3035

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3035
  %53 = sext i32 %41 to i64, !dbg !3035
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3035
  br label %59, !dbg !3035

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3035
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3035
  store ptr %58, ptr %4, align 8, !dbg !3035
  br label %59, !dbg !3035

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3035
  %62 = load ptr, ptr %61, align 8, !dbg !3035
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3041
  store ptr %62, ptr %63, align 8, !dbg !3038, !tbaa !808
  %64 = icmp eq ptr %62, null, !dbg !3039
  br i1 %64, label %197, label %65, !dbg !3040

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 3, metadata !3028, metadata !DIExpression()), !dbg !3031
  %66 = icmp sgt i32 %60, -1, !dbg !3035
  br i1 %66, label %74, label %67, !dbg !3035

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3035
  store i32 %68, ptr %7, align 8, !dbg !3035
  %69 = icmp ult i32 %60, -7, !dbg !3035
  br i1 %69, label %70, label %74, !dbg !3035

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3035
  %72 = sext i32 %60 to i64, !dbg !3035
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3035
  br label %78, !dbg !3035

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3035
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3035
  store ptr %77, ptr %4, align 8, !dbg !3035
  br label %78, !dbg !3035

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3035
  %81 = load ptr, ptr %80, align 8, !dbg !3035
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3041
  store ptr %81, ptr %82, align 8, !dbg !3038, !tbaa !808
  %83 = icmp eq ptr %81, null, !dbg !3039
  br i1 %83, label %197, label %84, !dbg !3040

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 4, metadata !3028, metadata !DIExpression()), !dbg !3031
  %85 = icmp sgt i32 %79, -1, !dbg !3035
  br i1 %85, label %93, label %86, !dbg !3035

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3035
  store i32 %87, ptr %7, align 8, !dbg !3035
  %88 = icmp ult i32 %79, -7, !dbg !3035
  br i1 %88, label %89, label %93, !dbg !3035

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3035
  %91 = sext i32 %79 to i64, !dbg !3035
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3035
  br label %97, !dbg !3035

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3035
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3035
  store ptr %96, ptr %4, align 8, !dbg !3035
  br label %97, !dbg !3035

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3035
  %100 = load ptr, ptr %99, align 8, !dbg !3035
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3041
  store ptr %100, ptr %101, align 8, !dbg !3038, !tbaa !808
  %102 = icmp eq ptr %100, null, !dbg !3039
  br i1 %102, label %197, label %103, !dbg !3040

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 5, metadata !3028, metadata !DIExpression()), !dbg !3031
  %104 = icmp sgt i32 %98, -1, !dbg !3035
  br i1 %104, label %112, label %105, !dbg !3035

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3035
  store i32 %106, ptr %7, align 8, !dbg !3035
  %107 = icmp ult i32 %98, -7, !dbg !3035
  br i1 %107, label %108, label %112, !dbg !3035

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3035
  %110 = sext i32 %98 to i64, !dbg !3035
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3035
  br label %116, !dbg !3035

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3035
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3035
  store ptr %115, ptr %4, align 8, !dbg !3035
  br label %116, !dbg !3035

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3035
  %119 = load ptr, ptr %118, align 8, !dbg !3035
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3041
  store ptr %119, ptr %120, align 8, !dbg !3038, !tbaa !808
  %121 = icmp eq ptr %119, null, !dbg !3039
  br i1 %121, label %197, label %122, !dbg !3040

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 6, metadata !3028, metadata !DIExpression()), !dbg !3031
  %123 = icmp sgt i32 %117, -1, !dbg !3035
  br i1 %123, label %131, label %124, !dbg !3035

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3035
  store i32 %125, ptr %7, align 8, !dbg !3035
  %126 = icmp ult i32 %117, -7, !dbg !3035
  br i1 %126, label %127, label %131, !dbg !3035

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3035
  %129 = sext i32 %117 to i64, !dbg !3035
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3035
  br label %135, !dbg !3035

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3035
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3035
  store ptr %134, ptr %4, align 8, !dbg !3035
  br label %135, !dbg !3035

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3035
  %138 = load ptr, ptr %137, align 8, !dbg !3035
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3041
  store ptr %138, ptr %139, align 8, !dbg !3038, !tbaa !808
  %140 = icmp eq ptr %138, null, !dbg !3039
  br i1 %140, label %197, label %141, !dbg !3040

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 7, metadata !3028, metadata !DIExpression()), !dbg !3031
  %142 = icmp sgt i32 %136, -1, !dbg !3035
  br i1 %142, label %150, label %143, !dbg !3035

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3035
  store i32 %144, ptr %7, align 8, !dbg !3035
  %145 = icmp ult i32 %136, -7, !dbg !3035
  br i1 %145, label %146, label %150, !dbg !3035

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3035
  %148 = sext i32 %136 to i64, !dbg !3035
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3035
  br label %154, !dbg !3035

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3035
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3035
  store ptr %153, ptr %4, align 8, !dbg !3035
  br label %154, !dbg !3035

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3035
  %157 = load ptr, ptr %156, align 8, !dbg !3035
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3041
  store ptr %157, ptr %158, align 8, !dbg !3038, !tbaa !808
  %159 = icmp eq ptr %157, null, !dbg !3039
  br i1 %159, label %197, label %160, !dbg !3040

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 8, metadata !3028, metadata !DIExpression()), !dbg !3031
  %161 = icmp sgt i32 %155, -1, !dbg !3035
  br i1 %161, label %169, label %162, !dbg !3035

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3035
  store i32 %163, ptr %7, align 8, !dbg !3035
  %164 = icmp ult i32 %155, -7, !dbg !3035
  br i1 %164, label %165, label %169, !dbg !3035

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3035
  %167 = sext i32 %155 to i64, !dbg !3035
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3035
  br label %173, !dbg !3035

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3035
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3035
  store ptr %172, ptr %4, align 8, !dbg !3035
  br label %173, !dbg !3035

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3035
  %176 = load ptr, ptr %175, align 8, !dbg !3035
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3041
  store ptr %176, ptr %177, align 8, !dbg !3038, !tbaa !808
  %178 = icmp eq ptr %176, null, !dbg !3039
  br i1 %178, label %197, label %179, !dbg !3040

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 9, metadata !3028, metadata !DIExpression()), !dbg !3031
  %180 = icmp sgt i32 %174, -1, !dbg !3035
  br i1 %180, label %188, label %181, !dbg !3035

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3035
  store i32 %182, ptr %7, align 8, !dbg !3035
  %183 = icmp ult i32 %174, -7, !dbg !3035
  br i1 %183, label %184, label %188, !dbg !3035

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3035
  %186 = sext i32 %174 to i64, !dbg !3035
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3035
  br label %191, !dbg !3035

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3035
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3035
  store ptr %190, ptr %4, align 8, !dbg !3035
  br label %191, !dbg !3035

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3035
  %193 = load ptr, ptr %192, align 8, !dbg !3035
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3041
  store ptr %193, ptr %194, align 8, !dbg !3038, !tbaa !808
  %195 = icmp eq ptr %193, null, !dbg !3039
  %196 = select i1 %195, i64 9, i64 10, !dbg !3040
  br label %197, !dbg !3040

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3042
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3044
  ret void, !dbg !3044
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3045 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %3, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3053, metadata !DIExpression()), !dbg !3056
  call void @llvm.va_start(ptr nonnull %5), !dbg !3057
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3058, !tbaa.struct !1239
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3058
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3058
  call void @llvm.va_end(ptr nonnull %5), !dbg !3059
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3060
  ret void, !dbg !3060
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3061 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3062, !tbaa !808
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !3062
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #38, !dbg !3063
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #38, !dbg !3063
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !3064
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !3064
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !3065
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.96) #38, !dbg !3065
  ret void, !dbg !3066
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3067 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %2, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %2, metadata !3080, metadata !DIExpression()), !dbg !3081
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3083
  call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3089
  %5 = icmp eq ptr %4, null, !dbg !3091
  br i1 %5, label %6, label %7, !dbg !3093

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3094
  unreachable, !dbg !3094

7:                                                ; preds = %3
  ret ptr %4, !dbg !3095
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3077 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %2, metadata !3080, metadata !DIExpression()), !dbg !3096
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3098
  %5 = icmp eq ptr %4, null, !dbg !3100
  br i1 %5, label %6, label %7, !dbg !3101

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3102
  unreachable, !dbg !3102

7:                                                ; preds = %3
  ret ptr %4, !dbg !3103
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3104 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3108, metadata !DIExpression()), !dbg !3109
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3111
  %3 = icmp eq ptr %2, null, !dbg !3113
  br i1 %3, label %4, label %5, !dbg !3114

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3115
  unreachable, !dbg !3115

5:                                                ; preds = %1
  ret ptr %2, !dbg !3116
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3117 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3118 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3130
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3131
  %3 = icmp eq ptr %2, null, !dbg !3133
  br i1 %3, label %4, label %5, !dbg !3134

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3135
  unreachable, !dbg !3135

5:                                                ; preds = %1
  ret ptr %2, !dbg !3136
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %0, metadata !3108, metadata !DIExpression()), !dbg !3143
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3145
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3146
  %3 = icmp eq ptr %2, null, !dbg !3148
  br i1 %3, label %4, label %5, !dbg !3149

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3150
  unreachable, !dbg !3150

5:                                                ; preds = %1
  ret ptr %2, !dbg !3151
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3152 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3159, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3164
  %3 = icmp eq i64 %1, 0, !dbg !3166
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3166
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3167
  call void @llvm.dbg.value(metadata ptr %5, metadata !3084, metadata !DIExpression()), !dbg !3168
  %6 = icmp eq ptr %5, null, !dbg !3170
  br i1 %6, label %7, label %8, !dbg !3171

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3172
  unreachable, !dbg !3172

8:                                                ; preds = %2
  ret ptr %5, !dbg !3173
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3174 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3175 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata ptr %0, metadata !3159, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3188
  %3 = icmp eq i64 %1, 0, !dbg !3190
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3190
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3191
  call void @llvm.dbg.value(metadata ptr %5, metadata !3084, metadata !DIExpression()), !dbg !3192
  %6 = icmp eq ptr %5, null, !dbg !3194
  br i1 %6, label %7, label %8, !dbg !3195

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3196
  unreachable, !dbg !3196

8:                                                ; preds = %2
  ret ptr %5, !dbg !3197
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3198 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %2, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %0, metadata !3206, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %2, metadata !3210, metadata !DIExpression()), !dbg !3211
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq ptr %4, null, !dbg !3216
  br i1 %5, label %6, label %7, !dbg !3217

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3218
  unreachable, !dbg !3218

7:                                                ; preds = %3
  ret ptr %4, !dbg !3219
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr null, metadata !3076, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3227
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3230
  %4 = icmp eq ptr %3, null, !dbg !3232
  br i1 %4, label %5, label %6, !dbg !3233

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3234
  unreachable, !dbg !3234

6:                                                ; preds = %2
  ret ptr %3, !dbg !3235
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3236 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3241, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr null, metadata !3202, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %0, metadata !3203, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr null, metadata !3206, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3209, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3245
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3248
  %4 = icmp eq ptr %3, null, !dbg !3250
  br i1 %4, label %5, label %6, !dbg !3251

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3252
  unreachable, !dbg !3252

6:                                                ; preds = %2
  ret ptr %3, !dbg !3253
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3254 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %1, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %0, metadata !726, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 1, metadata !728, metadata !DIExpression()), !dbg !3261
  %3 = load i64, ptr %1, align 8, !dbg !3263, !tbaa !2363
  call void @llvm.dbg.value(metadata i64 %3, metadata !729, metadata !DIExpression()), !dbg !3261
  %4 = icmp eq ptr %0, null, !dbg !3264
  br i1 %4, label %5, label %8, !dbg !3266

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3267
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3270
  br label %15, !dbg !3270

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3271
  %10 = add nuw i64 %9, 1, !dbg !3271
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3271
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3271
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %13, metadata !729, metadata !DIExpression()), !dbg !3261
  br i1 %12, label %14, label %15, !dbg !3274

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3275
  unreachable, !dbg !3275

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3261
  call void @llvm.dbg.value(metadata i64 %16, metadata !729, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %16, metadata !3079, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 1, metadata !3080, metadata !DIExpression()), !dbg !3276
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %17, metadata !3084, metadata !DIExpression()), !dbg !3279
  %18 = icmp eq ptr %17, null, !dbg !3281
  br i1 %18, label %19, label %20, !dbg !3282

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3283
  unreachable, !dbg !3283

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !726, metadata !DIExpression()), !dbg !3261
  store i64 %16, ptr %1, align 8, !dbg !3284, !tbaa !2363
  ret ptr %17, !dbg !3285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !721 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !726, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %2, metadata !728, metadata !DIExpression()), !dbg !3286
  %4 = load i64, ptr %1, align 8, !dbg !3287, !tbaa !2363
  call void @llvm.dbg.value(metadata i64 %4, metadata !729, metadata !DIExpression()), !dbg !3286
  %5 = icmp eq ptr %0, null, !dbg !3288
  br i1 %5, label %6, label %13, !dbg !3289

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3290
  br i1 %7, label %8, label %20, !dbg !3291

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %9, metadata !729, metadata !DIExpression()), !dbg !3286
  %10 = icmp ugt i64 %2, 128, !dbg !3294
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %12, metadata !729, metadata !DIExpression()), !dbg !3286
  br label %20, !dbg !3296

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3297
  %15 = add nuw i64 %14, 1, !dbg !3297
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3297
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3297
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %18, metadata !729, metadata !DIExpression()), !dbg !3286
  br i1 %17, label %19, label %20, !dbg !3298

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3299
  unreachable, !dbg !3299

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3286
  call void @llvm.dbg.value(metadata i64 %21, metadata !729, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %21, metadata !3079, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %2, metadata !3080, metadata !DIExpression()), !dbg !3300
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3302
  call void @llvm.dbg.value(metadata ptr %22, metadata !3084, metadata !DIExpression()), !dbg !3303
  %23 = icmp eq ptr %22, null, !dbg !3305
  br i1 %23, label %24, label %25, !dbg !3306

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3307
  unreachable, !dbg !3307

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !726, metadata !DIExpression()), !dbg !3286
  store i64 %21, ptr %1, align 8, !dbg !3308, !tbaa !2363
  ret ptr %22, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !733 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !741, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %1, metadata !742, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !743, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %3, metadata !744, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %4, metadata !745, metadata !DIExpression()), !dbg !3310
  %6 = load i64, ptr %1, align 8, !dbg !3311, !tbaa !2363
  call void @llvm.dbg.value(metadata i64 %6, metadata !746, metadata !DIExpression()), !dbg !3310
  %7 = ashr i64 %6, 1, !dbg !3312
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3312
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3312
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %10, metadata !747, metadata !DIExpression()), !dbg !3310
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %11, metadata !747, metadata !DIExpression()), !dbg !3310
  %12 = icmp sgt i64 %3, -1, !dbg !3315
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3317
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %15, metadata !747, metadata !DIExpression()), !dbg !3310
  %16 = icmp slt i64 %4, 0, !dbg !3318
  br i1 %16, label %17, label %30, !dbg !3318

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3318
  br i1 %18, label %19, label %24, !dbg !3318

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3318
  %21 = udiv i64 9223372036854775807, %20, !dbg !3318
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3318
  br i1 %23, label %46, label %43, !dbg !3318

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3318
  br i1 %25, label %43, label %26, !dbg !3318

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3318
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3318
  %29 = icmp ult i64 %28, %15, !dbg !3318
  br i1 %29, label %46, label %43, !dbg !3318

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3318
  br i1 %31, label %43, label %32, !dbg !3318

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3318
  br i1 %33, label %34, label %40, !dbg !3318

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3318
  br i1 %35, label %43, label %36, !dbg !3318

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3318
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3318
  %39 = icmp ult i64 %38, %4, !dbg !3318
  br i1 %39, label %46, label %43, !dbg !3318

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3318
  br i1 %42, label %46, label %43, !dbg !3318

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !748, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3310
  %44 = mul i64 %15, %4, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %44, metadata !748, metadata !DIExpression()), !dbg !3310
  %45 = icmp slt i64 %44, 128, !dbg !3318
  br i1 %45, label %46, label %52, !dbg !3318

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !749, metadata !DIExpression()), !dbg !3310
  %48 = sdiv i64 %47, %4, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %48, metadata !747, metadata !DIExpression()), !dbg !3310
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %51, metadata !748, metadata !DIExpression()), !dbg !3310
  br label %52, !dbg !3323

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3310
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3310
  call void @llvm.dbg.value(metadata i64 %54, metadata !748, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %53, metadata !747, metadata !DIExpression()), !dbg !3310
  %55 = icmp eq ptr %0, null, !dbg !3324
  br i1 %55, label %56, label %57, !dbg !3326

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3327, !tbaa !2363
  br label %57, !dbg !3328

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3329
  %59 = icmp slt i64 %58, %2, !dbg !3331
  br i1 %59, label %60, label %97, !dbg !3332

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3333
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3333
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %63, metadata !747, metadata !DIExpression()), !dbg !3310
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3334
  br i1 %66, label %96, label %67, !dbg !3334

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3335

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3335
  br i1 %69, label %70, label %75, !dbg !3335

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3335
  %72 = udiv i64 9223372036854775807, %71, !dbg !3335
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3335
  br i1 %74, label %96, label %94, !dbg !3335

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3335
  br i1 %76, label %94, label %77, !dbg !3335

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3335
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3335
  %80 = icmp ult i64 %79, %63, !dbg !3335
  br i1 %80, label %96, label %94, !dbg !3335

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3335
  br i1 %82, label %94, label %83, !dbg !3335

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3335
  br i1 %84, label %85, label %91, !dbg !3335

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3335
  br i1 %86, label %94, label %87, !dbg !3335

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3335
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3335
  %90 = icmp ult i64 %89, %4, !dbg !3335
  br i1 %90, label %96, label %94, !dbg !3335

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3335
  br i1 %93, label %96, label %94, !dbg !3335

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !748, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3310
  %95 = mul i64 %63, %4, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %95, metadata !748, metadata !DIExpression()), !dbg !3310
  br label %97, !dbg !3336

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !3337
  unreachable, !dbg !3337

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3310
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3310
  call void @llvm.dbg.value(metadata i64 %99, metadata !748, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %98, metadata !747, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %0, metadata !3156, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %99, metadata !3157, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata ptr %0, metadata !3159, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %99, metadata !3163, metadata !DIExpression()), !dbg !3340
  %100 = icmp eq i64 %99, 0, !dbg !3342
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3342
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %102, metadata !3084, metadata !DIExpression()), !dbg !3344
  %103 = icmp eq ptr %102, null, !dbg !3346
  br i1 %103, label %104, label %105, !dbg !3347

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !3348
  unreachable, !dbg !3348

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !741, metadata !DIExpression()), !dbg !3310
  store i64 %98, ptr %1, align 8, !dbg !3349, !tbaa !2363
  ret ptr %102, !dbg !3350
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3351 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %0, metadata !3355, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 1, metadata !3358, metadata !DIExpression()), !dbg !3359
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3362
  %3 = icmp eq ptr %2, null, !dbg !3364
  br i1 %3, label %4, label %5, !dbg !3365

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3366
  unreachable, !dbg !3366

5:                                                ; preds = %1
  ret ptr %2, !dbg !3367
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3368 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3356 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3355, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3369
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3370
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3371
  %4 = icmp eq ptr %3, null, !dbg !3373
  br i1 %4, label %5, label %6, !dbg !3374

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3375
  unreachable, !dbg !3375

6:                                                ; preds = %2
  ret ptr %3, !dbg !3376
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3377 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 1, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 1, metadata !3390, metadata !DIExpression()), !dbg !3391
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3393
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3394
  %3 = icmp eq ptr %2, null, !dbg !3396
  br i1 %3, label %4, label %5, !dbg !3397

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3398
  unreachable, !dbg !3398

5:                                                ; preds = %1
  ret ptr %2, !dbg !3399
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3382 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3401
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3404
  %4 = icmp eq ptr %3, null, !dbg !3406
  br i1 %4, label %5, label %6, !dbg !3407

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3408
  unreachable, !dbg !3408

6:                                                ; preds = %2
  ret ptr %3, !dbg !3409
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3417
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3420
  %4 = icmp eq ptr %3, null, !dbg !3422
  br i1 %4, label %5, label %6, !dbg !3423

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3424
  unreachable, !dbg !3424

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3425, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3433
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3435
  ret ptr %3, !dbg !3436
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3437 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3446
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3449
  %4 = icmp eq ptr %3, null, !dbg !3451
  br i1 %4, label %5, label %6, !dbg !3452

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3453
  unreachable, !dbg !3453

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3425, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3456
  ret ptr %3, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3458 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()), !dbg !3465
  %3 = add nsw i64 %1, 1, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %3, metadata !3122, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !3124, metadata !DIExpression()), !dbg !3469
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3471
  call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3472
  %5 = icmp eq ptr %4, null, !dbg !3474
  br i1 %5, label %6, label %7, !dbg !3475

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3476
  unreachable, !dbg !3476

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3464, metadata !DIExpression()), !dbg !3465
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3477
  store i8 0, ptr %8, align 1, !dbg !3478, !tbaa !873
  call void @llvm.dbg.value(metadata ptr %4, metadata !3425, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3481
  ret ptr %4, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3483 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3487
  %3 = add i64 %2, 1, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %3, metadata !3415, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %3, metadata !3108, metadata !DIExpression()), !dbg !3491
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3493
  call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3494
  %5 = icmp eq ptr %4, null, !dbg !3496
  br i1 %5, label %6, label %7, !dbg !3497

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3498
  unreachable, !dbg !3498

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3425, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %3, metadata !3432, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3501
  ret ptr %4, !dbg !3502
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3503 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3507, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %1, metadata !3505, metadata !DIExpression()), !dbg !3508
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.107, ptr noundef nonnull @.str.2.108, i32 noundef 5) #38, !dbg !3507
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.109, ptr noundef %2) #38, !dbg !3507
  %3 = icmp eq i32 %1, 0, !dbg !3507
  tail call void @llvm.assume(i1 %3), !dbg !3507
  tail call void @abort() #40, !dbg !3509
  unreachable, !dbg !3509
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @xnanosleep(double noundef %0) local_unnamed_addr #10 !dbg !3510 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !3514, metadata !DIExpression()), !dbg !3522
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3523
  br i1 %3, label %4, label %6, !dbg !3525

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #41, !dbg !3522
  br label %11, !dbg !3525

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #38, !dbg !3526
  %8 = tail call ptr @__errno_location() #41, !dbg !3528
  %9 = load i32, ptr %8, align 4, !dbg !3528, !tbaa !864
  %10 = icmp eq i32 %9, 4, !dbg !3529
  br i1 %10, label %6, label %11, !dbg !3526, !llvm.loop !3530

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %5, %4 ], [ %8, %6 ], !dbg !3522
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #38, !dbg !3533
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3515, metadata !DIExpression()), !dbg !3534
  %13 = tail call [2 x i64] @dtotimespec(double noundef %0) #41, !dbg !3535
  %14 = extractvalue [2 x i64] %13, 0, !dbg !3535
  store i64 %14, ptr %2, align 8, !dbg !3535
  %15 = extractvalue [2 x i64] %13, 1, !dbg !3535
  %16 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1, !dbg !3535
  store i64 %15, ptr %16, align 8, !dbg !3535
  store i32 0, ptr %12, align 4, !dbg !3536, !tbaa !864
  %17 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #38, !dbg !3540
  %18 = icmp eq i32 %17, 0, !dbg !3542
  br i1 %18, label %24, label %19, !dbg !3543

19:                                               ; preds = %11, %21
  %20 = load i32, ptr %12, align 4, !dbg !3544, !tbaa !864
  switch i32 %20, label %24 [
    i32 4, label %21
    i32 0, label %21
  ], !dbg !3546

21:                                               ; preds = %19, %19
  store i32 0, ptr %12, align 4, !dbg !3536, !tbaa !864
  %22 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #38, !dbg !3540
  %23 = icmp eq i32 %22, 0, !dbg !3542
  br i1 %23, label %24, label %19, !dbg !3543, !llvm.loop !3547

24:                                               ; preds = %19, %21, %11
  %25 = phi i32 [ 0, %11 ], [ 0, %21 ], [ -1, %19 ], !dbg !3522
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #38, !dbg !3550
  ret i32 %25, !dbg !3550
}

declare !dbg !3551 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr %1, metadata !3559, metadata !DIExpression()), !dbg !3562
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3563, !tbaa !808
  %4 = icmp eq ptr %3, null, !dbg !3563
  br i1 %4, label %5, label %7, !dbg !3569

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.114, ptr noundef null) #38, !dbg !3570
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !3571, !tbaa !808
  br label %7, !dbg !3572

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3573, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %8, metadata !3561, metadata !DIExpression()), !dbg !3562
  %9 = icmp eq ptr %8, null, !dbg !3574
  br i1 %9, label %10, label %13, !dbg !3576

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !3577
  br i1 %11, label %15, label %12, !dbg !3580

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !3581, !tbaa !808
  br label %15, !dbg !3582

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #38, !dbg !3583
  call void @llvm.dbg.value(metadata double %14, metadata !3560, metadata !DIExpression()), !dbg !3562
  br label %15, !dbg !3584

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3562
  ret double %16, !dbg !3585
}

; Function Attrs: nounwind
declare !dbg !3586 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3589 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3592 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3630, metadata !DIExpression()), !dbg !3635
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3636
  call void @llvm.dbg.value(metadata i1 poison, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3640
  %3 = load i32, ptr %0, align 8, !dbg !3642, !tbaa !3643
  %4 = and i32 %3, 32, !dbg !3644
  %5 = icmp eq i32 %4, 0, !dbg !3644
  call void @llvm.dbg.value(metadata i1 %5, metadata !3633, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3635
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3645
  %7 = icmp eq i32 %6, 0, !dbg !3646
  call void @llvm.dbg.value(metadata i1 %7, metadata !3634, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3635
  br i1 %5, label %8, label %18, !dbg !3647

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3649
  call void @llvm.dbg.value(metadata i1 %9, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3635
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3650
  %11 = xor i1 %7, true, !dbg !3650
  %12 = sext i1 %11 to i32, !dbg !3650
  br i1 %10, label %21, label %13, !dbg !3650

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3651
  %15 = load i32, ptr %14, align 4, !dbg !3651, !tbaa !864
  %16 = icmp ne i32 %15, 9, !dbg !3652
  %17 = sext i1 %16 to i32, !dbg !3653
  br label %21, !dbg !3653

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3654

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3656
  store i32 0, ptr %20, align 4, !dbg !3658, !tbaa !864
  br label %21, !dbg !3656

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3635
  ret i32 %22, !dbg !3659
}

; Function Attrs: nounwind
declare !dbg !3660 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #35 !dbg !3664 {
  call void @llvm.dbg.value(metadata double %0, metadata !3672, metadata !DIExpression()), !dbg !3679
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3680
  br i1 %2, label %3, label %27, !dbg !3681

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3682
  br i1 %4, label %5, label %27, !dbg !3683

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %6, metadata !3673, metadata !DIExpression()), !dbg !3685
  %7 = sitofp i64 %6 to double, !dbg !3686
  %8 = fsub double %0, %7, !dbg !3687
  %9 = fmul double %8, 1.000000e+09, !dbg !3688
  call void @llvm.dbg.value(metadata double %9, metadata !3677, metadata !DIExpression()), !dbg !3685
  %10 = fptosi double %9 to i64, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %10, metadata !3678, metadata !DIExpression()), !dbg !3685
  %11 = sitofp i64 %10 to double, !dbg !3690
  %12 = fcmp ogt double %9, %11, !dbg !3691
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %14, metadata !3678, metadata !DIExpression()), !dbg !3685
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !3693
  %17 = add nsw i64 %16, %6, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %17, metadata !3673, metadata !DIExpression()), !dbg !3685
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  call void @llvm.dbg.value(metadata i64 %19, metadata !3678, metadata !DIExpression()), !dbg !3685
  %20 = icmp slt i64 %19, 0, !dbg !3695
  %21 = add nsw i64 %19, 1000000000, !dbg !3697
  %22 = ashr i64 %19, 63, !dbg !3697
  %23 = add nsw i64 %17, %22, !dbg !3697
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %24, metadata !3678, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %23, metadata !3673, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %23, metadata !3698, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %24, metadata !3703, metadata !DIExpression()), !dbg !3704
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !3706
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !3706
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !3707
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3708 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 0, metadata !3747, metadata !DIExpression()), !dbg !3750
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %2, metadata !3748, metadata !DIExpression()), !dbg !3750
  %3 = icmp slt i32 %2, 0, !dbg !3752
  br i1 %3, label %4, label %6, !dbg !3754

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3755
  br label %24, !dbg !3756

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3757
  %8 = icmp eq i32 %7, 0, !dbg !3757
  br i1 %8, label %13, label %9, !dbg !3759

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3760
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3761
  %12 = icmp eq i64 %11, -1, !dbg !3762
  br i1 %12, label %16, label %13, !dbg !3763

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3764
  %15 = icmp eq i32 %14, 0, !dbg !3764
  br i1 %15, label %16, label %18, !dbg !3765

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()), !dbg !3750
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %17, metadata !3749, metadata !DIExpression()), !dbg !3750
  br label %24, !dbg !3767

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3768
  %20 = load i32, ptr %19, align 4, !dbg !3768, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %20, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()), !dbg !3750
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %21, metadata !3749, metadata !DIExpression()), !dbg !3750
  %22 = icmp eq i32 %20, 0, !dbg !3769
  br i1 %22, label %24, label %23, !dbg !3767

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3771, !tbaa !864
  call void @llvm.dbg.value(metadata i32 -1, metadata !3749, metadata !DIExpression()), !dbg !3750
  br label %24, !dbg !3773

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3750
  ret i32 %25, !dbg !3774
}

; Function Attrs: nofree nounwind
declare !dbg !3775 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3776 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3777 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3778 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3820
  %2 = icmp eq ptr %0, null, !dbg !3821
  br i1 %2, label %6, label %3, !dbg !3823

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3824
  %5 = icmp eq i32 %4, 0, !dbg !3824
  br i1 %5, label %6, label %8, !dbg !3825

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3826
  br label %16, !dbg !3827

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3828, metadata !DIExpression()), !dbg !3833
  %9 = load i32, ptr %0, align 8, !dbg !3835, !tbaa !3643
  %10 = and i32 %9, 256, !dbg !3837
  %11 = icmp eq i32 %10, 0, !dbg !3837
  br i1 %11, label %14, label %12, !dbg !3838

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3839
  br label %14, !dbg !3839

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3840
  br label %16, !dbg !3841

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3820
  ret i32 %17, !dbg !3842
}

; Function Attrs: nofree nounwind
declare !dbg !3843 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3883, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3884, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 %2, metadata !3885, metadata !DIExpression()), !dbg !3889
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3890
  %5 = load ptr, ptr %4, align 8, !dbg !3890, !tbaa !3891
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3892
  %7 = load ptr, ptr %6, align 8, !dbg !3892, !tbaa !3893
  %8 = icmp eq ptr %5, %7, !dbg !3894
  br i1 %8, label %9, label %27, !dbg !3895

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3896
  %11 = load ptr, ptr %10, align 8, !dbg !3896, !tbaa !1354
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3897
  %13 = load ptr, ptr %12, align 8, !dbg !3897, !tbaa !3898
  %14 = icmp eq ptr %11, %13, !dbg !3899
  br i1 %14, label %15, label %27, !dbg !3900

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3901
  %17 = load ptr, ptr %16, align 8, !dbg !3901, !tbaa !3902
  %18 = icmp eq ptr %17, null, !dbg !3903
  br i1 %18, label %19, label %27, !dbg !3904

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3905
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %21, metadata !3886, metadata !DIExpression()), !dbg !3907
  %22 = icmp eq i64 %21, -1, !dbg !3908
  br i1 %22, label %29, label %23, !dbg !3910

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3911, !tbaa !3643
  %25 = and i32 %24, -17, !dbg !3911
  store i32 %25, ptr %0, align 8, !dbg !3911, !tbaa !3643
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3912
  store i64 %21, ptr %26, align 8, !dbg !3913, !tbaa !3914
  br label %29, !dbg !3915

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3916
  br label %29, !dbg !3917

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3889
  ret i32 %30, !dbg !3918
}

; Function Attrs: nofree nounwind
declare !dbg !3919 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3922 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3927, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %1, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %3, metadata !3930, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq ptr %1, null, !dbg !3933
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3935
  %7 = select i1 %5, ptr @.str.127, ptr %1, !dbg !3935
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %8, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %7, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %6, metadata !3927, metadata !DIExpression()), !dbg !3932
  %9 = icmp eq ptr %3, null, !dbg !3936
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %10, metadata !3930, metadata !DIExpression()), !dbg !3932
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %11, metadata !3931, metadata !DIExpression()), !dbg !3932
  %12 = icmp ult i64 %11, -3, !dbg !3940
  br i1 %12, label %13, label %17, !dbg !3942

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3943
  %15 = icmp eq i32 %14, 0, !dbg !3943
  br i1 %15, label %16, label %29, !dbg !3944

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3945, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr %10, metadata !3952, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3955, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 8, metadata !3956, metadata !DIExpression()), !dbg !3957
  store i64 0, ptr %10, align 1, !dbg !3959
  br label %29, !dbg !3960

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3961
  br i1 %18, label %19, label %20, !dbg !3963

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3964
  unreachable, !dbg !3964

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3965

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !3967
  br i1 %23, label %29, label %24, !dbg !3968

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3969
  br i1 %25, label %29, label %26, !dbg !3972

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3973, !tbaa !873
  %28 = zext i8 %27 to i32, !dbg !3974
  store i32 %28, ptr %6, align 4, !dbg !3975, !tbaa !864
  br label %29, !dbg !3976

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3932
  ret i64 %30, !dbg !3977
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3978 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_nanosleep(ptr nocapture noundef nonnull readonly %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3984 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3995, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata ptr %1, metadata !3996, metadata !DIExpression()), !dbg !4004
  %4 = getelementptr inbounds %struct.timespec, ptr %0, i64 0, i32 1, !dbg !4005
  %5 = load i64, ptr %4, align 8, !dbg !4005, !tbaa !4007
  %6 = icmp ugt i64 %5, 999999999, !dbg !4009
  br i1 %6, label %7, label %9, !dbg !4009

7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #41, !dbg !4010
  store i32 22, ptr %8, align 4, !dbg !4012, !tbaa !864
  br label %31, !dbg !4013

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !3997, metadata !DIExpression()), !dbg !4014
  %10 = load i64, ptr %0, align 8, !dbg !4015, !tbaa !4016
  call void @llvm.dbg.value(metadata i64 %10, metadata !4000, metadata !DIExpression()), !dbg !4014
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38, !dbg !4017
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4001, metadata !DIExpression()), !dbg !4018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !4019, !tbaa.struct !4020
  call void @llvm.dbg.value(metadata i64 %10, metadata !4000, metadata !DIExpression()), !dbg !4014
  %11 = icmp sgt i64 %10, 2073600, !dbg !4021
  br i1 %11, label %12, label %26, !dbg !4022

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %14, !dbg !4022

14:                                               ; preds = %12, %24
  %15 = phi i64 [ %10, %12 ], [ %17, %24 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4000, metadata !DIExpression()), !dbg !4014
  store i64 2073600, ptr %3, align 8, !dbg !4023, !tbaa !4016
  %16 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #38, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %16, metadata !4002, metadata !DIExpression()), !dbg !4025
  %17 = add nsw i64 %15, -2073600, !dbg !4026
  call void @llvm.dbg.value(metadata i64 %17, metadata !4000, metadata !DIExpression()), !dbg !4014
  %18 = icmp eq i32 %16, 0, !dbg !4027
  br i1 %18, label %24, label %19, !dbg !4029

19:                                               ; preds = %14
  %20 = icmp eq ptr %1, null, !dbg !4030
  br i1 %20, label %29, label %21, !dbg !4033

21:                                               ; preds = %19
  %22 = load i64, ptr %1, align 8, !dbg !4034, !tbaa !4016
  %23 = add nsw i64 %22, %17, !dbg !4034
  store i64 %23, ptr %1, align 8, !dbg !4034, !tbaa !4016
  br label %29, !dbg !4035

24:                                               ; preds = %14
  store i64 0, ptr %13, align 8, !dbg !4036, !tbaa !4007
  call void @llvm.dbg.value(metadata i64 %17, metadata !4000, metadata !DIExpression()), !dbg !4014
  %25 = icmp ugt i64 %15, 4147200, !dbg !4021
  br i1 %25, label %14, label %26, !dbg !4022, !llvm.loop !4037

26:                                               ; preds = %24, %9
  %27 = phi i64 [ %10, %9 ], [ %17, %24 ], !dbg !4014
  store i64 %27, ptr %3, align 8, !dbg !4039, !tbaa !4016
  %28 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #38, !dbg !4040
  br label %29, !dbg !4041

29:                                               ; preds = %21, %19, %26
  %30 = phi i32 [ %28, %26 ], [ %16, %19 ], [ %16, %21 ], !dbg !4014
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38, !dbg !4042
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i32 [ -1, %7 ], [ %30, %29 ], !dbg !4004
  ret i32 %32, !dbg !4043
}

declare !dbg !4044 i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4046 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4048, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %2, metadata !4050, metadata !DIExpression()), !dbg !4052
  %4 = icmp eq i64 %2, 0, !dbg !4053
  br i1 %4, label %8, label %5, !dbg !4053

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4053
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4053
  br i1 %7, label %13, label %8, !dbg !4053

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  %9 = mul i64 %2, %1, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %9, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %9, metadata !4058, metadata !DIExpression()), !dbg !4059
  %10 = icmp eq i64 %9, 0, !dbg !4061
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4061
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4062
  br label %15, !dbg !4063

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  %14 = tail call ptr @__errno_location() #41, !dbg !4064
  store i32 12, ptr %14, align 4, !dbg !4066, !tbaa !864
  br label %15, !dbg !4067

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4052
  ret ptr %16, !dbg !4068
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4069 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4074, metadata !DIExpression()), !dbg !4080
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4081
  %4 = icmp eq i32 %3, 0, !dbg !4081
  br i1 %4, label %5, label %12, !dbg !4083

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4084, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr @.str.134, metadata !4087, metadata !DIExpression()), !dbg !4088
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.134, i64 2), !dbg !4091
  %7 = icmp eq i32 %6, 0, !dbg !4092
  br i1 %7, label %11, label %8, !dbg !4093

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4084, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !4087, metadata !DIExpression()), !dbg !4094
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !4096
  %10 = icmp eq i32 %9, 0, !dbg !4097
  br i1 %10, label %11, label %12, !dbg !4098

11:                                               ; preds = %8, %5
  br label %12, !dbg !4099

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4078
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4100
  ret i1 %13, !dbg !4100
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4105, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %2, metadata !4107, metadata !DIExpression()), !dbg !4108
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4109
  ret i32 %4, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4115, metadata !DIExpression()), !dbg !4116
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4117
  ret ptr %2, !dbg !4118
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4121, metadata !DIExpression()), !dbg !4123
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4124
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4123
  ret ptr %2, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %2, metadata !4130, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %0, metadata !4121, metadata !DIExpression()), !dbg !4136
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4138
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata ptr %4, metadata !4131, metadata !DIExpression()), !dbg !4135
  %5 = icmp eq ptr %4, null, !dbg !4139
  br i1 %5, label %6, label %9, !dbg !4140

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4141
  br i1 %7, label %19, label %8, !dbg !4144

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4145, !tbaa !873
  br label %19, !dbg !4146

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %10, metadata !4132, metadata !DIExpression()), !dbg !4148
  %11 = icmp ult i64 %10, %2, !dbg !4149
  br i1 %11, label %12, label %14, !dbg !4151

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4152
  call void @llvm.dbg.value(metadata ptr %1, metadata !4154, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %4, metadata !4157, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %13, metadata !4158, metadata !DIExpression()), !dbg !4159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4161
  br label %19, !dbg !4162

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4163
  br i1 %15, label %19, label %16, !dbg !4166

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4167
  call void @llvm.dbg.value(metadata ptr %1, metadata !4154, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %4, metadata !4157, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 %17, metadata !4158, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4171
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4172
  store i8 0, ptr %18, align 1, !dbg !4173, !tbaa !873
  br label %19, !dbg !4174

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4175
  ret i32 %20, !dbg !4176
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!80, !300, !706, !304, !319, !643, !708, !379, !399, !413, !461, !710, !635, !717, !751, !753, !656, !759, !761, !768, !770, !772, !688, !774, !780, !783, !785, !787}
!llvm.ident = !{!789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789}
!llvm.module.flags = !{!790, !791, !792, !793, !794, !795, !796}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "382b2cab9ca796c7040797f94b92cf12")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!80 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !98, globals: !106, splitDebugInlining: false, nameTableKind: None)
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
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!238 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !241)
!240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!264 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!300 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !301, splitDebugInlining: false, nameTableKind: None)
!301 = !{!295, !298}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "file_name", scope: !304, file: !305, line: 45, type: !78, isLocal: true, isDefinition: true)
!304 = distinct !DICompileUnit(language: DW_LANG_C11, file: !305, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !306, splitDebugInlining: false, nameTableKind: None)
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
!318 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !319, file: !320, line: 66, type: !371, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!321 = !{!99, !105}
!322 = !{!323, !325, !350, !352, !354, !356, !317, !358, !360, !362, !364, !369}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !320, line: 272, type: !109, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "old_file_name", scope: !327, file: !320, line: 304, type: !78, isLocal: true, isDefinition: true)
!327 = distinct !DISubprogram(name: "verror_at_line", scope: !320, file: !320, line: 298, type: !328, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !343)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !100, !100, !78, !84, !78, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !332)
!331 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 14, baseType: !334)
!333 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !335, baseType: !336)
!335 = !DIFile(filename: "lib/error.c", directory: "/src")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !337)
!337 = !{!338, !339, !340, !341, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !336, file: !335, baseType: !99, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !336, file: !335, baseType: !99, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !336, file: !335, baseType: !99, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !336, file: !335, baseType: !100, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !336, file: !335, baseType: !100, size: 32, offset: 224)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DILocalVariable(name: "status", arg: 1, scope: !327, file: !320, line: 298, type: !100)
!345 = !DILocalVariable(name: "errnum", arg: 2, scope: !327, file: !320, line: 298, type: !100)
!346 = !DILocalVariable(name: "file_name", arg: 3, scope: !327, file: !320, line: 298, type: !78)
!347 = !DILocalVariable(name: "line_number", arg: 4, scope: !327, file: !320, line: 298, type: !84)
!348 = !DILocalVariable(name: "message", arg: 5, scope: !327, file: !320, line: 298, type: !78)
!349 = !DILocalVariable(name: "args", arg: 6, scope: !327, file: !320, line: 298, type: !330)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "old_line_number", scope: !327, file: !320, line: 305, type: !84, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !320, line: 338, type: !116, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !148, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !123, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "error_message_count", scope: !319, file: !320, line: 69, type: !84, isLocal: false, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !319, file: !320, line: 295, type: !100, isLocal: false, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !143, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 21)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !320, line: 214, type: !109, isLocal: true, isDefinition: true)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !376, line: 60, type: !123, isLocal: true, isDefinition: true)
!376 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "long_options", scope: !379, file: !376, line: 34, type: !387, isLocal: true, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C11, file: !376, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !380, splitDebugInlining: false, nameTableKind: None)
!380 = !{!374, !381, !383, !385, !377}
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !376, line: 112, type: !29, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !376, line: 36, type: !109, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !376, line: 37, type: !148, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 768, elements: !133)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !390, line: 50, size: 256, elements: !391)
!390 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!391 = !{!392, !393, !394, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !390, line: 52, baseType: !78, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !389, file: !390, line: 55, baseType: !100, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !389, file: !390, line: 56, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !390, line: 57, baseType: !100, size: 32, offset: 192)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "program_name", scope: !399, file: !400, line: 31, type: !78, isLocal: false, isDefinition: true)
!399 = distinct !DICompileUnit(language: DW_LANG_C11, file: !400, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !401, globals: !402, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!401 = !{!244}
!402 = !{!397, !403, !405}
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !400, line: 46, type: !148, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !400, line: 49, type: !116, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "utf07FF", scope: !409, file: !410, line: 46, type: !437, isLocal: true, isDefinition: true)
!409 = distinct !DISubprogram(name: "proper_name_lite", scope: !410, file: !410, line: 38, type: !411, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !415)
!410 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!411 = !DISubroutineType(types: !412)
!412 = !{!78, !78, !78}
!413 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !414, splitDebugInlining: false, nameTableKind: None)
!414 = !{!407}
!415 = !{!416, !417, !418, !419, !424}
!416 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !409, file: !410, line: 38, type: !78)
!417 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !409, file: !410, line: 38, type: !78)
!418 = !DILocalVariable(name: "translation", scope: !409, file: !410, line: 40, type: !78)
!419 = !DILocalVariable(name: "w", scope: !409, file: !410, line: 47, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !421, line: 37, baseType: !422)
!421 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !264, line: 57, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !264, line: 42, baseType: !84)
!424 = !DILocalVariable(name: "mbs", scope: !409, file: !410, line: 48, type: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !426, line: 6, baseType: !427)
!426 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !428, line: 21, baseType: !429)
!428 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 13, size: 64, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !429, file: !428, line: 15, baseType: !100, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !429, file: !428, line: 20, baseType: !433, size: 32, offset: 32)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !428, line: 16, size: 32, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !433, file: !428, line: 18, baseType: !84, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !433, file: !428, line: 19, baseType: !116, size: 32)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16, elements: !124)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !440, line: 78, type: !148, isLocal: true, isDefinition: true)
!440 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !440, line: 79, type: !14, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !440, line: 80, type: !49, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !440, line: 81, type: !49, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !440, line: 82, type: !286, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !440, line: 83, type: !123, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !440, line: 84, type: !148, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !440, line: 85, type: !143, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !440, line: 86, type: !143, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !440, line: 87, type: !148, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !461, file: !440, line: 76, type: !547, isLocal: false, isDefinition: true)
!461 = distinct !DICompileUnit(language: DW_LANG_C11, file: !440, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !462, retainedTypes: !482, globals: !483, splitDebugInlining: false, nameTableKind: None)
!462 = !{!463, !477, !82}
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !464, line: 42, baseType: !84, size: 32, elements: !465)
!464 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!466 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!467 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!468 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!469 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!470 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!471 = !DIEnumerator(name: "c_quoting_style", value: 5)
!472 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!473 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!474 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!475 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!476 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !464, line: 254, baseType: !84, size: 32, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!480 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!481 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!482 = !{!100, !101, !102}
!483 = !{!438, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !484, !488, !498, !500, !505, !507, !509, !511, !513, !536, !543, !545}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !461, file: !440, line: 92, type: !486, isLocal: false, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 320, elements: !35)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !461, file: !440, line: 1040, type: !490, isLocal: false, isDefinition: true)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !440, line: 56, size: 448, elements: !491)
!491 = !{!492, !493, !494, !496, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !490, file: !440, line: 59, baseType: !463, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !440, line: 62, baseType: !100, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !490, file: !440, line: 66, baseType: !495, size: 256, offset: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !149)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !490, file: !440, line: 69, baseType: !78, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !490, file: !440, line: 72, baseType: !78, size: 64, offset: 384)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !461, file: !440, line: 107, type: !490, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "slot0", scope: !461, file: !440, line: 831, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 256)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !440, line: 321, type: !123, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !440, line: 357, type: !123, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !440, line: 358, type: !123, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !440, line: 199, type: !143, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quote", scope: !515, file: !440, line: 228, type: !534, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "gettext_quote", scope: !440, file: !440, line: 197, type: !516, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!78, !78, !463}
!518 = !{!519, !520, !521, !522, !523}
!519 = !DILocalVariable(name: "msgid", arg: 1, scope: !515, file: !440, line: 197, type: !78)
!520 = !DILocalVariable(name: "s", arg: 2, scope: !515, file: !440, line: 197, type: !463)
!521 = !DILocalVariable(name: "translation", scope: !515, file: !440, line: 199, type: !78)
!522 = !DILocalVariable(name: "w", scope: !515, file: !440, line: 229, type: !420)
!523 = !DILocalVariable(name: "mbs", scope: !515, file: !440, line: 230, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !426, line: 6, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !428, line: 21, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 13, size: 64, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !526, file: !428, line: 15, baseType: !100, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !526, file: !428, line: 20, baseType: !530, size: 32, offset: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !428, line: 16, size: 32, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !530, file: !428, line: 18, baseType: !84, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !530, file: !428, line: 19, baseType: !116, size: 32)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !535)
!535 = !{!125, !118}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "slotvec", scope: !461, file: !440, line: 834, type: !538, isLocal: true, isDefinition: true)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !440, line: 823, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !539, file: !440, line: 825, baseType: !102, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !440, line: 826, baseType: !244, size: 64, offset: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "nslots", scope: !461, file: !440, line: 832, type: !100, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec0", scope: !461, file: !440, line: 833, type: !539, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 704, elements: !549)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!549 = !{!550}
!550 = !DISubrange(count: 11)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !553, line: 67, type: !54, isLocal: true, isDefinition: true)
!553 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !553, line: 69, type: !143, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !143, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !116, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !553, line: 85, type: !123, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !553, line: 88, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 171)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !553, line: 88, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 34)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !553, line: 105, type: !59, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !553, line: 109, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 23)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !553, line: 113, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 28)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !553, line: 120, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 32)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !553, line: 127, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 36)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !553, line: 134, type: !170, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !553, line: 142, type: !598, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 44)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !553, line: 150, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 48)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !553, line: 159, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 52)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !553, line: 170, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 60)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !286, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !195, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !286, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !44, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !170, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !3, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !630, isLocal: true, isDefinition: true)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 29)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !635, file: !636, line: 26, type: !638, isLocal: false, isDefinition: true)
!635 = distinct !DICompileUnit(language: DW_LANG_C11, file: !636, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !637, splitDebugInlining: false, nameTableKind: None)
!636 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!637 = !{!633}
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 47)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "exit_failure", scope: !643, file: !644, line: 24, type: !646, isLocal: false, isDefinition: true)
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !645, splitDebugInlining: false, nameTableKind: None)
!644 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!645 = !{!641}
!646 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !132, isLocal: true, isDefinition: true)
!649 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !143, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !165, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !656, file: !657, line: 58, type: !682, isLocal: true, isDefinition: true)
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !658, globals: !679, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!658 = !{!244, !659}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !660, line: 24, baseType: !661)
!660 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !662, line: 41, baseType: !663)
!662 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !662, line: 27, size: 1856, elements: !665)
!665 = !{!666, !670, !673, !676, !677}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !664, file: !662, line: 30, baseType: !667, size: 832)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 832, elements: !50)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !662, line: 30, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !664, file: !662, line: 33, baseType: !671, size: 64, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !664, file: !662, line: 34, baseType: !674, size: 64, offset: 896)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !664, file: !662, line: 35, baseType: !674, size: 64, offset: 960)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !664, file: !662, line: 38, baseType: !678, size: 832, offset: 1024)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 832, elements: !50)
!679 = !{!680, !654}
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !657, line: 66, type: !123, isLocal: true, isDefinition: true)
!682 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !659)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !685, line: 108, type: !29, isLocal: true, isDefinition: true)
!685 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "internal_state", scope: !688, file: !685, line: 97, type: !691, isLocal: true, isDefinition: true)
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !685, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !689, globals: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !{!99, !102, !105}
!690 = !{!683, !686}
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !426, line: 6, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !428, line: 21, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 13, size: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !693, file: !428, line: 15, baseType: !100, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !693, file: !428, line: 20, baseType: !697, size: 32, offset: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !428, line: 16, size: 32, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !697, file: !428, line: 18, baseType: !84, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !697, file: !428, line: 19, baseType: !116, size: 32)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !703, line: 35, type: !123, isLocal: true, isDefinition: true)
!703 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !703, line: 35, type: !14, isLocal: true, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !553, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !711, retainedTypes: !715, globals: !716, splitDebugInlining: false, nameTableKind: None)
!711 = !{!712}
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 40, baseType: !84, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!715 = !{!99}
!716 = !{!551, !554, !556, !558, !560, !562, !567, !572, !574, !579, !584, !589, !594, !596, !601, !606, !611, !616, !618, !620, !622, !624, !626, !628}
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !719, retainedTypes: !750, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!719 = !{!720, !732}
!720 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !721, file: !718, line: 188, baseType: !84, size: 32, elements: !730)
!721 = distinct !DISubprogram(name: "x2nrealloc", scope: !718, file: !718, line: 176, type: !722, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !725)
!722 = !DISubroutineType(types: !723)
!723 = !{!99, !99, !724, !102}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!725 = !{!726, !727, !728, !729}
!726 = !DILocalVariable(name: "p", arg: 1, scope: !721, file: !718, line: 176, type: !99)
!727 = !DILocalVariable(name: "pn", arg: 2, scope: !721, file: !718, line: 176, type: !724)
!728 = !DILocalVariable(name: "s", arg: 3, scope: !721, file: !718, line: 176, type: !102)
!729 = !DILocalVariable(name: "n", scope: !721, file: !718, line: 178, type: !102)
!730 = !{!731}
!731 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!732 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !733, file: !718, line: 228, baseType: !84, size: 32, elements: !730)
!733 = distinct !DISubprogram(name: "xpalloc", scope: !718, file: !718, line: 223, type: !734, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !740)
!734 = !DISubroutineType(types: !735)
!735 = !{!99, !99, !736, !737, !739, !737}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !738, line: 130, baseType: !739)
!738 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !103, line: 35, baseType: !265)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749}
!741 = !DILocalVariable(name: "pa", arg: 1, scope: !733, file: !718, line: 223, type: !99)
!742 = !DILocalVariable(name: "pn", arg: 2, scope: !733, file: !718, line: 223, type: !736)
!743 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !733, file: !718, line: 223, type: !737)
!744 = !DILocalVariable(name: "n_max", arg: 4, scope: !733, file: !718, line: 223, type: !739)
!745 = !DILocalVariable(name: "s", arg: 5, scope: !733, file: !718, line: 223, type: !737)
!746 = !DILocalVariable(name: "n0", scope: !733, file: !718, line: 230, type: !737)
!747 = !DILocalVariable(name: "n", scope: !733, file: !718, line: 237, type: !737)
!748 = !DILocalVariable(name: "nbytes", scope: !733, file: !718, line: 248, type: !737)
!749 = !DILocalVariable(name: "adjusted_nbytes", scope: !733, file: !718, line: 252, type: !737)
!750 = !{!244, !99, !223, !265, !104}
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !752, splitDebugInlining: false, nameTableKind: None)
!752 = !{!647, !650, !652}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !757, line: 10, baseType: !758)
!757 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !264, line: 160, baseType: !265)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!763 = !{!764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !765, line: 44, baseType: !84, size: 32, elements: !766)
!765 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!766 = !{!767}
!767 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !775, line: 37, baseType: !84, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIEnumerator(name: "BILLION", value: 1000000000)
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !782, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!782 = !{!223, !104, !99}
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !784, splitDebugInlining: false, nameTableKind: None)
!784 = !{!701, !704}
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!789 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!790 = !{i32 7, !"Dwarf Version", i32 5}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 4}
!793 = !{i32 8, !"PIC Level", i32 2}
!794 = !{i32 7, !"PIE Level", i32 2}
!795 = !{i32 7, !"uwtable", i32 2}
!796 = !{i32 7, !"frame-pointer", i32 1}
!797 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !798, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !100}
!800 = !{!801}
!801 = !DILocalVariable(name: "status", arg: 1, scope: !797, file: !2, line: 36, type: !100)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 38, column: 14, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !2, line: 38, column: 7)
!805 = !DILocation(line: 38, column: 7, scope: !797)
!806 = !DILocation(line: 39, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 39, column: 5)
!808 = !{!809, !809, i64 0}
!809 = !{!"any pointer", !810, i64 0}
!810 = !{!"omnipotent char", !811, i64 0}
!811 = !{!"Simple C/C++ TBAA"}
!812 = !DILocation(line: 42, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !804, file: !2, line: 41, column: 5)
!814 = !DILocation(line: 51, column: 7, scope: !813)
!815 = !DILocation(line: 52, column: 7, scope: !813)
!816 = !DILocalVariable(name: "program", arg: 1, scope: !817, file: !75, line: 836, type: !78)
!817 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !75, file: !75, line: 836, type: !818, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !78}
!820 = !{!816, !821, !828, !829, !831, !832}
!821 = !DILocalVariable(name: "infomap", scope: !817, file: !75, line: 838, type: !822)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 896, elements: !144)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !817, file: !75, line: 838, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !824, file: !75, line: 838, baseType: !78, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !824, file: !75, line: 838, baseType: !78, size: 64, offset: 64)
!828 = !DILocalVariable(name: "node", scope: !817, file: !75, line: 848, type: !78)
!829 = !DILocalVariable(name: "map_prog", scope: !817, file: !75, line: 849, type: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!831 = !DILocalVariable(name: "lc_messages", scope: !817, file: !75, line: 861, type: !78)
!832 = !DILocalVariable(name: "url_program", scope: !817, file: !75, line: 874, type: !78)
!833 = !DILocation(line: 0, scope: !817, inlinedAt: !834)
!834 = distinct !DILocation(line: 53, column: 7, scope: !813)
!835 = !DILocation(line: 857, column: 3, scope: !817, inlinedAt: !834)
!836 = !DILocation(line: 861, column: 29, scope: !817, inlinedAt: !834)
!837 = !DILocation(line: 862, column: 7, scope: !838, inlinedAt: !834)
!838 = distinct !DILexicalBlock(scope: !817, file: !75, line: 862, column: 7)
!839 = !DILocation(line: 862, column: 19, scope: !838, inlinedAt: !834)
!840 = !DILocation(line: 862, column: 22, scope: !838, inlinedAt: !834)
!841 = !DILocation(line: 862, column: 7, scope: !817, inlinedAt: !834)
!842 = !DILocation(line: 868, column: 7, scope: !843, inlinedAt: !834)
!843 = distinct !DILexicalBlock(scope: !838, file: !75, line: 863, column: 5)
!844 = !DILocation(line: 870, column: 5, scope: !843, inlinedAt: !834)
!845 = !DILocation(line: 875, column: 3, scope: !817, inlinedAt: !834)
!846 = !DILocation(line: 877, column: 3, scope: !817, inlinedAt: !834)
!847 = !DILocation(line: 55, column: 3, scope: !797)
!848 = !DISubprogram(name: "dcgettext", scope: !849, file: !849, line: 51, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!849 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!850 = !DISubroutineType(types: !851)
!851 = !{!244, !78, !78, !100}
!852 = !{}
!853 = !DISubprogram(name: "__fprintf_chk", scope: !854, file: !854, line: 93, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!854 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!855 = !DISubroutineType(types: !856)
!856 = !{!100, !857, !100, !858, null}
!857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!859 = !DISubprogram(name: "__printf_chk", scope: !854, file: !854, line: 95, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!860 = !DISubroutineType(types: !861)
!861 = !{!100, !100, !858, null}
!862 = !DILocation(line: 0, scope: !74)
!863 = !DILocation(line: 581, column: 7, scope: !221)
!864 = !{!865, !865, i64 0}
!865 = !{!"int", !810, i64 0}
!866 = !DILocation(line: 581, column: 19, scope: !221)
!867 = !DILocation(line: 581, column: 7, scope: !74)
!868 = !DILocation(line: 585, column: 26, scope: !220)
!869 = !DILocation(line: 0, scope: !220)
!870 = !DILocation(line: 586, column: 23, scope: !220)
!871 = !DILocation(line: 586, column: 28, scope: !220)
!872 = !DILocation(line: 586, column: 32, scope: !220)
!873 = !{!810, !810, i64 0}
!874 = !DILocation(line: 586, column: 38, scope: !220)
!875 = !DILocalVariable(name: "__s1", arg: 1, scope: !876, file: !877, line: 1359, type: !78)
!876 = distinct !DISubprogram(name: "streq", scope: !877, file: !877, line: 1359, type: !878, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !880)
!877 = !DIFile(filename: "./lib/string.h", directory: "/src")
!878 = !DISubroutineType(types: !879)
!879 = !{!223, !78, !78}
!880 = !{!875, !881}
!881 = !DILocalVariable(name: "__s2", arg: 2, scope: !876, file: !877, line: 1359, type: !78)
!882 = !DILocation(line: 0, scope: !876, inlinedAt: !883)
!883 = distinct !DILocation(line: 586, column: 41, scope: !220)
!884 = !DILocation(line: 1361, column: 11, scope: !876, inlinedAt: !883)
!885 = !DILocation(line: 1361, column: 10, scope: !876, inlinedAt: !883)
!886 = !DILocation(line: 586, column: 19, scope: !220)
!887 = !DILocation(line: 587, column: 5, scope: !220)
!888 = !DILocation(line: 588, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !74, file: !75, line: 588, column: 7)
!890 = !DILocation(line: 588, column: 7, scope: !74)
!891 = !DILocation(line: 590, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !75, line: 589, column: 5)
!893 = !DILocation(line: 591, column: 7, scope: !892)
!894 = !DILocation(line: 595, column: 37, scope: !74)
!895 = !DILocation(line: 595, column: 35, scope: !74)
!896 = !DILocation(line: 596, column: 29, scope: !74)
!897 = !DILocation(line: 597, column: 8, scope: !229)
!898 = !DILocation(line: 597, column: 7, scope: !74)
!899 = !DILocation(line: 604, column: 24, scope: !228)
!900 = !DILocation(line: 604, column: 12, scope: !229)
!901 = !DILocation(line: 0, scope: !227)
!902 = !DILocation(line: 610, column: 16, scope: !227)
!903 = !DILocation(line: 610, column: 7, scope: !227)
!904 = !DILocation(line: 611, column: 21, scope: !227)
!905 = !{!906, !906, i64 0}
!906 = !{!"short", !810, i64 0}
!907 = !DILocation(line: 611, column: 19, scope: !227)
!908 = !DILocation(line: 611, column: 16, scope: !227)
!909 = !DILocation(line: 610, column: 30, scope: !227)
!910 = distinct !{!910, !903, !904, !911}
!911 = !{!"llvm.loop.mustprogress"}
!912 = !DILocation(line: 612, column: 18, scope: !913)
!913 = distinct !DILexicalBlock(scope: !227, file: !75, line: 612, column: 11)
!914 = !DILocation(line: 612, column: 11, scope: !227)
!915 = !DILocation(line: 620, column: 23, scope: !74)
!916 = !DILocation(line: 625, column: 39, scope: !74)
!917 = !DILocation(line: 626, column: 3, scope: !74)
!918 = !DILocation(line: 626, column: 10, scope: !74)
!919 = !DILocation(line: 626, column: 21, scope: !74)
!920 = !DILocation(line: 628, column: 44, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !75, line: 628, column: 11)
!922 = distinct !DILexicalBlock(scope: !74, file: !75, line: 627, column: 5)
!923 = !DILocation(line: 628, column: 32, scope: !921)
!924 = !DILocation(line: 628, column: 49, scope: !921)
!925 = !DILocation(line: 628, column: 11, scope: !922)
!926 = !DILocation(line: 630, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !75, line: 630, column: 11)
!928 = !DILocation(line: 630, column: 11, scope: !922)
!929 = !DILocation(line: 632, column: 26, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !75, line: 632, column: 15)
!931 = distinct !DILexicalBlock(scope: !927, file: !75, line: 631, column: 9)
!932 = !DILocation(line: 632, column: 34, scope: !930)
!933 = !DILocation(line: 632, column: 37, scope: !930)
!934 = !DILocation(line: 632, column: 15, scope: !931)
!935 = !DILocation(line: 640, column: 16, scope: !922)
!936 = distinct !{!936, !917, !937, !911}
!937 = !DILocation(line: 641, column: 5, scope: !74)
!938 = !DILocation(line: 644, column: 3, scope: !74)
!939 = !DILocation(line: 0, scope: !876, inlinedAt: !940)
!940 = distinct !DILocation(line: 648, column: 31, scope: !74)
!941 = !DILocation(line: 0, scope: !876, inlinedAt: !942)
!942 = distinct !DILocation(line: 649, column: 31, scope: !74)
!943 = !DILocation(line: 0, scope: !876, inlinedAt: !944)
!944 = distinct !DILocation(line: 650, column: 31, scope: !74)
!945 = !DILocation(line: 0, scope: !876, inlinedAt: !946)
!946 = distinct !DILocation(line: 651, column: 31, scope: !74)
!947 = !DILocation(line: 0, scope: !876, inlinedAt: !948)
!948 = distinct !DILocation(line: 652, column: 31, scope: !74)
!949 = !DILocation(line: 0, scope: !876, inlinedAt: !950)
!950 = distinct !DILocation(line: 653, column: 31, scope: !74)
!951 = !DILocation(line: 0, scope: !876, inlinedAt: !952)
!952 = distinct !DILocation(line: 654, column: 31, scope: !74)
!953 = !DILocation(line: 0, scope: !876, inlinedAt: !954)
!954 = distinct !DILocation(line: 655, column: 31, scope: !74)
!955 = !DILocation(line: 0, scope: !876, inlinedAt: !956)
!956 = distinct !DILocation(line: 656, column: 31, scope: !74)
!957 = !DILocation(line: 0, scope: !876, inlinedAt: !958)
!958 = distinct !DILocation(line: 657, column: 31, scope: !74)
!959 = !DILocation(line: 663, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !74, file: !75, line: 663, column: 7)
!961 = !DILocation(line: 664, column: 7, scope: !960)
!962 = !DILocation(line: 664, column: 10, scope: !960)
!963 = !DILocation(line: 663, column: 7, scope: !74)
!964 = !DILocation(line: 669, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !75, line: 665, column: 5)
!966 = !DILocation(line: 671, column: 5, scope: !965)
!967 = !DILocation(line: 676, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !960, file: !75, line: 673, column: 5)
!969 = !DILocation(line: 679, column: 3, scope: !74)
!970 = !DILocation(line: 683, column: 3, scope: !74)
!971 = !DILocation(line: 686, column: 3, scope: !74)
!972 = !DILocation(line: 688, column: 3, scope: !74)
!973 = !DILocation(line: 691, column: 3, scope: !74)
!974 = !DILocation(line: 695, column: 3, scope: !74)
!975 = !DILocation(line: 696, column: 1, scope: !74)
!976 = !DISubprogram(name: "setlocale", scope: !977, file: !977, line: 122, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!977 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!978 = !DISubroutineType(types: !979)
!979 = !{!244, !100, !78}
!980 = !DISubprogram(name: "strncmp", scope: !981, file: !981, line: 159, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!981 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!982 = !DISubroutineType(types: !983)
!983 = !{!100, !78, !78, !102}
!984 = !DISubprogram(name: "fputs_unlocked", scope: !331, file: !331, line: 691, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!985 = !DISubroutineType(types: !986)
!986 = !{!100, !858, !857}
!987 = !DISubprogram(name: "exit", scope: !988, file: !988, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !852)
!988 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!989 = !DISubprogram(name: "getenv", scope: !988, file: !988, line: 641, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!990 = !DISubroutineType(types: !991)
!991 = !{!244, !78}
!992 = !DISubprogram(name: "strcmp", scope: !981, file: !981, line: 156, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!993 = !DISubroutineType(types: !994)
!994 = !{!100, !78, !78}
!995 = !DISubprogram(name: "strspn", scope: !981, file: !981, line: 297, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!996 = !DISubroutineType(types: !997)
!997 = !{!104, !78, !78}
!998 = !DISubprogram(name: "strchr", scope: !981, file: !981, line: 246, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!244, !78, !100}
!1001 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1005 = !DISubprogram(name: "strcspn", scope: !981, file: !981, line: 293, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1006 = !DISubprogram(name: "fwrite_unlocked", scope: !331, file: !331, line: 704, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!102, !1009, !102, !102, !857}
!1009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1012 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 94, type: !1013, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1016)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!100, !100, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1016 = !{!1017, !1018, !1019, !1021, !1022, !1024, !1027, !1028}
!1017 = !DILocalVariable(name: "argc", arg: 1, scope: !1012, file: !2, line: 94, type: !100)
!1018 = !DILocalVariable(name: "argv", arg: 2, scope: !1012, file: !2, line: 94, type: !1015)
!1019 = !DILocalVariable(name: "seconds", scope: !1012, file: !2, line: 96, type: !1020)
!1020 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1021 = !DILocalVariable(name: "ok", scope: !1012, file: !2, line: 97, type: !223)
!1022 = !DILocalVariable(name: "i", scope: !1023, file: !2, line: 117, type: !100)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 117, column: 3)
!1024 = !DILocalVariable(name: "p", scope: !1025, file: !2, line: 119, type: !244)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 118, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 117, column: 3)
!1027 = !DILocalVariable(name: "duration", scope: !1025, file: !2, line: 121, type: !1020)
!1028 = !DILocalVariable(name: "s", scope: !1025, file: !2, line: 122, type: !1020)
!1029 = !DILocation(line: 0, scope: !1012)
!1030 = !DILocation(line: 100, column: 21, scope: !1012)
!1031 = !DILocation(line: 100, column: 3, scope: !1012)
!1032 = !DILocation(line: 101, column: 3, scope: !1012)
!1033 = !DILocation(line: 102, column: 3, scope: !1012)
!1034 = !DILocation(line: 103, column: 3, scope: !1012)
!1035 = !DILocation(line: 105, column: 3, scope: !1012)
!1036 = !DILocation(line: 108, column: 36, scope: !1012)
!1037 = !DILocation(line: 108, column: 58, scope: !1012)
!1038 = !DILocation(line: 107, column: 3, scope: !1012)
!1039 = !DILocation(line: 111, column: 12, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 111, column: 7)
!1041 = !DILocation(line: 111, column: 7, scope: !1012)
!1042 = !DILocation(line: 113, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 112, column: 5)
!1044 = !DILocation(line: 114, column: 7, scope: !1043)
!1045 = !DILocation(line: 117, column: 16, scope: !1023)
!1046 = !DILocation(line: 0, scope: !1023)
!1047 = !DILocation(line: 117, column: 26, scope: !1026)
!1048 = !DILocation(line: 117, column: 3, scope: !1023)
!1049 = !DILocation(line: 138, column: 7, scope: !1012)
!1050 = !DILocation(line: 119, column: 7, scope: !1025)
!1051 = !DILocation(line: 120, column: 13, scope: !1025)
!1052 = !DILocation(line: 121, column: 36, scope: !1025)
!1053 = !DILocation(line: 0, scope: !1025)
!1054 = !DILocation(line: 121, column: 25, scope: !1025)
!1055 = !DILocation(line: 122, column: 45, scope: !1025)
!1056 = !DILocalVariable(name: "c", arg: 1, scope: !1057, file: !1058, line: 54, type: !1020)
!1057 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1058, file: !1058, line: 54, type: !1059, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1061)
!1058 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1020, !1020, !100}
!1061 = !{!1056, !1062, !1063}
!1062 = !DILocalVariable(name: "err", arg: 2, scope: !1057, file: !1058, line: 54, type: !100)
!1063 = !DILocalVariable(name: "phi", scope: !1057, file: !1058, line: 70, type: !1020)
!1064 = !DILocation(line: 0, scope: !1057, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 122, column: 18, scope: !1025)
!1066 = !DILocation(line: 60, column: 11, scope: !1067, inlinedAt: !1065)
!1067 = distinct !DILexicalBlock(scope: !1057, file: !1058, line: 60, column: 7)
!1068 = !DILocation(line: 60, column: 21, scope: !1067, inlinedAt: !1065)
!1069 = !DILocation(line: 123, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 123, column: 11)
!1071 = !DILocation(line: 123, column: 22, scope: !1070)
!1072 = !DILocation(line: 123, column: 19, scope: !1070)
!1073 = !DILocation(line: 125, column: 11, scope: !1070)
!1074 = !DILocation(line: 127, column: 15, scope: !1070)
!1075 = !DILocation(line: 127, column: 18, scope: !1070)
!1076 = !DILocation(line: 127, column: 25, scope: !1070)
!1077 = !DILocation(line: 127, column: 21, scope: !1070)
!1078 = !DILocation(line: 129, column: 11, scope: !1070)
!1079 = !DILocalVariable(name: "x", arg: 1, scope: !1080, file: !2, line: 65, type: !1083)
!1080 = distinct !DISubprogram(name: "apply_suffix", scope: !2, file: !2, line: 65, type: !1081, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!223, !1083, !4}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1084 = !{!1079, !1085, !1086}
!1085 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1080, file: !2, line: 65, type: !4)
!1086 = !DILocalVariable(name: "multiplier", scope: !1080, file: !2, line: 67, type: !100)
!1087 = !DILocation(line: 0, scope: !1080, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 129, column: 16, scope: !1070)
!1089 = !DILocation(line: 69, column: 3, scope: !1080, inlinedAt: !1088)
!1090 = !DILocation(line: 77, column: 7, scope: !1091, inlinedAt: !1088)
!1091 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 70, column: 5)
!1092 = !DILocation(line: 80, column: 7, scope: !1091, inlinedAt: !1088)
!1093 = !DILocation(line: 83, column: 7, scope: !1091, inlinedAt: !1088)
!1094 = !DILocation(line: 88, column: 28, scope: !1080, inlinedAt: !1088)
!1095 = !DILocation(line: 0, scope: !1057, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 88, column: 8, scope: !1080, inlinedAt: !1088)
!1097 = !DILocation(line: 60, column: 21, scope: !1067, inlinedAt: !1096)
!1098 = !DILocation(line: 123, column: 11, scope: !1025)
!1099 = !DILocation(line: 131, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 130, column: 9)
!1101 = !DILocation(line: 133, column: 9, scope: !1100)
!1102 = !DILocation(line: 122, column: 14, scope: !1025)
!1103 = !DILocation(line: 135, column: 42, scope: !1025)
!1104 = !DILocation(line: 0, scope: !1057, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 135, column: 17, scope: !1025)
!1106 = !DILocation(line: 60, column: 21, scope: !1067, inlinedAt: !1105)
!1107 = !DILocation(line: 136, column: 5, scope: !1026)
!1108 = !DILocation(line: 117, column: 35, scope: !1026)
!1109 = distinct !{!1109, !1048, !1110, !911}
!1110 = !DILocation(line: 136, column: 5, scope: !1023)
!1111 = !DILocation(line: 139, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 138, column: 7)
!1113 = !DILocation(line: 141, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 141, column: 7)
!1115 = !DILocation(line: 141, column: 7, scope: !1012)
!1116 = !DILocation(line: 142, column: 5, scope: !1114)
!1117 = !DILocation(line: 144, column: 3, scope: !1012)
!1118 = !DISubprogram(name: "bindtextdomain", scope: !849, file: !849, line: 86, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!244, !78, !78}
!1121 = !DISubprogram(name: "textdomain", scope: !849, file: !849, line: 82, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1122 = !DISubprogram(name: "atexit", scope: !988, file: !988, line: 602, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!100, !371}
!1125 = !DISubprogram(name: "__errno_location", scope: !1126, file: !1126, line: 37, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1126 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!395}
!1129 = distinct !DISubprogram(name: "cl_strtod", scope: !707, file: !707, line: 59, type: !1130, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1133)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1020, !78, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1015)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1141, !1142}
!1134 = !DILocalVariable(name: "nptr", arg: 1, scope: !1129, file: !707, line: 59, type: !78)
!1135 = !DILocalVariable(name: "endptr", arg: 2, scope: !1129, file: !707, line: 59, type: !1132)
!1136 = !DILocalVariable(name: "end", scope: !1129, file: !707, line: 61, type: !244)
!1137 = !DILocalVariable(name: "d", scope: !1129, file: !707, line: 62, type: !1020)
!1138 = !DILocalVariable(name: "strtod_errno", scope: !1139, file: !707, line: 65, type: !100)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !707, line: 64, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1129, file: !707, line: 63, column: 7)
!1141 = !DILocalVariable(name: "c_end", scope: !1139, file: !707, line: 66, type: !244)
!1142 = !DILocalVariable(name: "c", scope: !1139, file: !707, line: 67, type: !1020)
!1143 = !DILocation(line: 0, scope: !1129)
!1144 = !DILocation(line: 61, column: 3, scope: !1129)
!1145 = !DILocation(line: 62, column: 14, scope: !1129)
!1146 = !DILocation(line: 63, column: 8, scope: !1140)
!1147 = !DILocation(line: 63, column: 7, scope: !1140)
!1148 = !DILocation(line: 63, column: 7, scope: !1129)
!1149 = !DILocation(line: 65, column: 26, scope: !1139)
!1150 = !DILocation(line: 0, scope: !1139)
!1151 = !DILocation(line: 66, column: 7, scope: !1139)
!1152 = !DILocation(line: 67, column: 18, scope: !1139)
!1153 = !DILocation(line: 68, column: 17, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1139, file: !707, line: 68, column: 11)
!1155 = !DILocation(line: 68, column: 15, scope: !1154)
!1156 = !DILocation(line: 68, column: 11, scope: !1139)
!1157 = !DILocation(line: 71, column: 15, scope: !1154)
!1158 = !DILocation(line: 72, column: 5, scope: !1140)
!1159 = !DILocation(line: 72, column: 5, scope: !1139)
!1160 = !DILocation(line: 73, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1129, file: !707, line: 73, column: 7)
!1162 = !DILocation(line: 73, column: 7, scope: !1129)
!1163 = !DILocation(line: 74, column: 13, scope: !1161)
!1164 = !DILocation(line: 74, column: 5, scope: !1161)
!1165 = !DILocation(line: 76, column: 1, scope: !1129)
!1166 = !DILocation(line: 75, column: 3, scope: !1129)
!1167 = !DISubprogram(name: "strtod", scope: !988, file: !988, line: 118, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1020, !858, !1132}
!1170 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !305, file: !305, line: 50, type: !818, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1171)
!1171 = !{!1172}
!1172 = !DILocalVariable(name: "file", arg: 1, scope: !1170, file: !305, line: 50, type: !78)
!1173 = !DILocation(line: 0, scope: !1170)
!1174 = !DILocation(line: 52, column: 13, scope: !1170)
!1175 = !DILocation(line: 53, column: 1, scope: !1170)
!1176 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !305, file: !305, line: 87, type: !1177, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !223}
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "ignore", arg: 1, scope: !1176, file: !305, line: 87, type: !223)
!1181 = !DILocation(line: 0, scope: !1176)
!1182 = !DILocation(line: 89, column: 16, scope: !1176)
!1183 = !{!1184, !1184, i64 0}
!1184 = !{!"_Bool", !810, i64 0}
!1185 = !DILocation(line: 90, column: 1, scope: !1176)
!1186 = distinct !DISubprogram(name: "close_stdout", scope: !305, file: !305, line: 116, type: !372, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1187)
!1187 = !{!1188}
!1188 = !DILocalVariable(name: "write_error", scope: !1189, file: !305, line: 121, type: !78)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !305, line: 120, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !305, line: 118, column: 7)
!1191 = !DILocation(line: 118, column: 21, scope: !1190)
!1192 = !DILocation(line: 118, column: 7, scope: !1190)
!1193 = !DILocation(line: 118, column: 29, scope: !1190)
!1194 = !DILocation(line: 119, column: 7, scope: !1190)
!1195 = !DILocation(line: 119, column: 12, scope: !1190)
!1196 = !{i8 0, i8 2}
!1197 = !DILocation(line: 119, column: 25, scope: !1190)
!1198 = !DILocation(line: 119, column: 28, scope: !1190)
!1199 = !DILocation(line: 119, column: 34, scope: !1190)
!1200 = !DILocation(line: 118, column: 7, scope: !1186)
!1201 = !DILocation(line: 121, column: 33, scope: !1189)
!1202 = !DILocation(line: 0, scope: !1189)
!1203 = !DILocation(line: 122, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !305, line: 122, column: 11)
!1205 = !DILocation(line: 0, scope: !1204)
!1206 = !DILocation(line: 122, column: 11, scope: !1189)
!1207 = !DILocation(line: 123, column: 9, scope: !1204)
!1208 = !DILocation(line: 126, column: 9, scope: !1204)
!1209 = !DILocation(line: 128, column: 14, scope: !1189)
!1210 = !DILocation(line: 128, column: 7, scope: !1189)
!1211 = !DILocation(line: 133, column: 42, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1186, file: !305, line: 133, column: 7)
!1213 = !DILocation(line: 133, column: 28, scope: !1212)
!1214 = !DILocation(line: 133, column: 50, scope: !1212)
!1215 = !DILocation(line: 133, column: 7, scope: !1186)
!1216 = !DILocation(line: 134, column: 12, scope: !1212)
!1217 = !DILocation(line: 134, column: 5, scope: !1212)
!1218 = !DILocation(line: 135, column: 1, scope: !1186)
!1219 = !DISubprogram(name: "_exit", scope: !1220, file: !1220, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1220 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1221 = distinct !DISubprogram(name: "verror", scope: !320, file: !320, line: 251, type: !1222, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !100, !100, !78, !330}
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DILocalVariable(name: "status", arg: 1, scope: !1221, file: !320, line: 251, type: !100)
!1226 = !DILocalVariable(name: "errnum", arg: 2, scope: !1221, file: !320, line: 251, type: !100)
!1227 = !DILocalVariable(name: "message", arg: 3, scope: !1221, file: !320, line: 251, type: !78)
!1228 = !DILocalVariable(name: "args", arg: 4, scope: !1221, file: !320, line: 251, type: !330)
!1229 = !DILocation(line: 0, scope: !1221)
!1230 = !DILocation(line: 251, column: 1, scope: !1221)
!1231 = !DILocation(line: 261, column: 3, scope: !1221)
!1232 = !DILocation(line: 265, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1221, file: !320, line: 265, column: 7)
!1234 = !DILocation(line: 265, column: 7, scope: !1221)
!1235 = !DILocation(line: 266, column: 5, scope: !1233)
!1236 = !DILocation(line: 272, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !320, line: 268, column: 5)
!1238 = !DILocation(line: 276, column: 3, scope: !1221)
!1239 = !{i64 0, i64 8, !808, i64 8, i64 8, !808, i64 16, i64 8, !808, i64 24, i64 4, !864, i64 28, i64 4, !864}
!1240 = !DILocation(line: 282, column: 1, scope: !1221)
!1241 = distinct !DISubprogram(name: "flush_stdout", scope: !320, file: !320, line: 163, type: !372, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1242)
!1242 = !{!1243}
!1243 = !DILocalVariable(name: "stdout_fd", scope: !1241, file: !320, line: 166, type: !100)
!1244 = !DILocation(line: 0, scope: !1241)
!1245 = !DILocalVariable(name: "fd", arg: 1, scope: !1246, file: !320, line: 145, type: !100)
!1246 = distinct !DISubprogram(name: "is_open", scope: !320, file: !320, line: 145, type: !1247, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!100, !100}
!1249 = !{!1245}
!1250 = !DILocation(line: 0, scope: !1246, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 182, column: 25, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !320, line: 182, column: 7)
!1253 = !DILocation(line: 157, column: 15, scope: !1246, inlinedAt: !1251)
!1254 = !DILocation(line: 157, column: 12, scope: !1246, inlinedAt: !1251)
!1255 = !DILocation(line: 182, column: 7, scope: !1241)
!1256 = !DILocation(line: 184, column: 5, scope: !1252)
!1257 = !DILocation(line: 185, column: 1, scope: !1241)
!1258 = distinct !DISubprogram(name: "error_tail", scope: !320, file: !320, line: 219, type: !1222, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1259)
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DILocalVariable(name: "status", arg: 1, scope: !1258, file: !320, line: 219, type: !100)
!1261 = !DILocalVariable(name: "errnum", arg: 2, scope: !1258, file: !320, line: 219, type: !100)
!1262 = !DILocalVariable(name: "message", arg: 3, scope: !1258, file: !320, line: 219, type: !78)
!1263 = !DILocalVariable(name: "args", arg: 4, scope: !1258, file: !320, line: 219, type: !330)
!1264 = !DILocation(line: 0, scope: !1258)
!1265 = !DILocation(line: 219, column: 1, scope: !1258)
!1266 = !DILocation(line: 229, column: 13, scope: !1258)
!1267 = !DILocation(line: 135, column: 10, scope: !1268, inlinedAt: !1310)
!1268 = distinct !DISubprogram(name: "vfprintf", scope: !854, file: !854, line: 132, type: !1269, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1306)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!100, !1271, !858, !332}
!1271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1274, file: !240, line: 51, baseType: !100, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1274, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1274, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1274, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1274, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1274, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1274, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1274, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1274, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1274, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1274, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1274, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1274, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1274, file: !240, line: 70, baseType: !1290, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1274, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1274, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1274, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1274, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1274, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1274, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1274, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1274, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1274, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1274, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1274, file: !240, line: 93, baseType: !1290, size: 64, offset: 1344)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1274, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1274, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1274, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1274, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!1306 = !{!1307, !1308, !1309}
!1307 = !DILocalVariable(name: "__stream", arg: 1, scope: !1268, file: !854, line: 132, type: !1271)
!1308 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1268, file: !854, line: 133, type: !858)
!1309 = !DILocalVariable(name: "__ap", arg: 3, scope: !1268, file: !854, line: 133, type: !332)
!1310 = distinct !DILocation(line: 229, column: 3, scope: !1258)
!1311 = !{!1312, !1314}
!1312 = distinct !{!1312, !1313, !"vfprintf.inline: argument 0"}
!1313 = distinct !{!1313, !"vfprintf.inline"}
!1314 = distinct !{!1314, !1313, !"vfprintf.inline: argument 1"}
!1315 = !DILocation(line: 229, column: 3, scope: !1258)
!1316 = !DILocation(line: 0, scope: !1268, inlinedAt: !1310)
!1317 = !DILocation(line: 133, column: 49, scope: !1268, inlinedAt: !1310)
!1318 = !DILocation(line: 232, column: 3, scope: !1258)
!1319 = !DILocation(line: 233, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1258, file: !320, line: 233, column: 7)
!1321 = !DILocation(line: 233, column: 7, scope: !1258)
!1322 = !DILocalVariable(name: "errnum", arg: 1, scope: !1323, file: !320, line: 188, type: !100)
!1323 = distinct !DISubprogram(name: "print_errno_message", scope: !320, file: !320, line: 188, type: !798, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1324)
!1324 = !{!1322, !1325, !1326}
!1325 = !DILocalVariable(name: "s", scope: !1323, file: !320, line: 190, type: !78)
!1326 = !DILocalVariable(name: "errbuf", scope: !1323, file: !320, line: 193, type: !1327)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 1024)
!1330 = !DILocation(line: 0, scope: !1323, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 234, column: 5, scope: !1320)
!1332 = !DILocation(line: 193, column: 3, scope: !1323, inlinedAt: !1331)
!1333 = !DILocation(line: 193, column: 8, scope: !1323, inlinedAt: !1331)
!1334 = !DILocation(line: 195, column: 7, scope: !1323, inlinedAt: !1331)
!1335 = !DILocation(line: 207, column: 9, scope: !1336, inlinedAt: !1331)
!1336 = distinct !DILexicalBlock(scope: !1323, file: !320, line: 207, column: 7)
!1337 = !DILocation(line: 207, column: 7, scope: !1323, inlinedAt: !1331)
!1338 = !DILocation(line: 208, column: 9, scope: !1336, inlinedAt: !1331)
!1339 = !DILocation(line: 208, column: 5, scope: !1336, inlinedAt: !1331)
!1340 = !DILocation(line: 214, column: 3, scope: !1323, inlinedAt: !1331)
!1341 = !DILocation(line: 216, column: 1, scope: !1323, inlinedAt: !1331)
!1342 = !DILocation(line: 234, column: 5, scope: !1320)
!1343 = !DILocation(line: 238, column: 3, scope: !1258)
!1344 = !DILocalVariable(name: "__c", arg: 1, scope: !1345, file: !1346, line: 101, type: !100)
!1345 = distinct !DISubprogram(name: "putc_unlocked", scope: !1346, file: !1346, line: 101, type: !1347, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1349)
!1346 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!100, !100, !1272}
!1349 = !{!1344, !1350}
!1350 = !DILocalVariable(name: "__stream", arg: 2, scope: !1345, file: !1346, line: 101, type: !1272)
!1351 = !DILocation(line: 0, scope: !1345, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 238, column: 3, scope: !1258)
!1353 = !DILocation(line: 103, column: 10, scope: !1345, inlinedAt: !1352)
!1354 = !{!1355, !809, i64 40}
!1355 = !{!"_IO_FILE", !865, i64 0, !809, i64 8, !809, i64 16, !809, i64 24, !809, i64 32, !809, i64 40, !809, i64 48, !809, i64 56, !809, i64 64, !809, i64 72, !809, i64 80, !809, i64 88, !809, i64 96, !809, i64 104, !865, i64 112, !865, i64 116, !1356, i64 120, !906, i64 128, !810, i64 130, !810, i64 131, !809, i64 136, !1356, i64 144, !809, i64 152, !809, i64 160, !809, i64 168, !809, i64 176, !1356, i64 184, !865, i64 192, !810, i64 196}
!1356 = !{!"long", !810, i64 0}
!1357 = !{!1355, !809, i64 48}
!1358 = !{!"branch_weights", i32 2000, i32 1}
!1359 = !DILocation(line: 240, column: 3, scope: !1258)
!1360 = !DILocation(line: 241, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1258, file: !320, line: 241, column: 7)
!1362 = !DILocation(line: 241, column: 7, scope: !1258)
!1363 = !DILocation(line: 242, column: 5, scope: !1361)
!1364 = !DILocation(line: 243, column: 1, scope: !1258)
!1365 = !DISubprogram(name: "__vfprintf_chk", scope: !854, file: !854, line: 96, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!100, !1271, !100, !858, !332}
!1368 = !DISubprogram(name: "strerror_r", scope: !981, file: !981, line: 444, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!244, !100, !244, !102}
!1371 = !DISubprogram(name: "__overflow", scope: !331, file: !331, line: 886, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!100, !1272, !100}
!1374 = !DISubprogram(name: "fflush_unlocked", scope: !331, file: !331, line: 239, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!100, !1272}
!1377 = !DISubprogram(name: "fcntl", scope: !1378, file: !1378, line: 149, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1378 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!100, !100, !100, null}
!1381 = distinct !DISubprogram(name: "error", scope: !320, file: !320, line: 285, type: !1382, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !100, !100, !78, null}
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "status", arg: 1, scope: !1381, file: !320, line: 285, type: !100)
!1386 = !DILocalVariable(name: "errnum", arg: 2, scope: !1381, file: !320, line: 285, type: !100)
!1387 = !DILocalVariable(name: "message", arg: 3, scope: !1381, file: !320, line: 285, type: !78)
!1388 = !DILocalVariable(name: "ap", scope: !1381, file: !320, line: 287, type: !330)
!1389 = !DILocation(line: 0, scope: !1381)
!1390 = !DILocation(line: 287, column: 3, scope: !1381)
!1391 = !DILocation(line: 287, column: 11, scope: !1381)
!1392 = !DILocation(line: 288, column: 3, scope: !1381)
!1393 = !DILocation(line: 289, column: 3, scope: !1381)
!1394 = !DILocation(line: 290, column: 3, scope: !1381)
!1395 = !DILocation(line: 291, column: 1, scope: !1381)
!1396 = !DILocation(line: 0, scope: !327)
!1397 = !DILocation(line: 298, column: 1, scope: !327)
!1398 = !DILocation(line: 302, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !327, file: !320, line: 302, column: 7)
!1400 = !DILocation(line: 302, column: 7, scope: !327)
!1401 = !DILocation(line: 307, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !320, line: 307, column: 11)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !320, line: 303, column: 5)
!1404 = !DILocation(line: 307, column: 27, scope: !1402)
!1405 = !DILocation(line: 308, column: 11, scope: !1402)
!1406 = !DILocation(line: 308, column: 28, scope: !1402)
!1407 = !DILocation(line: 308, column: 25, scope: !1402)
!1408 = !DILocation(line: 309, column: 15, scope: !1402)
!1409 = !DILocation(line: 309, column: 33, scope: !1402)
!1410 = !DILocation(line: 310, column: 19, scope: !1402)
!1411 = !DILocation(line: 311, column: 22, scope: !1402)
!1412 = !DILocation(line: 311, column: 56, scope: !1402)
!1413 = !DILocation(line: 307, column: 11, scope: !1403)
!1414 = !DILocation(line: 316, column: 21, scope: !1403)
!1415 = !DILocation(line: 317, column: 23, scope: !1403)
!1416 = !DILocation(line: 318, column: 5, scope: !1403)
!1417 = !DILocation(line: 327, column: 3, scope: !327)
!1418 = !DILocation(line: 331, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !327, file: !320, line: 331, column: 7)
!1420 = !DILocation(line: 331, column: 7, scope: !327)
!1421 = !DILocation(line: 332, column: 5, scope: !1419)
!1422 = !DILocation(line: 338, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !320, line: 334, column: 5)
!1424 = !DILocation(line: 346, column: 3, scope: !327)
!1425 = !DILocation(line: 350, column: 3, scope: !327)
!1426 = !DILocation(line: 356, column: 1, scope: !327)
!1427 = distinct !DISubprogram(name: "error_at_line", scope: !320, file: !320, line: 359, type: !1428, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !100, !100, !78, !84, !78, null}
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436}
!1431 = !DILocalVariable(name: "status", arg: 1, scope: !1427, file: !320, line: 359, type: !100)
!1432 = !DILocalVariable(name: "errnum", arg: 2, scope: !1427, file: !320, line: 359, type: !100)
!1433 = !DILocalVariable(name: "file_name", arg: 3, scope: !1427, file: !320, line: 359, type: !78)
!1434 = !DILocalVariable(name: "line_number", arg: 4, scope: !1427, file: !320, line: 360, type: !84)
!1435 = !DILocalVariable(name: "message", arg: 5, scope: !1427, file: !320, line: 360, type: !78)
!1436 = !DILocalVariable(name: "ap", scope: !1427, file: !320, line: 362, type: !330)
!1437 = !DILocation(line: 0, scope: !1427)
!1438 = !DILocation(line: 362, column: 3, scope: !1427)
!1439 = !DILocation(line: 362, column: 11, scope: !1427)
!1440 = !DILocation(line: 363, column: 3, scope: !1427)
!1441 = !DILocation(line: 364, column: 3, scope: !1427)
!1442 = !DILocation(line: 366, column: 3, scope: !1427)
!1443 = !DILocation(line: 367, column: 1, scope: !1427)
!1444 = distinct !DISubprogram(name: "getprogname", scope: !709, file: !709, line: 54, type: !1445, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !852)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!78}
!1447 = !DILocation(line: 58, column: 10, scope: !1444)
!1448 = !DILocation(line: 58, column: 3, scope: !1444)
!1449 = distinct !DISubprogram(name: "parse_long_options", scope: !376, file: !376, line: 45, type: !1450, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1453)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !100, !1015, !78, !78, !78, !1452, null}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1464}
!1454 = !DILocalVariable(name: "argc", arg: 1, scope: !1449, file: !376, line: 45, type: !100)
!1455 = !DILocalVariable(name: "argv", arg: 2, scope: !1449, file: !376, line: 46, type: !1015)
!1456 = !DILocalVariable(name: "command_name", arg: 3, scope: !1449, file: !376, line: 47, type: !78)
!1457 = !DILocalVariable(name: "package", arg: 4, scope: !1449, file: !376, line: 48, type: !78)
!1458 = !DILocalVariable(name: "version", arg: 5, scope: !1449, file: !376, line: 49, type: !78)
!1459 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1449, file: !376, line: 50, type: !1452)
!1460 = !DILocalVariable(name: "saved_opterr", scope: !1449, file: !376, line: 53, type: !100)
!1461 = !DILocalVariable(name: "c", scope: !1462, file: !376, line: 60, type: !100)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !376, line: 59, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !376, line: 58, column: 7)
!1464 = !DILocalVariable(name: "authors", scope: !1465, file: !376, line: 71, type: !1469)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !376, line: 70, column: 15)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !376, line: 64, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !376, line: 62, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !376, line: 61, column: 11)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 14, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1472, baseType: !1473)
!1472 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1473, file: !1472, line: 71, baseType: !99, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1473, file: !1472, line: 71, baseType: !99, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1473, file: !1472, line: 71, baseType: !99, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1473, file: !1472, line: 71, baseType: !100, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1473, file: !1472, line: 71, baseType: !100, size: 32, offset: 224)
!1480 = !DILocation(line: 0, scope: !1449)
!1481 = !DILocation(line: 53, column: 22, scope: !1449)
!1482 = !DILocation(line: 56, column: 10, scope: !1449)
!1483 = !DILocation(line: 58, column: 12, scope: !1463)
!1484 = !DILocation(line: 58, column: 7, scope: !1449)
!1485 = !DILocation(line: 60, column: 15, scope: !1462)
!1486 = !DILocation(line: 0, scope: !1462)
!1487 = !DILocation(line: 61, column: 11, scope: !1462)
!1488 = !DILocation(line: 66, column: 15, scope: !1466)
!1489 = !DILocation(line: 67, column: 15, scope: !1466)
!1490 = !DILocation(line: 71, column: 17, scope: !1465)
!1491 = !DILocation(line: 71, column: 25, scope: !1465)
!1492 = !DILocation(line: 72, column: 17, scope: !1465)
!1493 = !DILocation(line: 73, column: 33, scope: !1465)
!1494 = !DILocation(line: 73, column: 17, scope: !1465)
!1495 = !DILocation(line: 74, column: 17, scope: !1465)
!1496 = !DILocation(line: 85, column: 10, scope: !1449)
!1497 = !DILocation(line: 89, column: 10, scope: !1449)
!1498 = !DILocation(line: 90, column: 1, scope: !1449)
!1499 = !DISubprogram(name: "getopt_long", scope: !390, file: !390, line: 66, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!100, !100, !1502, !78, !1504, !395}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!1505 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !376, file: !376, line: 98, type: !1506, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !100, !1015, !78, !78, !78, !223, !1452, null}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1509 = !DILocalVariable(name: "argc", arg: 1, scope: !1505, file: !376, line: 98, type: !100)
!1510 = !DILocalVariable(name: "argv", arg: 2, scope: !1505, file: !376, line: 99, type: !1015)
!1511 = !DILocalVariable(name: "command_name", arg: 3, scope: !1505, file: !376, line: 100, type: !78)
!1512 = !DILocalVariable(name: "package", arg: 4, scope: !1505, file: !376, line: 101, type: !78)
!1513 = !DILocalVariable(name: "version", arg: 5, scope: !1505, file: !376, line: 102, type: !78)
!1514 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1505, file: !376, line: 103, type: !223)
!1515 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1505, file: !376, line: 104, type: !1452)
!1516 = !DILocalVariable(name: "saved_opterr", scope: !1505, file: !376, line: 107, type: !100)
!1517 = !DILocalVariable(name: "optstring", scope: !1505, file: !376, line: 112, type: !78)
!1518 = !DILocalVariable(name: "c", scope: !1505, file: !376, line: 114, type: !100)
!1519 = !DILocalVariable(name: "authors", scope: !1520, file: !376, line: 125, type: !1469)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !376, line: 124, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !376, line: 118, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !376, line: 116, column: 5)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !376, line: 115, column: 7)
!1524 = !DILocation(line: 0, scope: !1505)
!1525 = !DILocation(line: 107, column: 22, scope: !1505)
!1526 = !DILocation(line: 110, column: 10, scope: !1505)
!1527 = !DILocation(line: 112, column: 27, scope: !1505)
!1528 = !DILocation(line: 114, column: 11, scope: !1505)
!1529 = !DILocation(line: 115, column: 7, scope: !1505)
!1530 = !DILocation(line: 125, column: 13, scope: !1520)
!1531 = !DILocation(line: 125, column: 21, scope: !1520)
!1532 = !DILocation(line: 126, column: 13, scope: !1520)
!1533 = !DILocation(line: 127, column: 29, scope: !1520)
!1534 = !DILocation(line: 127, column: 13, scope: !1520)
!1535 = !DILocation(line: 128, column: 13, scope: !1520)
!1536 = !DILocation(line: 132, column: 26, scope: !1521)
!1537 = !DILocation(line: 133, column: 11, scope: !1521)
!1538 = !DILocation(line: 0, scope: !1521)
!1539 = !DILocation(line: 138, column: 10, scope: !1505)
!1540 = !DILocation(line: 139, column: 1, scope: !1505)
!1541 = distinct !DISubprogram(name: "set_program_name", scope: !400, file: !400, line: 37, type: !818, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "argv0", arg: 1, scope: !1541, file: !400, line: 37, type: !78)
!1544 = !DILocalVariable(name: "slash", scope: !1541, file: !400, line: 44, type: !78)
!1545 = !DILocalVariable(name: "base", scope: !1541, file: !400, line: 45, type: !78)
!1546 = !DILocation(line: 0, scope: !1541)
!1547 = !DILocation(line: 44, column: 23, scope: !1541)
!1548 = !DILocation(line: 45, column: 22, scope: !1541)
!1549 = !DILocation(line: 46, column: 17, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1541, file: !400, line: 46, column: 7)
!1551 = !DILocation(line: 46, column: 9, scope: !1550)
!1552 = !DILocation(line: 46, column: 25, scope: !1550)
!1553 = !DILocation(line: 46, column: 40, scope: !1550)
!1554 = !DILocalVariable(name: "__s1", arg: 1, scope: !1555, file: !877, line: 974, type: !1010)
!1555 = distinct !DISubprogram(name: "memeq", scope: !877, file: !877, line: 974, type: !1556, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!223, !1010, !1010, !102}
!1558 = !{!1554, !1559, !1560}
!1559 = !DILocalVariable(name: "__s2", arg: 2, scope: !1555, file: !877, line: 974, type: !1010)
!1560 = !DILocalVariable(name: "__n", arg: 3, scope: !1555, file: !877, line: 974, type: !102)
!1561 = !DILocation(line: 0, scope: !1555, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 46, column: 28, scope: !1550)
!1563 = !DILocation(line: 976, column: 11, scope: !1555, inlinedAt: !1562)
!1564 = !DILocation(line: 976, column: 10, scope: !1555, inlinedAt: !1562)
!1565 = !DILocation(line: 46, column: 7, scope: !1541)
!1566 = !DILocation(line: 49, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !400, line: 49, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1550, file: !400, line: 47, column: 5)
!1569 = !DILocation(line: 49, column: 36, scope: !1567)
!1570 = !DILocation(line: 49, column: 11, scope: !1568)
!1571 = !DILocation(line: 65, column: 16, scope: !1541)
!1572 = !DILocation(line: 71, column: 27, scope: !1541)
!1573 = !DILocation(line: 74, column: 33, scope: !1541)
!1574 = !DILocation(line: 76, column: 1, scope: !1541)
!1575 = !DISubprogram(name: "strrchr", scope: !981, file: !981, line: 273, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1576 = !DILocation(line: 0, scope: !409)
!1577 = !DILocation(line: 40, column: 29, scope: !409)
!1578 = !DILocation(line: 41, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !409, file: !410, line: 41, column: 7)
!1580 = !DILocation(line: 41, column: 7, scope: !409)
!1581 = !DILocation(line: 47, column: 3, scope: !409)
!1582 = !DILocation(line: 48, column: 3, scope: !409)
!1583 = !DILocation(line: 48, column: 13, scope: !409)
!1584 = !DILocalVariable(name: "ps", arg: 1, scope: !1585, file: !1586, line: 1135, type: !1589)
!1585 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !1587, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1590)
!1586 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1590 = !{!1584}
!1591 = !DILocation(line: 0, scope: !1585, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 48, column: 18, scope: !409)
!1593 = !DILocalVariable(name: "__dest", arg: 1, scope: !1594, file: !1595, line: 57, type: !99)
!1594 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1598)
!1595 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!99, !99, !100, !102}
!1598 = !{!1593, !1599, !1600}
!1599 = !DILocalVariable(name: "__ch", arg: 2, scope: !1594, file: !1595, line: 57, type: !100)
!1600 = !DILocalVariable(name: "__len", arg: 3, scope: !1594, file: !1595, line: 57, type: !102)
!1601 = !DILocation(line: 0, scope: !1594, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1137, column: 3, scope: !1585, inlinedAt: !1592)
!1603 = !DILocation(line: 59, column: 10, scope: !1594, inlinedAt: !1602)
!1604 = !DILocation(line: 49, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !409, file: !410, line: 49, column: 7)
!1606 = !DILocation(line: 49, column: 39, scope: !1605)
!1607 = !DILocation(line: 49, column: 44, scope: !1605)
!1608 = !DILocation(line: 54, column: 1, scope: !409)
!1609 = !DISubprogram(name: "mbrtoc32", scope: !421, file: !421, line: 57, type: !1610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!102, !1612, !858, !102, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1589)
!1615 = distinct !DISubprogram(name: "clone_quoting_options", scope: !440, file: !440, line: 113, type: !1616, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1619)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1618, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "o", arg: 1, scope: !1615, file: !440, line: 113, type: !1618)
!1621 = !DILocalVariable(name: "saved_errno", scope: !1615, file: !440, line: 115, type: !100)
!1622 = !DILocalVariable(name: "p", scope: !1615, file: !440, line: 116, type: !1618)
!1623 = !DILocation(line: 0, scope: !1615)
!1624 = !DILocation(line: 115, column: 21, scope: !1615)
!1625 = !DILocation(line: 116, column: 40, scope: !1615)
!1626 = !DILocation(line: 116, column: 31, scope: !1615)
!1627 = !DILocation(line: 118, column: 9, scope: !1615)
!1628 = !DILocation(line: 119, column: 3, scope: !1615)
!1629 = distinct !DISubprogram(name: "get_quoting_style", scope: !440, file: !440, line: 124, type: !1630, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1634)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!463, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "o", arg: 1, scope: !1629, file: !440, line: 124, type: !1632)
!1636 = !DILocation(line: 0, scope: !1629)
!1637 = !DILocation(line: 126, column: 11, scope: !1629)
!1638 = !DILocation(line: 126, column: 46, scope: !1629)
!1639 = !{!1640, !810, i64 0}
!1640 = !{!"quoting_options", !810, i64 0, !865, i64 4, !810, i64 8, !809, i64 40, !809, i64 48}
!1641 = !DILocation(line: 126, column: 3, scope: !1629)
!1642 = distinct !DISubprogram(name: "set_quoting_style", scope: !440, file: !440, line: 132, type: !1643, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1618, !463}
!1645 = !{!1646, !1647}
!1646 = !DILocalVariable(name: "o", arg: 1, scope: !1642, file: !440, line: 132, type: !1618)
!1647 = !DILocalVariable(name: "s", arg: 2, scope: !1642, file: !440, line: 132, type: !463)
!1648 = !DILocation(line: 0, scope: !1642)
!1649 = !DILocation(line: 134, column: 4, scope: !1642)
!1650 = !DILocation(line: 134, column: 45, scope: !1642)
!1651 = !DILocation(line: 135, column: 1, scope: !1642)
!1652 = distinct !DISubprogram(name: "set_char_quoting", scope: !440, file: !440, line: 143, type: !1653, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!100, !1618, !4, !100}
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1662, !1663}
!1656 = !DILocalVariable(name: "o", arg: 1, scope: !1652, file: !440, line: 143, type: !1618)
!1657 = !DILocalVariable(name: "c", arg: 2, scope: !1652, file: !440, line: 143, type: !4)
!1658 = !DILocalVariable(name: "i", arg: 3, scope: !1652, file: !440, line: 143, type: !100)
!1659 = !DILocalVariable(name: "uc", scope: !1652, file: !440, line: 145, type: !105)
!1660 = !DILocalVariable(name: "p", scope: !1652, file: !440, line: 146, type: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1662 = !DILocalVariable(name: "shift", scope: !1652, file: !440, line: 148, type: !100)
!1663 = !DILocalVariable(name: "r", scope: !1652, file: !440, line: 149, type: !84)
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
!1677 = distinct !DISubprogram(name: "set_quoting_flags", scope: !440, file: !440, line: 159, type: !1678, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!100, !1618, !100}
!1680 = !{!1681, !1682, !1683}
!1681 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !440, line: 159, type: !1618)
!1682 = !DILocalVariable(name: "i", arg: 2, scope: !1677, file: !440, line: 159, type: !100)
!1683 = !DILocalVariable(name: "r", scope: !1677, file: !440, line: 163, type: !100)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 161, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1677, file: !440, line: 161, column: 7)
!1687 = !DILocation(line: 161, column: 7, scope: !1677)
!1688 = !DILocation(line: 163, column: 14, scope: !1677)
!1689 = !{!1640, !865, i64 4}
!1690 = !DILocation(line: 164, column: 12, scope: !1677)
!1691 = !DILocation(line: 165, column: 3, scope: !1677)
!1692 = distinct !DISubprogram(name: "set_custom_quoting", scope: !440, file: !440, line: 169, type: !1693, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1618, !78, !78}
!1695 = !{!1696, !1697, !1698}
!1696 = !DILocalVariable(name: "o", arg: 1, scope: !1692, file: !440, line: 169, type: !1618)
!1697 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1692, file: !440, line: 170, type: !78)
!1698 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1692, file: !440, line: 170, type: !78)
!1699 = !DILocation(line: 0, scope: !1692)
!1700 = !DILocation(line: 172, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1692, file: !440, line: 172, column: 7)
!1702 = !DILocation(line: 172, column: 7, scope: !1692)
!1703 = !DILocation(line: 174, column: 12, scope: !1692)
!1704 = !DILocation(line: 175, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1692, file: !440, line: 175, column: 7)
!1706 = !DILocation(line: 175, column: 19, scope: !1705)
!1707 = !DILocation(line: 176, column: 5, scope: !1705)
!1708 = !DILocation(line: 177, column: 6, scope: !1692)
!1709 = !DILocation(line: 177, column: 17, scope: !1692)
!1710 = !{!1640, !809, i64 40}
!1711 = !DILocation(line: 178, column: 6, scope: !1692)
!1712 = !DILocation(line: 178, column: 18, scope: !1692)
!1713 = !{!1640, !809, i64 48}
!1714 = !DILocation(line: 179, column: 1, scope: !1692)
!1715 = !DISubprogram(name: "abort", scope: !988, file: !988, line: 598, type: !372, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !852)
!1716 = distinct !DISubprogram(name: "quotearg_buffer", scope: !440, file: !440, line: 774, type: !1717, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!102, !244, !102, !78, !102, !1632}
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1720 = !DILocalVariable(name: "buffer", arg: 1, scope: !1716, file: !440, line: 774, type: !244)
!1721 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1716, file: !440, line: 774, type: !102)
!1722 = !DILocalVariable(name: "arg", arg: 3, scope: !1716, file: !440, line: 775, type: !78)
!1723 = !DILocalVariable(name: "argsize", arg: 4, scope: !1716, file: !440, line: 775, type: !102)
!1724 = !DILocalVariable(name: "o", arg: 5, scope: !1716, file: !440, line: 776, type: !1632)
!1725 = !DILocalVariable(name: "p", scope: !1716, file: !440, line: 778, type: !1632)
!1726 = !DILocalVariable(name: "saved_errno", scope: !1716, file: !440, line: 779, type: !100)
!1727 = !DILocalVariable(name: "r", scope: !1716, file: !440, line: 780, type: !102)
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
!1739 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !440, file: !440, line: 251, type: !1740, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1744)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!102, !244, !102, !78, !102, !463, !100, !1742, !78, !78}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1769, !1771, !1774, !1775, !1776, !1777, !1780, !1781, !1784, !1788, !1789, !1797, !1800, !1801, !1803, !1804, !1805, !1806}
!1745 = !DILocalVariable(name: "buffer", arg: 1, scope: !1739, file: !440, line: 251, type: !244)
!1746 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1739, file: !440, line: 251, type: !102)
!1747 = !DILocalVariable(name: "arg", arg: 3, scope: !1739, file: !440, line: 252, type: !78)
!1748 = !DILocalVariable(name: "argsize", arg: 4, scope: !1739, file: !440, line: 252, type: !102)
!1749 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1739, file: !440, line: 253, type: !463)
!1750 = !DILocalVariable(name: "flags", arg: 6, scope: !1739, file: !440, line: 253, type: !100)
!1751 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1739, file: !440, line: 254, type: !1742)
!1752 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1739, file: !440, line: 255, type: !78)
!1753 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1739, file: !440, line: 256, type: !78)
!1754 = !DILocalVariable(name: "unibyte_locale", scope: !1739, file: !440, line: 258, type: !223)
!1755 = !DILocalVariable(name: "len", scope: !1739, file: !440, line: 260, type: !102)
!1756 = !DILocalVariable(name: "orig_buffersize", scope: !1739, file: !440, line: 261, type: !102)
!1757 = !DILocalVariable(name: "quote_string", scope: !1739, file: !440, line: 262, type: !78)
!1758 = !DILocalVariable(name: "quote_string_len", scope: !1739, file: !440, line: 263, type: !102)
!1759 = !DILocalVariable(name: "backslash_escapes", scope: !1739, file: !440, line: 264, type: !223)
!1760 = !DILocalVariable(name: "elide_outer_quotes", scope: !1739, file: !440, line: 265, type: !223)
!1761 = !DILocalVariable(name: "encountered_single_quote", scope: !1739, file: !440, line: 266, type: !223)
!1762 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1739, file: !440, line: 267, type: !223)
!1763 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1739, file: !440, line: 309, type: !223)
!1764 = !DILocalVariable(name: "lq", scope: !1765, file: !440, line: 361, type: !78)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !440, line: 361, column: 11)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !440, line: 360, column: 13)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !440, line: 333, column: 7)
!1768 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 312, column: 5)
!1769 = !DILocalVariable(name: "i", scope: !1770, file: !440, line: 395, type: !102)
!1770 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 395, column: 3)
!1771 = !DILocalVariable(name: "is_right_quote", scope: !1772, file: !440, line: 397, type: !223)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !440, line: 396, column: 5)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !440, line: 395, column: 3)
!1774 = !DILocalVariable(name: "escaping", scope: !1772, file: !440, line: 398, type: !223)
!1775 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1772, file: !440, line: 399, type: !223)
!1776 = !DILocalVariable(name: "c", scope: !1772, file: !440, line: 417, type: !105)
!1777 = !DILocalVariable(name: "m", scope: !1778, file: !440, line: 598, type: !102)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 596, column: 11)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 419, column: 9)
!1780 = !DILocalVariable(name: "printable", scope: !1778, file: !440, line: 600, type: !223)
!1781 = !DILocalVariable(name: "mbs", scope: !1782, file: !440, line: 609, type: !524)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !440, line: 608, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !440, line: 602, column: 17)
!1784 = !DILocalVariable(name: "w", scope: !1785, file: !440, line: 618, type: !420)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !440, line: 617, column: 19)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !440, line: 616, column: 17)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 616, column: 17)
!1788 = !DILocalVariable(name: "bytes", scope: !1785, file: !440, line: 619, type: !102)
!1789 = !DILocalVariable(name: "j", scope: !1790, file: !440, line: 648, type: !102)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !440, line: 648, column: 29)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !440, line: 647, column: 27)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !440, line: 645, column: 29)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !440, line: 636, column: 23)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !440, line: 628, column: 30)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !440, line: 623, column: 30)
!1796 = distinct !DILexicalBlock(scope: !1785, file: !440, line: 621, column: 25)
!1797 = !DILocalVariable(name: "ilim", scope: !1798, file: !440, line: 674, type: !102)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !440, line: 671, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1778, file: !440, line: 670, column: 17)
!1800 = !DILabel(scope: !1739, name: "process_input", file: !440, line: 308)
!1801 = !DILabel(scope: !1802, name: "c_and_shell_escape", file: !440, line: 502)
!1802 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 478, column: 9)
!1803 = !DILabel(scope: !1802, name: "c_escape", file: !440, line: 507)
!1804 = !DILabel(scope: !1772, name: "store_escape", file: !440, line: 709)
!1805 = !DILabel(scope: !1772, name: "store_c", file: !440, line: 712)
!1806 = !DILabel(scope: !1739, name: "force_outer_quoting_style", file: !440, line: 753)
!1807 = !DILocation(line: 0, scope: !1739)
!1808 = !DILocation(line: 258, column: 25, scope: !1739)
!1809 = !DILocation(line: 258, column: 36, scope: !1739)
!1810 = !DILocation(line: 267, column: 3, scope: !1739)
!1811 = !DILocation(line: 261, column: 10, scope: !1739)
!1812 = !DILocation(line: 262, column: 15, scope: !1739)
!1813 = !DILocation(line: 263, column: 10, scope: !1739)
!1814 = !DILocation(line: 308, column: 2, scope: !1739)
!1815 = !DILocation(line: 311, column: 3, scope: !1739)
!1816 = !DILocation(line: 318, column: 11, scope: !1768)
!1817 = !DILocation(line: 319, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !440, line: 319, column: 9)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !440, line: 319, column: 9)
!1820 = distinct !DILexicalBlock(scope: !1768, file: !440, line: 318, column: 11)
!1821 = !DILocation(line: 319, column: 9, scope: !1819)
!1822 = !DILocation(line: 0, scope: !515, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 357, column: 26, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !440, line: 335, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1767, file: !440, line: 334, column: 13)
!1826 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1823)
!1827 = !DILocation(line: 201, column: 19, scope: !1828, inlinedAt: !1823)
!1828 = distinct !DILexicalBlock(scope: !515, file: !440, line: 201, column: 7)
!1829 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1823)
!1830 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1823)
!1831 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1823)
!1832 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1823)
!1833 = !DILocalVariable(name: "ps", arg: 1, scope: !1834, file: !1586, line: 1135, type: !1837)
!1834 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !1835, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1838)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1838 = !{!1833}
!1839 = !DILocation(line: 0, scope: !1834, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1823)
!1841 = !DILocalVariable(name: "__dest", arg: 1, scope: !1842, file: !1595, line: 57, type: !99)
!1842 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1843)
!1843 = !{!1841, !1844, !1845}
!1844 = !DILocalVariable(name: "__ch", arg: 2, scope: !1842, file: !1595, line: 57, type: !100)
!1845 = !DILocalVariable(name: "__len", arg: 3, scope: !1842, file: !1595, line: 57, type: !102)
!1846 = !DILocation(line: 0, scope: !1842, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 1137, column: 3, scope: !1834, inlinedAt: !1840)
!1848 = !DILocation(line: 59, column: 10, scope: !1842, inlinedAt: !1847)
!1849 = !DILocation(line: 231, column: 7, scope: !1850, inlinedAt: !1823)
!1850 = distinct !DILexicalBlock(scope: !515, file: !440, line: 231, column: 7)
!1851 = !DILocation(line: 231, column: 40, scope: !1850, inlinedAt: !1823)
!1852 = !DILocation(line: 231, column: 45, scope: !1850, inlinedAt: !1823)
!1853 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1823)
!1854 = !DILocation(line: 0, scope: !515, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 358, column: 27, scope: !1824)
!1856 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1855)
!1857 = !DILocation(line: 201, column: 19, scope: !1828, inlinedAt: !1855)
!1858 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1855)
!1859 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1855)
!1860 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1855)
!1861 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1855)
!1862 = !DILocation(line: 0, scope: !1834, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1855)
!1864 = !DILocation(line: 0, scope: !1842, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 1137, column: 3, scope: !1834, inlinedAt: !1863)
!1866 = !DILocation(line: 59, column: 10, scope: !1842, inlinedAt: !1865)
!1867 = !DILocation(line: 231, column: 7, scope: !1850, inlinedAt: !1855)
!1868 = !DILocation(line: 231, column: 40, scope: !1850, inlinedAt: !1855)
!1869 = !DILocation(line: 231, column: 45, scope: !1850, inlinedAt: !1855)
!1870 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1855)
!1871 = !DILocation(line: 360, column: 13, scope: !1767)
!1872 = !DILocation(line: 0, scope: !1765)
!1873 = !DILocation(line: 361, column: 45, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1765, file: !440, line: 361, column: 11)
!1875 = !DILocation(line: 361, column: 11, scope: !1765)
!1876 = !DILocation(line: 362, column: 13, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !440, line: 362, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !440, line: 362, column: 13)
!1879 = !DILocation(line: 362, column: 13, scope: !1878)
!1880 = !DILocation(line: 361, column: 52, scope: !1874)
!1881 = distinct !{!1881, !1875, !1882, !911}
!1882 = !DILocation(line: 362, column: 13, scope: !1765)
!1883 = !DILocation(line: 260, column: 10, scope: !1739)
!1884 = !DILocation(line: 365, column: 28, scope: !1767)
!1885 = !DILocation(line: 367, column: 7, scope: !1768)
!1886 = !DILocation(line: 370, column: 7, scope: !1768)
!1887 = !DILocation(line: 376, column: 11, scope: !1768)
!1888 = !DILocation(line: 381, column: 11, scope: !1768)
!1889 = !DILocation(line: 382, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !440, line: 382, column: 9)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !440, line: 382, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1768, file: !440, line: 381, column: 11)
!1893 = !DILocation(line: 382, column: 9, scope: !1891)
!1894 = !DILocation(line: 389, column: 7, scope: !1768)
!1895 = !DILocation(line: 392, column: 7, scope: !1768)
!1896 = !DILocation(line: 0, scope: !1770)
!1897 = !DILocation(line: 395, column: 8, scope: !1770)
!1898 = !DILocation(line: 395, scope: !1770)
!1899 = !DILocation(line: 395, column: 34, scope: !1773)
!1900 = !DILocation(line: 395, column: 26, scope: !1773)
!1901 = !DILocation(line: 395, column: 48, scope: !1773)
!1902 = !DILocation(line: 395, column: 55, scope: !1773)
!1903 = !DILocation(line: 395, column: 3, scope: !1770)
!1904 = !DILocation(line: 395, column: 67, scope: !1773)
!1905 = !DILocation(line: 0, scope: !1772)
!1906 = !DILocation(line: 402, column: 11, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 401, column: 11)
!1908 = !DILocation(line: 404, column: 17, scope: !1907)
!1909 = !DILocation(line: 405, column: 39, scope: !1907)
!1910 = !DILocation(line: 409, column: 32, scope: !1907)
!1911 = !DILocation(line: 405, column: 19, scope: !1907)
!1912 = !DILocation(line: 405, column: 15, scope: !1907)
!1913 = !DILocation(line: 410, column: 11, scope: !1907)
!1914 = !DILocation(line: 410, column: 25, scope: !1907)
!1915 = !DILocalVariable(name: "__s1", arg: 1, scope: !1916, file: !877, line: 974, type: !1010)
!1916 = distinct !DISubprogram(name: "memeq", scope: !877, file: !877, line: 974, type: !1556, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1917)
!1917 = !{!1915, !1918, !1919}
!1918 = !DILocalVariable(name: "__s2", arg: 2, scope: !1916, file: !877, line: 974, type: !1010)
!1919 = !DILocalVariable(name: "__n", arg: 3, scope: !1916, file: !877, line: 974, type: !102)
!1920 = !DILocation(line: 0, scope: !1916, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 410, column: 14, scope: !1907)
!1922 = !DILocation(line: 976, column: 11, scope: !1916, inlinedAt: !1921)
!1923 = !DILocation(line: 976, column: 10, scope: !1916, inlinedAt: !1921)
!1924 = !DILocation(line: 401, column: 11, scope: !1772)
!1925 = !DILocation(line: 417, column: 25, scope: !1772)
!1926 = !DILocation(line: 418, column: 7, scope: !1772)
!1927 = !DILocation(line: 421, column: 15, scope: !1779)
!1928 = !DILocation(line: 423, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !440, line: 423, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !440, line: 422, column: 13)
!1931 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 421, column: 15)
!1932 = !DILocation(line: 423, column: 15, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !440, line: 423, column: 15)
!1934 = !DILocation(line: 423, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !440, line: 423, column: 15)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !440, line: 423, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !440, line: 423, column: 15)
!1938 = !DILocation(line: 423, column: 15, scope: !1936)
!1939 = !DILocation(line: 423, column: 15, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !440, line: 423, column: 15)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !440, line: 423, column: 15)
!1942 = !DILocation(line: 423, column: 15, scope: !1941)
!1943 = !DILocation(line: 423, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !440, line: 423, column: 15)
!1945 = distinct !DILexicalBlock(scope: !1937, file: !440, line: 423, column: 15)
!1946 = !DILocation(line: 423, column: 15, scope: !1945)
!1947 = !DILocation(line: 423, column: 15, scope: !1937)
!1948 = !DILocation(line: 423, column: 15, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !440, line: 423, column: 15)
!1950 = distinct !DILexicalBlock(scope: !1929, file: !440, line: 423, column: 15)
!1951 = !DILocation(line: 423, column: 15, scope: !1950)
!1952 = !DILocation(line: 431, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1930, file: !440, line: 430, column: 19)
!1954 = !DILocation(line: 431, column: 24, scope: !1953)
!1955 = !DILocation(line: 431, column: 28, scope: !1953)
!1956 = !DILocation(line: 431, column: 38, scope: !1953)
!1957 = !DILocation(line: 431, column: 48, scope: !1953)
!1958 = !DILocation(line: 431, column: 59, scope: !1953)
!1959 = !DILocation(line: 433, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !440, line: 433, column: 19)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !440, line: 433, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !440, line: 432, column: 17)
!1963 = !DILocation(line: 433, column: 19, scope: !1961)
!1964 = !DILocation(line: 434, column: 19, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !440, line: 434, column: 19)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !440, line: 434, column: 19)
!1967 = !DILocation(line: 434, column: 19, scope: !1966)
!1968 = !DILocation(line: 435, column: 17, scope: !1962)
!1969 = !DILocation(line: 442, column: 20, scope: !1931)
!1970 = !DILocation(line: 447, column: 11, scope: !1779)
!1971 = !DILocation(line: 450, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 448, column: 13)
!1973 = !DILocation(line: 456, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1972, file: !440, line: 455, column: 19)
!1975 = !DILocation(line: 456, column: 24, scope: !1974)
!1976 = !DILocation(line: 456, column: 28, scope: !1974)
!1977 = !DILocation(line: 456, column: 38, scope: !1974)
!1978 = !DILocation(line: 456, column: 47, scope: !1974)
!1979 = !DILocation(line: 456, column: 41, scope: !1974)
!1980 = !DILocation(line: 456, column: 52, scope: !1974)
!1981 = !DILocation(line: 455, column: 19, scope: !1972)
!1982 = !DILocation(line: 457, column: 25, scope: !1974)
!1983 = !DILocation(line: 457, column: 17, scope: !1974)
!1984 = !DILocation(line: 464, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !440, line: 458, column: 19)
!1986 = !DILocation(line: 468, column: 21, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !440, line: 468, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !440, line: 468, column: 21)
!1989 = !DILocation(line: 468, column: 21, scope: !1988)
!1990 = !DILocation(line: 469, column: 21, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !440, line: 469, column: 21)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !440, line: 469, column: 21)
!1993 = !DILocation(line: 469, column: 21, scope: !1992)
!1994 = !DILocation(line: 470, column: 21, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !440, line: 470, column: 21)
!1996 = distinct !DILexicalBlock(scope: !1985, file: !440, line: 470, column: 21)
!1997 = !DILocation(line: 470, column: 21, scope: !1996)
!1998 = !DILocation(line: 471, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !440, line: 471, column: 21)
!2000 = distinct !DILexicalBlock(scope: !1985, file: !440, line: 471, column: 21)
!2001 = !DILocation(line: 471, column: 21, scope: !2000)
!2002 = !DILocation(line: 472, column: 21, scope: !1985)
!2003 = !DILocation(line: 482, column: 33, scope: !1802)
!2004 = !DILocation(line: 483, column: 33, scope: !1802)
!2005 = !DILocation(line: 485, column: 33, scope: !1802)
!2006 = !DILocation(line: 486, column: 33, scope: !1802)
!2007 = !DILocation(line: 487, column: 33, scope: !1802)
!2008 = !DILocation(line: 490, column: 17, scope: !1802)
!2009 = !DILocation(line: 492, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !440, line: 491, column: 15)
!2011 = distinct !DILexicalBlock(scope: !1802, file: !440, line: 490, column: 17)
!2012 = !DILocation(line: 499, column: 35, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1802, file: !440, line: 499, column: 17)
!2014 = !DILocation(line: 0, scope: !1802)
!2015 = !DILocation(line: 502, column: 11, scope: !1802)
!2016 = !DILocation(line: 504, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1802, file: !440, line: 503, column: 17)
!2018 = !DILocation(line: 507, column: 11, scope: !1802)
!2019 = !DILocation(line: 508, column: 17, scope: !1802)
!2020 = !DILocation(line: 517, column: 15, scope: !1779)
!2021 = !DILocation(line: 517, column: 40, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 517, column: 15)
!2023 = !DILocation(line: 517, column: 47, scope: !2022)
!2024 = !DILocation(line: 517, column: 18, scope: !2022)
!2025 = !DILocation(line: 521, column: 17, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 521, column: 15)
!2027 = !DILocation(line: 521, column: 15, scope: !1779)
!2028 = !DILocation(line: 525, column: 11, scope: !1779)
!2029 = !DILocation(line: 537, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 536, column: 15)
!2031 = !DILocation(line: 536, column: 15, scope: !1779)
!2032 = !DILocation(line: 544, column: 15, scope: !1779)
!2033 = !DILocation(line: 546, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !440, line: 545, column: 13)
!2035 = distinct !DILexicalBlock(scope: !1779, file: !440, line: 544, column: 15)
!2036 = !DILocation(line: 549, column: 19, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !440, line: 549, column: 19)
!2038 = !DILocation(line: 549, column: 30, scope: !2037)
!2039 = !DILocation(line: 558, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !440, line: 558, column: 15)
!2041 = distinct !DILexicalBlock(scope: !2034, file: !440, line: 558, column: 15)
!2042 = !DILocation(line: 558, column: 15, scope: !2041)
!2043 = !DILocation(line: 559, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !440, line: 559, column: 15)
!2045 = distinct !DILexicalBlock(scope: !2034, file: !440, line: 559, column: 15)
!2046 = !DILocation(line: 559, column: 15, scope: !2045)
!2047 = !DILocation(line: 560, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !440, line: 560, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2034, file: !440, line: 560, column: 15)
!2050 = !DILocation(line: 560, column: 15, scope: !2049)
!2051 = !DILocation(line: 562, column: 13, scope: !2034)
!2052 = !DILocation(line: 602, column: 17, scope: !1778)
!2053 = !DILocation(line: 0, scope: !1778)
!2054 = !DILocation(line: 605, column: 29, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1783, file: !440, line: 603, column: 15)
!2056 = !DILocation(line: 605, column: 41, scope: !2055)
!2057 = !DILocation(line: 606, column: 15, scope: !2055)
!2058 = !DILocation(line: 609, column: 17, scope: !1782)
!2059 = !DILocation(line: 609, column: 27, scope: !1782)
!2060 = !DILocation(line: 0, scope: !1834, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 609, column: 32, scope: !1782)
!2062 = !DILocation(line: 0, scope: !1842, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 1137, column: 3, scope: !1834, inlinedAt: !2061)
!2064 = !DILocation(line: 59, column: 10, scope: !1842, inlinedAt: !2063)
!2065 = !DILocation(line: 613, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 613, column: 21)
!2067 = !DILocation(line: 613, column: 21, scope: !1782)
!2068 = !DILocation(line: 614, column: 29, scope: !2066)
!2069 = !DILocation(line: 614, column: 19, scope: !2066)
!2070 = !DILocation(line: 618, column: 21, scope: !1785)
!2071 = !DILocation(line: 620, column: 54, scope: !1785)
!2072 = !DILocation(line: 0, scope: !1785)
!2073 = !DILocation(line: 619, column: 36, scope: !1785)
!2074 = !DILocation(line: 621, column: 25, scope: !1785)
!2075 = !DILocation(line: 631, column: 38, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1794, file: !440, line: 629, column: 23)
!2077 = !DILocation(line: 631, column: 48, scope: !2076)
!2078 = !DILocation(line: 626, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1795, file: !440, line: 624, column: 23)
!2080 = !DILocation(line: 631, column: 51, scope: !2076)
!2081 = !DILocation(line: 631, column: 25, scope: !2076)
!2082 = !DILocation(line: 632, column: 28, scope: !2076)
!2083 = !DILocation(line: 631, column: 34, scope: !2076)
!2084 = distinct !{!2084, !2081, !2082, !911}
!2085 = !DILocation(line: 646, column: 29, scope: !1792)
!2086 = !DILocation(line: 0, scope: !1790)
!2087 = !DILocation(line: 649, column: 49, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1790, file: !440, line: 648, column: 29)
!2089 = !DILocation(line: 649, column: 39, scope: !2088)
!2090 = !DILocation(line: 649, column: 31, scope: !2088)
!2091 = !DILocation(line: 648, column: 60, scope: !2088)
!2092 = !DILocation(line: 648, column: 50, scope: !2088)
!2093 = !DILocation(line: 648, column: 29, scope: !1790)
!2094 = distinct !{!2094, !2093, !2095, !911}
!2095 = !DILocation(line: 654, column: 33, scope: !1790)
!2096 = !DILocation(line: 657, column: 43, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1793, file: !440, line: 657, column: 29)
!2098 = !DILocalVariable(name: "wc", arg: 1, scope: !2099, file: !2100, line: 865, type: !2103)
!2099 = distinct !DISubprogram(name: "c32isprint", scope: !2100, file: !2100, line: 865, type: !2101, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2105)
!2100 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!100, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2104, line: 20, baseType: !84)
!2104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2105 = !{!2098}
!2106 = !DILocation(line: 0, scope: !2099, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 657, column: 31, scope: !2097)
!2108 = !DILocation(line: 871, column: 10, scope: !2099, inlinedAt: !2107)
!2109 = !DILocation(line: 657, column: 31, scope: !2097)
!2110 = !DILocation(line: 664, column: 23, scope: !1785)
!2111 = !DILocation(line: 665, column: 19, scope: !1786)
!2112 = !DILocation(line: 666, column: 15, scope: !1783)
!2113 = !DILocation(line: 753, column: 2, scope: !1739)
!2114 = !DILocation(line: 756, column: 51, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 756, column: 7)
!2116 = !DILocation(line: 0, scope: !1783)
!2117 = !DILocation(line: 670, column: 19, scope: !1799)
!2118 = !DILocation(line: 670, column: 23, scope: !1799)
!2119 = !DILocation(line: 674, column: 33, scope: !1798)
!2120 = !DILocation(line: 0, scope: !1798)
!2121 = !DILocation(line: 676, column: 17, scope: !1798)
!2122 = !DILocation(line: 398, column: 12, scope: !1772)
!2123 = !DILocation(line: 678, column: 43, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !440, line: 678, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !440, line: 677, column: 19)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !440, line: 676, column: 17)
!2127 = distinct !DILexicalBlock(scope: !1798, file: !440, line: 676, column: 17)
!2128 = !DILocation(line: 680, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !440, line: 680, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2124, file: !440, line: 679, column: 23)
!2131 = !DILocation(line: 680, column: 25, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !440, line: 680, column: 25)
!2133 = !DILocation(line: 680, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !440, line: 680, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !440, line: 680, column: 25)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !440, line: 680, column: 25)
!2137 = !DILocation(line: 680, column: 25, scope: !2135)
!2138 = !DILocation(line: 680, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !440, line: 680, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !440, line: 680, column: 25)
!2141 = !DILocation(line: 680, column: 25, scope: !2140)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !440, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2136, file: !440, line: 680, column: 25)
!2145 = !DILocation(line: 680, column: 25, scope: !2144)
!2146 = !DILocation(line: 680, column: 25, scope: !2136)
!2147 = !DILocation(line: 680, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !440, line: 680, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2129, file: !440, line: 680, column: 25)
!2150 = !DILocation(line: 680, column: 25, scope: !2149)
!2151 = !DILocation(line: 681, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !440, line: 681, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2130, file: !440, line: 681, column: 25)
!2154 = !DILocation(line: 681, column: 25, scope: !2153)
!2155 = !DILocation(line: 682, column: 25, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !440, line: 682, column: 25)
!2157 = distinct !DILexicalBlock(scope: !2130, file: !440, line: 682, column: 25)
!2158 = !DILocation(line: 682, column: 25, scope: !2157)
!2159 = !DILocation(line: 683, column: 38, scope: !2130)
!2160 = !DILocation(line: 683, column: 33, scope: !2130)
!2161 = !DILocation(line: 684, column: 23, scope: !2130)
!2162 = !DILocation(line: 685, column: 30, scope: !2124)
!2163 = !DILocation(line: 687, column: 25, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !440, line: 687, column: 25)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !440, line: 687, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !440, line: 686, column: 23)
!2167 = distinct !DILexicalBlock(scope: !2124, file: !440, line: 685, column: 30)
!2168 = !DILocation(line: 687, column: 25, scope: !2165)
!2169 = !DILocation(line: 689, column: 23, scope: !2166)
!2170 = !DILocation(line: 690, column: 35, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2125, file: !440, line: 690, column: 25)
!2172 = !DILocation(line: 690, column: 30, scope: !2171)
!2173 = !DILocation(line: 690, column: 25, scope: !2125)
!2174 = !DILocation(line: 692, column: 21, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !440, line: 692, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2125, file: !440, line: 692, column: 21)
!2177 = !DILocation(line: 692, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !440, line: 692, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !440, line: 692, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !440, line: 692, column: 21)
!2181 = !DILocation(line: 692, column: 21, scope: !2179)
!2182 = !DILocation(line: 692, column: 21, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !440, line: 692, column: 21)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !440, line: 692, column: 21)
!2185 = !DILocation(line: 692, column: 21, scope: !2184)
!2186 = !DILocation(line: 692, column: 21, scope: !2180)
!2187 = !DILocation(line: 0, scope: !2125)
!2188 = !DILocation(line: 693, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !440, line: 693, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2125, file: !440, line: 693, column: 21)
!2191 = !DILocation(line: 693, column: 21, scope: !2190)
!2192 = !DILocation(line: 694, column: 25, scope: !2125)
!2193 = !DILocation(line: 676, column: 17, scope: !2126)
!2194 = distinct !{!2194, !2195, !2196}
!2195 = !DILocation(line: 676, column: 17, scope: !2127)
!2196 = !DILocation(line: 695, column: 19, scope: !2127)
!2197 = !DILocation(line: 409, column: 30, scope: !1907)
!2198 = !DILocation(line: 702, column: 34, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 702, column: 11)
!2200 = !DILocation(line: 704, column: 14, scope: !2199)
!2201 = !DILocation(line: 705, column: 14, scope: !2199)
!2202 = !DILocation(line: 705, column: 35, scope: !2199)
!2203 = !DILocation(line: 705, column: 17, scope: !2199)
!2204 = !DILocation(line: 705, column: 47, scope: !2199)
!2205 = !DILocation(line: 705, column: 65, scope: !2199)
!2206 = !DILocation(line: 706, column: 11, scope: !2199)
!2207 = !DILocation(line: 702, column: 11, scope: !1772)
!2208 = !DILocation(line: 395, column: 15, scope: !1770)
!2209 = !DILocation(line: 709, column: 5, scope: !1772)
!2210 = !DILocation(line: 710, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 710, column: 7)
!2212 = !DILocation(line: 710, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !440, line: 710, column: 7)
!2214 = !DILocation(line: 710, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !440, line: 710, column: 7)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !440, line: 710, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !440, line: 710, column: 7)
!2218 = !DILocation(line: 710, column: 7, scope: !2216)
!2219 = !DILocation(line: 710, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !440, line: 710, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !440, line: 710, column: 7)
!2222 = !DILocation(line: 710, column: 7, scope: !2221)
!2223 = !DILocation(line: 710, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !440, line: 710, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2217, file: !440, line: 710, column: 7)
!2226 = !DILocation(line: 710, column: 7, scope: !2225)
!2227 = !DILocation(line: 710, column: 7, scope: !2217)
!2228 = !DILocation(line: 710, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !440, line: 710, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2211, file: !440, line: 710, column: 7)
!2231 = !DILocation(line: 710, column: 7, scope: !2230)
!2232 = !DILocation(line: 712, column: 5, scope: !1772)
!2233 = !DILocation(line: 713, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !440, line: 713, column: 7)
!2235 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 713, column: 7)
!2236 = !DILocation(line: 417, column: 21, scope: !1772)
!2237 = !DILocation(line: 713, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !440, line: 713, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !440, line: 713, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2234, file: !440, line: 713, column: 7)
!2241 = !DILocation(line: 713, column: 7, scope: !2239)
!2242 = !DILocation(line: 713, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !440, line: 713, column: 7)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !440, line: 713, column: 7)
!2245 = !DILocation(line: 713, column: 7, scope: !2244)
!2246 = !DILocation(line: 713, column: 7, scope: !2240)
!2247 = !DILocation(line: 714, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !440, line: 714, column: 7)
!2249 = distinct !DILexicalBlock(scope: !1772, file: !440, line: 714, column: 7)
!2250 = !DILocation(line: 714, column: 7, scope: !2249)
!2251 = !DILocation(line: 716, column: 11, scope: !1772)
!2252 = !DILocation(line: 718, column: 5, scope: !1773)
!2253 = !DILocation(line: 395, column: 82, scope: !1773)
!2254 = !DILocation(line: 395, column: 3, scope: !1773)
!2255 = distinct !{!2255, !1903, !2256, !911}
!2256 = !DILocation(line: 718, column: 5, scope: !1770)
!2257 = !DILocation(line: 720, column: 11, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 720, column: 7)
!2259 = !DILocation(line: 720, column: 16, scope: !2258)
!2260 = !DILocation(line: 728, column: 51, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 728, column: 7)
!2262 = !DILocation(line: 731, column: 11, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2261, file: !440, line: 730, column: 5)
!2264 = !DILocation(line: 732, column: 16, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2263, file: !440, line: 731, column: 11)
!2266 = !DILocation(line: 732, column: 9, scope: !2265)
!2267 = !DILocation(line: 736, column: 18, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !440, line: 736, column: 16)
!2269 = !DILocation(line: 736, column: 29, scope: !2268)
!2270 = !DILocation(line: 745, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 745, column: 7)
!2272 = !DILocation(line: 745, column: 20, scope: !2271)
!2273 = !DILocation(line: 746, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !440, line: 746, column: 5)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !440, line: 746, column: 5)
!2276 = !DILocation(line: 746, column: 5, scope: !2275)
!2277 = !DILocation(line: 747, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !440, line: 747, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !440, line: 747, column: 7)
!2280 = !DILocation(line: 747, column: 7, scope: !2279)
!2281 = !DILocation(line: 746, column: 39, scope: !2274)
!2282 = distinct !{!2282, !2276, !2283, !911}
!2283 = !DILocation(line: 747, column: 7, scope: !2275)
!2284 = !DILocation(line: 749, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !1739, file: !440, line: 749, column: 7)
!2286 = !DILocation(line: 749, column: 7, scope: !1739)
!2287 = !DILocation(line: 750, column: 5, scope: !2285)
!2288 = !DILocation(line: 750, column: 17, scope: !2285)
!2289 = !DILocation(line: 756, column: 21, scope: !2115)
!2290 = !DILocation(line: 760, column: 42, scope: !1739)
!2291 = !DILocation(line: 758, column: 10, scope: !1739)
!2292 = !DILocation(line: 758, column: 3, scope: !1739)
!2293 = !DILocation(line: 762, column: 1, scope: !1739)
!2294 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !988, file: !988, line: 98, type: !2295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!102}
!2297 = !DISubprogram(name: "strlen", scope: !981, file: !981, line: 407, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!104, !78}
!2300 = !DISubprogram(name: "iswprint", scope: !2301, file: !2301, line: 120, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2301 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2302 = distinct !DISubprogram(name: "quotearg_alloc", scope: !440, file: !440, line: 788, type: !2303, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!244, !78, !102, !1632}
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "arg", arg: 1, scope: !2302, file: !440, line: 788, type: !78)
!2307 = !DILocalVariable(name: "argsize", arg: 2, scope: !2302, file: !440, line: 788, type: !102)
!2308 = !DILocalVariable(name: "o", arg: 3, scope: !2302, file: !440, line: 789, type: !1632)
!2309 = !DILocation(line: 0, scope: !2302)
!2310 = !DILocalVariable(name: "arg", arg: 1, scope: !2311, file: !440, line: 801, type: !78)
!2311 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !440, file: !440, line: 801, type: !2312, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!244, !78, !102, !724, !1632}
!2314 = !{!2310, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2315 = !DILocalVariable(name: "argsize", arg: 2, scope: !2311, file: !440, line: 801, type: !102)
!2316 = !DILocalVariable(name: "size", arg: 3, scope: !2311, file: !440, line: 801, type: !724)
!2317 = !DILocalVariable(name: "o", arg: 4, scope: !2311, file: !440, line: 802, type: !1632)
!2318 = !DILocalVariable(name: "p", scope: !2311, file: !440, line: 804, type: !1632)
!2319 = !DILocalVariable(name: "saved_errno", scope: !2311, file: !440, line: 805, type: !100)
!2320 = !DILocalVariable(name: "flags", scope: !2311, file: !440, line: 807, type: !100)
!2321 = !DILocalVariable(name: "bufsize", scope: !2311, file: !440, line: 808, type: !102)
!2322 = !DILocalVariable(name: "buf", scope: !2311, file: !440, line: 812, type: !244)
!2323 = !DILocation(line: 0, scope: !2311, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 791, column: 10, scope: !2302)
!2325 = !DILocation(line: 804, column: 37, scope: !2311, inlinedAt: !2324)
!2326 = !DILocation(line: 805, column: 21, scope: !2311, inlinedAt: !2324)
!2327 = !DILocation(line: 807, column: 18, scope: !2311, inlinedAt: !2324)
!2328 = !DILocation(line: 807, column: 24, scope: !2311, inlinedAt: !2324)
!2329 = !DILocation(line: 808, column: 72, scope: !2311, inlinedAt: !2324)
!2330 = !DILocation(line: 809, column: 56, scope: !2311, inlinedAt: !2324)
!2331 = !DILocation(line: 810, column: 49, scope: !2311, inlinedAt: !2324)
!2332 = !DILocation(line: 811, column: 49, scope: !2311, inlinedAt: !2324)
!2333 = !DILocation(line: 808, column: 20, scope: !2311, inlinedAt: !2324)
!2334 = !DILocation(line: 811, column: 62, scope: !2311, inlinedAt: !2324)
!2335 = !DILocation(line: 812, column: 15, scope: !2311, inlinedAt: !2324)
!2336 = !DILocation(line: 813, column: 60, scope: !2311, inlinedAt: !2324)
!2337 = !DILocation(line: 815, column: 32, scope: !2311, inlinedAt: !2324)
!2338 = !DILocation(line: 815, column: 47, scope: !2311, inlinedAt: !2324)
!2339 = !DILocation(line: 813, column: 3, scope: !2311, inlinedAt: !2324)
!2340 = !DILocation(line: 816, column: 9, scope: !2311, inlinedAt: !2324)
!2341 = !DILocation(line: 791, column: 3, scope: !2302)
!2342 = !DILocation(line: 0, scope: !2311)
!2343 = !DILocation(line: 804, column: 37, scope: !2311)
!2344 = !DILocation(line: 805, column: 21, scope: !2311)
!2345 = !DILocation(line: 807, column: 18, scope: !2311)
!2346 = !DILocation(line: 807, column: 27, scope: !2311)
!2347 = !DILocation(line: 807, column: 24, scope: !2311)
!2348 = !DILocation(line: 808, column: 72, scope: !2311)
!2349 = !DILocation(line: 809, column: 56, scope: !2311)
!2350 = !DILocation(line: 810, column: 49, scope: !2311)
!2351 = !DILocation(line: 811, column: 49, scope: !2311)
!2352 = !DILocation(line: 808, column: 20, scope: !2311)
!2353 = !DILocation(line: 811, column: 62, scope: !2311)
!2354 = !DILocation(line: 812, column: 15, scope: !2311)
!2355 = !DILocation(line: 813, column: 60, scope: !2311)
!2356 = !DILocation(line: 815, column: 32, scope: !2311)
!2357 = !DILocation(line: 815, column: 47, scope: !2311)
!2358 = !DILocation(line: 813, column: 3, scope: !2311)
!2359 = !DILocation(line: 816, column: 9, scope: !2311)
!2360 = !DILocation(line: 817, column: 7, scope: !2311)
!2361 = !DILocation(line: 818, column: 11, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2311, file: !440, line: 817, column: 7)
!2363 = !{!1356, !1356, i64 0}
!2364 = !DILocation(line: 818, column: 5, scope: !2362)
!2365 = !DILocation(line: 819, column: 3, scope: !2311)
!2366 = distinct !DISubprogram(name: "quotearg_free", scope: !440, file: !440, line: 837, type: !372, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "sv", scope: !2366, file: !440, line: 839, type: !538)
!2369 = !DILocalVariable(name: "i", scope: !2370, file: !440, line: 840, type: !100)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !440, line: 840, column: 3)
!2371 = !DILocation(line: 839, column: 24, scope: !2366)
!2372 = !DILocation(line: 0, scope: !2366)
!2373 = !DILocation(line: 0, scope: !2370)
!2374 = !DILocation(line: 840, column: 21, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2370, file: !440, line: 840, column: 3)
!2376 = !DILocation(line: 840, column: 3, scope: !2370)
!2377 = !DILocation(line: 842, column: 13, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2366, file: !440, line: 842, column: 7)
!2379 = !{!2380, !809, i64 8}
!2380 = !{!"slotvec", !1356, i64 0, !809, i64 8}
!2381 = !DILocation(line: 842, column: 17, scope: !2378)
!2382 = !DILocation(line: 842, column: 7, scope: !2366)
!2383 = !DILocation(line: 841, column: 17, scope: !2375)
!2384 = !DILocation(line: 841, column: 5, scope: !2375)
!2385 = !DILocation(line: 840, column: 32, scope: !2375)
!2386 = distinct !{!2386, !2376, !2387, !911}
!2387 = !DILocation(line: 841, column: 20, scope: !2370)
!2388 = !DILocation(line: 844, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2378, file: !440, line: 843, column: 5)
!2390 = !DILocation(line: 845, column: 21, scope: !2389)
!2391 = !{!2380, !1356, i64 0}
!2392 = !DILocation(line: 846, column: 20, scope: !2389)
!2393 = !DILocation(line: 847, column: 5, scope: !2389)
!2394 = !DILocation(line: 848, column: 10, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2366, file: !440, line: 848, column: 7)
!2396 = !DILocation(line: 848, column: 7, scope: !2366)
!2397 = !DILocation(line: 850, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !440, line: 849, column: 5)
!2399 = !DILocation(line: 851, column: 15, scope: !2398)
!2400 = !DILocation(line: 852, column: 5, scope: !2398)
!2401 = !DILocation(line: 853, column: 10, scope: !2366)
!2402 = !DILocation(line: 854, column: 1, scope: !2366)
!2403 = !DISubprogram(name: "free", scope: !1586, file: !1586, line: 786, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !99}
!2406 = distinct !DISubprogram(name: "quotearg_n", scope: !440, file: !440, line: 919, type: !978, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2407)
!2407 = !{!2408, !2409}
!2408 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !440, line: 919, type: !100)
!2409 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !440, line: 919, type: !78)
!2410 = !DILocation(line: 0, scope: !2406)
!2411 = !DILocation(line: 921, column: 10, scope: !2406)
!2412 = !DILocation(line: 921, column: 3, scope: !2406)
!2413 = distinct !DISubprogram(name: "quotearg_n_options", scope: !440, file: !440, line: 866, type: !2414, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!244, !100, !78, !102, !1632}
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2427, !2428, !2430, !2431, !2432}
!2417 = !DILocalVariable(name: "n", arg: 1, scope: !2413, file: !440, line: 866, type: !100)
!2418 = !DILocalVariable(name: "arg", arg: 2, scope: !2413, file: !440, line: 866, type: !78)
!2419 = !DILocalVariable(name: "argsize", arg: 3, scope: !2413, file: !440, line: 866, type: !102)
!2420 = !DILocalVariable(name: "options", arg: 4, scope: !2413, file: !440, line: 867, type: !1632)
!2421 = !DILocalVariable(name: "saved_errno", scope: !2413, file: !440, line: 869, type: !100)
!2422 = !DILocalVariable(name: "sv", scope: !2413, file: !440, line: 871, type: !538)
!2423 = !DILocalVariable(name: "nslots_max", scope: !2413, file: !440, line: 873, type: !100)
!2424 = !DILocalVariable(name: "preallocated", scope: !2425, file: !440, line: 879, type: !223)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !440, line: 878, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2413, file: !440, line: 877, column: 7)
!2427 = !DILocalVariable(name: "new_nslots", scope: !2425, file: !440, line: 880, type: !737)
!2428 = !DILocalVariable(name: "size", scope: !2429, file: !440, line: 891, type: !102)
!2429 = distinct !DILexicalBlock(scope: !2413, file: !440, line: 890, column: 3)
!2430 = !DILocalVariable(name: "val", scope: !2429, file: !440, line: 892, type: !244)
!2431 = !DILocalVariable(name: "flags", scope: !2429, file: !440, line: 894, type: !100)
!2432 = !DILocalVariable(name: "qsize", scope: !2429, file: !440, line: 895, type: !102)
!2433 = !DILocation(line: 0, scope: !2413)
!2434 = !DILocation(line: 869, column: 21, scope: !2413)
!2435 = !DILocation(line: 871, column: 24, scope: !2413)
!2436 = !DILocation(line: 874, column: 17, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2413, file: !440, line: 874, column: 7)
!2438 = !DILocation(line: 875, column: 5, scope: !2437)
!2439 = !DILocation(line: 877, column: 7, scope: !2426)
!2440 = !DILocation(line: 877, column: 14, scope: !2426)
!2441 = !DILocation(line: 877, column: 7, scope: !2413)
!2442 = !DILocation(line: 879, column: 31, scope: !2425)
!2443 = !DILocation(line: 0, scope: !2425)
!2444 = !DILocation(line: 880, column: 7, scope: !2425)
!2445 = !DILocation(line: 880, column: 26, scope: !2425)
!2446 = !DILocation(line: 880, column: 13, scope: !2425)
!2447 = !DILocation(line: 882, column: 31, scope: !2425)
!2448 = !DILocation(line: 883, column: 33, scope: !2425)
!2449 = !DILocation(line: 883, column: 42, scope: !2425)
!2450 = !DILocation(line: 883, column: 31, scope: !2425)
!2451 = !DILocation(line: 882, column: 22, scope: !2425)
!2452 = !DILocation(line: 882, column: 15, scope: !2425)
!2453 = !DILocation(line: 884, column: 11, scope: !2425)
!2454 = !DILocation(line: 885, column: 15, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2425, file: !440, line: 884, column: 11)
!2456 = !{i64 0, i64 8, !2363, i64 8, i64 8, !808}
!2457 = !DILocation(line: 885, column: 9, scope: !2455)
!2458 = !DILocation(line: 886, column: 20, scope: !2425)
!2459 = !DILocation(line: 886, column: 18, scope: !2425)
!2460 = !DILocation(line: 886, column: 32, scope: !2425)
!2461 = !DILocation(line: 886, column: 43, scope: !2425)
!2462 = !DILocation(line: 886, column: 53, scope: !2425)
!2463 = !DILocation(line: 0, scope: !1842, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 886, column: 7, scope: !2425)
!2465 = !DILocation(line: 59, column: 10, scope: !1842, inlinedAt: !2464)
!2466 = !DILocation(line: 887, column: 16, scope: !2425)
!2467 = !DILocation(line: 887, column: 14, scope: !2425)
!2468 = !DILocation(line: 888, column: 5, scope: !2426)
!2469 = !DILocation(line: 888, column: 5, scope: !2425)
!2470 = !DILocation(line: 891, column: 19, scope: !2429)
!2471 = !DILocation(line: 891, column: 25, scope: !2429)
!2472 = !DILocation(line: 0, scope: !2429)
!2473 = !DILocation(line: 892, column: 23, scope: !2429)
!2474 = !DILocation(line: 894, column: 26, scope: !2429)
!2475 = !DILocation(line: 894, column: 32, scope: !2429)
!2476 = !DILocation(line: 896, column: 55, scope: !2429)
!2477 = !DILocation(line: 897, column: 55, scope: !2429)
!2478 = !DILocation(line: 898, column: 55, scope: !2429)
!2479 = !DILocation(line: 899, column: 55, scope: !2429)
!2480 = !DILocation(line: 895, column: 20, scope: !2429)
!2481 = !DILocation(line: 901, column: 14, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2429, file: !440, line: 901, column: 9)
!2483 = !DILocation(line: 901, column: 9, scope: !2429)
!2484 = !DILocation(line: 903, column: 35, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !440, line: 902, column: 7)
!2486 = !DILocation(line: 903, column: 20, scope: !2485)
!2487 = !DILocation(line: 904, column: 17, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !440, line: 904, column: 13)
!2489 = !DILocation(line: 904, column: 13, scope: !2485)
!2490 = !DILocation(line: 905, column: 11, scope: !2488)
!2491 = !DILocation(line: 906, column: 27, scope: !2485)
!2492 = !DILocation(line: 906, column: 19, scope: !2485)
!2493 = !DILocation(line: 907, column: 69, scope: !2485)
!2494 = !DILocation(line: 909, column: 44, scope: !2485)
!2495 = !DILocation(line: 910, column: 44, scope: !2485)
!2496 = !DILocation(line: 907, column: 9, scope: !2485)
!2497 = !DILocation(line: 911, column: 7, scope: !2485)
!2498 = !DILocation(line: 913, column: 11, scope: !2429)
!2499 = !DILocation(line: 914, column: 5, scope: !2429)
!2500 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !440, file: !440, line: 925, type: !2501, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!244, !100, !78, !102}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "n", arg: 1, scope: !2500, file: !440, line: 925, type: !100)
!2505 = !DILocalVariable(name: "arg", arg: 2, scope: !2500, file: !440, line: 925, type: !78)
!2506 = !DILocalVariable(name: "argsize", arg: 3, scope: !2500, file: !440, line: 925, type: !102)
!2507 = !DILocation(line: 0, scope: !2500)
!2508 = !DILocation(line: 927, column: 10, scope: !2500)
!2509 = !DILocation(line: 927, column: 3, scope: !2500)
!2510 = distinct !DISubprogram(name: "quotearg", scope: !440, file: !440, line: 931, type: !990, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2511)
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "arg", arg: 1, scope: !2510, file: !440, line: 931, type: !78)
!2513 = !DILocation(line: 0, scope: !2510)
!2514 = !DILocation(line: 0, scope: !2406, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 933, column: 10, scope: !2510)
!2516 = !DILocation(line: 921, column: 10, scope: !2406, inlinedAt: !2515)
!2517 = !DILocation(line: 933, column: 3, scope: !2510)
!2518 = distinct !DISubprogram(name: "quotearg_mem", scope: !440, file: !440, line: 937, type: !2519, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!244, !78, !102}
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2518, file: !440, line: 937, type: !78)
!2523 = !DILocalVariable(name: "argsize", arg: 2, scope: !2518, file: !440, line: 937, type: !102)
!2524 = !DILocation(line: 0, scope: !2518)
!2525 = !DILocation(line: 0, scope: !2500, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 939, column: 10, scope: !2518)
!2527 = !DILocation(line: 927, column: 10, scope: !2500, inlinedAt: !2526)
!2528 = !DILocation(line: 939, column: 3, scope: !2518)
!2529 = distinct !DISubprogram(name: "quotearg_n_style", scope: !440, file: !440, line: 943, type: !2530, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!244, !100, !463, !78}
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !440, line: 943, type: !100)
!2534 = !DILocalVariable(name: "s", arg: 2, scope: !2529, file: !440, line: 943, type: !463)
!2535 = !DILocalVariable(name: "arg", arg: 3, scope: !2529, file: !440, line: 943, type: !78)
!2536 = !DILocalVariable(name: "o", scope: !2529, file: !440, line: 945, type: !1633)
!2537 = !DILocation(line: 0, scope: !2529)
!2538 = !DILocation(line: 945, column: 3, scope: !2529)
!2539 = !DILocation(line: 945, column: 32, scope: !2529)
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"quoting_options_from_style: argument 0"}
!2542 = distinct !{!2542, !"quoting_options_from_style"}
!2543 = !DILocation(line: 945, column: 36, scope: !2529)
!2544 = !DILocalVariable(name: "style", arg: 1, scope: !2545, file: !440, line: 183, type: !463)
!2545 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !440, file: !440, line: 183, type: !2546, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!490, !463}
!2548 = !{!2544, !2549}
!2549 = !DILocalVariable(name: "o", scope: !2545, file: !440, line: 185, type: !490)
!2550 = !DILocation(line: 0, scope: !2545, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 945, column: 36, scope: !2529)
!2552 = !DILocation(line: 185, column: 26, scope: !2545, inlinedAt: !2551)
!2553 = !DILocation(line: 186, column: 13, scope: !2554, inlinedAt: !2551)
!2554 = distinct !DILexicalBlock(scope: !2545, file: !440, line: 186, column: 7)
!2555 = !DILocation(line: 186, column: 7, scope: !2545, inlinedAt: !2551)
!2556 = !DILocation(line: 187, column: 5, scope: !2554, inlinedAt: !2551)
!2557 = !DILocation(line: 188, column: 11, scope: !2545, inlinedAt: !2551)
!2558 = !DILocation(line: 946, column: 10, scope: !2529)
!2559 = !DILocation(line: 947, column: 1, scope: !2529)
!2560 = !DILocation(line: 946, column: 3, scope: !2529)
!2561 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !440, file: !440, line: 950, type: !2562, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!244, !100, !463, !78, !102}
!2564 = !{!2565, !2566, !2567, !2568, !2569}
!2565 = !DILocalVariable(name: "n", arg: 1, scope: !2561, file: !440, line: 950, type: !100)
!2566 = !DILocalVariable(name: "s", arg: 2, scope: !2561, file: !440, line: 950, type: !463)
!2567 = !DILocalVariable(name: "arg", arg: 3, scope: !2561, file: !440, line: 951, type: !78)
!2568 = !DILocalVariable(name: "argsize", arg: 4, scope: !2561, file: !440, line: 951, type: !102)
!2569 = !DILocalVariable(name: "o", scope: !2561, file: !440, line: 953, type: !1633)
!2570 = !DILocation(line: 0, scope: !2561)
!2571 = !DILocation(line: 953, column: 3, scope: !2561)
!2572 = !DILocation(line: 953, column: 32, scope: !2561)
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"quoting_options_from_style: argument 0"}
!2575 = distinct !{!2575, !"quoting_options_from_style"}
!2576 = !DILocation(line: 953, column: 36, scope: !2561)
!2577 = !DILocation(line: 0, scope: !2545, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 953, column: 36, scope: !2561)
!2579 = !DILocation(line: 185, column: 26, scope: !2545, inlinedAt: !2578)
!2580 = !DILocation(line: 186, column: 13, scope: !2554, inlinedAt: !2578)
!2581 = !DILocation(line: 186, column: 7, scope: !2545, inlinedAt: !2578)
!2582 = !DILocation(line: 187, column: 5, scope: !2554, inlinedAt: !2578)
!2583 = !DILocation(line: 188, column: 11, scope: !2545, inlinedAt: !2578)
!2584 = !DILocation(line: 954, column: 10, scope: !2561)
!2585 = !DILocation(line: 955, column: 1, scope: !2561)
!2586 = !DILocation(line: 954, column: 3, scope: !2561)
!2587 = distinct !DISubprogram(name: "quotearg_style", scope: !440, file: !440, line: 958, type: !2588, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!244, !463, !78}
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "s", arg: 1, scope: !2587, file: !440, line: 958, type: !463)
!2592 = !DILocalVariable(name: "arg", arg: 2, scope: !2587, file: !440, line: 958, type: !78)
!2593 = !DILocation(line: 0, scope: !2587)
!2594 = !DILocation(line: 0, scope: !2529, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 960, column: 10, scope: !2587)
!2596 = !DILocation(line: 945, column: 3, scope: !2529, inlinedAt: !2595)
!2597 = !DILocation(line: 945, column: 32, scope: !2529, inlinedAt: !2595)
!2598 = !{!2599}
!2599 = distinct !{!2599, !2600, !"quoting_options_from_style: argument 0"}
!2600 = distinct !{!2600, !"quoting_options_from_style"}
!2601 = !DILocation(line: 945, column: 36, scope: !2529, inlinedAt: !2595)
!2602 = !DILocation(line: 0, scope: !2545, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 945, column: 36, scope: !2529, inlinedAt: !2595)
!2604 = !DILocation(line: 185, column: 26, scope: !2545, inlinedAt: !2603)
!2605 = !DILocation(line: 186, column: 13, scope: !2554, inlinedAt: !2603)
!2606 = !DILocation(line: 186, column: 7, scope: !2545, inlinedAt: !2603)
!2607 = !DILocation(line: 187, column: 5, scope: !2554, inlinedAt: !2603)
!2608 = !DILocation(line: 188, column: 11, scope: !2545, inlinedAt: !2603)
!2609 = !DILocation(line: 946, column: 10, scope: !2529, inlinedAt: !2595)
!2610 = !DILocation(line: 947, column: 1, scope: !2529, inlinedAt: !2595)
!2611 = !DILocation(line: 960, column: 3, scope: !2587)
!2612 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !440, file: !440, line: 964, type: !2613, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!244, !463, !78, !102}
!2615 = !{!2616, !2617, !2618}
!2616 = !DILocalVariable(name: "s", arg: 1, scope: !2612, file: !440, line: 964, type: !463)
!2617 = !DILocalVariable(name: "arg", arg: 2, scope: !2612, file: !440, line: 964, type: !78)
!2618 = !DILocalVariable(name: "argsize", arg: 3, scope: !2612, file: !440, line: 964, type: !102)
!2619 = !DILocation(line: 0, scope: !2612)
!2620 = !DILocation(line: 0, scope: !2561, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 966, column: 10, scope: !2612)
!2622 = !DILocation(line: 953, column: 3, scope: !2561, inlinedAt: !2621)
!2623 = !DILocation(line: 953, column: 32, scope: !2561, inlinedAt: !2621)
!2624 = !{!2625}
!2625 = distinct !{!2625, !2626, !"quoting_options_from_style: argument 0"}
!2626 = distinct !{!2626, !"quoting_options_from_style"}
!2627 = !DILocation(line: 953, column: 36, scope: !2561, inlinedAt: !2621)
!2628 = !DILocation(line: 0, scope: !2545, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 953, column: 36, scope: !2561, inlinedAt: !2621)
!2630 = !DILocation(line: 185, column: 26, scope: !2545, inlinedAt: !2629)
!2631 = !DILocation(line: 186, column: 13, scope: !2554, inlinedAt: !2629)
!2632 = !DILocation(line: 186, column: 7, scope: !2545, inlinedAt: !2629)
!2633 = !DILocation(line: 187, column: 5, scope: !2554, inlinedAt: !2629)
!2634 = !DILocation(line: 188, column: 11, scope: !2545, inlinedAt: !2629)
!2635 = !DILocation(line: 954, column: 10, scope: !2561, inlinedAt: !2621)
!2636 = !DILocation(line: 955, column: 1, scope: !2561, inlinedAt: !2621)
!2637 = !DILocation(line: 966, column: 3, scope: !2612)
!2638 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !440, file: !440, line: 970, type: !2639, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!244, !78, !102, !4}
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "arg", arg: 1, scope: !2638, file: !440, line: 970, type: !78)
!2643 = !DILocalVariable(name: "argsize", arg: 2, scope: !2638, file: !440, line: 970, type: !102)
!2644 = !DILocalVariable(name: "ch", arg: 3, scope: !2638, file: !440, line: 970, type: !4)
!2645 = !DILocalVariable(name: "options", scope: !2638, file: !440, line: 972, type: !490)
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 972, column: 3, scope: !2638)
!2648 = !DILocation(line: 972, column: 26, scope: !2638)
!2649 = !DILocation(line: 973, column: 13, scope: !2638)
!2650 = !{i64 0, i64 4, !873, i64 4, i64 4, !864, i64 8, i64 32, !873, i64 40, i64 8, !808, i64 48, i64 8, !808}
!2651 = !DILocation(line: 0, scope: !1652, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 974, column: 3, scope: !2638)
!2653 = !DILocation(line: 147, column: 41, scope: !1652, inlinedAt: !2652)
!2654 = !DILocation(line: 147, column: 62, scope: !1652, inlinedAt: !2652)
!2655 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2652)
!2656 = !DILocation(line: 148, column: 15, scope: !1652, inlinedAt: !2652)
!2657 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2652)
!2658 = !DILocation(line: 149, column: 24, scope: !1652, inlinedAt: !2652)
!2659 = !DILocation(line: 150, column: 19, scope: !1652, inlinedAt: !2652)
!2660 = !DILocation(line: 150, column: 24, scope: !1652, inlinedAt: !2652)
!2661 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2652)
!2662 = !DILocation(line: 975, column: 10, scope: !2638)
!2663 = !DILocation(line: 976, column: 1, scope: !2638)
!2664 = !DILocation(line: 975, column: 3, scope: !2638)
!2665 = distinct !DISubprogram(name: "quotearg_char", scope: !440, file: !440, line: 979, type: !2666, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!244, !78, !4}
!2668 = !{!2669, !2670}
!2669 = !DILocalVariable(name: "arg", arg: 1, scope: !2665, file: !440, line: 979, type: !78)
!2670 = !DILocalVariable(name: "ch", arg: 2, scope: !2665, file: !440, line: 979, type: !4)
!2671 = !DILocation(line: 0, scope: !2665)
!2672 = !DILocation(line: 0, scope: !2638, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 981, column: 10, scope: !2665)
!2674 = !DILocation(line: 972, column: 3, scope: !2638, inlinedAt: !2673)
!2675 = !DILocation(line: 972, column: 26, scope: !2638, inlinedAt: !2673)
!2676 = !DILocation(line: 973, column: 13, scope: !2638, inlinedAt: !2673)
!2677 = !DILocation(line: 0, scope: !1652, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 974, column: 3, scope: !2638, inlinedAt: !2673)
!2679 = !DILocation(line: 147, column: 41, scope: !1652, inlinedAt: !2678)
!2680 = !DILocation(line: 147, column: 62, scope: !1652, inlinedAt: !2678)
!2681 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2678)
!2682 = !DILocation(line: 148, column: 15, scope: !1652, inlinedAt: !2678)
!2683 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2678)
!2684 = !DILocation(line: 149, column: 24, scope: !1652, inlinedAt: !2678)
!2685 = !DILocation(line: 150, column: 19, scope: !1652, inlinedAt: !2678)
!2686 = !DILocation(line: 150, column: 24, scope: !1652, inlinedAt: !2678)
!2687 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2678)
!2688 = !DILocation(line: 975, column: 10, scope: !2638, inlinedAt: !2673)
!2689 = !DILocation(line: 976, column: 1, scope: !2638, inlinedAt: !2673)
!2690 = !DILocation(line: 981, column: 3, scope: !2665)
!2691 = distinct !DISubprogram(name: "quotearg_colon", scope: !440, file: !440, line: 985, type: !990, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2692)
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !440, line: 985, type: !78)
!2694 = !DILocation(line: 0, scope: !2691)
!2695 = !DILocation(line: 0, scope: !2665, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 987, column: 10, scope: !2691)
!2697 = !DILocation(line: 0, scope: !2638, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 981, column: 10, scope: !2665, inlinedAt: !2696)
!2699 = !DILocation(line: 972, column: 3, scope: !2638, inlinedAt: !2698)
!2700 = !DILocation(line: 972, column: 26, scope: !2638, inlinedAt: !2698)
!2701 = !DILocation(line: 973, column: 13, scope: !2638, inlinedAt: !2698)
!2702 = !DILocation(line: 0, scope: !1652, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 974, column: 3, scope: !2638, inlinedAt: !2698)
!2704 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2703)
!2705 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2703)
!2706 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2703)
!2707 = !DILocation(line: 975, column: 10, scope: !2638, inlinedAt: !2698)
!2708 = !DILocation(line: 976, column: 1, scope: !2638, inlinedAt: !2698)
!2709 = !DILocation(line: 987, column: 3, scope: !2691)
!2710 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !440, file: !440, line: 991, type: !2519, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2711)
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !440, line: 991, type: !78)
!2713 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !440, line: 991, type: !102)
!2714 = !DILocation(line: 0, scope: !2710)
!2715 = !DILocation(line: 0, scope: !2638, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 993, column: 10, scope: !2710)
!2717 = !DILocation(line: 972, column: 3, scope: !2638, inlinedAt: !2716)
!2718 = !DILocation(line: 972, column: 26, scope: !2638, inlinedAt: !2716)
!2719 = !DILocation(line: 973, column: 13, scope: !2638, inlinedAt: !2716)
!2720 = !DILocation(line: 0, scope: !1652, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 974, column: 3, scope: !2638, inlinedAt: !2716)
!2722 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2721)
!2723 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2721)
!2724 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2721)
!2725 = !DILocation(line: 975, column: 10, scope: !2638, inlinedAt: !2716)
!2726 = !DILocation(line: 976, column: 1, scope: !2638, inlinedAt: !2716)
!2727 = !DILocation(line: 993, column: 3, scope: !2710)
!2728 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !440, file: !440, line: 997, type: !2530, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2729)
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !440, line: 997, type: !100)
!2731 = !DILocalVariable(name: "s", arg: 2, scope: !2728, file: !440, line: 997, type: !463)
!2732 = !DILocalVariable(name: "arg", arg: 3, scope: !2728, file: !440, line: 997, type: !78)
!2733 = !DILocalVariable(name: "options", scope: !2728, file: !440, line: 999, type: !490)
!2734 = !DILocation(line: 185, column: 26, scope: !2545, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1000, column: 13, scope: !2728)
!2736 = !DILocation(line: 0, scope: !2728)
!2737 = !DILocation(line: 999, column: 3, scope: !2728)
!2738 = !DILocation(line: 999, column: 26, scope: !2728)
!2739 = !DILocation(line: 0, scope: !2545, inlinedAt: !2735)
!2740 = !DILocation(line: 186, column: 13, scope: !2554, inlinedAt: !2735)
!2741 = !DILocation(line: 186, column: 7, scope: !2545, inlinedAt: !2735)
!2742 = !DILocation(line: 187, column: 5, scope: !2554, inlinedAt: !2735)
!2743 = !{!2744}
!2744 = distinct !{!2744, !2745, !"quoting_options_from_style: argument 0"}
!2745 = distinct !{!2745, !"quoting_options_from_style"}
!2746 = !DILocation(line: 1000, column: 13, scope: !2728)
!2747 = !DILocation(line: 0, scope: !1652, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 1001, column: 3, scope: !2728)
!2749 = !DILocation(line: 147, column: 57, scope: !1652, inlinedAt: !2748)
!2750 = !DILocation(line: 149, column: 21, scope: !1652, inlinedAt: !2748)
!2751 = !DILocation(line: 150, column: 6, scope: !1652, inlinedAt: !2748)
!2752 = !DILocation(line: 1002, column: 10, scope: !2728)
!2753 = !DILocation(line: 1003, column: 1, scope: !2728)
!2754 = !DILocation(line: 1002, column: 3, scope: !2728)
!2755 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !440, file: !440, line: 1006, type: !2756, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!244, !100, !78, !78, !78}
!2758 = !{!2759, !2760, !2761, !2762}
!2759 = !DILocalVariable(name: "n", arg: 1, scope: !2755, file: !440, line: 1006, type: !100)
!2760 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2755, file: !440, line: 1006, type: !78)
!2761 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2755, file: !440, line: 1007, type: !78)
!2762 = !DILocalVariable(name: "arg", arg: 4, scope: !2755, file: !440, line: 1007, type: !78)
!2763 = !DILocation(line: 0, scope: !2755)
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !440, line: 1014, type: !100)
!2765 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !440, file: !440, line: 1014, type: !2766, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!244, !100, !78, !78, !78, !102}
!2768 = !{!2764, !2769, !2770, !2771, !2772, !2773}
!2769 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2765, file: !440, line: 1014, type: !78)
!2770 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2765, file: !440, line: 1015, type: !78)
!2771 = !DILocalVariable(name: "arg", arg: 4, scope: !2765, file: !440, line: 1016, type: !78)
!2772 = !DILocalVariable(name: "argsize", arg: 5, scope: !2765, file: !440, line: 1016, type: !102)
!2773 = !DILocalVariable(name: "o", scope: !2765, file: !440, line: 1018, type: !490)
!2774 = !DILocation(line: 0, scope: !2765, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1009, column: 10, scope: !2755)
!2776 = !DILocation(line: 1018, column: 3, scope: !2765, inlinedAt: !2775)
!2777 = !DILocation(line: 1018, column: 26, scope: !2765, inlinedAt: !2775)
!2778 = !DILocation(line: 1018, column: 30, scope: !2765, inlinedAt: !2775)
!2779 = !DILocation(line: 0, scope: !1692, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1019, column: 3, scope: !2765, inlinedAt: !2775)
!2781 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2780)
!2782 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2780)
!2783 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2780)
!2784 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2780)
!2785 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2780)
!2786 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2780)
!2787 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2780)
!2788 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2780)
!2789 = !DILocation(line: 1020, column: 10, scope: !2765, inlinedAt: !2775)
!2790 = !DILocation(line: 1021, column: 1, scope: !2765, inlinedAt: !2775)
!2791 = !DILocation(line: 1009, column: 3, scope: !2755)
!2792 = !DILocation(line: 0, scope: !2765)
!2793 = !DILocation(line: 1018, column: 3, scope: !2765)
!2794 = !DILocation(line: 1018, column: 26, scope: !2765)
!2795 = !DILocation(line: 1018, column: 30, scope: !2765)
!2796 = !DILocation(line: 0, scope: !1692, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1019, column: 3, scope: !2765)
!2798 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2797)
!2799 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2797)
!2800 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2797)
!2801 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2797)
!2802 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2797)
!2803 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2797)
!2804 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2797)
!2805 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2797)
!2806 = !DILocation(line: 1020, column: 10, scope: !2765)
!2807 = !DILocation(line: 1021, column: 1, scope: !2765)
!2808 = !DILocation(line: 1020, column: 3, scope: !2765)
!2809 = distinct !DISubprogram(name: "quotearg_custom", scope: !440, file: !440, line: 1024, type: !2810, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!244, !78, !78, !78}
!2812 = !{!2813, !2814, !2815}
!2813 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2809, file: !440, line: 1024, type: !78)
!2814 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2809, file: !440, line: 1024, type: !78)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2809, file: !440, line: 1025, type: !78)
!2816 = !DILocation(line: 0, scope: !2809)
!2817 = !DILocation(line: 0, scope: !2755, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1027, column: 10, scope: !2809)
!2819 = !DILocation(line: 0, scope: !2765, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1009, column: 10, scope: !2755, inlinedAt: !2818)
!2821 = !DILocation(line: 1018, column: 3, scope: !2765, inlinedAt: !2820)
!2822 = !DILocation(line: 1018, column: 26, scope: !2765, inlinedAt: !2820)
!2823 = !DILocation(line: 1018, column: 30, scope: !2765, inlinedAt: !2820)
!2824 = !DILocation(line: 0, scope: !1692, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1019, column: 3, scope: !2765, inlinedAt: !2820)
!2826 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2825)
!2827 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2825)
!2828 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2825)
!2829 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2825)
!2830 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2825)
!2831 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2825)
!2832 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2825)
!2833 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2825)
!2834 = !DILocation(line: 1020, column: 10, scope: !2765, inlinedAt: !2820)
!2835 = !DILocation(line: 1021, column: 1, scope: !2765, inlinedAt: !2820)
!2836 = !DILocation(line: 1027, column: 3, scope: !2809)
!2837 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !440, file: !440, line: 1031, type: !2838, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!244, !78, !78, !78, !102}
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2837, file: !440, line: 1031, type: !78)
!2842 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2837, file: !440, line: 1031, type: !78)
!2843 = !DILocalVariable(name: "arg", arg: 3, scope: !2837, file: !440, line: 1032, type: !78)
!2844 = !DILocalVariable(name: "argsize", arg: 4, scope: !2837, file: !440, line: 1032, type: !102)
!2845 = !DILocation(line: 0, scope: !2837)
!2846 = !DILocation(line: 0, scope: !2765, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 1034, column: 10, scope: !2837)
!2848 = !DILocation(line: 1018, column: 3, scope: !2765, inlinedAt: !2847)
!2849 = !DILocation(line: 1018, column: 26, scope: !2765, inlinedAt: !2847)
!2850 = !DILocation(line: 1018, column: 30, scope: !2765, inlinedAt: !2847)
!2851 = !DILocation(line: 0, scope: !1692, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1019, column: 3, scope: !2765, inlinedAt: !2847)
!2853 = !DILocation(line: 174, column: 12, scope: !1692, inlinedAt: !2852)
!2854 = !DILocation(line: 175, column: 8, scope: !1705, inlinedAt: !2852)
!2855 = !DILocation(line: 175, column: 19, scope: !1705, inlinedAt: !2852)
!2856 = !DILocation(line: 176, column: 5, scope: !1705, inlinedAt: !2852)
!2857 = !DILocation(line: 177, column: 6, scope: !1692, inlinedAt: !2852)
!2858 = !DILocation(line: 177, column: 17, scope: !1692, inlinedAt: !2852)
!2859 = !DILocation(line: 178, column: 6, scope: !1692, inlinedAt: !2852)
!2860 = !DILocation(line: 178, column: 18, scope: !1692, inlinedAt: !2852)
!2861 = !DILocation(line: 1020, column: 10, scope: !2765, inlinedAt: !2847)
!2862 = !DILocation(line: 1021, column: 1, scope: !2765, inlinedAt: !2847)
!2863 = !DILocation(line: 1034, column: 3, scope: !2837)
!2864 = distinct !DISubprogram(name: "quote_n_mem", scope: !440, file: !440, line: 1049, type: !2865, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!78, !100, !78, !102}
!2867 = !{!2868, !2869, !2870}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !440, line: 1049, type: !100)
!2869 = !DILocalVariable(name: "arg", arg: 2, scope: !2864, file: !440, line: 1049, type: !78)
!2870 = !DILocalVariable(name: "argsize", arg: 3, scope: !2864, file: !440, line: 1049, type: !102)
!2871 = !DILocation(line: 0, scope: !2864)
!2872 = !DILocation(line: 1051, column: 10, scope: !2864)
!2873 = !DILocation(line: 1051, column: 3, scope: !2864)
!2874 = distinct !DISubprogram(name: "quote_mem", scope: !440, file: !440, line: 1055, type: !2875, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!78, !78, !102}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !440, line: 1055, type: !78)
!2879 = !DILocalVariable(name: "argsize", arg: 2, scope: !2874, file: !440, line: 1055, type: !102)
!2880 = !DILocation(line: 0, scope: !2874)
!2881 = !DILocation(line: 0, scope: !2864, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1057, column: 10, scope: !2874)
!2883 = !DILocation(line: 1051, column: 10, scope: !2864, inlinedAt: !2882)
!2884 = !DILocation(line: 1057, column: 3, scope: !2874)
!2885 = distinct !DISubprogram(name: "quote_n", scope: !440, file: !440, line: 1061, type: !2886, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!78, !100, !78}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2885, file: !440, line: 1061, type: !100)
!2890 = !DILocalVariable(name: "arg", arg: 2, scope: !2885, file: !440, line: 1061, type: !78)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 0, scope: !2864, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1063, column: 10, scope: !2885)
!2894 = !DILocation(line: 1051, column: 10, scope: !2864, inlinedAt: !2893)
!2895 = !DILocation(line: 1063, column: 3, scope: !2885)
!2896 = distinct !DISubprogram(name: "quote", scope: !440, file: !440, line: 1067, type: !2897, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!78, !78}
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !440, line: 1067, type: !78)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocation(line: 0, scope: !2885, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1069, column: 10, scope: !2896)
!2904 = !DILocation(line: 0, scope: !2864, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1063, column: 10, scope: !2885, inlinedAt: !2903)
!2906 = !DILocation(line: 1051, column: 10, scope: !2864, inlinedAt: !2905)
!2907 = !DILocation(line: 1069, column: 3, scope: !2896)
!2908 = distinct !DISubprogram(name: "version_etc_arn", scope: !553, file: !553, line: 61, type: !2909, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !2946)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2911, !78, !78, !78, !2945, !102}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2913)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2913, file: !240, line: 51, baseType: !100, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2913, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2913, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2913, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2913, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2913, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2913, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2913, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2913, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2913, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2913, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2913, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2913, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2913, file: !240, line: 70, baseType: !2929, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2913, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2913, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2913, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2913, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2913, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2913, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2913, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2913, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2913, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2913, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2913, file: !240, line: 93, baseType: !2929, size: 64, offset: 1344)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2913, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2913, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2913, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2913, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952}
!2947 = !DILocalVariable(name: "stream", arg: 1, scope: !2908, file: !553, line: 61, type: !2911)
!2948 = !DILocalVariable(name: "command_name", arg: 2, scope: !2908, file: !553, line: 62, type: !78)
!2949 = !DILocalVariable(name: "package", arg: 3, scope: !2908, file: !553, line: 62, type: !78)
!2950 = !DILocalVariable(name: "version", arg: 4, scope: !2908, file: !553, line: 63, type: !78)
!2951 = !DILocalVariable(name: "authors", arg: 5, scope: !2908, file: !553, line: 64, type: !2945)
!2952 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2908, file: !553, line: 64, type: !102)
!2953 = !DILocation(line: 0, scope: !2908)
!2954 = !DILocation(line: 66, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2908, file: !553, line: 66, column: 7)
!2956 = !DILocation(line: 66, column: 7, scope: !2908)
!2957 = !DILocation(line: 67, column: 5, scope: !2955)
!2958 = !DILocation(line: 69, column: 5, scope: !2955)
!2959 = !DILocation(line: 83, column: 3, scope: !2908)
!2960 = !DILocation(line: 85, column: 3, scope: !2908)
!2961 = !DILocation(line: 88, column: 3, scope: !2908)
!2962 = !DILocation(line: 95, column: 3, scope: !2908)
!2963 = !DILocation(line: 97, column: 3, scope: !2908)
!2964 = !DILocation(line: 105, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2908, file: !553, line: 98, column: 5)
!2966 = !DILocation(line: 106, column: 7, scope: !2965)
!2967 = !DILocation(line: 109, column: 7, scope: !2965)
!2968 = !DILocation(line: 110, column: 7, scope: !2965)
!2969 = !DILocation(line: 113, column: 7, scope: !2965)
!2970 = !DILocation(line: 115, column: 7, scope: !2965)
!2971 = !DILocation(line: 120, column: 7, scope: !2965)
!2972 = !DILocation(line: 122, column: 7, scope: !2965)
!2973 = !DILocation(line: 127, column: 7, scope: !2965)
!2974 = !DILocation(line: 129, column: 7, scope: !2965)
!2975 = !DILocation(line: 134, column: 7, scope: !2965)
!2976 = !DILocation(line: 137, column: 7, scope: !2965)
!2977 = !DILocation(line: 142, column: 7, scope: !2965)
!2978 = !DILocation(line: 145, column: 7, scope: !2965)
!2979 = !DILocation(line: 150, column: 7, scope: !2965)
!2980 = !DILocation(line: 154, column: 7, scope: !2965)
!2981 = !DILocation(line: 159, column: 7, scope: !2965)
!2982 = !DILocation(line: 163, column: 7, scope: !2965)
!2983 = !DILocation(line: 170, column: 7, scope: !2965)
!2984 = !DILocation(line: 174, column: 7, scope: !2965)
!2985 = !DILocation(line: 176, column: 1, scope: !2908)
!2986 = distinct !DISubprogram(name: "version_etc_ar", scope: !553, file: !553, line: 183, type: !2987, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2911, !78, !78, !78, !2945}
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995}
!2990 = !DILocalVariable(name: "stream", arg: 1, scope: !2986, file: !553, line: 183, type: !2911)
!2991 = !DILocalVariable(name: "command_name", arg: 2, scope: !2986, file: !553, line: 184, type: !78)
!2992 = !DILocalVariable(name: "package", arg: 3, scope: !2986, file: !553, line: 184, type: !78)
!2993 = !DILocalVariable(name: "version", arg: 4, scope: !2986, file: !553, line: 185, type: !78)
!2994 = !DILocalVariable(name: "authors", arg: 5, scope: !2986, file: !553, line: 185, type: !2945)
!2995 = !DILocalVariable(name: "n_authors", scope: !2986, file: !553, line: 187, type: !102)
!2996 = !DILocation(line: 0, scope: !2986)
!2997 = !DILocation(line: 189, column: 8, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !553, line: 189, column: 3)
!2999 = !DILocation(line: 189, scope: !2998)
!3000 = !DILocation(line: 189, column: 23, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !553, line: 189, column: 3)
!3002 = !DILocation(line: 189, column: 3, scope: !2998)
!3003 = !DILocation(line: 189, column: 52, scope: !3001)
!3004 = distinct !{!3004, !3002, !3005, !911}
!3005 = !DILocation(line: 190, column: 5, scope: !2998)
!3006 = !DILocation(line: 191, column: 3, scope: !2986)
!3007 = !DILocation(line: 192, column: 1, scope: !2986)
!3008 = distinct !DISubprogram(name: "version_etc_va", scope: !553, file: !553, line: 199, type: !3009, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3022)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2911, !78, !78, !78, !3011}
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 14, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3014, baseType: !3015)
!3014 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3015, file: !3014, line: 192, baseType: !99, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3015, file: !3014, line: 192, baseType: !99, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3015, file: !3014, line: 192, baseType: !99, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3015, file: !3014, line: 192, baseType: !100, size: 32, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3015, file: !3014, line: 192, baseType: !100, size: 32, offset: 224)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3023 = !DILocalVariable(name: "stream", arg: 1, scope: !3008, file: !553, line: 199, type: !2911)
!3024 = !DILocalVariable(name: "command_name", arg: 2, scope: !3008, file: !553, line: 200, type: !78)
!3025 = !DILocalVariable(name: "package", arg: 3, scope: !3008, file: !553, line: 200, type: !78)
!3026 = !DILocalVariable(name: "version", arg: 4, scope: !3008, file: !553, line: 201, type: !78)
!3027 = !DILocalVariable(name: "authors", arg: 5, scope: !3008, file: !553, line: 201, type: !3011)
!3028 = !DILocalVariable(name: "n_authors", scope: !3008, file: !553, line: 203, type: !102)
!3029 = !DILocalVariable(name: "authtab", scope: !3008, file: !553, line: 204, type: !3030)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !35)
!3031 = !DILocation(line: 0, scope: !3008)
!3032 = !DILocation(line: 201, column: 46, scope: !3008)
!3033 = !DILocation(line: 204, column: 3, scope: !3008)
!3034 = !DILocation(line: 204, column: 15, scope: !3008)
!3035 = !DILocation(line: 208, column: 35, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !553, line: 206, column: 3)
!3037 = distinct !DILexicalBlock(scope: !3008, file: !553, line: 206, column: 3)
!3038 = !DILocation(line: 208, column: 33, scope: !3036)
!3039 = !DILocation(line: 208, column: 67, scope: !3036)
!3040 = !DILocation(line: 206, column: 3, scope: !3037)
!3041 = !DILocation(line: 208, column: 14, scope: !3036)
!3042 = !DILocation(line: 0, scope: !3037)
!3043 = !DILocation(line: 211, column: 3, scope: !3008)
!3044 = !DILocation(line: 213, column: 1, scope: !3008)
!3045 = distinct !DISubprogram(name: "version_etc", scope: !553, file: !553, line: 230, type: !3046, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2911, !78, !78, !78, null}
!3048 = !{!3049, !3050, !3051, !3052, !3053}
!3049 = !DILocalVariable(name: "stream", arg: 1, scope: !3045, file: !553, line: 230, type: !2911)
!3050 = !DILocalVariable(name: "command_name", arg: 2, scope: !3045, file: !553, line: 231, type: !78)
!3051 = !DILocalVariable(name: "package", arg: 3, scope: !3045, file: !553, line: 231, type: !78)
!3052 = !DILocalVariable(name: "version", arg: 4, scope: !3045, file: !553, line: 232, type: !78)
!3053 = !DILocalVariable(name: "authors", scope: !3045, file: !553, line: 234, type: !3011)
!3054 = !DILocation(line: 0, scope: !3045)
!3055 = !DILocation(line: 234, column: 3, scope: !3045)
!3056 = !DILocation(line: 234, column: 11, scope: !3045)
!3057 = !DILocation(line: 235, column: 3, scope: !3045)
!3058 = !DILocation(line: 236, column: 3, scope: !3045)
!3059 = !DILocation(line: 237, column: 3, scope: !3045)
!3060 = !DILocation(line: 238, column: 1, scope: !3045)
!3061 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !553, file: !553, line: 241, type: !372, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !852)
!3062 = !DILocation(line: 243, column: 3, scope: !3061)
!3063 = !DILocation(line: 248, column: 3, scope: !3061)
!3064 = !DILocation(line: 254, column: 3, scope: !3061)
!3065 = !DILocation(line: 259, column: 3, scope: !3061)
!3066 = !DILocation(line: 261, column: 1, scope: !3061)
!3067 = distinct !DISubprogram(name: "xnrealloc", scope: !3068, file: !3068, line: 147, type: !3069, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3071)
!3068 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!99, !99, !102, !102}
!3071 = !{!3072, !3073, !3074}
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3067, file: !3068, line: 147, type: !99)
!3073 = !DILocalVariable(name: "n", arg: 2, scope: !3067, file: !3068, line: 147, type: !102)
!3074 = !DILocalVariable(name: "s", arg: 3, scope: !3067, file: !3068, line: 147, type: !102)
!3075 = !DILocation(line: 0, scope: !3067)
!3076 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !718, line: 83, type: !99)
!3077 = distinct !DISubprogram(name: "xreallocarray", scope: !718, file: !718, line: 83, type: !3069, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3078)
!3078 = !{!3076, !3079, !3080}
!3079 = !DILocalVariable(name: "n", arg: 2, scope: !3077, file: !718, line: 83, type: !102)
!3080 = !DILocalVariable(name: "s", arg: 3, scope: !3077, file: !718, line: 83, type: !102)
!3081 = !DILocation(line: 0, scope: !3077, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 149, column: 10, scope: !3067)
!3083 = !DILocation(line: 85, column: 25, scope: !3077, inlinedAt: !3082)
!3084 = !DILocalVariable(name: "p", arg: 1, scope: !3085, file: !718, line: 37, type: !99)
!3085 = distinct !DISubprogram(name: "check_nonnull", scope: !718, file: !718, line: 37, type: !3086, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!99, !99}
!3088 = !{!3084}
!3089 = !DILocation(line: 0, scope: !3085, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 85, column: 10, scope: !3077, inlinedAt: !3082)
!3091 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3090)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !718, line: 39, column: 7)
!3093 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3090)
!3094 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3090)
!3095 = !DILocation(line: 149, column: 3, scope: !3067)
!3096 = !DILocation(line: 0, scope: !3077)
!3097 = !DILocation(line: 85, column: 25, scope: !3077)
!3098 = !DILocation(line: 0, scope: !3085, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 85, column: 10, scope: !3077)
!3100 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3099)
!3101 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3099)
!3102 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3099)
!3103 = !DILocation(line: 85, column: 3, scope: !3077)
!3104 = distinct !DISubprogram(name: "xmalloc", scope: !718, file: !718, line: 47, type: !3105, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!99, !102}
!3107 = !{!3108}
!3108 = !DILocalVariable(name: "s", arg: 1, scope: !3104, file: !718, line: 47, type: !102)
!3109 = !DILocation(line: 0, scope: !3104)
!3110 = !DILocation(line: 49, column: 25, scope: !3104)
!3111 = !DILocation(line: 0, scope: !3085, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 49, column: 10, scope: !3104)
!3113 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3112)
!3114 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3112)
!3115 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3112)
!3116 = !DILocation(line: 49, column: 3, scope: !3104)
!3117 = !DISubprogram(name: "malloc", scope: !988, file: !988, line: 540, type: !3105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3118 = distinct !DISubprogram(name: "ximalloc", scope: !718, file: !718, line: 53, type: !3119, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!99, !737}
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "s", arg: 1, scope: !3118, file: !718, line: 53, type: !737)
!3123 = !DILocation(line: 0, scope: !3118)
!3124 = !DILocalVariable(name: "s", arg: 1, scope: !3125, file: !3126, line: 55, type: !737)
!3125 = distinct !DISubprogram(name: "imalloc", scope: !3126, file: !3126, line: 55, type: !3119, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3127)
!3126 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3127 = !{!3124}
!3128 = !DILocation(line: 0, scope: !3125, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 55, column: 25, scope: !3118)
!3130 = !DILocation(line: 57, column: 26, scope: !3125, inlinedAt: !3129)
!3131 = !DILocation(line: 0, scope: !3085, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 55, column: 10, scope: !3118)
!3133 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3132)
!3134 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3132)
!3135 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3132)
!3136 = !DILocation(line: 55, column: 3, scope: !3118)
!3137 = distinct !DISubprogram(name: "xcharalloc", scope: !718, file: !718, line: 59, type: !3138, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!244, !102}
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !718, line: 59, type: !102)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 0, scope: !3104, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 61, column: 10, scope: !3137)
!3145 = !DILocation(line: 49, column: 25, scope: !3104, inlinedAt: !3144)
!3146 = !DILocation(line: 0, scope: !3085, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 49, column: 10, scope: !3104, inlinedAt: !3144)
!3148 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3147)
!3149 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3147)
!3150 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3147)
!3151 = !DILocation(line: 61, column: 3, scope: !3137)
!3152 = distinct !DISubprogram(name: "xrealloc", scope: !718, file: !718, line: 68, type: !3153, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!99, !99, !102}
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "p", arg: 1, scope: !3152, file: !718, line: 68, type: !99)
!3157 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !718, line: 68, type: !102)
!3158 = !DILocation(line: 0, scope: !3152)
!3159 = !DILocalVariable(name: "ptr", arg: 1, scope: !3160, file: !3161, line: 2057, type: !99)
!3160 = distinct !DISubprogram(name: "rpl_realloc", scope: !3161, file: !3161, line: 2057, type: !3153, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3162)
!3161 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3162 = !{!3159, !3163}
!3163 = !DILocalVariable(name: "size", arg: 2, scope: !3160, file: !3161, line: 2057, type: !102)
!3164 = !DILocation(line: 0, scope: !3160, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 70, column: 25, scope: !3152)
!3166 = !DILocation(line: 2059, column: 24, scope: !3160, inlinedAt: !3165)
!3167 = !DILocation(line: 2059, column: 10, scope: !3160, inlinedAt: !3165)
!3168 = !DILocation(line: 0, scope: !3085, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 70, column: 10, scope: !3152)
!3170 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3169)
!3171 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3169)
!3172 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3169)
!3173 = !DILocation(line: 70, column: 3, scope: !3152)
!3174 = !DISubprogram(name: "realloc", scope: !988, file: !988, line: 551, type: !3153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3175 = distinct !DISubprogram(name: "xirealloc", scope: !718, file: !718, line: 74, type: !3176, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!99, !99, !737}
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "p", arg: 1, scope: !3175, file: !718, line: 74, type: !99)
!3180 = !DILocalVariable(name: "s", arg: 2, scope: !3175, file: !718, line: 74, type: !737)
!3181 = !DILocation(line: 0, scope: !3175)
!3182 = !DILocalVariable(name: "p", arg: 1, scope: !3183, file: !3126, line: 66, type: !99)
!3183 = distinct !DISubprogram(name: "irealloc", scope: !3126, file: !3126, line: 66, type: !3176, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3184)
!3184 = !{!3182, !3185}
!3185 = !DILocalVariable(name: "s", arg: 2, scope: !3183, file: !3126, line: 66, type: !737)
!3186 = !DILocation(line: 0, scope: !3183, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 76, column: 25, scope: !3175)
!3188 = !DILocation(line: 0, scope: !3160, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 68, column: 26, scope: !3183, inlinedAt: !3187)
!3190 = !DILocation(line: 2059, column: 24, scope: !3160, inlinedAt: !3189)
!3191 = !DILocation(line: 2059, column: 10, scope: !3160, inlinedAt: !3189)
!3192 = !DILocation(line: 0, scope: !3085, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 76, column: 10, scope: !3175)
!3194 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3193)
!3195 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3193)
!3196 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3193)
!3197 = !DILocation(line: 76, column: 3, scope: !3175)
!3198 = distinct !DISubprogram(name: "xireallocarray", scope: !718, file: !718, line: 89, type: !3199, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!99, !99, !737, !737}
!3201 = !{!3202, !3203, !3204}
!3202 = !DILocalVariable(name: "p", arg: 1, scope: !3198, file: !718, line: 89, type: !99)
!3203 = !DILocalVariable(name: "n", arg: 2, scope: !3198, file: !718, line: 89, type: !737)
!3204 = !DILocalVariable(name: "s", arg: 3, scope: !3198, file: !718, line: 89, type: !737)
!3205 = !DILocation(line: 0, scope: !3198)
!3206 = !DILocalVariable(name: "p", arg: 1, scope: !3207, file: !3126, line: 98, type: !99)
!3207 = distinct !DISubprogram(name: "ireallocarray", scope: !3126, file: !3126, line: 98, type: !3199, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3208)
!3208 = !{!3206, !3209, !3210}
!3209 = !DILocalVariable(name: "n", arg: 2, scope: !3207, file: !3126, line: 98, type: !737)
!3210 = !DILocalVariable(name: "s", arg: 3, scope: !3207, file: !3126, line: 98, type: !737)
!3211 = !DILocation(line: 0, scope: !3207, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 91, column: 25, scope: !3198)
!3213 = !DILocation(line: 101, column: 13, scope: !3207, inlinedAt: !3212)
!3214 = !DILocation(line: 0, scope: !3085, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 91, column: 10, scope: !3198)
!3216 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3215)
!3217 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3215)
!3218 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3215)
!3219 = !DILocation(line: 91, column: 3, scope: !3198)
!3220 = distinct !DISubprogram(name: "xnmalloc", scope: !718, file: !718, line: 98, type: !3221, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!99, !102, !102}
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !718, line: 98, type: !102)
!3225 = !DILocalVariable(name: "s", arg: 2, scope: !3220, file: !718, line: 98, type: !102)
!3226 = !DILocation(line: 0, scope: !3220)
!3227 = !DILocation(line: 0, scope: !3077, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 100, column: 10, scope: !3220)
!3229 = !DILocation(line: 85, column: 25, scope: !3077, inlinedAt: !3228)
!3230 = !DILocation(line: 0, scope: !3085, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 85, column: 10, scope: !3077, inlinedAt: !3228)
!3232 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3231)
!3233 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3231)
!3234 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3231)
!3235 = !DILocation(line: 100, column: 3, scope: !3220)
!3236 = distinct !DISubprogram(name: "xinmalloc", scope: !718, file: !718, line: 104, type: !3237, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!99, !737, !737}
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3236, file: !718, line: 104, type: !737)
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !718, line: 104, type: !737)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 0, scope: !3198, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 106, column: 10, scope: !3236)
!3245 = !DILocation(line: 0, scope: !3207, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 91, column: 25, scope: !3198, inlinedAt: !3244)
!3247 = !DILocation(line: 101, column: 13, scope: !3207, inlinedAt: !3246)
!3248 = !DILocation(line: 0, scope: !3085, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 91, column: 10, scope: !3198, inlinedAt: !3244)
!3250 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3249)
!3251 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3249)
!3252 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3249)
!3253 = !DILocation(line: 106, column: 3, scope: !3236)
!3254 = distinct !DISubprogram(name: "x2realloc", scope: !718, file: !718, line: 116, type: !3255, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!99, !99, !724}
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "p", arg: 1, scope: !3254, file: !718, line: 116, type: !99)
!3259 = !DILocalVariable(name: "ps", arg: 2, scope: !3254, file: !718, line: 116, type: !724)
!3260 = !DILocation(line: 0, scope: !3254)
!3261 = !DILocation(line: 0, scope: !721, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 118, column: 10, scope: !3254)
!3263 = !DILocation(line: 178, column: 14, scope: !721, inlinedAt: !3262)
!3264 = !DILocation(line: 180, column: 9, scope: !3265, inlinedAt: !3262)
!3265 = distinct !DILexicalBlock(scope: !721, file: !718, line: 180, column: 7)
!3266 = !DILocation(line: 180, column: 7, scope: !721, inlinedAt: !3262)
!3267 = !DILocation(line: 182, column: 13, scope: !3268, inlinedAt: !3262)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !718, line: 182, column: 11)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !718, line: 181, column: 5)
!3270 = !DILocation(line: 182, column: 11, scope: !3269, inlinedAt: !3262)
!3271 = !DILocation(line: 197, column: 11, scope: !3272, inlinedAt: !3262)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !718, line: 197, column: 11)
!3273 = distinct !DILexicalBlock(scope: !3265, file: !718, line: 195, column: 5)
!3274 = !DILocation(line: 197, column: 11, scope: !3273, inlinedAt: !3262)
!3275 = !DILocation(line: 198, column: 9, scope: !3272, inlinedAt: !3262)
!3276 = !DILocation(line: 0, scope: !3077, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 201, column: 7, scope: !721, inlinedAt: !3262)
!3278 = !DILocation(line: 85, column: 25, scope: !3077, inlinedAt: !3277)
!3279 = !DILocation(line: 0, scope: !3085, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 85, column: 10, scope: !3077, inlinedAt: !3277)
!3281 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3280)
!3282 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3280)
!3283 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3280)
!3284 = !DILocation(line: 202, column: 7, scope: !721, inlinedAt: !3262)
!3285 = !DILocation(line: 118, column: 3, scope: !3254)
!3286 = !DILocation(line: 0, scope: !721)
!3287 = !DILocation(line: 178, column: 14, scope: !721)
!3288 = !DILocation(line: 180, column: 9, scope: !3265)
!3289 = !DILocation(line: 180, column: 7, scope: !721)
!3290 = !DILocation(line: 182, column: 13, scope: !3268)
!3291 = !DILocation(line: 182, column: 11, scope: !3269)
!3292 = !DILocation(line: 190, column: 30, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3268, file: !718, line: 183, column: 9)
!3294 = !DILocation(line: 191, column: 16, scope: !3293)
!3295 = !DILocation(line: 191, column: 13, scope: !3293)
!3296 = !DILocation(line: 192, column: 9, scope: !3293)
!3297 = !DILocation(line: 197, column: 11, scope: !3272)
!3298 = !DILocation(line: 197, column: 11, scope: !3273)
!3299 = !DILocation(line: 198, column: 9, scope: !3272)
!3300 = !DILocation(line: 0, scope: !3077, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 201, column: 7, scope: !721)
!3302 = !DILocation(line: 85, column: 25, scope: !3077, inlinedAt: !3301)
!3303 = !DILocation(line: 0, scope: !3085, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 85, column: 10, scope: !3077, inlinedAt: !3301)
!3305 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3304)
!3306 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3304)
!3307 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3304)
!3308 = !DILocation(line: 202, column: 7, scope: !721)
!3309 = !DILocation(line: 203, column: 3, scope: !721)
!3310 = !DILocation(line: 0, scope: !733)
!3311 = !DILocation(line: 230, column: 14, scope: !733)
!3312 = !DILocation(line: 238, column: 7, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !733, file: !718, line: 238, column: 7)
!3314 = !DILocation(line: 238, column: 7, scope: !733)
!3315 = !DILocation(line: 240, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !733, file: !718, line: 240, column: 7)
!3317 = !DILocation(line: 240, column: 18, scope: !3316)
!3318 = !DILocation(line: 253, column: 8, scope: !733)
!3319 = !DILocation(line: 258, column: 27, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !718, line: 257, column: 5)
!3321 = distinct !DILexicalBlock(scope: !733, file: !718, line: 256, column: 7)
!3322 = !DILocation(line: 259, column: 32, scope: !3320)
!3323 = !DILocation(line: 260, column: 5, scope: !3320)
!3324 = !DILocation(line: 262, column: 9, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !733, file: !718, line: 262, column: 7)
!3326 = !DILocation(line: 262, column: 7, scope: !733)
!3327 = !DILocation(line: 263, column: 9, scope: !3325)
!3328 = !DILocation(line: 263, column: 5, scope: !3325)
!3329 = !DILocation(line: 264, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !733, file: !718, line: 264, column: 7)
!3331 = !DILocation(line: 264, column: 14, scope: !3330)
!3332 = !DILocation(line: 265, column: 7, scope: !3330)
!3333 = !DILocation(line: 265, column: 11, scope: !3330)
!3334 = !DILocation(line: 266, column: 11, scope: !3330)
!3335 = !DILocation(line: 267, column: 14, scope: !3330)
!3336 = !DILocation(line: 264, column: 7, scope: !733)
!3337 = !DILocation(line: 268, column: 5, scope: !3330)
!3338 = !DILocation(line: 0, scope: !3152, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 269, column: 8, scope: !733)
!3340 = !DILocation(line: 0, scope: !3160, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 70, column: 25, scope: !3152, inlinedAt: !3339)
!3342 = !DILocation(line: 2059, column: 24, scope: !3160, inlinedAt: !3341)
!3343 = !DILocation(line: 2059, column: 10, scope: !3160, inlinedAt: !3341)
!3344 = !DILocation(line: 0, scope: !3085, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 70, column: 10, scope: !3152, inlinedAt: !3339)
!3346 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3345)
!3347 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3345)
!3348 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3345)
!3349 = !DILocation(line: 270, column: 7, scope: !733)
!3350 = !DILocation(line: 271, column: 3, scope: !733)
!3351 = distinct !DISubprogram(name: "xzalloc", scope: !718, file: !718, line: 279, type: !3105, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3352)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "s", arg: 1, scope: !3351, file: !718, line: 279, type: !102)
!3354 = !DILocation(line: 0, scope: !3351)
!3355 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !718, line: 294, type: !102)
!3356 = distinct !DISubprogram(name: "xcalloc", scope: !718, file: !718, line: 294, type: !3221, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3357)
!3357 = !{!3355, !3358}
!3358 = !DILocalVariable(name: "s", arg: 2, scope: !3356, file: !718, line: 294, type: !102)
!3359 = !DILocation(line: 0, scope: !3356, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 281, column: 10, scope: !3351)
!3361 = !DILocation(line: 296, column: 25, scope: !3356, inlinedAt: !3360)
!3362 = !DILocation(line: 0, scope: !3085, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 296, column: 10, scope: !3356, inlinedAt: !3360)
!3364 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3363)
!3365 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3363)
!3366 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3363)
!3367 = !DILocation(line: 281, column: 3, scope: !3351)
!3368 = !DISubprogram(name: "calloc", scope: !988, file: !988, line: 543, type: !3221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3369 = !DILocation(line: 0, scope: !3356)
!3370 = !DILocation(line: 296, column: 25, scope: !3356)
!3371 = !DILocation(line: 0, scope: !3085, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 296, column: 10, scope: !3356)
!3373 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3372)
!3374 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3372)
!3375 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3372)
!3376 = !DILocation(line: 296, column: 3, scope: !3356)
!3377 = distinct !DISubprogram(name: "xizalloc", scope: !718, file: !718, line: 285, type: !3119, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3378)
!3378 = !{!3379}
!3379 = !DILocalVariable(name: "s", arg: 1, scope: !3377, file: !718, line: 285, type: !737)
!3380 = !DILocation(line: 0, scope: !3377)
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !718, line: 300, type: !737)
!3382 = distinct !DISubprogram(name: "xicalloc", scope: !718, file: !718, line: 300, type: !3237, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3383)
!3383 = !{!3381, !3384}
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3382, file: !718, line: 300, type: !737)
!3385 = !DILocation(line: 0, scope: !3382, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 287, column: 10, scope: !3377)
!3387 = !DILocalVariable(name: "n", arg: 1, scope: !3388, file: !3126, line: 77, type: !737)
!3388 = distinct !DISubprogram(name: "icalloc", scope: !3126, file: !3126, line: 77, type: !3237, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3389)
!3389 = !{!3387, !3390}
!3390 = !DILocalVariable(name: "s", arg: 2, scope: !3388, file: !3126, line: 77, type: !737)
!3391 = !DILocation(line: 0, scope: !3388, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 302, column: 25, scope: !3382, inlinedAt: !3386)
!3393 = !DILocation(line: 91, column: 10, scope: !3388, inlinedAt: !3392)
!3394 = !DILocation(line: 0, scope: !3085, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 302, column: 10, scope: !3382, inlinedAt: !3386)
!3396 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3395)
!3397 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3395)
!3398 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3395)
!3399 = !DILocation(line: 287, column: 3, scope: !3377)
!3400 = !DILocation(line: 0, scope: !3382)
!3401 = !DILocation(line: 0, scope: !3388, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 302, column: 25, scope: !3382)
!3403 = !DILocation(line: 91, column: 10, scope: !3388, inlinedAt: !3402)
!3404 = !DILocation(line: 0, scope: !3085, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 302, column: 10, scope: !3382)
!3406 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3405)
!3407 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3405)
!3408 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3405)
!3409 = !DILocation(line: 302, column: 3, scope: !3382)
!3410 = distinct !DISubprogram(name: "xmemdup", scope: !718, file: !718, line: 310, type: !3411, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!99, !1010, !102}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !718, line: 310, type: !1010)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !718, line: 310, type: !102)
!3416 = !DILocation(line: 0, scope: !3410)
!3417 = !DILocation(line: 0, scope: !3104, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 312, column: 18, scope: !3410)
!3419 = !DILocation(line: 49, column: 25, scope: !3104, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !3085, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 49, column: 10, scope: !3104, inlinedAt: !3418)
!3422 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3421)
!3425 = !DILocalVariable(name: "__dest", arg: 1, scope: !3426, file: !1595, line: 26, type: !3429)
!3426 = distinct !DISubprogram(name: "memcpy", scope: !1595, file: !1595, line: 26, type: !3427, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3430)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!99, !3429, !1009, !102}
!3429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3430 = !{!3425, !3431, !3432}
!3431 = !DILocalVariable(name: "__src", arg: 2, scope: !3426, file: !1595, line: 26, type: !1009)
!3432 = !DILocalVariable(name: "__len", arg: 3, scope: !3426, file: !1595, line: 26, type: !102)
!3433 = !DILocation(line: 0, scope: !3426, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 312, column: 10, scope: !3410)
!3435 = !DILocation(line: 29, column: 10, scope: !3426, inlinedAt: !3434)
!3436 = !DILocation(line: 312, column: 3, scope: !3410)
!3437 = distinct !DISubprogram(name: "ximemdup", scope: !718, file: !718, line: 316, type: !3438, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!99, !1010, !737}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "p", arg: 1, scope: !3437, file: !718, line: 316, type: !1010)
!3442 = !DILocalVariable(name: "s", arg: 2, scope: !3437, file: !718, line: 316, type: !737)
!3443 = !DILocation(line: 0, scope: !3437)
!3444 = !DILocation(line: 0, scope: !3118, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 318, column: 18, scope: !3437)
!3446 = !DILocation(line: 0, scope: !3125, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 55, column: 25, scope: !3118, inlinedAt: !3445)
!3448 = !DILocation(line: 57, column: 26, scope: !3125, inlinedAt: !3447)
!3449 = !DILocation(line: 0, scope: !3085, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 55, column: 10, scope: !3118, inlinedAt: !3445)
!3451 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3450)
!3452 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3450)
!3453 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3450)
!3454 = !DILocation(line: 0, scope: !3426, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 318, column: 10, scope: !3437)
!3456 = !DILocation(line: 29, column: 10, scope: !3426, inlinedAt: !3455)
!3457 = !DILocation(line: 318, column: 3, scope: !3437)
!3458 = distinct !DISubprogram(name: "ximemdup0", scope: !718, file: !718, line: 325, type: !3459, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!244, !1010, !737}
!3461 = !{!3462, !3463, !3464}
!3462 = !DILocalVariable(name: "p", arg: 1, scope: !3458, file: !718, line: 325, type: !1010)
!3463 = !DILocalVariable(name: "s", arg: 2, scope: !3458, file: !718, line: 325, type: !737)
!3464 = !DILocalVariable(name: "result", scope: !3458, file: !718, line: 327, type: !244)
!3465 = !DILocation(line: 0, scope: !3458)
!3466 = !DILocation(line: 327, column: 30, scope: !3458)
!3467 = !DILocation(line: 0, scope: !3118, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 327, column: 18, scope: !3458)
!3469 = !DILocation(line: 0, scope: !3125, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 55, column: 25, scope: !3118, inlinedAt: !3468)
!3471 = !DILocation(line: 57, column: 26, scope: !3125, inlinedAt: !3470)
!3472 = !DILocation(line: 0, scope: !3085, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 55, column: 10, scope: !3118, inlinedAt: !3468)
!3474 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3473)
!3475 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3473)
!3476 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3473)
!3477 = !DILocation(line: 328, column: 3, scope: !3458)
!3478 = !DILocation(line: 328, column: 13, scope: !3458)
!3479 = !DILocation(line: 0, scope: !3426, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 329, column: 10, scope: !3458)
!3481 = !DILocation(line: 29, column: 10, scope: !3426, inlinedAt: !3480)
!3482 = !DILocation(line: 329, column: 3, scope: !3458)
!3483 = distinct !DISubprogram(name: "xstrdup", scope: !718, file: !718, line: 335, type: !990, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3484)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "string", arg: 1, scope: !3483, file: !718, line: 335, type: !78)
!3486 = !DILocation(line: 0, scope: !3483)
!3487 = !DILocation(line: 337, column: 27, scope: !3483)
!3488 = !DILocation(line: 337, column: 43, scope: !3483)
!3489 = !DILocation(line: 0, scope: !3410, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 337, column: 10, scope: !3483)
!3491 = !DILocation(line: 0, scope: !3104, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 312, column: 18, scope: !3410, inlinedAt: !3490)
!3493 = !DILocation(line: 49, column: 25, scope: !3104, inlinedAt: !3492)
!3494 = !DILocation(line: 0, scope: !3085, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 49, column: 10, scope: !3104, inlinedAt: !3492)
!3496 = !DILocation(line: 39, column: 8, scope: !3092, inlinedAt: !3495)
!3497 = !DILocation(line: 39, column: 7, scope: !3085, inlinedAt: !3495)
!3498 = !DILocation(line: 40, column: 5, scope: !3092, inlinedAt: !3495)
!3499 = !DILocation(line: 0, scope: !3426, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 312, column: 10, scope: !3410, inlinedAt: !3490)
!3501 = !DILocation(line: 29, column: 10, scope: !3426, inlinedAt: !3500)
!3502 = !DILocation(line: 337, column: 3, scope: !3483)
!3503 = distinct !DISubprogram(name: "xalloc_die", scope: !649, file: !649, line: 32, type: !372, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3504)
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "__errstatus", scope: !3506, file: !649, line: 34, type: !675)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !649, line: 34, column: 3)
!3507 = !DILocation(line: 34, column: 3, scope: !3506)
!3508 = !DILocation(line: 0, scope: !3506)
!3509 = !DILocation(line: 40, column: 3, scope: !3503)
!3510 = distinct !DISubprogram(name: "xnanosleep", scope: !754, file: !754, line: 40, type: !3511, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!100, !1020}
!3513 = !{!3514, !3515}
!3514 = !DILocalVariable(name: "seconds", arg: 1, scope: !3510, file: !754, line: 40, type: !1020)
!3515 = !DILocalVariable(name: "ts_sleep", scope: !3510, file: !754, line: 53, type: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3517, line: 11, size: 128, elements: !3518)
!3517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3518 = !{!3519, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3516, file: !3517, line: 16, baseType: !758, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3516, file: !3517, line: 21, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !264, line: 197, baseType: !265)
!3522 = !DILocation(line: 0, scope: !3510)
!3523 = !DILocation(line: 43, column: 35, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3510, file: !754, line: 43, column: 7)
!3525 = !DILocation(line: 43, column: 7, scope: !3510)
!3526 = !DILocation(line: 46, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3524, file: !754, line: 44, column: 5)
!3528 = !DILocation(line: 47, column: 14, scope: !3527)
!3529 = !DILocation(line: 47, column: 20, scope: !3527)
!3530 = distinct !{!3530, !3531, !3532, !911}
!3531 = !DILocation(line: 45, column: 7, scope: !3527)
!3532 = !DILocation(line: 47, column: 28, scope: !3527)
!3533 = !DILocation(line: 53, column: 3, scope: !3510)
!3534 = !DILocation(line: 53, column: 19, scope: !3510)
!3535 = !DILocation(line: 53, column: 30, scope: !3510)
!3536 = !DILocation(line: 68, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !754, line: 56, column: 5)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !754, line: 55, column: 3)
!3539 = distinct !DILexicalBlock(scope: !3510, file: !754, line: 55, column: 3)
!3540 = !DILocation(line: 69, column: 11, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !754, line: 69, column: 11)
!3542 = !DILocation(line: 69, column: 44, scope: !3541)
!3543 = !DILocation(line: 69, column: 11, scope: !3537)
!3544 = !DILocation(line: 71, column: 11, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3537, file: !754, line: 71, column: 11)
!3546 = !DILocation(line: 71, column: 26, scope: !3545)
!3547 = distinct !{!3547, !3548, !3549}
!3548 = !DILocation(line: 55, column: 3, scope: !3539)
!3549 = !DILocation(line: 73, column: 5, scope: !3539)
!3550 = !DILocation(line: 76, column: 1, scope: !3510)
!3551 = !DISubprogram(name: "pause", scope: !1220, file: !1220, line: 489, type: !3552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!100}
!3554 = distinct !DISubprogram(name: "c_strtod", scope: !657, file: !657, line: 102, type: !3555, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!1020, !78, !1015}
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DILocalVariable(name: "nptr", arg: 1, scope: !3554, file: !657, line: 102, type: !78)
!3559 = !DILocalVariable(name: "endptr", arg: 2, scope: !3554, file: !657, line: 102, type: !1015)
!3560 = !DILocalVariable(name: "r", scope: !3554, file: !657, line: 104, type: !1020)
!3561 = !DILocalVariable(name: "locale", scope: !3554, file: !657, line: 108, type: !659)
!3562 = !DILocation(line: 0, scope: !3554)
!3563 = !DILocation(line: 65, column: 8, scope: !3564, inlinedAt: !3568)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !657, line: 65, column: 7)
!3565 = distinct !DISubprogram(name: "c_locale", scope: !657, file: !657, line: 63, type: !3566, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !852)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!659}
!3568 = distinct !DILocation(line: 108, column: 21, scope: !3554)
!3569 = !DILocation(line: 65, column: 7, scope: !3565, inlinedAt: !3568)
!3570 = !DILocation(line: 66, column: 22, scope: !3564, inlinedAt: !3568)
!3571 = !DILocation(line: 66, column: 20, scope: !3564, inlinedAt: !3568)
!3572 = !DILocation(line: 66, column: 5, scope: !3564, inlinedAt: !3568)
!3573 = !DILocation(line: 67, column: 10, scope: !3565, inlinedAt: !3568)
!3574 = !DILocation(line: 109, column: 8, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3554, file: !657, line: 109, column: 7)
!3576 = !DILocation(line: 109, column: 7, scope: !3554)
!3577 = !DILocation(line: 111, column: 11, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !657, line: 111, column: 11)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !657, line: 110, column: 5)
!3580 = !DILocation(line: 111, column: 11, scope: !3579)
!3581 = !DILocation(line: 112, column: 17, scope: !3578)
!3582 = !DILocation(line: 112, column: 9, scope: !3578)
!3583 = !DILocation(line: 118, column: 7, scope: !3554)
!3584 = !DILocation(line: 342, column: 3, scope: !3554)
!3585 = !DILocation(line: 343, column: 1, scope: !3554)
!3586 = !DISubprogram(name: "newlocale", scope: !977, file: !977, line: 141, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!659, !100, !78, !659}
!3589 = !DISubprogram(name: "strtod_l", scope: !988, file: !988, line: 296, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!1020, !858, !1132, !659}
!3592 = distinct !DISubprogram(name: "close_stream", scope: !760, file: !760, line: 55, type: !3593, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3629)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!100, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3597, file: !240, line: 51, baseType: !100, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3597, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3597, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3597, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3597, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3597, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3597, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3597, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3597, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3597, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3597, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3597, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3597, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3597, file: !240, line: 70, baseType: !3613, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3597, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3597, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3597, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3597, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3597, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3597, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3597, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3597, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3597, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3597, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3597, file: !240, line: 93, baseType: !3613, size: 64, offset: 1344)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3597, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3597, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3597, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3597, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3629 = !{!3630, !3631, !3633, !3634}
!3630 = !DILocalVariable(name: "stream", arg: 1, scope: !3592, file: !760, line: 55, type: !3595)
!3631 = !DILocalVariable(name: "some_pending", scope: !3592, file: !760, line: 57, type: !3632)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!3633 = !DILocalVariable(name: "prev_fail", scope: !3592, file: !760, line: 58, type: !3632)
!3634 = !DILocalVariable(name: "fclose_fail", scope: !3592, file: !760, line: 59, type: !3632)
!3635 = !DILocation(line: 0, scope: !3592)
!3636 = !DILocation(line: 57, column: 30, scope: !3592)
!3637 = !DILocalVariable(name: "__stream", arg: 1, scope: !3638, file: !1346, line: 135, type: !3595)
!3638 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1346, file: !1346, line: 135, type: !3593, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3639)
!3639 = !{!3637}
!3640 = !DILocation(line: 0, scope: !3638, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 58, column: 27, scope: !3592)
!3642 = !DILocation(line: 137, column: 10, scope: !3638, inlinedAt: !3641)
!3643 = !{!1355, !865, i64 0}
!3644 = !DILocation(line: 58, column: 43, scope: !3592)
!3645 = !DILocation(line: 59, column: 29, scope: !3592)
!3646 = !DILocation(line: 59, column: 45, scope: !3592)
!3647 = !DILocation(line: 69, column: 17, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3592, file: !760, line: 69, column: 7)
!3649 = !DILocation(line: 57, column: 50, scope: !3592)
!3650 = !DILocation(line: 69, column: 33, scope: !3648)
!3651 = !DILocation(line: 69, column: 53, scope: !3648)
!3652 = !DILocation(line: 69, column: 59, scope: !3648)
!3653 = !DILocation(line: 69, column: 7, scope: !3592)
!3654 = !DILocation(line: 71, column: 11, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3648, file: !760, line: 70, column: 5)
!3656 = !DILocation(line: 72, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3655, file: !760, line: 71, column: 11)
!3658 = !DILocation(line: 72, column: 15, scope: !3657)
!3659 = !DILocation(line: 77, column: 1, scope: !3592)
!3660 = !DISubprogram(name: "__fpending", scope: !3661, file: !3661, line: 75, type: !3662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3661 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!102, !3595}
!3664 = distinct !DISubprogram(name: "dtotimespec", scope: !762, file: !762, line: 30, type: !3665, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3671)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!3667, !1020}
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3517, line: 11, size: 128, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3667, file: !3517, line: 16, baseType: !758, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3667, file: !3517, line: 21, baseType: !3521, size: 64, offset: 64)
!3671 = !{!3672, !3673, !3677, !3678}
!3672 = !DILocalVariable(name: "sec", arg: 1, scope: !3664, file: !762, line: 30, type: !1020)
!3673 = !DILocalVariable(name: "s", scope: !3674, file: !762, line: 38, type: !756)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !762, line: 37, column: 5)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !762, line: 34, column: 12)
!3676 = distinct !DILexicalBlock(scope: !3664, file: !762, line: 32, column: 7)
!3677 = !DILocalVariable(name: "frac", scope: !3674, file: !762, line: 39, type: !1020)
!3678 = !DILocalVariable(name: "ns", scope: !3674, file: !762, line: 40, type: !265)
!3679 = !DILocation(line: 0, scope: !3664)
!3680 = !DILocation(line: 32, column: 32, scope: !3676)
!3681 = !DILocation(line: 32, column: 7, scope: !3664)
!3682 = !DILocation(line: 34, column: 19, scope: !3675)
!3683 = !DILocation(line: 34, column: 12, scope: !3676)
!3684 = !DILocation(line: 38, column: 18, scope: !3674)
!3685 = !DILocation(line: 0, scope: !3674)
!3686 = !DILocation(line: 39, column: 42, scope: !3674)
!3687 = !DILocation(line: 39, column: 40, scope: !3674)
!3688 = !DILocation(line: 39, column: 33, scope: !3674)
!3689 = !DILocation(line: 40, column: 17, scope: !3674)
!3690 = !DILocation(line: 41, column: 13, scope: !3674)
!3691 = !DILocation(line: 41, column: 16, scope: !3674)
!3692 = !DILocation(line: 41, column: 10, scope: !3674)
!3693 = !DILocation(line: 42, column: 15, scope: !3674)
!3694 = !DILocation(line: 42, column: 9, scope: !3674)
!3695 = !DILocation(line: 45, column: 14, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3674, file: !762, line: 45, column: 11)
!3697 = !DILocation(line: 45, column: 11, scope: !3674)
!3698 = !DILocalVariable(name: "s", arg: 1, scope: !3699, file: !765, line: 56, type: !756)
!3699 = distinct !DISubprogram(name: "make_timespec", scope: !765, file: !765, line: 56, type: !3700, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!3667, !756, !265}
!3702 = !{!3698, !3703}
!3703 = !DILocalVariable(name: "ns", arg: 2, scope: !3699, file: !765, line: 56, type: !265)
!3704 = !DILocation(line: 0, scope: !3699, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 51, column: 14, scope: !3674)
!3706 = !DILocation(line: 58, column: 3, scope: !3699, inlinedAt: !3705)
!3707 = !DILocation(line: 53, column: 1, scope: !3664)
!3708 = distinct !DISubprogram(name: "rpl_fclose", scope: !769, file: !769, line: 58, type: !3709, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3745)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!100, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3713)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3713, file: !240, line: 51, baseType: !100, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3713, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3713, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3713, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3713, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3713, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3713, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3713, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3713, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3713, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3713, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3713, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3713, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3713, file: !240, line: 70, baseType: !3729, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3713, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3713, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3713, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3713, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3713, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3713, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3713, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3713, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3713, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3713, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3713, file: !240, line: 93, baseType: !3729, size: 64, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3713, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3713, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3713, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3713, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "fp", arg: 1, scope: !3708, file: !769, line: 58, type: !3711)
!3747 = !DILocalVariable(name: "saved_errno", scope: !3708, file: !769, line: 60, type: !100)
!3748 = !DILocalVariable(name: "fd", scope: !3708, file: !769, line: 63, type: !100)
!3749 = !DILocalVariable(name: "result", scope: !3708, file: !769, line: 74, type: !100)
!3750 = !DILocation(line: 0, scope: !3708)
!3751 = !DILocation(line: 63, column: 12, scope: !3708)
!3752 = !DILocation(line: 64, column: 10, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3708, file: !769, line: 64, column: 7)
!3754 = !DILocation(line: 64, column: 7, scope: !3708)
!3755 = !DILocation(line: 65, column: 12, scope: !3753)
!3756 = !DILocation(line: 65, column: 5, scope: !3753)
!3757 = !DILocation(line: 70, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3708, file: !769, line: 70, column: 7)
!3759 = !DILocation(line: 70, column: 23, scope: !3758)
!3760 = !DILocation(line: 70, column: 33, scope: !3758)
!3761 = !DILocation(line: 70, column: 26, scope: !3758)
!3762 = !DILocation(line: 70, column: 59, scope: !3758)
!3763 = !DILocation(line: 71, column: 7, scope: !3758)
!3764 = !DILocation(line: 71, column: 10, scope: !3758)
!3765 = !DILocation(line: 70, column: 7, scope: !3708)
!3766 = !DILocation(line: 100, column: 12, scope: !3708)
!3767 = !DILocation(line: 105, column: 7, scope: !3708)
!3768 = !DILocation(line: 72, column: 19, scope: !3758)
!3769 = !DILocation(line: 105, column: 19, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3708, file: !769, line: 105, column: 7)
!3771 = !DILocation(line: 107, column: 13, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3770, file: !769, line: 106, column: 5)
!3773 = !DILocation(line: 109, column: 5, scope: !3772)
!3774 = !DILocation(line: 112, column: 1, scope: !3708)
!3775 = !DISubprogram(name: "fileno", scope: !331, file: !331, line: 809, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3776 = !DISubprogram(name: "fclose", scope: !331, file: !331, line: 178, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3777 = !DISubprogram(name: "__freading", scope: !3661, file: !3661, line: 51, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3778 = !DISubprogram(name: "lseek", scope: !1220, file: !1220, line: 339, type: !3779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!263, !100, !263, !100}
!3781 = distinct !DISubprogram(name: "rpl_fflush", scope: !771, file: !771, line: 130, type: !3782, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3818)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!100, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3786)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3787)
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3786, file: !240, line: 51, baseType: !100, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3786, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3786, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3786, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3786, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3786, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3786, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3786, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3786, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3786, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3786, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3786, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3786, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3786, file: !240, line: 70, baseType: !3802, size: 64, offset: 832)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3786, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3786, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3786, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3786, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3786, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3786, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3786, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3786, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3786, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3786, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3786, file: !240, line: 93, baseType: !3802, size: 64, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3786, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3786, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3786, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3786, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "stream", arg: 1, scope: !3781, file: !771, line: 130, type: !3784)
!3820 = !DILocation(line: 0, scope: !3781)
!3821 = !DILocation(line: 151, column: 14, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3781, file: !771, line: 151, column: 7)
!3823 = !DILocation(line: 151, column: 22, scope: !3822)
!3824 = !DILocation(line: 151, column: 27, scope: !3822)
!3825 = !DILocation(line: 151, column: 7, scope: !3781)
!3826 = !DILocation(line: 152, column: 12, scope: !3822)
!3827 = !DILocation(line: 152, column: 5, scope: !3822)
!3828 = !DILocalVariable(name: "fp", arg: 1, scope: !3829, file: !771, line: 42, type: !3784)
!3829 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !771, file: !771, line: 42, type: !3830, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3784}
!3832 = !{!3828}
!3833 = !DILocation(line: 0, scope: !3829, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 157, column: 3, scope: !3781)
!3835 = !DILocation(line: 44, column: 12, scope: !3836, inlinedAt: !3834)
!3836 = distinct !DILexicalBlock(scope: !3829, file: !771, line: 44, column: 7)
!3837 = !DILocation(line: 44, column: 19, scope: !3836, inlinedAt: !3834)
!3838 = !DILocation(line: 44, column: 7, scope: !3829, inlinedAt: !3834)
!3839 = !DILocation(line: 46, column: 5, scope: !3836, inlinedAt: !3834)
!3840 = !DILocation(line: 159, column: 10, scope: !3781)
!3841 = !DILocation(line: 159, column: 3, scope: !3781)
!3842 = !DILocation(line: 236, column: 1, scope: !3781)
!3843 = !DISubprogram(name: "fflush", scope: !331, file: !331, line: 230, type: !3782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3844 = distinct !DISubprogram(name: "rpl_fseeko", scope: !773, file: !773, line: 28, type: !3845, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3882)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!100, !3847, !3881, !100}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3849)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !240, line: 51, baseType: !100, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3849, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3849, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3849, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3849, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3849, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3849, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3849, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3849, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3849, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3849, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3849, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3849, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3849, file: !240, line: 70, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3849, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3849, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3849, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3849, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3849, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3849, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3849, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3849, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3849, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3849, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3849, file: !240, line: 93, baseType: !3865, size: 64, offset: 1344)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3849, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3849, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3849, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3849, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !331, line: 63, baseType: !263)
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DILocalVariable(name: "fp", arg: 1, scope: !3844, file: !773, line: 28, type: !3847)
!3884 = !DILocalVariable(name: "offset", arg: 2, scope: !3844, file: !773, line: 28, type: !3881)
!3885 = !DILocalVariable(name: "whence", arg: 3, scope: !3844, file: !773, line: 28, type: !100)
!3886 = !DILocalVariable(name: "pos", scope: !3887, file: !773, line: 123, type: !3881)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !773, line: 119, column: 5)
!3888 = distinct !DILexicalBlock(scope: !3844, file: !773, line: 55, column: 7)
!3889 = !DILocation(line: 0, scope: !3844)
!3890 = !DILocation(line: 55, column: 12, scope: !3888)
!3891 = !{!1355, !809, i64 16}
!3892 = !DILocation(line: 55, column: 33, scope: !3888)
!3893 = !{!1355, !809, i64 8}
!3894 = !DILocation(line: 55, column: 25, scope: !3888)
!3895 = !DILocation(line: 56, column: 7, scope: !3888)
!3896 = !DILocation(line: 56, column: 15, scope: !3888)
!3897 = !DILocation(line: 56, column: 37, scope: !3888)
!3898 = !{!1355, !809, i64 32}
!3899 = !DILocation(line: 56, column: 29, scope: !3888)
!3900 = !DILocation(line: 57, column: 7, scope: !3888)
!3901 = !DILocation(line: 57, column: 15, scope: !3888)
!3902 = !{!1355, !809, i64 72}
!3903 = !DILocation(line: 57, column: 29, scope: !3888)
!3904 = !DILocation(line: 55, column: 7, scope: !3844)
!3905 = !DILocation(line: 123, column: 26, scope: !3887)
!3906 = !DILocation(line: 123, column: 19, scope: !3887)
!3907 = !DILocation(line: 0, scope: !3887)
!3908 = !DILocation(line: 124, column: 15, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3887, file: !773, line: 124, column: 11)
!3910 = !DILocation(line: 124, column: 11, scope: !3887)
!3911 = !DILocation(line: 135, column: 19, scope: !3887)
!3912 = !DILocation(line: 136, column: 12, scope: !3887)
!3913 = !DILocation(line: 136, column: 20, scope: !3887)
!3914 = !{!1355, !1356, i64 144}
!3915 = !DILocation(line: 167, column: 7, scope: !3887)
!3916 = !DILocation(line: 169, column: 10, scope: !3844)
!3917 = !DILocation(line: 169, column: 3, scope: !3844)
!3918 = !DILocation(line: 170, column: 1, scope: !3844)
!3919 = !DISubprogram(name: "fseeko", scope: !331, file: !331, line: 736, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!100, !3847, !263, !100}
!3922 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !685, file: !685, line: 100, type: !3923, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3926)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!102, !1613, !78, !102, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!3926 = !{!3927, !3928, !3929, !3930, !3931}
!3927 = !DILocalVariable(name: "pwc", arg: 1, scope: !3922, file: !685, line: 100, type: !1613)
!3928 = !DILocalVariable(name: "s", arg: 2, scope: !3922, file: !685, line: 100, type: !78)
!3929 = !DILocalVariable(name: "n", arg: 3, scope: !3922, file: !685, line: 100, type: !102)
!3930 = !DILocalVariable(name: "ps", arg: 4, scope: !3922, file: !685, line: 100, type: !3925)
!3931 = !DILocalVariable(name: "ret", scope: !3922, file: !685, line: 130, type: !102)
!3932 = !DILocation(line: 0, scope: !3922)
!3933 = !DILocation(line: 105, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3922, file: !685, line: 105, column: 7)
!3935 = !DILocation(line: 105, column: 7, scope: !3922)
!3936 = !DILocation(line: 117, column: 10, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3922, file: !685, line: 117, column: 7)
!3938 = !DILocation(line: 117, column: 7, scope: !3922)
!3939 = !DILocation(line: 130, column: 16, scope: !3922)
!3940 = !DILocation(line: 135, column: 11, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3922, file: !685, line: 135, column: 7)
!3942 = !DILocation(line: 135, column: 25, scope: !3941)
!3943 = !DILocation(line: 135, column: 30, scope: !3941)
!3944 = !DILocation(line: 135, column: 7, scope: !3922)
!3945 = !DILocalVariable(name: "ps", arg: 1, scope: !3946, file: !1586, line: 1135, type: !3925)
!3946 = distinct !DISubprogram(name: "mbszero", scope: !1586, file: !1586, line: 1135, type: !3947, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3925}
!3949 = !{!3945}
!3950 = !DILocation(line: 0, scope: !3946, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 137, column: 5, scope: !3941)
!3952 = !DILocalVariable(name: "__dest", arg: 1, scope: !3953, file: !1595, line: 57, type: !99)
!3953 = distinct !DISubprogram(name: "memset", scope: !1595, file: !1595, line: 57, type: !1596, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3954)
!3954 = !{!3952, !3955, !3956}
!3955 = !DILocalVariable(name: "__ch", arg: 2, scope: !3953, file: !1595, line: 57, type: !100)
!3956 = !DILocalVariable(name: "__len", arg: 3, scope: !3953, file: !1595, line: 57, type: !102)
!3957 = !DILocation(line: 0, scope: !3953, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 1137, column: 3, scope: !3946, inlinedAt: !3951)
!3959 = !DILocation(line: 59, column: 10, scope: !3953, inlinedAt: !3958)
!3960 = !DILocation(line: 137, column: 5, scope: !3941)
!3961 = !DILocation(line: 138, column: 11, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3922, file: !685, line: 138, column: 7)
!3963 = !DILocation(line: 138, column: 7, scope: !3922)
!3964 = !DILocation(line: 139, column: 5, scope: !3962)
!3965 = !DILocation(line: 143, column: 26, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3922, file: !685, line: 143, column: 7)
!3967 = !DILocation(line: 143, column: 41, scope: !3966)
!3968 = !DILocation(line: 143, column: 7, scope: !3922)
!3969 = !DILocation(line: 145, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !685, line: 145, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3966, file: !685, line: 144, column: 5)
!3972 = !DILocation(line: 145, column: 11, scope: !3971)
!3973 = !DILocation(line: 146, column: 32, scope: !3970)
!3974 = !DILocation(line: 146, column: 16, scope: !3970)
!3975 = !DILocation(line: 146, column: 14, scope: !3970)
!3976 = !DILocation(line: 146, column: 9, scope: !3970)
!3977 = !DILocation(line: 286, column: 1, scope: !3922)
!3978 = !DISubprogram(name: "mbsinit", scope: !3979, file: !3979, line: 293, type: !3980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3979 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!100, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!3984 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !775, file: !775, line: 42, type: !3985, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3994)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!100, !3987, !3993}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3989)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3517, line: 11, size: 128, elements: !3990)
!3990 = !{!3991, !3992}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3989, file: !3517, line: 16, baseType: !758, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3989, file: !3517, line: 21, baseType: !3521, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3994 = !{!3995, !3996, !3997, !4000, !4001, !4002}
!3995 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3984, file: !775, line: 42, type: !3987)
!3996 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3984, file: !775, line: 43, type: !3993)
!3997 = !DILocalVariable(name: "limit", scope: !3998, file: !775, line: 61, type: !3999)
!3998 = distinct !DILexicalBlock(scope: !3984, file: !775, line: 58, column: 3)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!4000 = !DILocalVariable(name: "seconds", scope: !3998, file: !775, line: 62, type: !756)
!4001 = !DILocalVariable(name: "intermediate", scope: !3998, file: !775, line: 63, type: !3989)
!4002 = !DILocalVariable(name: "result", scope: !4003, file: !775, line: 68, type: !100)
!4003 = distinct !DILexicalBlock(scope: !3998, file: !775, line: 66, column: 7)
!4004 = !DILocation(line: 0, scope: !3984)
!4005 = !DILocation(line: 52, column: 24, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3984, file: !775, line: 52, column: 7)
!4007 = !{!4008, !1356, i64 8}
!4008 = !{!"timespec", !1356, i64 0, !1356, i64 8}
!4009 = !DILocation(line: 52, column: 36, scope: !4006)
!4010 = !DILocation(line: 54, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4006, file: !775, line: 53, column: 5)
!4012 = !DILocation(line: 54, column: 13, scope: !4011)
!4013 = !DILocation(line: 55, column: 7, scope: !4011)
!4014 = !DILocation(line: 0, scope: !3998)
!4015 = !DILocation(line: 62, column: 39, scope: !3998)
!4016 = !{!4008, !1356, i64 0}
!4017 = !DILocation(line: 63, column: 5, scope: !3998)
!4018 = !DILocation(line: 63, column: 21, scope: !3998)
!4019 = !DILocation(line: 63, column: 36, scope: !3998)
!4020 = !{i64 0, i64 8, !2363, i64 8, i64 8, !2363}
!4021 = !DILocation(line: 65, column: 18, scope: !3998)
!4022 = !DILocation(line: 65, column: 5, scope: !3998)
!4023 = !DILocation(line: 67, column: 29, scope: !4003)
!4024 = !DILocation(line: 68, column: 22, scope: !4003)
!4025 = !DILocation(line: 0, scope: !4003)
!4026 = !DILocation(line: 69, column: 17, scope: !4003)
!4027 = !DILocation(line: 70, column: 13, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4003, file: !775, line: 70, column: 13)
!4029 = !DILocation(line: 70, column: 13, scope: !4003)
!4030 = !DILocation(line: 72, column: 17, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !775, line: 72, column: 17)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !775, line: 71, column: 11)
!4033 = !DILocation(line: 72, column: 17, scope: !4032)
!4034 = !DILocation(line: 73, column: 39, scope: !4031)
!4035 = !DILocation(line: 73, column: 15, scope: !4031)
!4036 = !DILocation(line: 76, column: 30, scope: !4003)
!4037 = distinct !{!4037, !4022, !4038, !911}
!4038 = !DILocation(line: 77, column: 7, scope: !3998)
!4039 = !DILocation(line: 78, column: 25, scope: !3998)
!4040 = !DILocation(line: 79, column: 12, scope: !3998)
!4041 = !DILocation(line: 79, column: 5, scope: !3998)
!4042 = !DILocation(line: 80, column: 3, scope: !3984)
!4043 = !DILocation(line: 81, column: 1, scope: !3984)
!4044 = !DISubprogram(name: "nanosleep", scope: !4045, file: !4045, line: 272, type: !3985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4045 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!4046 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !781, file: !781, line: 27, type: !3069, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4047)
!4047 = !{!4048, !4049, !4050, !4051}
!4048 = !DILocalVariable(name: "ptr", arg: 1, scope: !4046, file: !781, line: 27, type: !99)
!4049 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4046, file: !781, line: 27, type: !102)
!4050 = !DILocalVariable(name: "size", arg: 3, scope: !4046, file: !781, line: 27, type: !102)
!4051 = !DILocalVariable(name: "nbytes", scope: !4046, file: !781, line: 29, type: !102)
!4052 = !DILocation(line: 0, scope: !4046)
!4053 = !DILocation(line: 30, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4046, file: !781, line: 30, column: 7)
!4055 = !DILocalVariable(name: "ptr", arg: 1, scope: !4056, file: !3161, line: 2057, type: !99)
!4056 = distinct !DISubprogram(name: "rpl_realloc", scope: !3161, file: !3161, line: 2057, type: !3153, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4057)
!4057 = !{!4055, !4058}
!4058 = !DILocalVariable(name: "size", arg: 2, scope: !4056, file: !3161, line: 2057, type: !102)
!4059 = !DILocation(line: 0, scope: !4056, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 37, column: 10, scope: !4046)
!4061 = !DILocation(line: 2059, column: 24, scope: !4056, inlinedAt: !4060)
!4062 = !DILocation(line: 2059, column: 10, scope: !4056, inlinedAt: !4060)
!4063 = !DILocation(line: 37, column: 3, scope: !4046)
!4064 = !DILocation(line: 32, column: 7, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4054, file: !781, line: 31, column: 5)
!4066 = !DILocation(line: 32, column: 13, scope: !4065)
!4067 = !DILocation(line: 33, column: 7, scope: !4065)
!4068 = !DILocation(line: 38, column: 1, scope: !4046)
!4069 = distinct !DISubprogram(name: "hard_locale", scope: !703, file: !703, line: 28, type: !4070, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!223, !100}
!4072 = !{!4073, !4074}
!4073 = !DILocalVariable(name: "category", arg: 1, scope: !4069, file: !703, line: 28, type: !100)
!4074 = !DILocalVariable(name: "locale", scope: !4069, file: !703, line: 30, type: !4075)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 257)
!4078 = !DILocation(line: 0, scope: !4069)
!4079 = !DILocation(line: 30, column: 3, scope: !4069)
!4080 = !DILocation(line: 30, column: 8, scope: !4069)
!4081 = !DILocation(line: 32, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4069, file: !703, line: 32, column: 7)
!4083 = !DILocation(line: 32, column: 7, scope: !4069)
!4084 = !DILocalVariable(name: "__s1", arg: 1, scope: !4085, file: !877, line: 1359, type: !78)
!4085 = distinct !DISubprogram(name: "streq", scope: !877, file: !877, line: 1359, type: !878, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4086)
!4086 = !{!4084, !4087}
!4087 = !DILocalVariable(name: "__s2", arg: 2, scope: !4085, file: !877, line: 1359, type: !78)
!4088 = !DILocation(line: 0, scope: !4085, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 35, column: 9, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4069, file: !703, line: 35, column: 7)
!4091 = !DILocation(line: 1361, column: 11, scope: !4085, inlinedAt: !4089)
!4092 = !DILocation(line: 1361, column: 10, scope: !4085, inlinedAt: !4089)
!4093 = !DILocation(line: 35, column: 29, scope: !4090)
!4094 = !DILocation(line: 0, scope: !4085, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 35, column: 32, scope: !4090)
!4096 = !DILocation(line: 1361, column: 11, scope: !4085, inlinedAt: !4095)
!4097 = !DILocation(line: 1361, column: 10, scope: !4085, inlinedAt: !4095)
!4098 = !DILocation(line: 35, column: 7, scope: !4069)
!4099 = !DILocation(line: 46, column: 3, scope: !4069)
!4100 = !DILocation(line: 47, column: 1, scope: !4069)
!4101 = distinct !DISubprogram(name: "setlocale_null_r", scope: !786, file: !786, line: 154, type: !4102, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!100, !100, !244, !102}
!4104 = !{!4105, !4106, !4107}
!4105 = !DILocalVariable(name: "category", arg: 1, scope: !4101, file: !786, line: 154, type: !100)
!4106 = !DILocalVariable(name: "buf", arg: 2, scope: !4101, file: !786, line: 154, type: !244)
!4107 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4101, file: !786, line: 154, type: !102)
!4108 = !DILocation(line: 0, scope: !4101)
!4109 = !DILocation(line: 159, column: 10, scope: !4101)
!4110 = !DILocation(line: 159, column: 3, scope: !4101)
!4111 = distinct !DISubprogram(name: "setlocale_null", scope: !786, file: !786, line: 186, type: !4112, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!78, !100}
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "category", arg: 1, scope: !4111, file: !786, line: 186, type: !100)
!4116 = !DILocation(line: 0, scope: !4111)
!4117 = !DILocation(line: 189, column: 10, scope: !4111)
!4118 = !DILocation(line: 189, column: 3, scope: !4111)
!4119 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !788, file: !788, line: 35, type: !4112, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4120)
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "category", arg: 1, scope: !4119, file: !788, line: 35, type: !100)
!4122 = !DILocalVariable(name: "result", scope: !4119, file: !788, line: 37, type: !78)
!4123 = !DILocation(line: 0, scope: !4119)
!4124 = !DILocation(line: 37, column: 24, scope: !4119)
!4125 = !DILocation(line: 62, column: 3, scope: !4119)
!4126 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !788, file: !788, line: 66, type: !4102, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132}
!4128 = !DILocalVariable(name: "category", arg: 1, scope: !4126, file: !788, line: 66, type: !100)
!4129 = !DILocalVariable(name: "buf", arg: 2, scope: !4126, file: !788, line: 66, type: !244)
!4130 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4126, file: !788, line: 66, type: !102)
!4131 = !DILocalVariable(name: "result", scope: !4126, file: !788, line: 111, type: !78)
!4132 = !DILocalVariable(name: "length", scope: !4133, file: !788, line: 125, type: !102)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !788, line: 124, column: 5)
!4134 = distinct !DILexicalBlock(scope: !4126, file: !788, line: 113, column: 7)
!4135 = !DILocation(line: 0, scope: !4126)
!4136 = !DILocation(line: 0, scope: !4119, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 111, column: 24, scope: !4126)
!4138 = !DILocation(line: 37, column: 24, scope: !4119, inlinedAt: !4137)
!4139 = !DILocation(line: 113, column: 14, scope: !4134)
!4140 = !DILocation(line: 113, column: 7, scope: !4126)
!4141 = !DILocation(line: 116, column: 19, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !788, line: 116, column: 11)
!4143 = distinct !DILexicalBlock(scope: !4134, file: !788, line: 114, column: 5)
!4144 = !DILocation(line: 116, column: 11, scope: !4143)
!4145 = !DILocation(line: 120, column: 16, scope: !4142)
!4146 = !DILocation(line: 120, column: 9, scope: !4142)
!4147 = !DILocation(line: 125, column: 23, scope: !4133)
!4148 = !DILocation(line: 0, scope: !4133)
!4149 = !DILocation(line: 126, column: 18, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4133, file: !788, line: 126, column: 11)
!4151 = !DILocation(line: 126, column: 11, scope: !4133)
!4152 = !DILocation(line: 128, column: 39, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !788, line: 127, column: 9)
!4154 = !DILocalVariable(name: "__dest", arg: 1, scope: !4155, file: !1595, line: 26, type: !3429)
!4155 = distinct !DISubprogram(name: "memcpy", scope: !1595, file: !1595, line: 26, type: !3427, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4156)
!4156 = !{!4154, !4157, !4158}
!4157 = !DILocalVariable(name: "__src", arg: 2, scope: !4155, file: !1595, line: 26, type: !1009)
!4158 = !DILocalVariable(name: "__len", arg: 3, scope: !4155, file: !1595, line: 26, type: !102)
!4159 = !DILocation(line: 0, scope: !4155, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 128, column: 11, scope: !4153)
!4161 = !DILocation(line: 29, column: 10, scope: !4155, inlinedAt: !4160)
!4162 = !DILocation(line: 129, column: 11, scope: !4153)
!4163 = !DILocation(line: 133, column: 23, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !788, line: 133, column: 15)
!4165 = distinct !DILexicalBlock(scope: !4150, file: !788, line: 132, column: 9)
!4166 = !DILocation(line: 133, column: 15, scope: !4165)
!4167 = !DILocation(line: 138, column: 44, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !788, line: 134, column: 13)
!4169 = !DILocation(line: 0, scope: !4155, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 138, column: 15, scope: !4168)
!4171 = !DILocation(line: 29, column: 10, scope: !4155, inlinedAt: !4170)
!4172 = !DILocation(line: 139, column: 15, scope: !4168)
!4173 = !DILocation(line: 139, column: 32, scope: !4168)
!4174 = !DILocation(line: 140, column: 13, scope: !4168)
!4175 = !DILocation(line: 0, scope: !4134)
!4176 = !DILocation(line: 145, column: 1, scope: !4126)
