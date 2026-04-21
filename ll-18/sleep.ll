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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !359
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !325
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !349
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !351
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !353
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !355
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !357
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !361
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !363
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !368
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !373
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !376
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !802
  %2 = icmp eq i32 %0, 0, !dbg !803
  br i1 %2, label %8, label %3, !dbg !805

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !806, !tbaa !808
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !806
  %6 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !808
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !806
  br label %28, !dbg !806

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !812
  %10 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !808
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !812
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #39, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !814
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !815
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !816, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata !835, metadata !829, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr poison, metadata !828, metadata !DIExpression()), !dbg !833
  tail call void @emit_bug_reporting_address() #39, !dbg !836
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !837
  call void @llvm.dbg.value(metadata ptr %14, metadata !831, metadata !DIExpression()), !dbg !833
  %15 = icmp eq ptr %14, null, !dbg !838
  br i1 %15, label %23, label %16, !dbg !840

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #40, !dbg !841
  %18 = icmp eq i32 %17, 0, !dbg !841
  br i1 %18, label %23, label %19, !dbg !842

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !843
  %21 = load ptr, ptr @stdout, align 8, !dbg !843, !tbaa !808
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !843
  br label %23, !dbg !845

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !832, metadata !DIExpression()), !dbg !833
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !846
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #39, !dbg !846
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !847
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #39, !dbg !847
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !848
  unreachable, !dbg !848
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !849 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !853 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !859 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !74 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !217, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !862
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !863, !tbaa !864
  %3 = icmp eq i32 %2, -1, !dbg !866
  br i1 %3, label %4, label %16, !dbg !867

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #39, !dbg !868
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !869
  %6 = icmp eq ptr %5, null, !dbg !870
  br i1 %6, label %14, label %7, !dbg !871

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !872, !tbaa !873
  %9 = icmp eq i8 %8, 0, !dbg !872
  br i1 %9, label %14, label %10, !dbg !874

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !875, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !881, metadata !DIExpression()), !dbg !882
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #40, !dbg !884
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
  br label %121, !dbg !893

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !862
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #40, !dbg !894
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !895
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !862
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !896
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !862
  %26 = icmp eq ptr %25, null, !dbg !897
  br i1 %26, label %53, label %27, !dbg !898

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !899
  br i1 %28, label %53, label %29, !dbg !900

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !901
  %30 = icmp ult ptr %24, %25, !dbg !902
  br i1 %30, label %31, label %53, !dbg !903

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !862
  %33 = load ptr, ptr %32, align 8, !tbaa !808
  br label %34, !dbg !903

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !901
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !901
  %38 = load i8, ptr %35, align 1, !dbg !904, !tbaa !873
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !904
  %41 = load i16, ptr %40, align 2, !dbg !904, !tbaa !905
  %42 = freeze i16 %41, !dbg !907
  %43 = lshr i16 %42, 13, !dbg !907
  %44 = and i16 %43, 1, !dbg !907
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !908
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !901
  %47 = icmp ult ptr %37, %25, !dbg !902
  %48 = icmp ult i64 %46, 2, !dbg !909
  %49 = select i1 %47, i1 %48, i1 false, !dbg !909
  br i1 %49, label %34, label %50, !dbg !903, !llvm.loop !910

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !908
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !912
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !914
  br label %53, !dbg !914

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !862
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !225, metadata !DIExpression()), !dbg !862
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.17) #40, !dbg !915
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !231, metadata !DIExpression()), !dbg !862
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !232, metadata !DIExpression()), !dbg !862
  br label %58, !dbg !917

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !862
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !232, metadata !DIExpression()), !dbg !862
  %61 = load i8, ptr %59, align 1, !dbg !918, !tbaa !873
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !919

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !920
  %64 = load i8, ptr %63, align 1, !dbg !923, !tbaa !873
  %65 = icmp ne i8 %64, 45, !dbg !924
  %66 = select i1 %65, i1 %60, i1 false, !dbg !925
  br label %67, !dbg !925

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !862
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !926
  %70 = load ptr, ptr %69, align 8, !dbg !926, !tbaa !808
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !926
  %73 = load i16, ptr %72, align 2, !dbg !926, !tbaa !905
  %74 = and i16 %73, 8192, !dbg !926
  %75 = icmp eq i16 %74, 0, !dbg !926
  br i1 %75, label %89, label %76, !dbg !928

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !929
  br i1 %77, label %91, label %78, !dbg !932

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !933
  %80 = load i8, ptr %79, align 1, !dbg !933, !tbaa !873
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !933
  %83 = load i16, ptr %82, align 2, !dbg !933, !tbaa !905
  %84 = and i16 %83, 8192, !dbg !933
  %85 = icmp eq i16 %84, 0, !dbg !933
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !934
  br i1 %88, label %89, label %91, !dbg !934

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !935
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !232, metadata !DIExpression()), !dbg !862
  br label %58, !dbg !917, !llvm.loop !936

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !862
  %92 = ptrtoint ptr %24 to i64, !dbg !938
  %93 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !808
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !875, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !835, metadata !881, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !290, metadata !DIExpression()), !dbg !862
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #40, !dbg !959
  %96 = icmp eq i32 %95, 0, !dbg !959
  br i1 %96, label %100, label %97, !dbg !961

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #40, !dbg !962
  %99 = icmp eq i32 %98, 0, !dbg !962
  br i1 %99, label %100, label %103, !dbg !963

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !964
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %101, ptr noundef %54) #39, !dbg !964
  br label %106, !dbg !966

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !967
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %54) #39, !dbg !967
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !808
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %107), !dbg !969
  %109 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !808
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %109), !dbg !970
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !971
  %112 = sub i64 %111, %92, !dbg !971
  %113 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !808
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !971
  %115 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !808
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %115), !dbg !972
  %117 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !808
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %117), !dbg !973
  %119 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !808
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !974
  br label %121, !dbg !975

121:                                              ; preds = %106, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1012 {
  %3 = alloca ptr, align 8, !DIAssignID !1029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1024, metadata !DIExpression(), metadata !1029, metadata ptr %3, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1017, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1018, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1019, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1021, metadata !DIExpression()), !dbg !1031
  %4 = load ptr, ptr %1, align 8, !dbg !1032, !tbaa !808
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1033
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #39, !dbg !1034
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #39, !dbg !1035
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #39, !dbg !1036
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1037
  %9 = load ptr, ptr @Version, align 8, !dbg !1038, !tbaa !808
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #39, !dbg !1039
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #39, !dbg !1039
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %9, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %10, ptr noundef %11, ptr noundef null) #39, !dbg !1040
  %12 = icmp eq i32 %0, 1, !dbg !1041
  br i1 %12, label %13, label %15, !dbg !1043

13:                                               ; preds = %2
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1044
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %14) #39, !dbg !1044
  tail call void @usage(i32 noundef 1) #43, !dbg !1046
  unreachable, !dbg !1046

15:                                               ; preds = %2
  %16 = load i32, ptr @optind, align 4, !dbg !1047, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1022, metadata !DIExpression()), !dbg !1048
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1019, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1021, metadata !DIExpression()), !dbg !1031
  %17 = icmp slt i32 %16, %0, !dbg !1049
  br i1 %17, label %18, label %69, !dbg !1050

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #42, !dbg !1031
  %20 = sext i32 %16 to i64, !dbg !1050
  br label %22, !dbg !1050

21:                                               ; preds = %60
  %.lcssa1 = phi i1 [ %62, %60 ]
  %.lcssa = phi double [ %64, %60 ], !dbg !1051
  br i1 %.lcssa1, label %69, label %68, !dbg !1062

22:                                               ; preds = %18, %60
  %23 = phi i64 [ %20, %18 ], [ %65, %60 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %64, %60 ]
  %25 = phi i1 [ true, %18 ], [ %62, %60 ]
  tail call void @llvm.dbg.value(metadata double %24, metadata !1019, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1022, metadata !DIExpression()), !dbg !1048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1063
  store i32 0, ptr %19, align 4, !dbg !1064, !tbaa !864
  %26 = getelementptr inbounds ptr, ptr %1, i64 %23, !dbg !1065
  %27 = load ptr, ptr %26, align 8, !dbg !1065, !tbaa !808
  %28 = call double @cl_strtod(ptr noundef %27, ptr noundef nonnull %3) #39, !dbg !1066
  tail call void @llvm.dbg.value(metadata double %28, metadata !1027, metadata !DIExpression()), !dbg !1030
  %29 = load i32, ptr %19, align 4, !dbg !1067, !tbaa !864
  call void @llvm.dbg.value(metadata double %28, metadata !1058, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i32 %29, metadata !1059, metadata !DIExpression()), !dbg !1068
  %30 = icmp eq i32 %29, 34, !dbg !1070
  %31 = fcmp oeq double %28, 0.000000e+00
  %32 = and i1 %31, %30, !dbg !1071
  %33 = call double @llvm.copysign.f64(double 4.940660e-324, double %28), !dbg !1071
  %34 = call double @llvm.fmuladd.f64(double %28, double 0x3CA0000000000001, double %28), !dbg !1071
  %35 = select i1 %32, double %33, double %34, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %35, metadata !1028, metadata !DIExpression()), !dbg !1030
  %36 = load ptr, ptr %26, align 8, !dbg !1072, !tbaa !808
  %37 = load ptr, ptr %3, align 8, !dbg !1074, !tbaa !808
  %38 = icmp ne ptr %36, %37, !dbg !1075
  %39 = fcmp oge double %35, 0.000000e+00
  %40 = select i1 %38, i1 %39, i1 false, !dbg !1076
  br i1 %40, label %41, label %56, !dbg !1076

41:                                               ; preds = %22
  %42 = load i8, ptr %37, align 1, !dbg !1077, !tbaa !873
  %43 = icmp eq i8 %42, 0, !dbg !1077
  br i1 %43, label %52, label %44, !dbg !1078

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1079
  %46 = load i8, ptr %45, align 1, !dbg !1080, !tbaa !873
  %47 = icmp eq i8 %46, 0, !dbg !1080
  br i1 %47, label %48, label %56, !dbg !1081

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr undef, metadata !1082, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %42, metadata !1088, metadata !DIExpression()), !dbg !1090
  switch i8 %42, label %56 [
    i8 100, label %51
    i8 115, label %52
    i8 109, label %49
    i8 104, label %50
  ], !dbg !1092

49:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 60, metadata !1089, metadata !DIExpression()), !dbg !1090
  br label %52, !dbg !1093

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 3600, metadata !1089, metadata !DIExpression()), !dbg !1090
  br label %52, !dbg !1095

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 86400, metadata !1089, metadata !DIExpression()), !dbg !1090
  br label %52, !dbg !1096

52:                                               ; preds = %48, %49, %50, %51, %41
  %53 = phi double [ 8.640000e+04, %51 ], [ 3.600000e+03, %50 ], [ 6.000000e+01, %49 ], [ 1.000000e+00, %48 ], [ 1.000000e+00, %41 ], !dbg !1097
  call void @llvm.dbg.value(metadata i32 poison, metadata !1089, metadata !DIExpression()), !dbg !1090
  %54 = fmul double %35, %53, !dbg !1098
  call void @llvm.dbg.value(metadata double %54, metadata !1058, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 0, metadata !1059, metadata !DIExpression()), !dbg !1099
  %55 = call double @llvm.fmuladd.f64(double %54, double 0x3CA0000000000001, double %54), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %55, metadata !1028, metadata !DIExpression()), !dbg !1030
  br label %60, !dbg !1102

56:                                               ; preds = %48, %44, %22
  tail call void @llvm.dbg.value(metadata double %35, metadata !1028, metadata !DIExpression()), !dbg !1030
  %57 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1103
  %58 = load ptr, ptr %26, align 8, !dbg !1103, !tbaa !808
  %59 = call ptr @quote(ptr noundef %58) #39, !dbg !1103
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %57, ptr noundef %59) #39, !dbg !1103
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1021, metadata !DIExpression()), !dbg !1031
  br label %60, !dbg !1105

60:                                               ; preds = %52, %56
  %61 = phi double [ %35, %56 ], [ %55, %52 ], !dbg !1106
  %62 = phi i1 [ false, %56 ], [ %25, %52 ]
  tail call void @llvm.dbg.value(metadata double %61, metadata !1028, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1021, metadata !DIExpression()), !dbg !1031
  %63 = fadd double %24, %61, !dbg !1107
  call void @llvm.dbg.value(metadata double %63, metadata !1058, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 0, metadata !1059, metadata !DIExpression()), !dbg !1108
  %64 = call double @llvm.fmuladd.f64(double %63, double 0x3CA0000000000001, double %63), !dbg !1051
  tail call void @llvm.dbg.value(metadata double %64, metadata !1019, metadata !DIExpression()), !dbg !1031
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1109
  %65 = add nsw i64 %23, 1, !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1022, metadata !DIExpression()), !dbg !1048
  %66 = trunc i64 %65 to i32, !dbg !1049
  %67 = icmp eq i32 %66, %0, !dbg !1049
  br i1 %67, label %21, label %22, !dbg !1050, !llvm.loop !1111

68:                                               ; preds = %21
  call void @usage(i32 noundef 1) #43, !dbg !1113
  unreachable, !dbg !1113

69:                                               ; preds = %15, %21
  %70 = phi double [ %.lcssa, %21 ], [ 0.000000e+00, %15 ]
  %71 = call i32 @xnanosleep(double noundef %70) #39, !dbg !1115
  %72 = icmp eq i32 %71, 0, !dbg !1115
  br i1 %72, label %77, label %73, !dbg !1117

73:                                               ; preds = %69
  %74 = tail call ptr @__errno_location() #42, !dbg !1118
  %75 = load i32, ptr %74, align 4, !dbg !1118, !tbaa !864
  %76 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1118
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %75, ptr noundef %76) #39, !dbg !1118
  unreachable, !dbg !1118

77:                                               ; preds = %69
  ret i32 0, !dbg !1119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1120 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1123 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1124 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1127 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(ptr noundef nonnull %0, ptr noalias noundef writeonly %1) local_unnamed_addr #10 !dbg !1131 {
  %3 = alloca ptr, align 8, !DIAssignID !1145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1138, metadata !DIExpression(), metadata !1145, metadata ptr %3, metadata !DIExpression()), !dbg !1146
  %4 = alloca ptr, align 8, !DIAssignID !1147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1143, metadata !DIExpression(), metadata !1147, metadata ptr %4, metadata !DIExpression()), !dbg !1148
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1136, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1137, metadata !DIExpression()), !dbg !1146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1149
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #39, !dbg !1150
  tail call void @llvm.dbg.value(metadata double %5, metadata !1139, metadata !DIExpression()), !dbg !1146
  %6 = load ptr, ptr %3, align 8, !dbg !1151, !tbaa !808
  %7 = load i8, ptr %6, align 1, !dbg !1152, !tbaa !873
  %8 = icmp eq i8 %7, 0, !dbg !1152
  br i1 %8, label %19, label %9, !dbg !1153

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #42, !dbg !1154
  %11 = load i32, ptr %10, align 4, !dbg !1154, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1140, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1155
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #39, !dbg !1156
  tail call void @llvm.dbg.value(metadata double %12, metadata !1144, metadata !DIExpression()), !dbg !1148
  %13 = load ptr, ptr %4, align 8, !dbg !1157, !tbaa !808
  %14 = icmp ult ptr %6, %13, !dbg !1159
  br i1 %14, label %16, label %15, !dbg !1160

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !1161, !tbaa !864
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !1146
  tail call void @llvm.dbg.value(metadata double %18, metadata !1139, metadata !DIExpression()), !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1162
  br label %19, !dbg !1163

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !1146
  tail call void @llvm.dbg.value(metadata double %21, metadata !1139, metadata !DIExpression()), !dbg !1146
  %22 = icmp eq ptr %1, null, !dbg !1164
  br i1 %22, label %24, label %23, !dbg !1166

23:                                               ; preds = %19
  store ptr %20, ptr %1, align 8, !dbg !1167, !tbaa !808
  br label %24, !dbg !1168

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1169
  ret double %21, !dbg !1170
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1171 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1176, metadata !DIExpression()), !dbg !1177
  store ptr %0, ptr @file_name, align 8, !dbg !1178, !tbaa !808
  ret void, !dbg !1179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1180 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1186, !tbaa !1187
  ret void, !dbg !1189
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1190 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1195, !tbaa !808
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1196
  %3 = icmp eq i32 %2, 0, !dbg !1197
  br i1 %3, label %22, label %4, !dbg !1198

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1199, !tbaa !1187, !range !1200, !noundef !835
  %6 = icmp eq i8 %5, 0, !dbg !1199
  br i1 %6, label %11, label %7, !dbg !1201

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1202
  %9 = load i32, ptr %8, align 4, !dbg !1202, !tbaa !864
  %10 = icmp eq i32 %9, 32, !dbg !1203
  br i1 %10, label %22, label %11, !dbg !1204

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1192, metadata !DIExpression()), !dbg !1206
  %13 = load ptr, ptr @file_name, align 8, !dbg !1207, !tbaa !808
  %14 = icmp eq ptr %13, null, !dbg !1207
  %15 = tail call ptr @__errno_location() #42, !dbg !1209
  %16 = load i32, ptr %15, align 4, !dbg !1209, !tbaa !864
  br i1 %14, label %19, label %17, !dbg !1210

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1211
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1211
  br label %20, !dbg !1211

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1212
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1213, !tbaa !864
  tail call void @_exit(i32 noundef %21) #41, !dbg !1214
  unreachable, !dbg !1214

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1215, !tbaa !808
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1217
  %25 = icmp eq i32 %24, 0, !dbg !1218
  br i1 %25, label %28, label %26, !dbg !1219

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1220, !tbaa !864
  tail call void @_exit(i32 noundef %27) #41, !dbg !1221
  unreachable, !dbg !1221

28:                                               ; preds = %22
  ret void, !dbg !1222
}

; Function Attrs: noreturn
declare !dbg !1223 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1225 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1229, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1230, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1231, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1232, metadata !DIExpression(DW_OP_deref)), !dbg !1233
  tail call fastcc void @flush_stdout(), !dbg !1234
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1235, !tbaa !808
  %7 = icmp eq ptr %6, null, !dbg !1235
  br i1 %7, label %9, label %8, !dbg !1237

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1238
  br label %13, !dbg !1238

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1239, !tbaa !808
  %11 = tail call ptr @getprogname() #40, !dbg !1239
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %11) #39, !dbg !1239
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1241, !tbaa.struct !1242
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1241
  ret void, !dbg !1243
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1244 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 1, metadata !1248, metadata !DIExpression()), !dbg !1253
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1256
  %2 = icmp slt i32 %1, 0, !dbg !1257
  br i1 %2, label %6, label %3, !dbg !1258

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1259, !tbaa !808
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1259
  br label %6, !dbg !1259

6:                                                ; preds = %3, %0
  ret void, !dbg !1260
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1261 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1267
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1265, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1266, metadata !DIExpression(DW_OP_deref)), !dbg !1268
  %7 = load ptr, ptr @stderr, align 8, !dbg !1269, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1270, !noalias !1314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %7, metadata !1310, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %2, metadata !1311, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr poison, metadata !1312, metadata !DIExpression(DW_OP_deref)), !dbg !1319
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1270, !noalias !1314
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1320, !tbaa !864
  %10 = add i32 %9, 1, !dbg !1320
  store i32 %10, ptr @error_message_count, align 4, !dbg !1320, !tbaa !864
  %11 = icmp eq i32 %1, 0, !dbg !1321
  br i1 %11, label %21, label %12, !dbg !1323

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1324, metadata !DIExpression(), metadata !1267, metadata ptr %5, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %1, metadata !1327, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1334
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %13, metadata !1328, metadata !DIExpression()), !dbg !1332
  %14 = icmp eq ptr %13, null, !dbg !1336
  br i1 %14, label %15, label %17, !dbg !1338

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #39, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %16, metadata !1328, metadata !DIExpression()), !dbg !1332
  br label %17, !dbg !1340

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1332
  call void @llvm.dbg.value(metadata ptr %18, metadata !1328, metadata !DIExpression()), !dbg !1332
  %19 = load ptr, ptr @stderr, align 8, !dbg !1341, !tbaa !808
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %18) #39, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1342
  br label %21, !dbg !1343

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1344, !tbaa !808
  call void @llvm.dbg.value(metadata i32 10, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %22, metadata !1351, metadata !DIExpression()), !dbg !1352
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1354
  %24 = load ptr, ptr %23, align 8, !dbg !1354, !tbaa !1355
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1354
  %26 = load ptr, ptr %25, align 8, !dbg !1354, !tbaa !1358
  %27 = icmp ult ptr %24, %26, !dbg !1354
  br i1 %27, label %30, label %28, !dbg !1354, !prof !1359

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1354
  br label %32, !dbg !1354

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1354
  store ptr %31, ptr %23, align 8, !dbg !1354, !tbaa !1355
  store i8 10, ptr %24, align 1, !dbg !1354, !tbaa !873
  br label %32, !dbg !1354

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !808
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1360
  %35 = icmp eq i32 %0, 0, !dbg !1361
  br i1 %35, label %37, label %36, !dbg !1363

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1364
  unreachable, !dbg !1364

37:                                               ; preds = %32
  ret void, !dbg !1365
}

declare !dbg !1366 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1369 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1372 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1375 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1378 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1382 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1389, metadata !DIExpression(), metadata !1390, metadata ptr %4, metadata !DIExpression()), !dbg !1391
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1386, metadata !DIExpression()), !dbg !1391
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1387, metadata !DIExpression()), !dbg !1391
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1392
  call void @llvm.va_start(ptr nonnull %4), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1394, !tbaa.struct !1242
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1394
  call void @llvm.va_end(ptr nonnull %4), !dbg !1395
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1396
  ret void, !dbg !1396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !327 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !344, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !345, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !346, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !347, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !348, metadata !DIExpression(DW_OP_deref)), !dbg !1397
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
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1411
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
  tail call void %25() #39, !dbg !1421
  br label %32, !dbg !1421

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1422, !tbaa !808
  %30 = tail call ptr @getprogname() #40, !dbg !1422
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %30) #39, !dbg !1422
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1424, !tbaa !808
  %34 = icmp eq ptr %2, null, !dbg !1424
  %35 = select i1 %34, ptr @.str.3.34, ptr @.str.2.35, !dbg !1424
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1425, !tbaa.struct !1242
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1425
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1425
  br label %37, !dbg !1426

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1426
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1427 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1436, metadata !DIExpression(), metadata !1437, metadata ptr %6, metadata !DIExpression()), !dbg !1438
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1431, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1432, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1433, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1434, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1435, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1439
  call void @llvm.va_start(ptr nonnull %6), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1441, !tbaa.struct !1242
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1441
  call void @llvm.va_end(ptr nonnull %6), !dbg !1442
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1444 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1447, !tbaa !808
  ret ptr %1, !dbg !1448
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1449 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1464, metadata !DIExpression(), metadata !1479, metadata ptr %7, metadata !DIExpression()), !dbg !1480
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1454, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1455, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1456, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1458, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1459, metadata !DIExpression()), !dbg !1481
  %9 = load i32, ptr @opterr, align 4, !dbg !1482, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1460, metadata !DIExpression()), !dbg !1481
  store i32 0, ptr @opterr, align 4, !dbg !1483, !tbaa !864
  %10 = icmp eq i32 %0, 2, !dbg !1484
  br i1 %10, label %11, label %16, !dbg !1485

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1461, metadata !DIExpression()), !dbg !1487
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1488

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #39, !dbg !1489
  br label %16, !dbg !1490

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1491
  call void @llvm.va_start(ptr nonnull %7), !dbg !1492
  %15 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1494, !tbaa.struct !1242
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39, !dbg !1494
  call void @exit(i32 noundef 0) #41, !dbg !1495
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
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1524
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1519, metadata !DIExpression(), metadata !1524, metadata ptr %8, metadata !DIExpression()), !dbg !1525
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1509, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1510, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1512, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1514, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1515, metadata !DIExpression()), !dbg !1526
  %10 = load i32, ptr @opterr, align 4, !dbg !1527, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1516, metadata !DIExpression()), !dbg !1526
  store i32 1, ptr @opterr, align 4, !dbg !1528, !tbaa !864
  %11 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1517, metadata !DIExpression()), !dbg !1526
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1518, metadata !DIExpression()), !dbg !1526
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1531

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1532
  call void @llvm.va_start(ptr nonnull %8), !dbg !1533
  %14 = load ptr, ptr @stdout, align 8, !dbg !1534, !tbaa !808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39, !dbg !1535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1535, !tbaa.struct !1242
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #39, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39, !dbg !1535
  call void @exit(i32 noundef 0) #41, !dbg !1536
  unreachable, !dbg !1536

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1537, !tbaa !864
  br label %17, !dbg !1538

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #39, !dbg !1539
  br label %19, !dbg !1540

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1540, !tbaa !864
  ret void, !dbg !1541
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !1547
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1547
  %3 = icmp eq ptr %2, null, !dbg !1549
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1549
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1549
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1546, metadata !DIExpression()), !dbg !1547
  %6 = ptrtoint ptr %5 to i64, !dbg !1550
  %7 = ptrtoint ptr %0 to i64, !dbg !1550
  %8 = sub i64 %6, %7, !dbg !1550
  %9 = icmp sgt i64 %8, 6, !dbg !1552
  br i1 %9, label %10, label %19, !dbg !1553

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %11, metadata !1555, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1560, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 7, metadata !1561, metadata !DIExpression()), !dbg !1562
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1564
  %13 = icmp eq i32 %12, 0, !dbg !1565
  br i1 %13, label %14, label %19, !dbg !1566

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1544, metadata !DIExpression()), !dbg !1547
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #40, !dbg !1567
  %16 = icmp eq i32 %15, 0, !dbg !1570
  %17 = select i1 %16, i64 3, i64 0, !dbg !1571
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1571
  br label %19, !dbg !1571

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1547
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1546, metadata !DIExpression()), !dbg !1547
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1544, metadata !DIExpression()), !dbg !1547
  store ptr %20, ptr @program_name, align 8, !dbg !1572, !tbaa !808
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1573, !tbaa !808
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1574, !tbaa !808
  ret void, !dbg !1575
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1576 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !409 {
  %3 = alloca i32, align 4, !DIAssignID !1577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !419, metadata !DIExpression(), metadata !1577, metadata ptr %3, metadata !DIExpression()), !dbg !1578
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !424, metadata !DIExpression(), metadata !1579, metadata ptr %4, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1578
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !1578
  %6 = icmp eq ptr %5, %0, !dbg !1581
  br i1 %6, label %7, label %14, !dbg !1583

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1584
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %4, metadata !1586, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata ptr %4, metadata !1595, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 0, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 8, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i64 0, ptr %4, align 8, !dbg !1605
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1606
  %9 = icmp eq i64 %8, 2, !dbg !1608
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1609
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1610
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1610
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1578
  ret ptr %15, !dbg !1610
}

; Function Attrs: nounwind
declare !dbg !1611 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1617 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1622, metadata !DIExpression()), !dbg !1625
  %2 = tail call ptr @__errno_location() #42, !dbg !1626
  %3 = load i32, ptr %2, align 4, !dbg !1626, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1623, metadata !DIExpression()), !dbg !1625
  %4 = icmp eq ptr %0, null, !dbg !1627
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1627
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1628
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1624, metadata !DIExpression()), !dbg !1625
  store i32 %3, ptr %2, align 4, !dbg !1629, !tbaa !864
  ret ptr %6, !dbg !1630
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1631 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1637, metadata !DIExpression()), !dbg !1638
  %2 = icmp eq ptr %0, null, !dbg !1639
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1639
  %4 = load i32, ptr %3, align 8, !dbg !1640, !tbaa !1641
  ret i32 %4, !dbg !1643
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1644 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1649, metadata !DIExpression()), !dbg !1650
  %3 = icmp eq ptr %0, null, !dbg !1651
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1651
  store i32 %1, ptr %4, align 8, !dbg !1652, !tbaa !1641
  ret void, !dbg !1653
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1660, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1661, metadata !DIExpression()), !dbg !1666
  %4 = icmp eq ptr %0, null, !dbg !1667
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1667
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1668
  %7 = lshr i8 %1, 5, !dbg !1669
  %8 = zext nneg i8 %7 to i64, !dbg !1669
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1670
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1662, metadata !DIExpression()), !dbg !1666
  %10 = and i8 %1, 31, !dbg !1671
  %11 = zext nneg i8 %10 to i32, !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1664, metadata !DIExpression()), !dbg !1666
  %12 = load i32, ptr %9, align 4, !dbg !1672, !tbaa !864
  %13 = lshr i32 %12, %11, !dbg !1673
  %14 = and i32 %13, 1, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1665, metadata !DIExpression()), !dbg !1666
  %15 = xor i32 %13, %2, !dbg !1675
  %16 = and i32 %15, 1, !dbg !1675
  %17 = shl nuw i32 %16, %11, !dbg !1676
  %18 = xor i32 %17, %12, !dbg !1677
  store i32 %18, ptr %9, align 4, !dbg !1677, !tbaa !864
  ret i32 %14, !dbg !1678
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1679 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1684, metadata !DIExpression()), !dbg !1686
  %3 = icmp eq ptr %0, null, !dbg !1687
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1683, metadata !DIExpression()), !dbg !1686
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1690
  %6 = load i32, ptr %5, align 4, !dbg !1690, !tbaa !1691
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1685, metadata !DIExpression()), !dbg !1686
  store i32 %1, ptr %5, align 4, !dbg !1692, !tbaa !1691
  ret i32 %6, !dbg !1693
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1694 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1698, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1699, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1700, metadata !DIExpression()), !dbg !1701
  %4 = icmp eq ptr %0, null, !dbg !1702
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1704
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1698, metadata !DIExpression()), !dbg !1701
  store i32 10, ptr %5, align 8, !dbg !1705, !tbaa !1641
  %6 = icmp ne ptr %1, null, !dbg !1706
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1708
  br i1 %8, label %10, label %9, !dbg !1708

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1709
  unreachable, !dbg !1709

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1710
  store ptr %1, ptr %11, align 8, !dbg !1711, !tbaa !1712
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1713
  store ptr %2, ptr %12, align 8, !dbg !1714, !tbaa !1715
  ret void, !dbg !1716
}

; Function Attrs: noreturn nounwind
declare !dbg !1717 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1718 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1722, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1723, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1724, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1725, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1726, metadata !DIExpression()), !dbg !1730
  %6 = icmp eq ptr %4, null, !dbg !1731
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1731
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1727, metadata !DIExpression()), !dbg !1730
  %8 = tail call ptr @__errno_location() #42, !dbg !1732
  %9 = load i32, ptr %8, align 4, !dbg !1732, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1728, metadata !DIExpression()), !dbg !1730
  %10 = load i32, ptr %7, align 8, !dbg !1733, !tbaa !1641
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1734
  %12 = load i32, ptr %11, align 4, !dbg !1734, !tbaa !1691
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1735
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1736
  %15 = load ptr, ptr %14, align 8, !dbg !1736, !tbaa !1712
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1737
  %17 = load ptr, ptr %16, align 8, !dbg !1737, !tbaa !1715
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1729, metadata !DIExpression()), !dbg !1730
  store i32 %9, ptr %8, align 4, !dbg !1739, !tbaa !864
  ret i64 %18, !dbg !1740
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1741 {
  %10 = alloca i32, align 4, !DIAssignID !1809
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1810
  %12 = alloca i32, align 4, !DIAssignID !1811
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1812
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1813
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1787, metadata !DIExpression(), metadata !1813, metadata ptr %14, metadata !DIExpression()), !dbg !1814
  %15 = alloca i32, align 4, !DIAssignID !1815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1790, metadata !DIExpression(), metadata !1815, metadata ptr %15, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1747, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1749, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1750, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1751, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1752, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1753, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1754, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1755, metadata !DIExpression()), !dbg !1817
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1818
  %17 = icmp eq i64 %16, 1, !dbg !1819
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1756, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1759, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1760, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1817
  %18 = and i32 %5, 2, !dbg !1820
  %19 = icmp ne i32 %18, 0, !dbg !1820
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1820

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1821
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1822
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1823
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1760, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1759, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1750, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1755, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1754, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1751, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.label(metadata !1765), !dbg !1824
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1817
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
  ], !dbg !1825

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1751, metadata !DIExpression()), !dbg !1817
  br label %101, !dbg !1826

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1751, metadata !DIExpression()), !dbg !1817
  br i1 %36, label %101, label %42, !dbg !1826

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1827
  br i1 %43, label %101, label %44, !dbg !1831

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1827, !tbaa !873
  br label %101, !dbg !1827

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !1811, metadata ptr %12, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !523, metadata !DIExpression(), metadata !1812, metadata ptr %13, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !519, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1832
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #39, !dbg !1836
  call void @llvm.dbg.value(metadata ptr %46, metadata !521, metadata !DIExpression()), !dbg !1832
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1837
  br i1 %47, label %48, label %57, !dbg !1839

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1840
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %13, metadata !1842, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %13, metadata !1850, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 8, metadata !1854, metadata !DIExpression()), !dbg !1855
  store i64 0, ptr %13, align 8, !dbg !1857
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1858
  %50 = icmp eq i64 %49, 3, !dbg !1860
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1861
  %54 = icmp eq i32 %28, 9, !dbg !1861
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1861
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1861
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1862
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1832
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1754, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !1809, metadata ptr %10, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !523, metadata !DIExpression(), metadata !1810, metadata ptr %11, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !519, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1863
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #39, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %59, metadata !521, metadata !DIExpression()), !dbg !1863
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1866
  br i1 %60, label %61, label %70, !dbg !1867

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %11, metadata !1842, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %11, metadata !1850, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 8, metadata !1854, metadata !DIExpression()), !dbg !1872
  store i64 0, ptr %11, align 8, !dbg !1874
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1875
  %63 = icmp eq i64 %62, 3, !dbg !1876
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1877
  %67 = icmp eq i32 %28, 9, !dbg !1877
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1877
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1878
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1755, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1754, metadata !DIExpression()), !dbg !1817
  br i1 %36, label %88, label %73, !dbg !1879

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1767, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1817
  %74 = load i8, ptr %71, align 1, !dbg !1881, !tbaa !873
  %75 = icmp eq i8 %74, 0, !dbg !1883
  br i1 %75, label %88, label %.preheader11, !dbg !1883

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1883

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1767, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1757, metadata !DIExpression()), !dbg !1817
  %80 = icmp ult i64 %79, %39, !dbg !1884
  br i1 %80, label %81, label %83, !dbg !1887

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1884
  store i8 %77, ptr %82, align 1, !dbg !1884, !tbaa !873
  br label %83, !dbg !1884

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1757, metadata !DIExpression()), !dbg !1817
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1888
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1767, metadata !DIExpression()), !dbg !1880
  %86 = load i8, ptr %85, align 1, !dbg !1881, !tbaa !873
  %87 = icmp eq i8 %86, 0, !dbg !1883
  br i1 %87, label %.loopexit12, label %76, !dbg !1883, !llvm.loop !1889

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1887
  br label %88, !dbg !1891

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1759, metadata !DIExpression()), !dbg !1817
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !1891
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1760, metadata !DIExpression()), !dbg !1817
  br label %101, !dbg !1893

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1817
  br label %101, !dbg !1894

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1817
  br label %101, !dbg !1895

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  br i1 %36, label %101, label %95, !dbg !1896

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1751, metadata !DIExpression()), !dbg !1817
  br i1 %36, label %101, label %95, !dbg !1895

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1897
  br i1 %97, label %101, label %98, !dbg !1901

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1897, !tbaa !873
  br label %101, !dbg !1897

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1817
  br label %101, !dbg !1902

100:                                              ; preds = %27
  call void @abort() #41, !dbg !1903
  unreachable, !dbg !1903

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1892
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %95 ], [ @.str.12.68, %98 ], [ @.str.12.68, %94 ], [ @.str.10.67, %40 ], [ @.str.12.68, %91 ], [ @.str.12.68, %92 ], [ @.str.12.68, %93 ], !dbg !1817
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1817
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1760, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1759, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1755, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1754, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1751, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1772, metadata !DIExpression()), !dbg !1904
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
  br label %121, !dbg !1905

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1892
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1821
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1906
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1750, metadata !DIExpression()), !dbg !1817
  %130 = icmp eq i64 %122, -1, !dbg !1907
  br i1 %130, label %131, label %135, !dbg !1908

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1909
  %133 = load i8, ptr %132, align 1, !dbg !1909, !tbaa !873
  %134 = icmp eq i8 %133, 0, !dbg !1910
  br i1 %134, label %573, label %137, !dbg !1911

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1912
  br i1 %136, label %573, label %137, !dbg !1911

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !1913
  br i1 %113, label %138, label %151, !dbg !1914

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1916
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1917
  br i1 %140, label %141, label %143, !dbg !1917

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1750, metadata !DIExpression()), !dbg !1817
  br label %143, !dbg !1919

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1750, metadata !DIExpression()), !dbg !1817
  %145 = icmp ugt i64 %139, %144, !dbg !1920
  br i1 %145, label %151, label %146, !dbg !1921

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1922
  call void @llvm.dbg.value(metadata ptr %147, metadata !1923, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %106, metadata !1926, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %107, metadata !1927, metadata !DIExpression()), !dbg !1928
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1930
  %149 = icmp eq i32 %148, 0, !dbg !1931
  %150 = and i1 %149, %109, !dbg !1932
  br i1 %150, label %.loopexit7, label %151, !dbg !1932

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1750, metadata !DIExpression()), !dbg !1817
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1933
  %155 = load i8, ptr %154, align 1, !dbg !1933, !tbaa !873
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1779, metadata !DIExpression()), !dbg !1913
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
  ], !dbg !1934

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1935

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1936

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1913
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1940
  br i1 %159, label %176, label %160, !dbg !1940

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1942
  br i1 %161, label %162, label %164, !dbg !1946

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1942
  store i8 39, ptr %163, align 1, !dbg !1942, !tbaa !873
  br label %164, !dbg !1942

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1757, metadata !DIExpression()), !dbg !1817
  %166 = icmp ult i64 %165, %129, !dbg !1947
  br i1 %166, label %167, label %169, !dbg !1950

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1947
  store i8 36, ptr %168, align 1, !dbg !1947, !tbaa !873
  br label %169, !dbg !1947

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1757, metadata !DIExpression()), !dbg !1817
  %171 = icmp ult i64 %170, %129, !dbg !1951
  br i1 %171, label %172, label %174, !dbg !1954

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1951
  store i8 39, ptr %173, align 1, !dbg !1951, !tbaa !873
  br label %174, !dbg !1951

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %176, !dbg !1955

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1817
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1757, metadata !DIExpression()), !dbg !1817
  %179 = icmp ult i64 %177, %129, !dbg !1956
  br i1 %179, label %180, label %182, !dbg !1959

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1956
  store i8 92, ptr %181, align 1, !dbg !1956, !tbaa !873
  br label %182, !dbg !1956

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1757, metadata !DIExpression()), !dbg !1817
  br i1 %110, label %184, label %476, !dbg !1960

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1962
  %186 = icmp ult i64 %185, %152, !dbg !1963
  br i1 %186, label %187, label %433, !dbg !1964

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1965
  %189 = load i8, ptr %188, align 1, !dbg !1965, !tbaa !873
  %190 = add i8 %189, -48, !dbg !1966
  %191 = icmp ult i8 %190, 10, !dbg !1966
  br i1 %191, label %192, label %433, !dbg !1966

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1967
  br i1 %193, label %194, label %196, !dbg !1971

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1967
  store i8 48, ptr %195, align 1, !dbg !1967, !tbaa !873
  br label %196, !dbg !1967

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1757, metadata !DIExpression()), !dbg !1817
  %198 = icmp ult i64 %197, %129, !dbg !1972
  br i1 %198, label %199, label %201, !dbg !1975

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1972
  store i8 48, ptr %200, align 1, !dbg !1972, !tbaa !873
  br label %201, !dbg !1972

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1757, metadata !DIExpression()), !dbg !1817
  br label %433, !dbg !1976

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1977

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1978

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1979

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1981

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1983
  %209 = icmp ult i64 %208, %152, !dbg !1984
  br i1 %209, label %210, label %433, !dbg !1985

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1986
  %212 = load i8, ptr %211, align 1, !dbg !1986, !tbaa !873
  %213 = icmp eq i8 %212, 63, !dbg !1987
  br i1 %213, label %214, label %433, !dbg !1988

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1989
  %216 = load i8, ptr %215, align 1, !dbg !1989, !tbaa !873
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
  ], !dbg !1990

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1991

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1772, metadata !DIExpression()), !dbg !1904
  %219 = icmp ult i64 %123, %129, !dbg !1993
  br i1 %219, label %220, label %222, !dbg !1996

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1993
  store i8 63, ptr %221, align 1, !dbg !1993, !tbaa !873
  br label %222, !dbg !1993

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1757, metadata !DIExpression()), !dbg !1817
  %224 = icmp ult i64 %223, %129, !dbg !1997
  br i1 %224, label %225, label %227, !dbg !2000

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1997
  store i8 34, ptr %226, align 1, !dbg !1997, !tbaa !873
  br label %227, !dbg !1997

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1757, metadata !DIExpression()), !dbg !1817
  %229 = icmp ult i64 %228, %129, !dbg !2001
  br i1 %229, label %230, label %232, !dbg !2004

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2001
  store i8 34, ptr %231, align 1, !dbg !2001, !tbaa !873
  br label %232, !dbg !2001

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1757, metadata !DIExpression()), !dbg !1817
  %234 = icmp ult i64 %233, %129, !dbg !2005
  br i1 %234, label %235, label %237, !dbg !2008

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2005
  store i8 63, ptr %236, align 1, !dbg !2005, !tbaa !873
  br label %237, !dbg !2005

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1757, metadata !DIExpression()), !dbg !1817
  br label %433, !dbg !2009

239:                                              ; preds = %151
  br label %249, !dbg !2010

240:                                              ; preds = %151
  br label %249, !dbg !2011

241:                                              ; preds = %151
  br label %247, !dbg !2012

242:                                              ; preds = %151
  br label %247, !dbg !2013

243:                                              ; preds = %151
  br label %249, !dbg !2014

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2015

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2016

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2019

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2021
  call void @llvm.dbg.label(metadata !1780), !dbg !2022
  br i1 %118, label %.loopexit8, label %249, !dbg !2023

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2021
  call void @llvm.dbg.label(metadata !1783), !dbg !2025
  br i1 %108, label %487, label %444, !dbg !2026

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2027

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2028, !tbaa !873
  %254 = icmp eq i8 %253, 0, !dbg !2030
  br i1 %254, label %255, label %433, !dbg !2031

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2032
  br i1 %256, label %257, label %433, !dbg !2034

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1778, metadata !DIExpression()), !dbg !1913
  br label %258, !dbg !2035

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !1913
  br i1 %115, label %260, label %433, !dbg !2036

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2038

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1778, metadata !DIExpression()), !dbg !1913
  br i1 %115, label %262, label %433, !dbg !2039

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2040

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2043
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2045
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2045
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1758, metadata !DIExpression()), !dbg !1817
  %269 = icmp ult i64 %123, %268, !dbg !2046
  br i1 %269, label %270, label %272, !dbg !2049

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2046
  store i8 39, ptr %271, align 1, !dbg !2046, !tbaa !873
  br label %272, !dbg !2046

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2049
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1757, metadata !DIExpression()), !dbg !1817
  %274 = icmp ult i64 %273, %268, !dbg !2050
  br i1 %274, label %275, label %277, !dbg !2053

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2050
  store i8 92, ptr %276, align 1, !dbg !2050, !tbaa !873
  br label %277, !dbg !2050

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1757, metadata !DIExpression()), !dbg !1817
  %279 = icmp ult i64 %278, %268, !dbg !2054
  br i1 %279, label %280, label %282, !dbg !2057

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2054
  store i8 39, ptr %281, align 1, !dbg !2054, !tbaa !873
  br label %282, !dbg !2054

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %433, !dbg !2058

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2059

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1784, metadata !DIExpression()), !dbg !2060
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2061
  %287 = load ptr, ptr %286, align 8, !dbg !2061, !tbaa !808
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2061
  %290 = load i16, ptr %289, align 2, !dbg !2061, !tbaa !905
  %291 = and i16 %290, 16384, !dbg !2061
  %292 = icmp ne i16 %291, 0, !dbg !2063
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2060
  br label %334, !dbg !2064

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %14, metadata !1842, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata ptr %14, metadata !1850, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 8, metadata !1854, metadata !DIExpression()), !dbg !2068
  store i64 0, ptr %14, align 8, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !2060
  %294 = icmp eq i64 %152, -1, !dbg !2071
  br i1 %294, label %295, label %297, !dbg !2073

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1750, metadata !DIExpression()), !dbg !1817
  br label %297, !dbg !2075

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1750, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2076
  %299 = sub i64 %298, %128, !dbg !2077
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1794, metadata !DIExpression()), !dbg !1816
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2079

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !2060
  %302 = icmp ult i64 %128, %298, !dbg !2080
  br i1 %302, label %.preheader5, label %329, !dbg !2082

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2083

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !2060
  br label %329, !dbg !2084

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1784, metadata !DIExpression()), !dbg !2060
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2086
  %308 = load i8, ptr %307, align 1, !dbg !2086, !tbaa !873
  %309 = icmp eq i8 %308, 0, !dbg !2082
  br i1 %309, label %.loopexit6, label %310, !dbg !2083

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2087
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1784, metadata !DIExpression()), !dbg !2060
  %312 = add i64 %311, %128, !dbg !2088
  %313 = icmp eq i64 %311, %299, !dbg !2080
  br i1 %313, label %.loopexit6, label %304, !dbg !2082, !llvm.loop !2089

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1795, metadata !DIExpression()), !dbg !2090
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2091
  %317 = and i1 %316, %109, !dbg !2091
  br i1 %317, label %.preheader3, label %325, !dbg !2091

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2092

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1795, metadata !DIExpression()), !dbg !2090
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2093
  %321 = load i8, ptr %320, align 1, !dbg !2093, !tbaa !873
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2095

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1795, metadata !DIExpression()), !dbg !2090
  %324 = icmp eq i64 %323, %300, !dbg !2097
  br i1 %324, label %.loopexit4, label %318, !dbg !2092, !llvm.loop !2098

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2100

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2100, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %326, metadata !2102, metadata !DIExpression()), !dbg !2110
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2112
  %328 = icmp ne i32 %327, 0, !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1786, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1784, metadata !DIExpression()), !dbg !2060
  br label %329, !dbg !2114

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2115

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1786, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1784, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2116
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1786, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2116
  call void @llvm.dbg.label(metadata !1808), !dbg !2117
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2118
  br label %624, !dbg !2118

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1913
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2120
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1786, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1784, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1750, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1913
  %338 = icmp ult i64 %336, 2, !dbg !2121
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2122
  br i1 %340, label %433, label %341, !dbg !2122

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2123
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1803, metadata !DIExpression()), !dbg !2124
  br label %343, !dbg !2125

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1817
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1904
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1757, metadata !DIExpression()), !dbg !1817
  br i1 %339, label %394, label %350, !dbg !2126

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2131

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1913
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2134
  br i1 %352, label %369, label %353, !dbg !2134

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2136
  br i1 %354, label %355, label %357, !dbg !2140

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2136
  store i8 39, ptr %356, align 1, !dbg !2136, !tbaa !873
  br label %357, !dbg !2136

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1757, metadata !DIExpression()), !dbg !1817
  %359 = icmp ult i64 %358, %129, !dbg !2141
  br i1 %359, label %360, label %362, !dbg !2144

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2141
  store i8 36, ptr %361, align 1, !dbg !2141, !tbaa !873
  br label %362, !dbg !2141

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1757, metadata !DIExpression()), !dbg !1817
  %364 = icmp ult i64 %363, %129, !dbg !2145
  br i1 %364, label %365, label %367, !dbg !2148

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2145
  store i8 39, ptr %366, align 1, !dbg !2145, !tbaa !873
  br label %367, !dbg !2145

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2148
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %369, !dbg !2149

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1817
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1757, metadata !DIExpression()), !dbg !1817
  %372 = icmp ult i64 %370, %129, !dbg !2150
  br i1 %372, label %373, label %375, !dbg !2153

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2150
  store i8 92, ptr %374, align 1, !dbg !2150, !tbaa !873
  br label %375, !dbg !2150

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1757, metadata !DIExpression()), !dbg !1817
  %377 = icmp ult i64 %376, %129, !dbg !2154
  br i1 %377, label %378, label %382, !dbg !2157

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2154
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2154
  store i8 %380, ptr %381, align 1, !dbg !2154, !tbaa !873
  br label %382, !dbg !2154

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1757, metadata !DIExpression()), !dbg !1817
  %384 = icmp ult i64 %383, %129, !dbg !2158
  br i1 %384, label %385, label %390, !dbg !2161

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2158
  %388 = or disjoint i8 %387, 48, !dbg !2158
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2158
  store i8 %388, ptr %389, align 1, !dbg !2158, !tbaa !873
  br label %390, !dbg !2158

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1757, metadata !DIExpression()), !dbg !1817
  %392 = and i8 %349, 7, !dbg !2162
  %393 = or disjoint i8 %392, 48, !dbg !2163
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1779, metadata !DIExpression()), !dbg !1913
  br label %401, !dbg !2164

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2165

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2166
  br i1 %396, label %397, label %399, !dbg !2171

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2166
  store i8 92, ptr %398, align 1, !dbg !2166, !tbaa !873
  br label %399, !dbg !2166

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1913
  br label %401, !dbg !2172

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1817
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1757, metadata !DIExpression()), !dbg !1817
  %407 = add i64 %346, 1, !dbg !2173
  %408 = icmp ugt i64 %342, %407, !dbg !2175
  br i1 %408, label %409, label %.loopexit2, !dbg !2176

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2177
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2177
  br i1 %411, label %423, label %412, !dbg !2177

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2180
  br i1 %413, label %414, label %416, !dbg !2184

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2180
  store i8 39, ptr %415, align 1, !dbg !2180, !tbaa !873
  br label %416, !dbg !2180

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1757, metadata !DIExpression()), !dbg !1817
  %418 = icmp ult i64 %417, %129, !dbg !2185
  br i1 %418, label %419, label %421, !dbg !2188

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2185
  store i8 39, ptr %420, align 1, !dbg !2185, !tbaa !873
  br label %421, !dbg !2185

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %423, !dbg !2189

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2190
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1757, metadata !DIExpression()), !dbg !1817
  %426 = icmp ult i64 %424, %129, !dbg !2191
  br i1 %426, label %427, label %429, !dbg !2194

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2191
  store i8 %406, ptr %428, align 1, !dbg !2191, !tbaa !873
  br label %429, !dbg !2191

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1772, metadata !DIExpression()), !dbg !1904
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2195
  %432 = load i8, ptr %431, align 1, !dbg !2195, !tbaa !873
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1779, metadata !DIExpression()), !dbg !1913
  br label %343, !dbg !2196, !llvm.loop !2197

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2200
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1817
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1821
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1904
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1913
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1774, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1750, metadata !DIExpression()), !dbg !1817
  br i1 %111, label %455, label %444, !dbg !2201

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
  br i1 %120, label %456, label %476, !dbg !2203

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2204

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
  %467 = lshr i8 %458, 5, !dbg !2205
  %468 = zext nneg i8 %467 to i64, !dbg !2205
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2206
  %470 = load i32, ptr %469, align 4, !dbg !2206, !tbaa !864
  %471 = and i8 %458, 31, !dbg !2207
  %472 = zext nneg i8 %471 to i32, !dbg !2207
  %473 = shl nuw i32 1, %472, !dbg !2208
  %474 = and i32 %470, %473, !dbg !2208
  %475 = icmp eq i32 %474, 0, !dbg !2208
  br i1 %475, label %476, label %487, !dbg !2209

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
  br i1 %153, label %487, label %523, !dbg !2210

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2200
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1817
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1821
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2211
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1913
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1750, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.label(metadata !1806), !dbg !2212
  br i1 %109, label %.loopexit8, label %497, !dbg !2213

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1913
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2215
  br i1 %498, label %515, label %499, !dbg !2215

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2217
  br i1 %500, label %501, label %503, !dbg !2221

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2217
  store i8 39, ptr %502, align 1, !dbg !2217, !tbaa !873
  br label %503, !dbg !2217

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2221
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1757, metadata !DIExpression()), !dbg !1817
  %505 = icmp ult i64 %504, %496, !dbg !2222
  br i1 %505, label %506, label %508, !dbg !2225

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2222
  store i8 36, ptr %507, align 1, !dbg !2222, !tbaa !873
  br label %508, !dbg !2222

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1757, metadata !DIExpression()), !dbg !1817
  %510 = icmp ult i64 %509, %496, !dbg !2226
  br i1 %510, label %511, label %513, !dbg !2229

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2226
  store i8 39, ptr %512, align 1, !dbg !2226, !tbaa !873
  br label %513, !dbg !2226

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %515, !dbg !2230

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1913
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1757, metadata !DIExpression()), !dbg !1817
  %518 = icmp ult i64 %516, %496, !dbg !2231
  br i1 %518, label %519, label %521, !dbg !2234

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2231
  store i8 92, ptr %520, align 1, !dbg !2231, !tbaa !873
  br label %521, !dbg !2231

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1750, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.label(metadata !1807), !dbg !2235
  br label %547, !dbg !2236

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1817
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1913
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1904
  br label %523, !dbg !2236

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2200
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1817
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1821
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2211
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2239
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1779, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1777, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1750, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.label(metadata !1807), !dbg !2235
  %534 = xor i1 %528, true, !dbg !2236
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2236
  br i1 %535, label %547, label %536, !dbg !2236

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2240
  br i1 %537, label %538, label %540, !dbg !2244

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2240
  store i8 39, ptr %539, align 1, !dbg !2240, !tbaa !873
  br label %540, !dbg !2240

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1757, metadata !DIExpression()), !dbg !1817
  %542 = icmp ult i64 %541, %533, !dbg !2245
  br i1 %542, label %543, label %545, !dbg !2248

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2245
  store i8 39, ptr %544, align 1, !dbg !2245, !tbaa !873
  br label %545, !dbg !2245

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2248
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1817
  br label %547, !dbg !2249

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1913
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1757, metadata !DIExpression()), !dbg !1817
  %557 = icmp ult i64 %555, %548, !dbg !2250
  br i1 %557, label %558, label %560, !dbg !2253

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2250
  store i8 %549, ptr %559, align 1, !dbg !2250, !tbaa !873
  br label %560, !dbg !2250

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1757, metadata !DIExpression()), !dbg !1817
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1817
  br label %563, !dbg !2255

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2200
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1817
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1821
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2211
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1772, metadata !DIExpression()), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1766, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1750, metadata !DIExpression()), !dbg !1817
  %572 = add i64 %570, 1, !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1772, metadata !DIExpression()), !dbg !1904
  br label %121, !dbg !2257, !llvm.loop !2258

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1892
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1821
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1748, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1758, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1757, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1750, metadata !DIExpression()), !dbg !1817
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2260
  %575 = xor i1 %109, true, !dbg !2262
  %576 = or i1 %574, %575, !dbg !2262
  %577 = or i1 %576, %110, !dbg !2262
  br i1 %577, label %578, label %.loopexit13, !dbg !2262

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2263
  %580 = xor i1 %.lcssa38, true, !dbg !2263
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2263
  br i1 %581, label %589, label %582, !dbg !2263

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2265

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1821
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2267
  br label %638, !dbg !2269

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2270
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2272
  br i1 %588, label %27, label %589, !dbg !2272

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1817
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1892
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2273
  %592 = or i1 %591, %590, !dbg !2275
  br i1 %592, label %608, label %593, !dbg !2275

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1759, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1757, metadata !DIExpression()), !dbg !1817
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2276, !tbaa !873
  %595 = icmp eq i8 %594, 0, !dbg !2279
  br i1 %595, label %608, label %.preheader, !dbg !2279

.preheader:                                       ; preds = %593
  br label %596, !dbg !2279

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1759, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1757, metadata !DIExpression()), !dbg !1817
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2280
  br i1 %600, label %601, label %603, !dbg !2283

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2280
  store i8 %597, ptr %602, align 1, !dbg !2280, !tbaa !873
  br label %603, !dbg !2280

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1757, metadata !DIExpression()), !dbg !1817
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2284
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1759, metadata !DIExpression()), !dbg !1817
  %606 = load i8, ptr %605, align 1, !dbg !2276, !tbaa !873
  %607 = icmp eq i8 %606, 0, !dbg !2279
  br i1 %607, label %.loopexit, label %596, !dbg !2279, !llvm.loop !2285

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2283
  br label %608, !dbg !2287

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1757, metadata !DIExpression()), !dbg !1817
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2287
  br i1 %610, label %611, label %638, !dbg !2289

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2290
  store i8 0, ptr %612, align 1, !dbg !2291, !tbaa !873
  br label %638, !dbg !2290

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1808), !dbg !2117
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2292
  br i1 %614, label %624, label %630, !dbg !2118

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1913
  br label %615, !dbg !2292

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2292

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2292

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1808), !dbg !2117
  %622 = icmp eq i32 %616, 2, !dbg !2292
  %623 = select i1 %619, i32 4, i32 2, !dbg !2118
  br i1 %622, label %624, label %630, !dbg !2118

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2118

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1919
  br label %630, !dbg !2293

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1751, metadata !DIExpression()), !dbg !1817
  %636 = and i32 %5, -3, !dbg !2293
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2294
  br label %638, !dbg !2295

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2296
}

; Function Attrs: nounwind
declare !dbg !2297 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2300 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2303 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2305 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2309, metadata !DIExpression()), !dbg !2312
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2312
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr %0, metadata !2313, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr null, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr %2, metadata !2320, metadata !DIExpression()), !dbg !2326
  %4 = icmp eq ptr %2, null, !dbg !2328
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2328
  call void @llvm.dbg.value(metadata ptr %5, metadata !2321, metadata !DIExpression()), !dbg !2326
  %6 = tail call ptr @__errno_location() #42, !dbg !2329
  %7 = load i32, ptr %6, align 4, !dbg !2329, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %7, metadata !2322, metadata !DIExpression()), !dbg !2326
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2330
  %9 = load i32, ptr %8, align 4, !dbg !2330, !tbaa !1691
  %10 = or i32 %9, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %10, metadata !2323, metadata !DIExpression()), !dbg !2326
  %11 = load i32, ptr %5, align 8, !dbg !2332, !tbaa !1641
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2333
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2334
  %14 = load ptr, ptr %13, align 8, !dbg !2334, !tbaa !1712
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2335
  %16 = load ptr, ptr %15, align 8, !dbg !2335, !tbaa !1715
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2336
  %18 = add i64 %17, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %18, metadata !2324, metadata !DIExpression()), !dbg !2326
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %19, metadata !2325, metadata !DIExpression()), !dbg !2326
  %20 = load i32, ptr %5, align 8, !dbg !2339, !tbaa !1641
  %21 = load ptr, ptr %13, align 8, !dbg !2340, !tbaa !1712
  %22 = load ptr, ptr %15, align 8, !dbg !2341, !tbaa !1715
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2342
  store i32 %7, ptr %6, align 4, !dbg !2343, !tbaa !864
  ret ptr %19, !dbg !2344
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2313, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2319, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2320, metadata !DIExpression()), !dbg !2345
  %5 = icmp eq ptr %3, null, !dbg !2346
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2321, metadata !DIExpression()), !dbg !2345
  %7 = tail call ptr @__errno_location() #42, !dbg !2347
  %8 = load i32, ptr %7, align 4, !dbg !2347, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2322, metadata !DIExpression()), !dbg !2345
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2348
  %10 = load i32, ptr %9, align 4, !dbg !2348, !tbaa !1691
  %11 = icmp eq ptr %2, null, !dbg !2349
  %12 = zext i1 %11 to i32, !dbg !2349
  %13 = or i32 %10, %12, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2323, metadata !DIExpression()), !dbg !2345
  %14 = load i32, ptr %6, align 8, !dbg !2351, !tbaa !1641
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2352
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2353
  %17 = load ptr, ptr %16, align 8, !dbg !2353, !tbaa !1712
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2354
  %19 = load ptr, ptr %18, align 8, !dbg !2354, !tbaa !1715
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2355
  %21 = add i64 %20, 1, !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2324, metadata !DIExpression()), !dbg !2345
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2357
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2325, metadata !DIExpression()), !dbg !2345
  %23 = load i32, ptr %6, align 8, !dbg !2358, !tbaa !1641
  %24 = load ptr, ptr %16, align 8, !dbg !2359, !tbaa !1712
  %25 = load ptr, ptr %18, align 8, !dbg !2360, !tbaa !1715
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2361
  store i32 %8, ptr %7, align 4, !dbg !2362, !tbaa !864
  br i1 %11, label %28, label %27, !dbg !2363

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2364, !tbaa !2366
  br label %28, !dbg !2367

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2368
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2369 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2374, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2371, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2372, metadata !DIExpression()), !dbg !2376
  %2 = load i32, ptr @nslots, align 4, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2372, metadata !DIExpression()), !dbg !2376
  %3 = icmp sgt i32 %2, 1, !dbg !2377
  br i1 %3, label %4, label %6, !dbg !2379

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2377
  br label %10, !dbg !2379

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2380

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2380
  %8 = load ptr, ptr %7, align 8, !dbg !2380, !tbaa !2382
  %9 = icmp eq ptr %8, @slot0, !dbg !2384
  br i1 %9, label %17, label %16, !dbg !2385

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2372, metadata !DIExpression()), !dbg !2376
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2386
  %13 = load ptr, ptr %12, align 8, !dbg !2386, !tbaa !2382
  tail call void @free(ptr noundef %13) #39, !dbg !2387
  %14 = add nuw nsw i64 %11, 1, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2372, metadata !DIExpression()), !dbg !2376
  %15 = icmp eq i64 %14, %5, !dbg !2377
  br i1 %15, label %.loopexit, label %10, !dbg !2379, !llvm.loop !2389

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2391
  store i64 256, ptr @slotvec0, align 8, !dbg !2393, !tbaa !2394
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2395, !tbaa !2382
  br label %17, !dbg !2396

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2397
  br i1 %18, label %20, label %19, !dbg !2399

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2400
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2402, !tbaa !808
  br label %20, !dbg !2403

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2404, !tbaa !864
  ret void, !dbg !2405
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2406 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2409 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2412, metadata !DIExpression()), !dbg !2413
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2414
  ret ptr %3, !dbg !2415
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2416 {
  %5 = alloca i64, align 8, !DIAssignID !2436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2430, metadata !DIExpression(), metadata !2436, metadata ptr %5, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2421, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2422, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2423, metadata !DIExpression()), !dbg !2438
  %6 = tail call ptr @__errno_location() #42, !dbg !2439
  %7 = load i32, ptr %6, align 4, !dbg !2439, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2424, metadata !DIExpression()), !dbg !2438
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2440, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2425, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2426, metadata !DIExpression()), !dbg !2438
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2441
  br i1 %9, label %10, label %11, !dbg !2441

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2443
  unreachable, !dbg !2443

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2444, !tbaa !864
  %13 = icmp sgt i32 %12, %0, !dbg !2445
  br i1 %13, label %32, label %14, !dbg !2446

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2447
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2427, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2448
  %16 = sext i32 %12 to i64, !dbg !2449
  store i64 %16, ptr %5, align 8, !dbg !2450, !tbaa !2366, !DIAssignID !2451
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2430, metadata !DIExpression(), metadata !2451, metadata ptr %5, metadata !DIExpression()), !dbg !2437
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2452
  %18 = add nuw nsw i32 %0, 1, !dbg !2453
  %19 = sub i32 %18, %12, !dbg !2454
  %20 = sext i32 %19 to i64, !dbg !2455
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2456
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2425, metadata !DIExpression()), !dbg !2438
  store ptr %21, ptr @slotvec, align 8, !dbg !2457, !tbaa !808
  br i1 %15, label %22, label %23, !dbg !2458

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2459, !tbaa.struct !2461
  br label %23, !dbg !2462

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2463, !tbaa !864
  %25 = sext i32 %24 to i64, !dbg !2464
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2464
  %27 = load i64, ptr %5, align 8, !dbg !2465, !tbaa !2366
  %28 = sub nsw i64 %27, %25, !dbg !2466
  %29 = shl i64 %28, 4, !dbg !2467
  call void @llvm.dbg.value(metadata ptr %26, metadata !1850, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %29, metadata !1854, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2470
  %30 = load i64, ptr %5, align 8, !dbg !2471, !tbaa !2366
  %31 = trunc i64 %30 to i32, !dbg !2471
  store i32 %31, ptr @nslots, align 4, !dbg !2472, !tbaa !864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2473
  br label %32, !dbg !2474

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2425, metadata !DIExpression()), !dbg !2438
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2475
  %36 = load i64, ptr %35, align 8, !dbg !2476, !tbaa !2394
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2431, metadata !DIExpression()), !dbg !2477
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2478
  %38 = load ptr, ptr %37, align 8, !dbg !2478, !tbaa !2382
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2433, metadata !DIExpression()), !dbg !2477
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2479
  %40 = load i32, ptr %39, align 4, !dbg !2479, !tbaa !1691
  %41 = or i32 %40, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2434, metadata !DIExpression()), !dbg !2477
  %42 = load i32, ptr %3, align 8, !dbg !2481, !tbaa !1641
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2482
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2483
  %45 = load ptr, ptr %44, align 8, !dbg !2483, !tbaa !1712
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2484
  %47 = load ptr, ptr %46, align 8, !dbg !2484, !tbaa !1715
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2435, metadata !DIExpression()), !dbg !2477
  %49 = icmp ugt i64 %36, %48, !dbg !2486
  br i1 %49, label %60, label %50, !dbg !2488

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2431, metadata !DIExpression()), !dbg !2477
  store i64 %51, ptr %35, align 8, !dbg !2491, !tbaa !2394
  %52 = icmp eq ptr %38, @slot0, !dbg !2492
  br i1 %52, label %54, label %53, !dbg !2494

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2495
  br label %54, !dbg !2495

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2433, metadata !DIExpression()), !dbg !2477
  store ptr %55, ptr %37, align 8, !dbg !2497, !tbaa !2382
  %56 = load i32, ptr %3, align 8, !dbg !2498, !tbaa !1641
  %57 = load ptr, ptr %44, align 8, !dbg !2499, !tbaa !1712
  %58 = load ptr, ptr %46, align 8, !dbg !2500, !tbaa !1715
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2501
  br label %60, !dbg !2502

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2477
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2433, metadata !DIExpression()), !dbg !2477
  store i32 %7, ptr %6, align 4, !dbg !2503, !tbaa !864
  ret ptr %61, !dbg !2504
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2505 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2510, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2511, metadata !DIExpression()), !dbg !2512
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2513
  ret ptr %4, !dbg !2514
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2515 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata ptr %0, metadata !2412, metadata !DIExpression()), !dbg !2519
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2521
  ret ptr %2, !dbg !2522
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 0, metadata !2509, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2530
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2532
  ret ptr %3, !dbg !2533
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2534 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2541, metadata !DIExpression(), metadata !2542, metadata ptr %4, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2539, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2557, !alias.scope !2545, !DIAssignID !2558
  call void @llvm.dbg.assign(metadata i8 0, metadata !2541, metadata !DIExpression(), metadata !2558, metadata ptr %4, metadata !DIExpression()), !dbg !2543
  %5 = icmp eq i32 %1, 10, !dbg !2559
  br i1 %5, label %6, label %7, !dbg !2561

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2562, !noalias !2545
  unreachable, !dbg !2562

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2563, !tbaa !1641, !alias.scope !2545, !DIAssignID !2564
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2541, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2564, metadata ptr %4, metadata !DIExpression()), !dbg !2543
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2565
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2566
  ret ptr %8, !dbg !2567
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2568 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2576, metadata !DIExpression(), metadata !2577, metadata ptr %5, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2574, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2575, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2580), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2554, metadata !DIExpression()), !dbg !2586
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2586, !alias.scope !2580, !DIAssignID !2587
  call void @llvm.dbg.assign(metadata i8 0, metadata !2576, metadata !DIExpression(), metadata !2587, metadata ptr %5, metadata !DIExpression()), !dbg !2578
  %6 = icmp eq i32 %1, 10, !dbg !2588
  br i1 %6, label %7, label %8, !dbg !2589

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2590, !noalias !2580
  unreachable, !dbg !2590

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2591, !tbaa !1641, !alias.scope !2580, !DIAssignID !2592
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2592, metadata ptr %5, metadata !DIExpression()), !dbg !2578
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2593
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2594
  ret ptr %9, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2596 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2602
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2541, metadata !DIExpression(), metadata !2602, metadata ptr %3, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata ptr %1, metadata !2540, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2549, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2554, metadata !DIExpression()), !dbg !2613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2613, !alias.scope !2607, !DIAssignID !2614
  call void @llvm.dbg.assign(metadata i8 0, metadata !2541, metadata !DIExpression(), metadata !2614, metadata ptr %3, metadata !DIExpression()), !dbg !2604
  %4 = icmp eq i32 %0, 10, !dbg !2615
  br i1 %4, label %5, label %6, !dbg !2616

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2617, !noalias !2607
  unreachable, !dbg !2617

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2618, !tbaa !1641, !alias.scope !2607, !DIAssignID !2619
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2541, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2619, metadata ptr %3, metadata !DIExpression()), !dbg !2604
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2620
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2621
  ret ptr %7, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2623 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2630
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2628, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2576, metadata !DIExpression(), metadata !2630, metadata ptr %4, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %1, metadata !2574, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %2, metadata !2575, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2635), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %0, metadata !2549, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2554, metadata !DIExpression()), !dbg !2641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2641, !alias.scope !2635, !DIAssignID !2642
  call void @llvm.dbg.assign(metadata i8 0, metadata !2576, metadata !DIExpression(), metadata !2642, metadata ptr %4, metadata !DIExpression()), !dbg !2632
  %5 = icmp eq i32 %0, 10, !dbg !2643
  br i1 %5, label %6, label %7, !dbg !2644

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2645, !noalias !2635
  unreachable, !dbg !2645

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2646, !tbaa !1641, !alias.scope !2635, !DIAssignID !2647
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2647, metadata ptr %4, metadata !DIExpression()), !dbg !2632
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2649
  ret ptr %8, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2651 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2659, metadata ptr %4, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2662, !tbaa.struct !2663, !DIAssignID !2664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2664, metadata ptr %4, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1658, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1659, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1661, metadata !DIExpression()), !dbg !2665
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2667
  %6 = lshr i8 %2, 5, !dbg !2668
  %7 = zext nneg i8 %6 to i64, !dbg !2668
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1662, metadata !DIExpression()), !dbg !2665
  %9 = and i8 %2, 31, !dbg !2670
  %10 = zext nneg i8 %9 to i32, !dbg !2670
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1664, metadata !DIExpression()), !dbg !2665
  %11 = load i32, ptr %8, align 4, !dbg !2671, !tbaa !864
  %12 = lshr i32 %11, %10, !dbg !2672
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1665, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2665
  %13 = and i32 %12, 1, !dbg !2673
  %14 = xor i32 %13, 1, !dbg !2673
  %15 = shl nuw i32 %14, %10, !dbg !2674
  %16 = xor i32 %15, %11, !dbg !2675
  store i32 %16, ptr %8, align 4, !dbg !2675, !tbaa !864
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2676
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2677
  ret ptr %17, !dbg !2678
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2679 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2685
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2685, metadata ptr %3, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2656, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8 %1, metadata !2657, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2690, !tbaa.struct !2663, !DIAssignID !2691
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2691, metadata ptr %3, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %3, metadata !1658, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %1, metadata !1661, metadata !DIExpression()), !dbg !2692
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2694
  %5 = lshr i8 %1, 5, !dbg !2695
  %6 = zext nneg i8 %5 to i64, !dbg !2695
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %7, metadata !1662, metadata !DIExpression()), !dbg !2692
  %8 = and i8 %1, 31, !dbg !2697
  %9 = zext nneg i8 %8 to i32, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %9, metadata !1664, metadata !DIExpression()), !dbg !2692
  %10 = load i32, ptr %7, align 4, !dbg !2698, !tbaa !864
  %11 = lshr i32 %10, %9, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %11, metadata !1665, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2692
  %12 = and i32 %11, 1, !dbg !2700
  %13 = xor i32 %12, 1, !dbg !2700
  %14 = shl nuw i32 %13, %9, !dbg !2701
  %15 = xor i32 %14, %10, !dbg !2702
  store i32 %15, ptr %7, align 4, !dbg !2702, !tbaa !864
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2703
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2704
  ret ptr %16, !dbg !2705
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2706 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2709
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8 58, metadata !2684, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2709, metadata ptr %2, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 -1, metadata !2656, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 58, metadata !2657, metadata !DIExpression()), !dbg !2713
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2716, !tbaa.struct !2663, !DIAssignID !2717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2717, metadata ptr %2, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 58, metadata !1661, metadata !DIExpression()), !dbg !2718
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %3, metadata !1662, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 26, metadata !1664, metadata !DIExpression()), !dbg !2718
  %4 = load i32, ptr %3, align 4, !dbg !2721, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %4, metadata !1665, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2718
  %5 = or i32 %4, 67108864, !dbg !2722
  store i32 %5, ptr %3, align 4, !dbg !2722, !tbaa !864
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2723
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2724
  ret ptr %6, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2726 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2730
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2730, metadata ptr %3, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !2657, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2735, !tbaa.struct !2663, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2736, metadata ptr %3, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %3, metadata !1658, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 58, metadata !1661, metadata !DIExpression()), !dbg !2737
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2739
  call void @llvm.dbg.value(metadata ptr %4, metadata !1662, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 26, metadata !1664, metadata !DIExpression()), !dbg !2737
  %5 = load i32, ptr %4, align 4, !dbg !2740, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %5, metadata !1665, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2737
  %6 = or i32 %5, 67108864, !dbg !2741
  store i32 %6, ptr %4, align 4, !dbg !2741, !tbaa !864
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2742
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2743
  ret ptr %7, !dbg !2744
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2745 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2750, metadata !DIExpression(), metadata !2751, metadata ptr %4, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2554, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2753
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2748, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2756
  %5 = icmp eq i32 %1, 10, !dbg !2757
  br i1 %5, label %6, label %7, !dbg !2758

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2759, !noalias !2760
  unreachable, !dbg !2759

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2756
  store i32 %1, ptr %4, align 8, !dbg !2763, !tbaa.struct !2663, !DIAssignID !2764
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2763
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2763
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2750, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2764, metadata ptr %4, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2750, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2765, metadata ptr %8, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1658, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1659, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1661, metadata !DIExpression()), !dbg !2766
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2768
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1662, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1664, metadata !DIExpression()), !dbg !2766
  %10 = load i32, ptr %9, align 4, !dbg !2769, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1665, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2766
  %11 = or i32 %10, 67108864, !dbg !2770
  store i32 %11, ptr %9, align 4, !dbg !2770, !tbaa !864, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2750, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2771, metadata ptr %9, metadata !DIExpression()), !dbg !2752
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2772
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2773
  ret ptr %12, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2775 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2783
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2781, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2782, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2783, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %2, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %3, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2798, !tbaa.struct !2663, !DIAssignID !2799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2799, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2800, metadata ptr undef, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %5, metadata !1698, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %1, metadata !1699, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %2, metadata !1700, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %5, metadata !1698, metadata !DIExpression()), !dbg !2801
  store i32 10, ptr %5, align 8, !dbg !2803, !tbaa !1641, !DIAssignID !2804
  call void @llvm.dbg.assign(metadata i32 10, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2804, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  %6 = icmp ne ptr %1, null, !dbg !2805
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2806
  br i1 %8, label %10, label %9, !dbg !2806

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2807
  unreachable, !dbg !2807

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2808
  store ptr %1, ptr %11, align 8, !dbg !2809, !tbaa !1712, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2810, metadata ptr %11, metadata !DIExpression()), !dbg !2795
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2811
  store ptr %2, ptr %12, align 8, !dbg !2812, !tbaa !1715, !DIAssignID !2813
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2813, metadata ptr %12, metadata !DIExpression()), !dbg !2795
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2814
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2815
  ret ptr %13, !dbg !2816
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2786 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2817, metadata ptr %6, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2792, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2793, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2794, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2820, !tbaa.struct !2663, !DIAssignID !2821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2821, metadata ptr %6, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2822, metadata ptr undef, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %6, metadata !1698, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %1, metadata !1699, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %2, metadata !1700, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %6, metadata !1698, metadata !DIExpression()), !dbg !2823
  store i32 10, ptr %6, align 8, !dbg !2825, !tbaa !1641, !DIAssignID !2826
  call void @llvm.dbg.assign(metadata i32 10, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2826, metadata ptr %6, metadata !DIExpression()), !dbg !2818
  %7 = icmp ne ptr %1, null, !dbg !2827
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2828
  br i1 %9, label %11, label %10, !dbg !2828

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2829
  unreachable, !dbg !2829

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2830
  store ptr %1, ptr %12, align 8, !dbg !2831, !tbaa !1712, !DIAssignID !2832
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2832, metadata ptr %12, metadata !DIExpression()), !dbg !2818
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2833
  store ptr %2, ptr %13, align 8, !dbg !2834, !tbaa !1715, !DIAssignID !2835
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2835, metadata ptr %13, metadata !DIExpression()), !dbg !2818
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2837
  ret ptr %14, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2839 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2846
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %0, metadata !2780, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2781, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %2, metadata !2782, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2846, metadata ptr %4, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr %2, metadata !2793, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2853, !tbaa.struct !2663, !DIAssignID !2854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2854, metadata ptr %4, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2855, metadata ptr undef, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr %4, metadata !1698, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %0, metadata !1699, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %1, metadata !1700, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %4, metadata !1698, metadata !DIExpression()), !dbg !2856
  store i32 10, ptr %4, align 8, !dbg !2858, !tbaa !1641, !DIAssignID !2859
  call void @llvm.dbg.assign(metadata i32 10, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2859, metadata ptr %4, metadata !DIExpression()), !dbg !2850
  %5 = icmp ne ptr %0, null, !dbg !2860
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2861
  br i1 %7, label %9, label %8, !dbg !2861

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2862
  unreachable, !dbg !2862

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2863
  store ptr %0, ptr %10, align 8, !dbg !2864, !tbaa !1712, !DIAssignID !2865
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2865, metadata ptr %10, metadata !DIExpression()), !dbg !2850
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2866
  store ptr %1, ptr %11, align 8, !dbg !2867, !tbaa !1715, !DIAssignID !2868
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2868, metadata ptr %11, metadata !DIExpression()), !dbg !2850
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2869
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2870
  ret ptr %12, !dbg !2871
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2872 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2880
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2878, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2880, metadata ptr %5, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %2, metadata !2793, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %3, metadata !2794, metadata !DIExpression()), !dbg !2882
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2885, !tbaa.struct !2663, !DIAssignID !2886
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(), metadata !2886, metadata ptr %5, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2887, metadata ptr undef, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %5, metadata !1698, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %0, metadata !1699, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %1, metadata !1700, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %5, metadata !1698, metadata !DIExpression()), !dbg !2888
  store i32 10, ptr %5, align 8, !dbg !2890, !tbaa !1641, !DIAssignID !2891
  call void @llvm.dbg.assign(metadata i32 10, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2891, metadata ptr %5, metadata !DIExpression()), !dbg !2882
  %6 = icmp ne ptr %0, null, !dbg !2892
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2893
  br i1 %8, label %10, label %9, !dbg !2893

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2894
  unreachable, !dbg !2894

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2895
  store ptr %0, ptr %11, align 8, !dbg !2896, !tbaa !1712, !DIAssignID !2897
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2897, metadata ptr %11, metadata !DIExpression()), !dbg !2882
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2898
  store ptr %1, ptr %12, align 8, !dbg !2899, !tbaa !1715, !DIAssignID !2900
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2785, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2900, metadata ptr %12, metadata !DIExpression()), !dbg !2882
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2902
  ret ptr %13, !dbg !2903
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2908, metadata !DIExpression()), !dbg !2911
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2909, metadata !DIExpression()), !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()), !dbg !2911
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2912
  ret ptr %4, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2914 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2918, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 0, metadata !2908, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()), !dbg !2921
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2923
  ret ptr %3, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2925 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 %0, metadata !2908, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %1, metadata !2909, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 -1, metadata !2910, metadata !DIExpression()), !dbg !2932
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2934
  ret ptr %3, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2936 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 0, metadata !2908, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 -1, metadata !2910, metadata !DIExpression()), !dbg !2944
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2946
  ret ptr %2, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2948 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2991, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2992, metadata !DIExpression()), !dbg !2993
  %7 = icmp eq ptr %1, null, !dbg !2994
  br i1 %7, label %10, label %8, !dbg !2996

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2997
  br label %12, !dbg !2997

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #39, !dbg !2998
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #39, !dbg !2999
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2999
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !3000
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #39, !dbg !3001
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #39, !dbg !3001
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !3002
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
  ], !dbg !3003

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #39, !dbg !3004
  %21 = load ptr, ptr %4, align 8, !dbg !3004, !tbaa !808
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3004
  br label %147, !dbg !3006

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #39, !dbg !3007
  %25 = load ptr, ptr %4, align 8, !dbg !3007, !tbaa !808
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3007
  %27 = load ptr, ptr %26, align 8, !dbg !3007, !tbaa !808
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3007
  br label %147, !dbg !3008

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #39, !dbg !3009
  %31 = load ptr, ptr %4, align 8, !dbg !3009, !tbaa !808
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3009
  %33 = load ptr, ptr %32, align 8, !dbg !3009, !tbaa !808
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3009
  %35 = load ptr, ptr %34, align 8, !dbg !3009, !tbaa !808
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3009
  br label %147, !dbg !3010

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #39, !dbg !3011
  %39 = load ptr, ptr %4, align 8, !dbg !3011, !tbaa !808
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3011
  %41 = load ptr, ptr %40, align 8, !dbg !3011, !tbaa !808
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3011
  %43 = load ptr, ptr %42, align 8, !dbg !3011, !tbaa !808
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3011
  %45 = load ptr, ptr %44, align 8, !dbg !3011, !tbaa !808
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3011
  br label %147, !dbg !3012

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #39, !dbg !3013
  %49 = load ptr, ptr %4, align 8, !dbg !3013, !tbaa !808
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3013
  %51 = load ptr, ptr %50, align 8, !dbg !3013, !tbaa !808
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3013
  %53 = load ptr, ptr %52, align 8, !dbg !3013, !tbaa !808
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3013
  %55 = load ptr, ptr %54, align 8, !dbg !3013, !tbaa !808
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3013
  %57 = load ptr, ptr %56, align 8, !dbg !3013, !tbaa !808
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3013
  br label %147, !dbg !3014

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #39, !dbg !3015
  %61 = load ptr, ptr %4, align 8, !dbg !3015, !tbaa !808
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3015
  %63 = load ptr, ptr %62, align 8, !dbg !3015, !tbaa !808
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3015
  %65 = load ptr, ptr %64, align 8, !dbg !3015, !tbaa !808
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3015
  %67 = load ptr, ptr %66, align 8, !dbg !3015, !tbaa !808
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3015
  %69 = load ptr, ptr %68, align 8, !dbg !3015, !tbaa !808
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3015
  %71 = load ptr, ptr %70, align 8, !dbg !3015, !tbaa !808
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3015
  br label %147, !dbg !3016

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #39, !dbg !3017
  %75 = load ptr, ptr %4, align 8, !dbg !3017, !tbaa !808
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3017
  %77 = load ptr, ptr %76, align 8, !dbg !3017, !tbaa !808
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3017
  %79 = load ptr, ptr %78, align 8, !dbg !3017, !tbaa !808
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3017
  %81 = load ptr, ptr %80, align 8, !dbg !3017, !tbaa !808
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3017
  %83 = load ptr, ptr %82, align 8, !dbg !3017, !tbaa !808
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3017
  %85 = load ptr, ptr %84, align 8, !dbg !3017, !tbaa !808
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3017
  %87 = load ptr, ptr %86, align 8, !dbg !3017, !tbaa !808
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3017
  br label %147, !dbg !3018

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #39, !dbg !3019
  %91 = load ptr, ptr %4, align 8, !dbg !3019, !tbaa !808
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3019
  %93 = load ptr, ptr %92, align 8, !dbg !3019, !tbaa !808
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3019
  %95 = load ptr, ptr %94, align 8, !dbg !3019, !tbaa !808
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3019
  %97 = load ptr, ptr %96, align 8, !dbg !3019, !tbaa !808
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3019
  %99 = load ptr, ptr %98, align 8, !dbg !3019, !tbaa !808
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3019
  %101 = load ptr, ptr %100, align 8, !dbg !3019, !tbaa !808
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3019
  %103 = load ptr, ptr %102, align 8, !dbg !3019, !tbaa !808
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3019
  %105 = load ptr, ptr %104, align 8, !dbg !3019, !tbaa !808
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3019
  br label %147, !dbg !3020

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #39, !dbg !3021
  %109 = load ptr, ptr %4, align 8, !dbg !3021, !tbaa !808
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3021
  %111 = load ptr, ptr %110, align 8, !dbg !3021, !tbaa !808
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3021
  %113 = load ptr, ptr %112, align 8, !dbg !3021, !tbaa !808
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3021
  %115 = load ptr, ptr %114, align 8, !dbg !3021, !tbaa !808
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3021
  %117 = load ptr, ptr %116, align 8, !dbg !3021, !tbaa !808
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3021
  %119 = load ptr, ptr %118, align 8, !dbg !3021, !tbaa !808
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3021
  %121 = load ptr, ptr %120, align 8, !dbg !3021, !tbaa !808
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3021
  %123 = load ptr, ptr %122, align 8, !dbg !3021, !tbaa !808
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3021
  %125 = load ptr, ptr %124, align 8, !dbg !3021, !tbaa !808
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3021
  br label %147, !dbg !3022

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #39, !dbg !3023
  %129 = load ptr, ptr %4, align 8, !dbg !3023, !tbaa !808
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3023
  %131 = load ptr, ptr %130, align 8, !dbg !3023, !tbaa !808
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3023
  %133 = load ptr, ptr %132, align 8, !dbg !3023, !tbaa !808
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3023
  %135 = load ptr, ptr %134, align 8, !dbg !3023, !tbaa !808
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3023
  %137 = load ptr, ptr %136, align 8, !dbg !3023, !tbaa !808
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3023
  %139 = load ptr, ptr %138, align 8, !dbg !3023, !tbaa !808
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3023
  %141 = load ptr, ptr %140, align 8, !dbg !3023, !tbaa !808
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3023
  %143 = load ptr, ptr %142, align 8, !dbg !3023, !tbaa !808
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3023
  %145 = load ptr, ptr %144, align 8, !dbg !3023, !tbaa !808
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3023
  br label %147, !dbg !3024

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3033, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3034, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3035, metadata !DIExpression()), !dbg !3036
  br label %6, !dbg !3037

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3035, metadata !DIExpression()), !dbg !3036
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3040
  %9 = load ptr, ptr %8, align 8, !dbg !3040, !tbaa !808
  %10 = icmp eq ptr %9, null, !dbg !3042
  %11 = add i64 %7, 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3035, metadata !DIExpression()), !dbg !3036
  br i1 %10, label %12, label %6, !dbg !3042, !llvm.loop !3044

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3039
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3046
  ret void, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3048 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3068, metadata !DIExpression(), metadata !3070, metadata ptr %6, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3063, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3064, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3065, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3066, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3071
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3071
  %10 = icmp sgt i32 %9, -1, !dbg !3073
  br i1 %10, label %18, label %11, !dbg !3073

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3073
  store i32 %12, ptr %7, align 8, !dbg !3073
  %13 = icmp ult i32 %9, -7, !dbg !3073
  br i1 %13, label %14, label %18, !dbg !3073

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3073
  %16 = sext i32 %9 to i64, !dbg !3073
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3073
  br label %22, !dbg !3073

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3073
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3073
  store ptr %21, ptr %4, align 8, !dbg !3073
  br label %22, !dbg !3073

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3073
  %25 = load ptr, ptr %24, align 8, !dbg !3073
  store ptr %25, ptr %6, align 8, !dbg !3076, !tbaa !808
  %26 = icmp eq ptr %25, null, !dbg !3077
  br i1 %26, label %197, label %27, !dbg !3078

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3067, metadata !DIExpression()), !dbg !3071
  %28 = icmp sgt i32 %23, -1, !dbg !3073
  br i1 %28, label %36, label %29, !dbg !3073

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3073
  store i32 %30, ptr %7, align 8, !dbg !3073
  %31 = icmp ult i32 %23, -7, !dbg !3073
  br i1 %31, label %32, label %36, !dbg !3073

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3073
  %34 = sext i32 %23 to i64, !dbg !3073
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3073
  br label %40, !dbg !3073

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3073
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3073
  store ptr %39, ptr %4, align 8, !dbg !3073
  br label %40, !dbg !3073

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3073
  %43 = load ptr, ptr %42, align 8, !dbg !3073
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3079
  store ptr %43, ptr %44, align 8, !dbg !3076, !tbaa !808
  %45 = icmp eq ptr %43, null, !dbg !3077
  br i1 %45, label %197, label %46, !dbg !3078

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3067, metadata !DIExpression()), !dbg !3071
  %47 = icmp sgt i32 %41, -1, !dbg !3073
  br i1 %47, label %55, label %48, !dbg !3073

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3073
  store i32 %49, ptr %7, align 8, !dbg !3073
  %50 = icmp ult i32 %41, -7, !dbg !3073
  br i1 %50, label %51, label %55, !dbg !3073

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3073
  %53 = sext i32 %41 to i64, !dbg !3073
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3073
  br label %59, !dbg !3073

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3073
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3073
  store ptr %58, ptr %4, align 8, !dbg !3073
  br label %59, !dbg !3073

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3073
  %62 = load ptr, ptr %61, align 8, !dbg !3073
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3079
  store ptr %62, ptr %63, align 8, !dbg !3076, !tbaa !808
  %64 = icmp eq ptr %62, null, !dbg !3077
  br i1 %64, label %197, label %65, !dbg !3078

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3067, metadata !DIExpression()), !dbg !3071
  %66 = icmp sgt i32 %60, -1, !dbg !3073
  br i1 %66, label %74, label %67, !dbg !3073

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3073
  store i32 %68, ptr %7, align 8, !dbg !3073
  %69 = icmp ult i32 %60, -7, !dbg !3073
  br i1 %69, label %70, label %74, !dbg !3073

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3073
  %72 = sext i32 %60 to i64, !dbg !3073
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3073
  br label %78, !dbg !3073

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3073
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3073
  store ptr %77, ptr %4, align 8, !dbg !3073
  br label %78, !dbg !3073

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3073
  %81 = load ptr, ptr %80, align 8, !dbg !3073
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3079
  store ptr %81, ptr %82, align 8, !dbg !3076, !tbaa !808
  %83 = icmp eq ptr %81, null, !dbg !3077
  br i1 %83, label %197, label %84, !dbg !3078

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3067, metadata !DIExpression()), !dbg !3071
  %85 = icmp sgt i32 %79, -1, !dbg !3073
  br i1 %85, label %93, label %86, !dbg !3073

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3073
  store i32 %87, ptr %7, align 8, !dbg !3073
  %88 = icmp ult i32 %79, -7, !dbg !3073
  br i1 %88, label %89, label %93, !dbg !3073

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3073
  %91 = sext i32 %79 to i64, !dbg !3073
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3073
  br label %97, !dbg !3073

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3073
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3073
  store ptr %96, ptr %4, align 8, !dbg !3073
  br label %97, !dbg !3073

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3073
  %100 = load ptr, ptr %99, align 8, !dbg !3073
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3079
  store ptr %100, ptr %101, align 8, !dbg !3076, !tbaa !808
  %102 = icmp eq ptr %100, null, !dbg !3077
  br i1 %102, label %197, label %103, !dbg !3078

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3067, metadata !DIExpression()), !dbg !3071
  %104 = icmp sgt i32 %98, -1, !dbg !3073
  br i1 %104, label %112, label %105, !dbg !3073

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3073
  store i32 %106, ptr %7, align 8, !dbg !3073
  %107 = icmp ult i32 %98, -7, !dbg !3073
  br i1 %107, label %108, label %112, !dbg !3073

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3073
  %110 = sext i32 %98 to i64, !dbg !3073
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3073
  br label %116, !dbg !3073

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3073
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3073
  store ptr %115, ptr %4, align 8, !dbg !3073
  br label %116, !dbg !3073

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3073
  %119 = load ptr, ptr %118, align 8, !dbg !3073
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3079
  store ptr %119, ptr %120, align 8, !dbg !3076, !tbaa !808
  %121 = icmp eq ptr %119, null, !dbg !3077
  br i1 %121, label %197, label %122, !dbg !3078

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3067, metadata !DIExpression()), !dbg !3071
  %123 = icmp sgt i32 %117, -1, !dbg !3073
  br i1 %123, label %131, label %124, !dbg !3073

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3073
  store i32 %125, ptr %7, align 8, !dbg !3073
  %126 = icmp ult i32 %117, -7, !dbg !3073
  br i1 %126, label %127, label %131, !dbg !3073

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3073
  %129 = sext i32 %117 to i64, !dbg !3073
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3073
  br label %135, !dbg !3073

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3073
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3073
  store ptr %134, ptr %4, align 8, !dbg !3073
  br label %135, !dbg !3073

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3073
  %138 = load ptr, ptr %137, align 8, !dbg !3073
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3079
  store ptr %138, ptr %139, align 8, !dbg !3076, !tbaa !808
  %140 = icmp eq ptr %138, null, !dbg !3077
  br i1 %140, label %197, label %141, !dbg !3078

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3067, metadata !DIExpression()), !dbg !3071
  %142 = icmp sgt i32 %136, -1, !dbg !3073
  br i1 %142, label %150, label %143, !dbg !3073

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3073
  store i32 %144, ptr %7, align 8, !dbg !3073
  %145 = icmp ult i32 %136, -7, !dbg !3073
  br i1 %145, label %146, label %150, !dbg !3073

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3073
  %148 = sext i32 %136 to i64, !dbg !3073
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3073
  br label %154, !dbg !3073

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3073
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3073
  store ptr %153, ptr %4, align 8, !dbg !3073
  br label %154, !dbg !3073

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3073
  %157 = load ptr, ptr %156, align 8, !dbg !3073
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3079
  store ptr %157, ptr %158, align 8, !dbg !3076, !tbaa !808
  %159 = icmp eq ptr %157, null, !dbg !3077
  br i1 %159, label %197, label %160, !dbg !3078

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3067, metadata !DIExpression()), !dbg !3071
  %161 = icmp sgt i32 %155, -1, !dbg !3073
  br i1 %161, label %169, label %162, !dbg !3073

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3073
  store i32 %163, ptr %7, align 8, !dbg !3073
  %164 = icmp ult i32 %155, -7, !dbg !3073
  br i1 %164, label %165, label %169, !dbg !3073

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3073
  %167 = sext i32 %155 to i64, !dbg !3073
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3073
  br label %173, !dbg !3073

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3073
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3073
  store ptr %172, ptr %4, align 8, !dbg !3073
  br label %173, !dbg !3073

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3073
  %176 = load ptr, ptr %175, align 8, !dbg !3073
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3079
  store ptr %176, ptr %177, align 8, !dbg !3076, !tbaa !808
  %178 = icmp eq ptr %176, null, !dbg !3077
  br i1 %178, label %197, label %179, !dbg !3078

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3067, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3067, metadata !DIExpression()), !dbg !3071
  %180 = icmp sgt i32 %174, -1, !dbg !3073
  br i1 %180, label %188, label %181, !dbg !3073

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3073
  store i32 %182, ptr %7, align 8, !dbg !3073
  %183 = icmp ult i32 %174, -7, !dbg !3073
  br i1 %183, label %184, label %188, !dbg !3073

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3073
  %186 = sext i32 %174 to i64, !dbg !3073
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3073
  br label %191, !dbg !3073

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3073
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3073
  store ptr %190, ptr %4, align 8, !dbg !3073
  br label %191, !dbg !3073

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3073
  %193 = load ptr, ptr %192, align 8, !dbg !3073
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3079
  store ptr %193, ptr %194, align 8, !dbg !3076, !tbaa !808
  %195 = icmp eq ptr %193, null, !dbg !3077
  %196 = select i1 %195, i64 9, i64 10, !dbg !3078
  br label %197, !dbg !3078

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3080
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3081
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3082
  ret void, !dbg !3082
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3083 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3091, metadata !DIExpression(), metadata !3092, metadata ptr %5, metadata !DIExpression()), !dbg !3093
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3088, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3089, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3094
  call void @llvm.va_start(ptr nonnull %5), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3096, !tbaa.struct !1242
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3096
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3096
  call void @llvm.va_end(ptr nonnull %5), !dbg !3097
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3098
  ret void, !dbg !3098
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3099 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3100, !tbaa !808
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !3100
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #39, !dbg !3101
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #39, !dbg !3101
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !3102
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #39, !dbg !3102
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3103
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.96) #39, !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3119
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3121
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3127
  %5 = icmp eq ptr %4, null, !dbg !3129
  br i1 %5, label %6, label %7, !dbg !3131

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3132
  unreachable, !dbg !3132

7:                                                ; preds = %3
  ret ptr %4, !dbg !3133
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3115 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3136
  %5 = icmp eq ptr %4, null, !dbg !3138
  br i1 %5, label %6, label %7, !dbg !3139

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3140
  unreachable, !dbg !3140

7:                                                ; preds = %3
  ret ptr %4, !dbg !3141
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3147
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3149
  %3 = icmp eq ptr %2, null, !dbg !3151
  br i1 %3, label %4, label %5, !dbg !3152

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3153
  unreachable, !dbg !3153

5:                                                ; preds = %1
  ret ptr %2, !dbg !3154
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3155 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %0, metadata !3162, metadata !DIExpression()), !dbg !3166
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3169
  %3 = icmp eq ptr %2, null, !dbg !3171
  br i1 %3, label %4, label %5, !dbg !3172

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3173
  unreachable, !dbg !3173

5:                                                ; preds = %1
  ret ptr %2, !dbg !3174
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3175 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3181
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3184
  %3 = icmp eq ptr %2, null, !dbg !3186
  br i1 %3, label %4, label %5, !dbg !3187

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3188
  unreachable, !dbg !3188

5:                                                ; preds = %1
  ret ptr %2, !dbg !3189
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3204
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3206
  %5 = icmp eq ptr %4, null, !dbg !3208
  br i1 %5, label %6, label %7, !dbg !3209

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3210
  unreachable, !dbg !3210

7:                                                ; preds = %2
  ret ptr %4, !dbg !3211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3212 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3226
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3228
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3230
  %5 = icmp eq ptr %4, null, !dbg !3232
  br i1 %5, label %6, label %7, !dbg !3233

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3234
  unreachable, !dbg !3234

7:                                                ; preds = %2
  ret ptr %4, !dbg !3235
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3241, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %2, metadata !3248, metadata !DIExpression()), !dbg !3249
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3252
  %5 = icmp eq ptr %4, null, !dbg !3254
  br i1 %5, label %6, label %7, !dbg !3255

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3256
  unreachable, !dbg !3256

7:                                                ; preds = %3
  ret ptr %4, !dbg !3257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3258 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr null, metadata !3114, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3265
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3268
  %4 = icmp eq ptr %3, null, !dbg !3270
  br i1 %4, label %5, label %6, !dbg !3271

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3272
  unreachable, !dbg !3272

6:                                                ; preds = %2
  ret ptr %3, !dbg !3273
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3274 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr null, metadata !3240, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr null, metadata !3244, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3283
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3285
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3286
  %4 = icmp eq ptr %3, null, !dbg !3288
  br i1 %4, label %5, label %6, !dbg !3289

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3290
  unreachable, !dbg !3290

6:                                                ; preds = %2
  ret ptr %3, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3292 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3298
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %1, metadata !726, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 1, metadata !727, metadata !DIExpression()), !dbg !3299
  %3 = load i64, ptr %1, align 8, !dbg !3301, !tbaa !2366
  call void @llvm.dbg.value(metadata i64 %3, metadata !728, metadata !DIExpression()), !dbg !3299
  %4 = icmp eq ptr %0, null, !dbg !3302
  br i1 %4, label %5, label %8, !dbg !3304

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3305
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3308
  br label %15, !dbg !3308

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3309
  %10 = add nuw i64 %9, 1, !dbg !3309
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3309
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3309
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %13, metadata !728, metadata !DIExpression()), !dbg !3299
  br i1 %12, label %14, label %15, !dbg !3312

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3313
  unreachable, !dbg !3313

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %16, metadata !728, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %16, metadata !3117, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 1, metadata !3118, metadata !DIExpression()), !dbg !3314
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %17, metadata !3122, metadata !DIExpression()), !dbg !3317
  %18 = icmp eq ptr %17, null, !dbg !3319
  br i1 %18, label %19, label %20, !dbg !3320

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3321
  unreachable, !dbg !3321

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !725, metadata !DIExpression()), !dbg !3299
  store i64 %16, ptr %1, align 8, !dbg !3322, !tbaa !2366
  ret ptr %17, !dbg !3323
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !720 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !726, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !727, metadata !DIExpression()), !dbg !3324
  %4 = load i64, ptr %1, align 8, !dbg !3325, !tbaa !2366
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !728, metadata !DIExpression()), !dbg !3324
  %5 = icmp eq ptr %0, null, !dbg !3326
  br i1 %5, label %6, label %13, !dbg !3327

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3328
  br i1 %7, label %8, label %20, !dbg !3329

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !728, metadata !DIExpression()), !dbg !3324
  %10 = icmp ugt i64 %2, 128, !dbg !3332
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !728, metadata !DIExpression()), !dbg !3324
  br label %20, !dbg !3334

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3335
  %15 = add nuw i64 %14, 1, !dbg !3335
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3335
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3335
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !728, metadata !DIExpression()), !dbg !3324
  br i1 %17, label %19, label %20, !dbg !3336

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3337
  unreachable, !dbg !3337

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !728, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %21, metadata !3117, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3338
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %22, metadata !3122, metadata !DIExpression()), !dbg !3341
  %23 = icmp eq ptr %22, null, !dbg !3343
  br i1 %23, label %24, label %25, !dbg !3344

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3345
  unreachable, !dbg !3345

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !725, metadata !DIExpression()), !dbg !3324
  store i64 %21, ptr %1, align 8, !dbg !3346, !tbaa !2366
  ret ptr %22, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !732 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !741, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !742, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !743, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !744, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !745, metadata !DIExpression()), !dbg !3348
  %6 = load i64, ptr %1, align 8, !dbg !3349, !tbaa !2366
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !746, metadata !DIExpression()), !dbg !3348
  %7 = ashr i64 %6, 1, !dbg !3350
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3350
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3350
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !747, metadata !DIExpression()), !dbg !3348
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !747, metadata !DIExpression()), !dbg !3348
  %12 = icmp sgt i64 %3, -1, !dbg !3353
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3355
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !747, metadata !DIExpression()), !dbg !3348
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3356
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3356
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !748, metadata !DIExpression()), !dbg !3348
  %18 = icmp slt i64 %17, 128, !dbg !3356
  %19 = select i1 %18, i64 128, i64 0, !dbg !3356
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !749, metadata !DIExpression()), !dbg !3348
  %21 = icmp eq i64 %20, 0, !dbg !3357
  br i1 %21, label %28, label %22, !dbg !3359

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !747, metadata !DIExpression()), !dbg !3348
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !748, metadata !DIExpression()), !dbg !3348
  br label %28, !dbg !3363

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3348
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !748, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !747, metadata !DIExpression()), !dbg !3348
  %31 = icmp eq ptr %0, null, !dbg !3364
  br i1 %31, label %32, label %33, !dbg !3366

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3367, !tbaa !2366
  br label %33, !dbg !3368

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3369
  %35 = icmp slt i64 %34, %2, !dbg !3371
  br i1 %35, label %36, label %48, !dbg !3372

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3373
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3373
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !747, metadata !DIExpression()), !dbg !3348
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3374
  br i1 %42, label %47, label %43, !dbg !3374

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3375
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3375
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !748, metadata !DIExpression()), !dbg !3348
  br i1 %45, label %47, label %48, !dbg !3376

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !3377
  unreachable, !dbg !3377

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3348
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !748, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !747, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %50, metadata !3195, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %50, metadata !3201, metadata !DIExpression()), !dbg !3380
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3382
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %52, metadata !3122, metadata !DIExpression()), !dbg !3384
  %53 = icmp eq ptr %52, null, !dbg !3386
  br i1 %53, label %54, label %55, !dbg !3387

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !3388
  unreachable, !dbg !3388

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !741, metadata !DIExpression()), !dbg !3348
  store i64 %49, ptr %1, align 8, !dbg !3389, !tbaa !2366
  ret ptr %52, !dbg !3390
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 1, metadata !3398, metadata !DIExpression()), !dbg !3399
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3401
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3402
  %3 = icmp eq ptr %2, null, !dbg !3404
  br i1 %3, label %4, label %5, !dbg !3405

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3406
  unreachable, !dbg !3406

5:                                                ; preds = %1
  ret ptr %2, !dbg !3407
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3408 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3396 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3398, metadata !DIExpression()), !dbg !3409
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3410
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3411
  %4 = icmp eq ptr %3, null, !dbg !3413
  br i1 %4, label %5, label %6, !dbg !3414

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3415
  unreachable, !dbg !3415

6:                                                ; preds = %2
  ret ptr %3, !dbg !3416
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3417 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 1, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 1, metadata !3430, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 1, metadata !3430, metadata !DIExpression()), !dbg !3431
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3433
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3434
  %3 = icmp eq ptr %2, null, !dbg !3436
  br i1 %3, label %4, label %5, !dbg !3437

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3438
  unreachable, !dbg !3438

5:                                                ; preds = %1
  ret ptr %2, !dbg !3439
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3441
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3444
  %4 = icmp eq ptr %3, null, !dbg !3446
  br i1 %4, label %5, label %6, !dbg !3447

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3448
  unreachable, !dbg !3448

6:                                                ; preds = %2
  ret ptr %3, !dbg !3449
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3457
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3460
  %4 = icmp eq ptr %3, null, !dbg !3462
  br i1 %4, label %5, label %6, !dbg !3463

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3464
  unreachable, !dbg !3464

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3465, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3475
  ret ptr %3, !dbg !3476
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3477 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3481, metadata !DIExpression()), !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3486
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3489
  %4 = icmp eq ptr %3, null, !dbg !3491
  br i1 %4, label %5, label %6, !dbg !3492

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3493
  unreachable, !dbg !3493

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3465, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %0, metadata !3471, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3496
  ret ptr %3, !dbg !3497
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3503, metadata !DIExpression()), !dbg !3505
  %3 = add nsw i64 %1, 1, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()), !dbg !3509
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3511
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3512
  %5 = icmp eq ptr %4, null, !dbg !3514
  br i1 %5, label %6, label %7, !dbg !3515

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3516
  unreachable, !dbg !3516

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3505
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3517
  store i8 0, ptr %8, align 1, !dbg !3518, !tbaa !873
  call void @llvm.dbg.value(metadata ptr %4, metadata !3465, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata ptr %0, metadata !3471, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3521
  ret ptr %4, !dbg !3522
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3525, metadata !DIExpression()), !dbg !3526
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3527
  %3 = add i64 %2, 1, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %3, metadata !3455, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3531
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3534
  %5 = icmp eq ptr %4, null, !dbg !3536
  br i1 %5, label %6, label %7, !dbg !3537

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3538
  unreachable, !dbg !3538

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3465, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %0, metadata !3471, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %3, metadata !3472, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3541
  ret ptr %4, !dbg !3542
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3543 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3547, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3545, metadata !DIExpression()), !dbg !3548
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.107, ptr noundef nonnull @.str.2.108, i32 noundef 5) #39, !dbg !3547
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.109, ptr noundef %2) #39, !dbg !3547
  %3 = icmp eq i32 %1, 0, !dbg !3547
  tail call void @llvm.assume(i1 %3), !dbg !3547
  tail call void @abort() #41, !dbg !3549
  unreachable, !dbg !3549
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @xnanosleep(double noundef %0) local_unnamed_addr #10 !dbg !3550 {
  %2 = alloca %struct.timespec, align 8, !DIAssignID !3562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3555, metadata !DIExpression(), metadata !3562, metadata ptr %2, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata double %0, metadata !3554, metadata !DIExpression()), !dbg !3563
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3564
  br i1 %3, label %4, label %.preheader1, !dbg !3566

.preheader1:                                      ; preds = %1
  br label %6, !dbg !3567

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #42, !dbg !3563
  br label %11, !dbg !3566

6:                                                ; preds = %.preheader1, %6
  %7 = tail call i32 @pause() #39, !dbg !3569
  %8 = tail call ptr @__errno_location() #42, !dbg !3570
  %9 = load i32, ptr %8, align 4, !dbg !3570, !tbaa !864
  %10 = icmp eq i32 %9, 4, !dbg !3571
  br i1 %10, label %6, label %.loopexit2, !dbg !3569, !llvm.loop !3572

.loopexit2:                                       ; preds = %6
  %.lcssa = phi ptr [ %8, %6 ], !dbg !3570
  br label %11, !dbg !3574

11:                                               ; preds = %.loopexit2, %4
  %12 = phi ptr [ %5, %4 ], [ %.lcssa, %.loopexit2 ], !dbg !3563
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #39, !dbg !3574
  %13 = tail call [2 x i64] @dtotimespec(double noundef %0) #42, !dbg !3575
  %14 = extractvalue [2 x i64] %13, 0, !dbg !3575
  store i64 %14, ptr %2, align 8, !dbg !3575, !DIAssignID !3576
  %15 = extractvalue [2 x i64] %13, 1, !dbg !3575
  %16 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1, !dbg !3575
  store i64 %15, ptr %16, align 8, !dbg !3575, !DIAssignID !3577
  call void @llvm.dbg.assign(metadata i64 %14, metadata !3555, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3576, metadata ptr %2, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.assign(metadata i64 %15, metadata !3555, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3577, metadata ptr %16, metadata !DIExpression()), !dbg !3563
  store i32 0, ptr %12, align 4, !dbg !3578, !tbaa !864
  %17 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #39, !dbg !3582
  %18 = icmp eq i32 %17, 0, !dbg !3584
  br i1 %18, label %24, label %.preheader, !dbg !3585

.preheader:                                       ; preds = %11
  br label %19, !dbg !3586

19:                                               ; preds = %.preheader, %21
  %20 = load i32, ptr %12, align 4, !dbg !3587, !tbaa !864
  switch i32 %20, label %.loopexit [
    i32 4, label %21
    i32 0, label %21
  ], !dbg !3589

21:                                               ; preds = %19, %19
  store i32 0, ptr %12, align 4, !dbg !3578, !tbaa !864
  %22 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #39, !dbg !3582
  %23 = icmp eq i32 %22, 0, !dbg !3584
  br i1 %23, label %.loopexit, label %19, !dbg !3585, !llvm.loop !3590

.loopexit:                                        ; preds = %21, %19
  %.ph = phi i32 [ -1, %19 ], [ 0, %21 ]
  br label %24, !dbg !3592

24:                                               ; preds = %.loopexit, %11
  %25 = phi i32 [ 0, %11 ], [ %.ph, %.loopexit ], !dbg !3563
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #39, !dbg !3592
  ret i32 %25, !dbg !3592
}

declare !dbg !3593 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3601, metadata !DIExpression()), !dbg !3604
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3605, !tbaa !808
  %4 = icmp eq ptr %3, null, !dbg !3605
  br i1 %4, label %5, label %7, !dbg !3611

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.114, ptr noundef null) #39, !dbg !3612
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !3613, !tbaa !808
  br label %7, !dbg !3614

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3615, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3603, metadata !DIExpression()), !dbg !3604
  %9 = icmp eq ptr %8, null, !dbg !3616
  br i1 %9, label %10, label %13, !dbg !3618

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !3619
  br i1 %11, label %15, label %12, !dbg !3622

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !3623, !tbaa !808
  br label %15, !dbg !3624

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #39, !dbg !3625
  tail call void @llvm.dbg.value(metadata double %14, metadata !3602, metadata !DIExpression()), !dbg !3604
  br label %15, !dbg !3626

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3604
  ret double %16, !dbg !3627
}

; Function Attrs: nounwind
declare !dbg !3628 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3631 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3677
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3673, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3682
  %3 = load i32, ptr %0, align 8, !dbg !3684, !tbaa !3685
  %4 = and i32 %3, 32, !dbg !3686
  %5 = icmp eq i32 %4, 0, !dbg !3686
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3677
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3687
  %7 = icmp eq i32 %6, 0, !dbg !3688
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3676, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3677
  br i1 %5, label %8, label %18, !dbg !3689

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3691
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3677
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3692
  %11 = xor i1 %7, true, !dbg !3692
  %12 = sext i1 %11 to i32, !dbg !3692
  br i1 %10, label %21, label %13, !dbg !3692

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3693
  %15 = load i32, ptr %14, align 4, !dbg !3693, !tbaa !864
  %16 = icmp ne i32 %15, 9, !dbg !3694
  %17 = sext i1 %16 to i32, !dbg !3695
  br label %21, !dbg !3695

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3696

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3698
  store i32 0, ptr %20, align 4, !dbg !3700, !tbaa !864
  br label %21, !dbg !3698

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3677
  ret i32 %22, !dbg !3701
}

; Function Attrs: nounwind
declare !dbg !3702 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #36 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !3714, metadata !DIExpression()), !dbg !3721
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3722
  br i1 %2, label %3, label %27, !dbg !3723

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3724
  br i1 %4, label %5, label %27, !dbg !3725

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3726
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3715, metadata !DIExpression()), !dbg !3727
  %7 = sitofp i64 %6 to double, !dbg !3728
  %8 = fsub double %0, %7, !dbg !3729
  %9 = fmul double %8, 1.000000e+09, !dbg !3730
  tail call void @llvm.dbg.value(metadata double %9, metadata !3719, metadata !DIExpression()), !dbg !3727
  %10 = fptosi double %9 to i64, !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3720, metadata !DIExpression()), !dbg !3727
  %11 = sitofp i64 %10 to double, !dbg !3732
  %12 = fcmp ogt double %9, %11, !dbg !3733
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3720, metadata !DIExpression()), !dbg !3727
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !3735
  %17 = add nsw i64 %16, %6, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3715, metadata !DIExpression()), !dbg !3727
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3720, metadata !DIExpression()), !dbg !3727
  %20 = icmp slt i64 %19, 0, !dbg !3737
  %21 = add nsw i64 %19, 1000000000, !dbg !3739
  %22 = ashr i64 %19, 63, !dbg !3739
  %23 = add nsw i64 %17, %22, !dbg !3739
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3720, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !3715, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !3740, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3745, metadata !DIExpression()), !dbg !3746
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !3748
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !3748
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !3749
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3750 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3788, metadata !DIExpression()), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3789, metadata !DIExpression()), !dbg !3792
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3790, metadata !DIExpression()), !dbg !3792
  %3 = icmp slt i32 %2, 0, !dbg !3794
  br i1 %3, label %4, label %6, !dbg !3796

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3797
  br label %24, !dbg !3798

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3799
  %8 = icmp eq i32 %7, 0, !dbg !3799
  br i1 %8, label %13, label %9, !dbg !3801

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3802
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3803
  %12 = icmp eq i64 %11, -1, !dbg !3804
  br i1 %12, label %16, label %13, !dbg !3805

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3806
  %15 = icmp eq i32 %14, 0, !dbg !3806
  br i1 %15, label %16, label %18, !dbg !3807

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3789, metadata !DIExpression()), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3791, metadata !DIExpression()), !dbg !3792
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3791, metadata !DIExpression()), !dbg !3792
  br label %24, !dbg !3809

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3810
  %20 = load i32, ptr %19, align 4, !dbg !3810, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3789, metadata !DIExpression()), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3791, metadata !DIExpression()), !dbg !3792
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3791, metadata !DIExpression()), !dbg !3792
  %22 = icmp eq i32 %20, 0, !dbg !3811
  br i1 %22, label %24, label %23, !dbg !3809

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3813, !tbaa !864
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3791, metadata !DIExpression()), !dbg !3792
  br label %24, !dbg !3815

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3792
  ret i32 %25, !dbg !3816
}

; Function Attrs: nofree nounwind
declare !dbg !3817 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3818 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3819 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3820 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3862
  %2 = icmp eq ptr %0, null, !dbg !3863
  br i1 %2, label %6, label %3, !dbg !3865

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3866
  %5 = icmp eq i32 %4, 0, !dbg !3866
  br i1 %5, label %6, label %8, !dbg !3867

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3868
  br label %16, !dbg !3869

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3870, metadata !DIExpression()), !dbg !3875
  %9 = load i32, ptr %0, align 8, !dbg !3877, !tbaa !3685
  %10 = and i32 %9, 256, !dbg !3879
  %11 = icmp eq i32 %10, 0, !dbg !3879
  br i1 %11, label %14, label %12, !dbg !3880

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3881
  br label %14, !dbg !3881

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3882
  br label %16, !dbg !3883

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3862
  ret i32 %17, !dbg !3884
}

; Function Attrs: nofree nounwind
declare !dbg !3885 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3886 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3925, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3926, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3927, metadata !DIExpression()), !dbg !3931
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3932
  %5 = load ptr, ptr %4, align 8, !dbg !3932, !tbaa !3933
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3934
  %7 = load ptr, ptr %6, align 8, !dbg !3934, !tbaa !3935
  %8 = icmp eq ptr %5, %7, !dbg !3936
  br i1 %8, label %9, label %27, !dbg !3937

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3938
  %11 = load ptr, ptr %10, align 8, !dbg !3938, !tbaa !1355
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3939
  %13 = load ptr, ptr %12, align 8, !dbg !3939, !tbaa !3940
  %14 = icmp eq ptr %11, %13, !dbg !3941
  br i1 %14, label %15, label %27, !dbg !3942

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3943
  %17 = load ptr, ptr %16, align 8, !dbg !3943, !tbaa !3944
  %18 = icmp eq ptr %17, null, !dbg !3945
  br i1 %18, label %19, label %27, !dbg !3946

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3947
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3948
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3928, metadata !DIExpression()), !dbg !3949
  %22 = icmp eq i64 %21, -1, !dbg !3950
  br i1 %22, label %29, label %23, !dbg !3952

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3953, !tbaa !3685
  %25 = and i32 %24, -17, !dbg !3953
  store i32 %25, ptr %0, align 8, !dbg !3953, !tbaa !3685
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3954
  store i64 %21, ptr %26, align 8, !dbg !3955, !tbaa !3956
  br label %29, !dbg !3957

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3958
  br label %29, !dbg !3959

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3931
  ret i32 %30, !dbg !3960
}

; Function Attrs: nofree nounwind
declare !dbg !3961 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3969, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3970, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3971, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3972, metadata !DIExpression()), !dbg !3974
  %5 = icmp eq ptr %1, null, !dbg !3975
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3977
  %7 = select i1 %5, ptr @.str.127, ptr %1, !dbg !3977
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3971, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3970, metadata !DIExpression()), !dbg !3974
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3969, metadata !DIExpression()), !dbg !3974
  %9 = icmp eq ptr %3, null, !dbg !3978
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3980
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3972, metadata !DIExpression()), !dbg !3974
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3973, metadata !DIExpression()), !dbg !3974
  %12 = icmp ult i64 %11, -3, !dbg !3982
  br i1 %12, label %13, label %17, !dbg !3984

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !3985
  %15 = icmp eq i32 %14, 0, !dbg !3985
  br i1 %15, label %16, label %29, !dbg !3986

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3987, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr %10, metadata !3994, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 8, metadata !3998, metadata !DIExpression()), !dbg !3999
  store i64 0, ptr %10, align 1, !dbg !4001
  br label %29, !dbg !4002

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4003
  br i1 %18, label %19, label %20, !dbg !4005

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4006
  unreachable, !dbg !4006

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4007

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4009
  br i1 %23, label %29, label %24, !dbg !4010

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4011
  br i1 %25, label %29, label %26, !dbg !4014

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4015, !tbaa !873
  %28 = zext i8 %27 to i32, !dbg !4016
  store i32 %28, ptr %6, align 4, !dbg !4017, !tbaa !864
  br label %29, !dbg !4018

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3974
  ret i64 %30, !dbg !4019
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4020 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_nanosleep(ptr nocapture noundef nonnull readonly %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4026 {
  %3 = alloca %struct.timespec, align 8, !DIAssignID !4046
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4043, metadata !DIExpression(), metadata !4046, metadata ptr %3, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4038, metadata !DIExpression()), !dbg !4048
  %4 = getelementptr inbounds %struct.timespec, ptr %0, i64 0, i32 1, !dbg !4049
  %5 = load i64, ptr %4, align 8, !dbg !4049, !tbaa !4051
  %6 = icmp ugt i64 %5, 999999999, !dbg !4053
  br i1 %6, label %7, label %9, !dbg !4053

7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #42, !dbg !4054
  store i32 22, ptr %8, align 4, !dbg !4056, !tbaa !864
  br label %31, !dbg !4057

9:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 2073600, metadata !4039, metadata !DIExpression()), !dbg !4047
  %10 = load i64, ptr %0, align 8, !dbg !4058, !tbaa !4059
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #39, !dbg !4060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !4061, !tbaa.struct !4062, !DIAssignID !4063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4043, metadata !DIExpression(), metadata !4063, metadata ptr %3, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4042, metadata !DIExpression()), !dbg !4047
  %11 = icmp sgt i64 %10, 2073600, !dbg !4064
  br i1 %11, label %12, label %26, !dbg !4065

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %14, !dbg !4065

14:                                               ; preds = %12, %24
  %15 = phi i64 [ %10, %12 ], [ %17, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !4042, metadata !DIExpression()), !dbg !4047
  store i64 2073600, ptr %3, align 8, !dbg !4066, !tbaa !4059, !DIAssignID !4067
  call void @llvm.dbg.assign(metadata i64 2073600, metadata !4043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4067, metadata ptr %3, metadata !DIExpression()), !dbg !4047
  %16 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #39, !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !4044, metadata !DIExpression()), !dbg !4069
  %17 = add nsw i64 %15, -2073600, !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !4042, metadata !DIExpression()), !dbg !4047
  %18 = icmp eq i32 %16, 0, !dbg !4071
  br i1 %18, label %24, label %19, !dbg !4073

19:                                               ; preds = %14
  %.lcssa2 = phi i32 [ %16, %14 ], !dbg !4068
  %.lcssa = phi i64 [ %17, %14 ], !dbg !4070
  %20 = icmp eq ptr %1, null, !dbg !4074
  br i1 %20, label %29, label %21, !dbg !4077

21:                                               ; preds = %19
  %22 = load i64, ptr %1, align 8, !dbg !4078, !tbaa !4059
  %23 = add nsw i64 %22, %.lcssa, !dbg !4078
  store i64 %23, ptr %1, align 8, !dbg !4078, !tbaa !4059
  br label %29, !dbg !4079

24:                                               ; preds = %14
  store i64 0, ptr %13, align 8, !dbg !4080, !tbaa !4051, !DIAssignID !4081
  call void @llvm.dbg.assign(metadata i64 0, metadata !4043, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4081, metadata ptr %13, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !4042, metadata !DIExpression()), !dbg !4047
  %25 = icmp ugt i64 %15, 4147200, !dbg !4064
  br i1 %25, label %14, label %.loopexit, !dbg !4065, !llvm.loop !4082

.loopexit:                                        ; preds = %24
  %.lcssa1 = phi i64 [ %17, %24 ], !dbg !4070
  br label %26, !dbg !4084

26:                                               ; preds = %.loopexit, %9
  %27 = phi i64 [ %10, %9 ], [ %.lcssa1, %.loopexit ], !dbg !4047
  store i64 %27, ptr %3, align 8, !dbg !4084, !tbaa !4059, !DIAssignID !4085
  call void @llvm.dbg.assign(metadata i64 %27, metadata !4043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4085, metadata ptr %3, metadata !DIExpression()), !dbg !4047
  %28 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #39, !dbg !4086
  br label %29, !dbg !4087

29:                                               ; preds = %21, %19, %26
  %30 = phi i32 [ %28, %26 ], [ %.lcssa2, %19 ], [ %.lcssa2, %21 ], !dbg !4047
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #39, !dbg !4088
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i32 [ -1, %7 ], [ %30, %29 ], !dbg !4048
  ret i32 %32, !dbg !4089
}

declare !dbg !4090 i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4096, metadata !DIExpression()), !dbg !4098
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4099
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4097, metadata !DIExpression()), !dbg !4098
  br i1 %5, label %6, label %8, !dbg !4101

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4102
  store i32 12, ptr %7, align 4, !dbg !4104, !tbaa !864
  br label %12, !dbg !4105

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4106, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %9, metadata !4109, metadata !DIExpression()), !dbg !4110
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4112
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4113
  br label %12, !dbg !4114

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4098
  ret ptr %13, !dbg !4115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4116 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4121, metadata !DIExpression(), metadata !4125, metadata ptr %2, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4120, metadata !DIExpression()), !dbg !4126
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4127
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4128
  %4 = icmp eq i32 %3, 0, !dbg !4128
  br i1 %4, label %5, label %12, !dbg !4130

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr @.str.134, metadata !4134, metadata !DIExpression()), !dbg !4135
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.134, i64 2), !dbg !4138
  %7 = icmp eq i32 %6, 0, !dbg !4139
  br i1 %7, label %11, label %8, !dbg !4140

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !4134, metadata !DIExpression()), !dbg !4141
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !4143
  %10 = icmp eq i32 %9, 0, !dbg !4144
  br i1 %10, label %11, label %12, !dbg !4145

11:                                               ; preds = %8, %5
  br label %12, !dbg !4146

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4126
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4147
  ret i1 %13, !dbg !4147
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4148 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4152, metadata !DIExpression()), !dbg !4155
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4153, metadata !DIExpression()), !dbg !4155
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4154, metadata !DIExpression()), !dbg !4155
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4156
  ret i32 %4, !dbg !4157
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4158 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4163
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4164
  ret ptr %2, !dbg !4165
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4166 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()), !dbg !4170
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4171
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4170
  ret ptr %2, !dbg !4172
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4173 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4175, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4176, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4177, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()), !dbg !4183
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4183
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4178, metadata !DIExpression()), !dbg !4182
  %5 = icmp eq ptr %4, null, !dbg !4186
  br i1 %5, label %6, label %9, !dbg !4187

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4188
  br i1 %7, label %19, label %8, !dbg !4191

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4192, !tbaa !873
  br label %19, !dbg !4193

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4179, metadata !DIExpression()), !dbg !4195
  %11 = icmp ult i64 %10, %2, !dbg !4196
  br i1 %11, label %12, label %14, !dbg !4198

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4199
  call void @llvm.dbg.value(metadata ptr %1, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %4, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %13, metadata !4205, metadata !DIExpression()), !dbg !4206
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4208
  br label %19, !dbg !4209

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4210
  br i1 %15, label %19, label %16, !dbg !4213

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4214
  call void @llvm.dbg.value(metadata ptr %1, metadata !4201, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata ptr %4, metadata !4204, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %17, metadata !4205, metadata !DIExpression()), !dbg !4216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4218
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4219
  store i8 0, ptr %18, align 1, !dbg !4220, !tbaa !873
  br label %19, !dbg !4221

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4222
  ret i32 %20, !dbg !4223
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
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!80, !300, !706, !304, !319, !643, !708, !378, !399, !413, !461, !710, !635, !716, !751, !753, !656, !759, !761, !768, !770, !772, !688, !774, !780, !782, !784, !786}
!llvm.ident = !{!788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788}
!llvm.module.flags = !{!789, !790, !791, !792, !793, !794, !795, !796}

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
!318 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !319, file: !320, line: 66, type: !370, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!321 = !{!99, !105}
!322 = !{!323, !325, !349, !351, !353, !355, !317, !357, !359, !361, !363, !368}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !320, line: 272, type: !109, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "old_file_name", scope: !327, file: !320, line: 304, type: !78, isLocal: true, isDefinition: true)
!327 = distinct !DISubprogram(name: "verror_at_line", scope: !320, file: !320, line: 298, type: !328, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !342)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !100, !100, !78, !84, !78, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !332)
!331 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 12, baseType: !334)
!333 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !320, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !336)
!336 = !{!337, !338, !339, !340, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !335, file: !320, baseType: !99, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !335, file: !320, baseType: !99, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !335, file: !320, baseType: !99, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !335, file: !320, baseType: !100, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !335, file: !320, baseType: !100, size: 32, offset: 224)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DILocalVariable(name: "status", arg: 1, scope: !327, file: !320, line: 298, type: !100)
!344 = !DILocalVariable(name: "errnum", arg: 2, scope: !327, file: !320, line: 298, type: !100)
!345 = !DILocalVariable(name: "file_name", arg: 3, scope: !327, file: !320, line: 298, type: !78)
!346 = !DILocalVariable(name: "line_number", arg: 4, scope: !327, file: !320, line: 298, type: !84)
!347 = !DILocalVariable(name: "message", arg: 5, scope: !327, file: !320, line: 298, type: !78)
!348 = !DILocalVariable(name: "args", arg: 6, scope: !327, file: !320, line: 298, type: !330)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "old_line_number", scope: !327, file: !320, line: 305, type: !84, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !320, line: 338, type: !116, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !148, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !123, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "error_message_count", scope: !319, file: !320, line: 69, type: !84, isLocal: false, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !319, file: !320, line: 295, type: !100, isLocal: false, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !143, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 21)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !320, line: 214, type: !109, isLocal: true, isDefinition: true)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !375, line: 60, type: !123, isLocal: true, isDefinition: true)
!375 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "long_options", scope: !378, file: !375, line: 34, type: !387, isLocal: true, isDefinition: true)
!378 = distinct !DICompileUnit(language: DW_LANG_C11, file: !375, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, globals: !380, splitDebugInlining: false, nameTableKind: None)
!379 = !{!99}
!380 = !{!373, !381, !383, !385, !376}
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !375, line: 112, type: !29, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !375, line: 36, type: !109, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !375, line: 37, type: !148, isLocal: true, isDefinition: true)
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
!399 = distinct !DICompileUnit(language: DW_LANG_C11, file: !400, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !401, globals: !402, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!401 = !{!99, !244}
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
!413 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !414, splitDebugInlining: false, nameTableKind: None)
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
!461 = distinct !DICompileUnit(language: DW_LANG_C11, file: !440, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !462, retainedTypes: !482, globals: !483, splitDebugInlining: false, nameTableKind: None)
!462 = !{!463, !477, !82}
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !464, line: 42, baseType: !84, size: 32, elements: !465)
!464 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!482 = !{!99, !100, !101, !102}
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
!635 = distinct !DICompileUnit(language: DW_LANG_C11, file: !636, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !637, splitDebugInlining: false, nameTableKind: None)
!636 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!637 = !{!633}
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 47)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "exit_failure", scope: !643, file: !644, line: 24, type: !646, isLocal: false, isDefinition: true)
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !645, splitDebugInlining: false, nameTableKind: None)
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
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-c-strtod.Tpo -c lib/c-strtod.c -o lib/.libcoreutils_a-c-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !658, globals: !679, splitDebugInlining: false, nameTableKind: None)
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
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !685, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !689, globals: !690, splitDebugInlining: false, nameTableKind: None)
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
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-cl-strtod.o -MD -MP -MF lib/.deps/libcoreutils_a-cl-strtod.Tpo -c lib/cl-strtod.c -o lib/.libcoreutils_a-cl-strtod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !553, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !711, retainedTypes: !379, globals: !715, splitDebugInlining: false, nameTableKind: None)
!711 = !{!712}
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 40, baseType: !84, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!715 = !{!551, !554, !556, !558, !560, !562, !567, !572, !574, !579, !584, !589, !594, !596, !601, !606, !611, !616, !618, !620, !622, !624, !626, !628}
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !718, retainedTypes: !750, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!718 = !{!719, !731}
!719 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !720, file: !717, line: 188, baseType: !84, size: 32, elements: !729)
!720 = distinct !DISubprogram(name: "x2nrealloc", scope: !717, file: !717, line: 176, type: !721, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !724)
!721 = !DISubroutineType(types: !722)
!722 = !{!99, !99, !723, !102}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!724 = !{!725, !726, !727, !728}
!725 = !DILocalVariable(name: "p", arg: 1, scope: !720, file: !717, line: 176, type: !99)
!726 = !DILocalVariable(name: "pn", arg: 2, scope: !720, file: !717, line: 176, type: !723)
!727 = !DILocalVariable(name: "s", arg: 3, scope: !720, file: !717, line: 176, type: !102)
!728 = !DILocalVariable(name: "n", scope: !720, file: !717, line: 178, type: !102)
!729 = !{!730}
!730 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !732, file: !717, line: 228, baseType: !84, size: 32, elements: !729)
!732 = distinct !DISubprogram(name: "xpalloc", scope: !717, file: !717, line: 223, type: !733, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !740)
!733 = !DISubroutineType(types: !734)
!734 = !{!99, !99, !735, !736, !738, !736}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !737, line: 130, baseType: !738)
!737 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !739, line: 18, baseType: !265)
!739 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749}
!741 = !DILocalVariable(name: "pa", arg: 1, scope: !732, file: !717, line: 223, type: !99)
!742 = !DILocalVariable(name: "pn", arg: 2, scope: !732, file: !717, line: 223, type: !735)
!743 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !732, file: !717, line: 223, type: !736)
!744 = !DILocalVariable(name: "n_max", arg: 4, scope: !732, file: !717, line: 223, type: !738)
!745 = !DILocalVariable(name: "s", arg: 5, scope: !732, file: !717, line: 223, type: !736)
!746 = !DILocalVariable(name: "n0", scope: !732, file: !717, line: 230, type: !736)
!747 = !DILocalVariable(name: "n", scope: !732, file: !717, line: 237, type: !736)
!748 = !DILocalVariable(name: "nbytes", scope: !732, file: !717, line: 248, type: !736)
!749 = !DILocalVariable(name: "adjusted_nbytes", scope: !732, file: !717, line: 252, type: !736)
!750 = !{!244, !99}
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !752, splitDebugInlining: false, nameTableKind: None)
!752 = !{!647, !650, !652}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xnanosleep.o -MD -MP -MF lib/.deps/libcoreutils_a-xnanosleep.Tpo -c lib/xnanosleep.c -o lib/.libcoreutils_a-xnanosleep.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !757, line: 10, baseType: !758)
!757 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !264, line: 160, baseType: !265)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dtotimespec.o -MD -MP -MF lib/.deps/libcoreutils_a-dtotimespec.Tpo -c lib/dtotimespec.c -o lib/.libcoreutils_a-dtotimespec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!763 = !{!764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !765, line: 44, baseType: !84, size: 32, elements: !766)
!765 = !DIFile(filename: "lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!766 = !{!767}
!767 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-nanosleep.o -MD -MP -MF lib/.deps/libcoreutils_a-nanosleep.Tpo -c lib/nanosleep.c -o lib/.libcoreutils_a-nanosleep.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !775, line: 37, baseType: !84, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIEnumerator(name: "BILLION", value: 1000000000)
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !783, splitDebugInlining: false, nameTableKind: None)
!783 = !{!701, !704}
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!788 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!789 = !{i32 7, !"Dwarf Version", i32 5}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 4}
!792 = !{i32 8, !"PIC Level", i32 2}
!793 = !{i32 7, !"PIE Level", i32 2}
!794 = !{i32 7, !"uwtable", i32 2}
!795 = !{i32 7, !"frame-pointer", i32 1}
!796 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!835 = !{}
!836 = !DILocation(line: 857, column: 3, scope: !817, inlinedAt: !834)
!837 = !DILocation(line: 861, column: 29, scope: !817, inlinedAt: !834)
!838 = !DILocation(line: 862, column: 7, scope: !839, inlinedAt: !834)
!839 = distinct !DILexicalBlock(scope: !817, file: !75, line: 862, column: 7)
!840 = !DILocation(line: 862, column: 19, scope: !839, inlinedAt: !834)
!841 = !DILocation(line: 862, column: 22, scope: !839, inlinedAt: !834)
!842 = !DILocation(line: 862, column: 7, scope: !817, inlinedAt: !834)
!843 = !DILocation(line: 868, column: 7, scope: !844, inlinedAt: !834)
!844 = distinct !DILexicalBlock(scope: !839, file: !75, line: 863, column: 5)
!845 = !DILocation(line: 870, column: 5, scope: !844, inlinedAt: !834)
!846 = !DILocation(line: 875, column: 3, scope: !817, inlinedAt: !834)
!847 = !DILocation(line: 877, column: 3, scope: !817, inlinedAt: !834)
!848 = !DILocation(line: 55, column: 3, scope: !797)
!849 = !DISubprogram(name: "dcgettext", scope: !850, file: !850, line: 51, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!851 = !DISubroutineType(types: !852)
!852 = !{!244, !78, !78, !100}
!853 = !DISubprogram(name: "__fprintf_chk", scope: !854, file: !854, line: 93, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!855 = !DISubroutineType(types: !856)
!856 = !{!100, !857, !100, !858, null}
!857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!859 = !DISubprogram(name: "__printf_chk", scope: !854, file: !854, line: 95, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!976 = !DISubprogram(name: "setlocale", scope: !977, file: !977, line: 122, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!978 = !DISubroutineType(types: !979)
!979 = !{!244, !100, !78}
!980 = !DISubprogram(name: "strncmp", scope: !981, file: !981, line: 159, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!982 = !DISubroutineType(types: !983)
!983 = !{!100, !78, !78, !102}
!984 = !DISubprogram(name: "fputs_unlocked", scope: !331, file: !331, line: 691, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubroutineType(types: !986)
!986 = !{!100, !858, !857}
!987 = !DISubprogram(name: "exit", scope: !988, file: !988, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!988 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!989 = !DISubprogram(name: "getenv", scope: !988, file: !988, line: 641, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!244, !78}
!992 = !DISubprogram(name: "strcmp", scope: !981, file: !981, line: 156, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!100, !78, !78}
!995 = !DISubprogram(name: "strspn", scope: !981, file: !981, line: 297, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!104, !78, !78}
!998 = !DISubprogram(name: "strchr", scope: !981, file: !981, line: 246, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!244, !78, !100}
!1001 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1005 = !DISubprogram(name: "strcspn", scope: !981, file: !981, line: 293, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubprogram(name: "fwrite_unlocked", scope: !331, file: !331, line: 704, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1029 = distinct !DIAssignID()
!1030 = !DILocation(line: 0, scope: !1025)
!1031 = !DILocation(line: 0, scope: !1012)
!1032 = !DILocation(line: 100, column: 21, scope: !1012)
!1033 = !DILocation(line: 100, column: 3, scope: !1012)
!1034 = !DILocation(line: 101, column: 3, scope: !1012)
!1035 = !DILocation(line: 102, column: 3, scope: !1012)
!1036 = !DILocation(line: 103, column: 3, scope: !1012)
!1037 = !DILocation(line: 105, column: 3, scope: !1012)
!1038 = !DILocation(line: 108, column: 36, scope: !1012)
!1039 = !DILocation(line: 108, column: 58, scope: !1012)
!1040 = !DILocation(line: 107, column: 3, scope: !1012)
!1041 = !DILocation(line: 111, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 111, column: 7)
!1043 = !DILocation(line: 111, column: 7, scope: !1012)
!1044 = !DILocation(line: 113, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 112, column: 5)
!1046 = !DILocation(line: 114, column: 7, scope: !1045)
!1047 = !DILocation(line: 117, column: 16, scope: !1023)
!1048 = !DILocation(line: 0, scope: !1023)
!1049 = !DILocation(line: 117, column: 26, scope: !1026)
!1050 = !DILocation(line: 117, column: 3, scope: !1023)
!1051 = !DILocation(line: 60, column: 21, scope: !1052, inlinedAt: !1061)
!1052 = distinct !DILexicalBlock(scope: !1054, file: !1053, line: 60, column: 7)
!1053 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1054 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1053, file: !1053, line: 54, type: !1055, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!1020, !1020, !100}
!1057 = !{!1058, !1059, !1060}
!1058 = !DILocalVariable(name: "c", arg: 1, scope: !1054, file: !1053, line: 54, type: !1020)
!1059 = !DILocalVariable(name: "err", arg: 2, scope: !1054, file: !1053, line: 54, type: !100)
!1060 = !DILocalVariable(name: "phi", scope: !1054, file: !1053, line: 70, type: !1020)
!1061 = distinct !DILocation(line: 135, column: 17, scope: !1025)
!1062 = !DILocation(line: 138, column: 7, scope: !1012)
!1063 = !DILocation(line: 119, column: 7, scope: !1025)
!1064 = !DILocation(line: 120, column: 13, scope: !1025)
!1065 = !DILocation(line: 121, column: 36, scope: !1025)
!1066 = !DILocation(line: 121, column: 25, scope: !1025)
!1067 = !DILocation(line: 122, column: 45, scope: !1025)
!1068 = !DILocation(line: 0, scope: !1054, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 122, column: 18, scope: !1025)
!1070 = !DILocation(line: 60, column: 11, scope: !1052, inlinedAt: !1069)
!1071 = !DILocation(line: 60, column: 21, scope: !1052, inlinedAt: !1069)
!1072 = !DILocation(line: 123, column: 11, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 123, column: 11)
!1074 = !DILocation(line: 123, column: 22, scope: !1073)
!1075 = !DILocation(line: 123, column: 19, scope: !1073)
!1076 = !DILocation(line: 125, column: 11, scope: !1073)
!1077 = !DILocation(line: 127, column: 15, scope: !1073)
!1078 = !DILocation(line: 127, column: 18, scope: !1073)
!1079 = !DILocation(line: 127, column: 25, scope: !1073)
!1080 = !DILocation(line: 127, column: 21, scope: !1073)
!1081 = !DILocation(line: 129, column: 11, scope: !1073)
!1082 = !DILocalVariable(name: "x", arg: 1, scope: !1083, file: !2, line: 65, type: !1086)
!1083 = distinct !DISubprogram(name: "apply_suffix", scope: !2, file: !2, line: 65, type: !1084, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1087)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!223, !1086, !4}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1087 = !{!1082, !1088, !1089}
!1088 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1083, file: !2, line: 65, type: !4)
!1089 = !DILocalVariable(name: "multiplier", scope: !1083, file: !2, line: 67, type: !100)
!1090 = !DILocation(line: 0, scope: !1083, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 129, column: 16, scope: !1073)
!1092 = !DILocation(line: 69, column: 3, scope: !1083, inlinedAt: !1091)
!1093 = !DILocation(line: 77, column: 7, scope: !1094, inlinedAt: !1091)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 70, column: 5)
!1095 = !DILocation(line: 80, column: 7, scope: !1094, inlinedAt: !1091)
!1096 = !DILocation(line: 83, column: 7, scope: !1094, inlinedAt: !1091)
!1097 = !DILocation(line: 0, scope: !1094, inlinedAt: !1091)
!1098 = !DILocation(line: 88, column: 28, scope: !1083, inlinedAt: !1091)
!1099 = !DILocation(line: 0, scope: !1054, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 88, column: 8, scope: !1083, inlinedAt: !1091)
!1101 = !DILocation(line: 60, column: 21, scope: !1052, inlinedAt: !1100)
!1102 = !DILocation(line: 123, column: 11, scope: !1025)
!1103 = !DILocation(line: 131, column: 11, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 130, column: 9)
!1105 = !DILocation(line: 133, column: 9, scope: !1104)
!1106 = !DILocation(line: 122, column: 14, scope: !1025)
!1107 = !DILocation(line: 135, column: 42, scope: !1025)
!1108 = !DILocation(line: 0, scope: !1054, inlinedAt: !1061)
!1109 = !DILocation(line: 136, column: 5, scope: !1026)
!1110 = !DILocation(line: 117, column: 35, scope: !1026)
!1111 = distinct !{!1111, !1050, !1112, !911}
!1112 = !DILocation(line: 136, column: 5, scope: !1023)
!1113 = !DILocation(line: 139, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 138, column: 7)
!1115 = !DILocation(line: 141, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 141, column: 7)
!1117 = !DILocation(line: 141, column: 7, scope: !1012)
!1118 = !DILocation(line: 142, column: 5, scope: !1116)
!1119 = !DILocation(line: 144, column: 3, scope: !1012)
!1120 = !DISubprogram(name: "bindtextdomain", scope: !850, file: !850, line: 86, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!244, !78, !78}
!1123 = !DISubprogram(name: "textdomain", scope: !850, file: !850, line: 82, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubprogram(name: "atexit", scope: !988, file: !988, line: 602, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!100, !370}
!1127 = !DISubprogram(name: "__errno_location", scope: !1128, file: !1128, line: 37, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!395}
!1131 = distinct !DISubprogram(name: "cl_strtod", scope: !707, file: !707, line: 59, type: !1132, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1135)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1020, !78, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1015)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1143, !1144}
!1136 = !DILocalVariable(name: "nptr", arg: 1, scope: !1131, file: !707, line: 59, type: !78)
!1137 = !DILocalVariable(name: "endptr", arg: 2, scope: !1131, file: !707, line: 59, type: !1134)
!1138 = !DILocalVariable(name: "end", scope: !1131, file: !707, line: 61, type: !244)
!1139 = !DILocalVariable(name: "d", scope: !1131, file: !707, line: 62, type: !1020)
!1140 = !DILocalVariable(name: "strtod_errno", scope: !1141, file: !707, line: 65, type: !100)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !707, line: 64, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1131, file: !707, line: 63, column: 7)
!1143 = !DILocalVariable(name: "c_end", scope: !1141, file: !707, line: 66, type: !244)
!1144 = !DILocalVariable(name: "c", scope: !1141, file: !707, line: 67, type: !1020)
!1145 = distinct !DIAssignID()
!1146 = !DILocation(line: 0, scope: !1131)
!1147 = distinct !DIAssignID()
!1148 = !DILocation(line: 0, scope: !1141)
!1149 = !DILocation(line: 61, column: 3, scope: !1131)
!1150 = !DILocation(line: 62, column: 14, scope: !1131)
!1151 = !DILocation(line: 63, column: 8, scope: !1142)
!1152 = !DILocation(line: 63, column: 7, scope: !1142)
!1153 = !DILocation(line: 63, column: 7, scope: !1131)
!1154 = !DILocation(line: 65, column: 26, scope: !1141)
!1155 = !DILocation(line: 66, column: 7, scope: !1141)
!1156 = !DILocation(line: 67, column: 18, scope: !1141)
!1157 = !DILocation(line: 68, column: 17, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1141, file: !707, line: 68, column: 11)
!1159 = !DILocation(line: 68, column: 15, scope: !1158)
!1160 = !DILocation(line: 68, column: 11, scope: !1141)
!1161 = !DILocation(line: 71, column: 15, scope: !1158)
!1162 = !DILocation(line: 72, column: 5, scope: !1142)
!1163 = !DILocation(line: 72, column: 5, scope: !1141)
!1164 = !DILocation(line: 73, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1131, file: !707, line: 73, column: 7)
!1166 = !DILocation(line: 73, column: 7, scope: !1131)
!1167 = !DILocation(line: 74, column: 13, scope: !1165)
!1168 = !DILocation(line: 74, column: 5, scope: !1165)
!1169 = !DILocation(line: 76, column: 1, scope: !1131)
!1170 = !DILocation(line: 75, column: 3, scope: !1131)
!1171 = !DISubprogram(name: "strtod", scope: !988, file: !988, line: 118, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1020, !858, !1134}
!1174 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !305, file: !305, line: 50, type: !818, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1175)
!1175 = !{!1176}
!1176 = !DILocalVariable(name: "file", arg: 1, scope: !1174, file: !305, line: 50, type: !78)
!1177 = !DILocation(line: 0, scope: !1174)
!1178 = !DILocation(line: 52, column: 13, scope: !1174)
!1179 = !DILocation(line: 53, column: 1, scope: !1174)
!1180 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !305, file: !305, line: 87, type: !1181, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !223}
!1183 = !{!1184}
!1184 = !DILocalVariable(name: "ignore", arg: 1, scope: !1180, file: !305, line: 87, type: !223)
!1185 = !DILocation(line: 0, scope: !1180)
!1186 = !DILocation(line: 89, column: 16, scope: !1180)
!1187 = !{!1188, !1188, i64 0}
!1188 = !{!"_Bool", !810, i64 0}
!1189 = !DILocation(line: 90, column: 1, scope: !1180)
!1190 = distinct !DISubprogram(name: "close_stdout", scope: !305, file: !305, line: 116, type: !371, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1191)
!1191 = !{!1192}
!1192 = !DILocalVariable(name: "write_error", scope: !1193, file: !305, line: 121, type: !78)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !305, line: 120, column: 5)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !305, line: 118, column: 7)
!1195 = !DILocation(line: 118, column: 21, scope: !1194)
!1196 = !DILocation(line: 118, column: 7, scope: !1194)
!1197 = !DILocation(line: 118, column: 29, scope: !1194)
!1198 = !DILocation(line: 119, column: 7, scope: !1194)
!1199 = !DILocation(line: 119, column: 12, scope: !1194)
!1200 = !{i8 0, i8 2}
!1201 = !DILocation(line: 119, column: 25, scope: !1194)
!1202 = !DILocation(line: 119, column: 28, scope: !1194)
!1203 = !DILocation(line: 119, column: 34, scope: !1194)
!1204 = !DILocation(line: 118, column: 7, scope: !1190)
!1205 = !DILocation(line: 121, column: 33, scope: !1193)
!1206 = !DILocation(line: 0, scope: !1193)
!1207 = !DILocation(line: 122, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1193, file: !305, line: 122, column: 11)
!1209 = !DILocation(line: 0, scope: !1208)
!1210 = !DILocation(line: 122, column: 11, scope: !1193)
!1211 = !DILocation(line: 123, column: 9, scope: !1208)
!1212 = !DILocation(line: 126, column: 9, scope: !1208)
!1213 = !DILocation(line: 128, column: 14, scope: !1193)
!1214 = !DILocation(line: 128, column: 7, scope: !1193)
!1215 = !DILocation(line: 133, column: 42, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1190, file: !305, line: 133, column: 7)
!1217 = !DILocation(line: 133, column: 28, scope: !1216)
!1218 = !DILocation(line: 133, column: 50, scope: !1216)
!1219 = !DILocation(line: 133, column: 7, scope: !1190)
!1220 = !DILocation(line: 134, column: 12, scope: !1216)
!1221 = !DILocation(line: 134, column: 5, scope: !1216)
!1222 = !DILocation(line: 135, column: 1, scope: !1190)
!1223 = !DISubprogram(name: "_exit", scope: !1224, file: !1224, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1224 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1225 = distinct !DISubprogram(name: "verror", scope: !320, file: !320, line: 251, type: !1226, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !100, !100, !78, !330}
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DILocalVariable(name: "status", arg: 1, scope: !1225, file: !320, line: 251, type: !100)
!1230 = !DILocalVariable(name: "errnum", arg: 2, scope: !1225, file: !320, line: 251, type: !100)
!1231 = !DILocalVariable(name: "message", arg: 3, scope: !1225, file: !320, line: 251, type: !78)
!1232 = !DILocalVariable(name: "args", arg: 4, scope: !1225, file: !320, line: 251, type: !330)
!1233 = !DILocation(line: 0, scope: !1225)
!1234 = !DILocation(line: 261, column: 3, scope: !1225)
!1235 = !DILocation(line: 265, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1225, file: !320, line: 265, column: 7)
!1237 = !DILocation(line: 265, column: 7, scope: !1225)
!1238 = !DILocation(line: 266, column: 5, scope: !1236)
!1239 = !DILocation(line: 272, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !320, line: 268, column: 5)
!1241 = !DILocation(line: 276, column: 3, scope: !1225)
!1242 = !{i64 0, i64 8, !808, i64 8, i64 8, !808, i64 16, i64 8, !808, i64 24, i64 4, !864, i64 28, i64 4, !864}
!1243 = !DILocation(line: 282, column: 1, scope: !1225)
!1244 = distinct !DISubprogram(name: "flush_stdout", scope: !320, file: !320, line: 163, type: !371, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1245)
!1245 = !{!1246}
!1246 = !DILocalVariable(name: "stdout_fd", scope: !1244, file: !320, line: 166, type: !100)
!1247 = !DILocation(line: 0, scope: !1244)
!1248 = !DILocalVariable(name: "fd", arg: 1, scope: !1249, file: !320, line: 145, type: !100)
!1249 = distinct !DISubprogram(name: "is_open", scope: !320, file: !320, line: 145, type: !1250, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!100, !100}
!1252 = !{!1248}
!1253 = !DILocation(line: 0, scope: !1249, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 182, column: 25, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !320, line: 182, column: 7)
!1256 = !DILocation(line: 157, column: 15, scope: !1249, inlinedAt: !1254)
!1257 = !DILocation(line: 157, column: 12, scope: !1249, inlinedAt: !1254)
!1258 = !DILocation(line: 182, column: 7, scope: !1244)
!1259 = !DILocation(line: 184, column: 5, scope: !1255)
!1260 = !DILocation(line: 185, column: 1, scope: !1244)
!1261 = distinct !DISubprogram(name: "error_tail", scope: !320, file: !320, line: 219, type: !1226, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DILocalVariable(name: "status", arg: 1, scope: !1261, file: !320, line: 219, type: !100)
!1264 = !DILocalVariable(name: "errnum", arg: 2, scope: !1261, file: !320, line: 219, type: !100)
!1265 = !DILocalVariable(name: "message", arg: 3, scope: !1261, file: !320, line: 219, type: !78)
!1266 = !DILocalVariable(name: "args", arg: 4, scope: !1261, file: !320, line: 219, type: !330)
!1267 = distinct !DIAssignID()
!1268 = !DILocation(line: 0, scope: !1261)
!1269 = !DILocation(line: 229, column: 13, scope: !1261)
!1270 = !DILocation(line: 135, column: 10, scope: !1271, inlinedAt: !1313)
!1271 = distinct !DISubprogram(name: "vfprintf", scope: !854, file: !854, line: 132, type: !1272, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1309)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!100, !1274, !858, !332}
!1274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1277, file: !240, line: 51, baseType: !100, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1277, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1277, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1277, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1277, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1277, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1277, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1277, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1277, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1277, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1277, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1277, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1277, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1277, file: !240, line: 70, baseType: !1293, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1277, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1277, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1277, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1277, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1277, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1277, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1277, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1277, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1277, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1277, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1277, file: !240, line: 93, baseType: !1293, size: 64, offset: 1344)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1277, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1277, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1277, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1277, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!1309 = !{!1310, !1311, !1312}
!1310 = !DILocalVariable(name: "__stream", arg: 1, scope: !1271, file: !854, line: 132, type: !1274)
!1311 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1271, file: !854, line: 133, type: !858)
!1312 = !DILocalVariable(name: "__ap", arg: 3, scope: !1271, file: !854, line: 133, type: !332)
!1313 = distinct !DILocation(line: 229, column: 3, scope: !1261)
!1314 = !{!1315, !1317}
!1315 = distinct !{!1315, !1316, !"vfprintf.inline: argument 0"}
!1316 = distinct !{!1316, !"vfprintf.inline"}
!1317 = distinct !{!1317, !1316, !"vfprintf.inline: argument 1"}
!1318 = !DILocation(line: 229, column: 3, scope: !1261)
!1319 = !DILocation(line: 0, scope: !1271, inlinedAt: !1313)
!1320 = !DILocation(line: 232, column: 3, scope: !1261)
!1321 = !DILocation(line: 233, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1261, file: !320, line: 233, column: 7)
!1323 = !DILocation(line: 233, column: 7, scope: !1261)
!1324 = !DILocalVariable(name: "errbuf", scope: !1325, file: !320, line: 193, type: !1329)
!1325 = distinct !DISubprogram(name: "print_errno_message", scope: !320, file: !320, line: 188, type: !798, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1326)
!1326 = !{!1327, !1328, !1324}
!1327 = !DILocalVariable(name: "errnum", arg: 1, scope: !1325, file: !320, line: 188, type: !100)
!1328 = !DILocalVariable(name: "s", scope: !1325, file: !320, line: 190, type: !78)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 1024)
!1332 = !DILocation(line: 0, scope: !1325, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 234, column: 5, scope: !1322)
!1334 = !DILocation(line: 193, column: 3, scope: !1325, inlinedAt: !1333)
!1335 = !DILocation(line: 195, column: 7, scope: !1325, inlinedAt: !1333)
!1336 = !DILocation(line: 207, column: 9, scope: !1337, inlinedAt: !1333)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !320, line: 207, column: 7)
!1338 = !DILocation(line: 207, column: 7, scope: !1325, inlinedAt: !1333)
!1339 = !DILocation(line: 208, column: 9, scope: !1337, inlinedAt: !1333)
!1340 = !DILocation(line: 208, column: 5, scope: !1337, inlinedAt: !1333)
!1341 = !DILocation(line: 214, column: 3, scope: !1325, inlinedAt: !1333)
!1342 = !DILocation(line: 216, column: 1, scope: !1325, inlinedAt: !1333)
!1343 = !DILocation(line: 234, column: 5, scope: !1322)
!1344 = !DILocation(line: 238, column: 3, scope: !1261)
!1345 = !DILocalVariable(name: "__c", arg: 1, scope: !1346, file: !1347, line: 101, type: !100)
!1346 = distinct !DISubprogram(name: "putc_unlocked", scope: !1347, file: !1347, line: 101, type: !1348, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1350)
!1347 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!100, !100, !1275}
!1350 = !{!1345, !1351}
!1351 = !DILocalVariable(name: "__stream", arg: 2, scope: !1346, file: !1347, line: 101, type: !1275)
!1352 = !DILocation(line: 0, scope: !1346, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 238, column: 3, scope: !1261)
!1354 = !DILocation(line: 103, column: 10, scope: !1346, inlinedAt: !1353)
!1355 = !{!1356, !809, i64 40}
!1356 = !{!"_IO_FILE", !865, i64 0, !809, i64 8, !809, i64 16, !809, i64 24, !809, i64 32, !809, i64 40, !809, i64 48, !809, i64 56, !809, i64 64, !809, i64 72, !809, i64 80, !809, i64 88, !809, i64 96, !809, i64 104, !865, i64 112, !865, i64 116, !1357, i64 120, !906, i64 128, !810, i64 130, !810, i64 131, !809, i64 136, !1357, i64 144, !809, i64 152, !809, i64 160, !809, i64 168, !809, i64 176, !1357, i64 184, !865, i64 192, !810, i64 196}
!1357 = !{!"long", !810, i64 0}
!1358 = !{!1356, !809, i64 48}
!1359 = !{!"branch_weights", i32 2000, i32 1}
!1360 = !DILocation(line: 240, column: 3, scope: !1261)
!1361 = !DILocation(line: 241, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1261, file: !320, line: 241, column: 7)
!1363 = !DILocation(line: 241, column: 7, scope: !1261)
!1364 = !DILocation(line: 242, column: 5, scope: !1362)
!1365 = !DILocation(line: 243, column: 1, scope: !1261)
!1366 = !DISubprogram(name: "__vfprintf_chk", scope: !854, file: !854, line: 96, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!100, !1274, !100, !858, !332}
!1369 = !DISubprogram(name: "strerror_r", scope: !981, file: !981, line: 444, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!244, !100, !244, !102}
!1372 = !DISubprogram(name: "__overflow", scope: !331, file: !331, line: 886, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!100, !1275, !100}
!1375 = !DISubprogram(name: "fflush_unlocked", scope: !331, file: !331, line: 239, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!100, !1275}
!1378 = !DISubprogram(name: "fcntl", scope: !1379, file: !1379, line: 149, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!100, !100, !100, null}
!1382 = distinct !DISubprogram(name: "error", scope: !320, file: !320, line: 285, type: !1383, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !100, !100, !78, null}
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DILocalVariable(name: "status", arg: 1, scope: !1382, file: !320, line: 285, type: !100)
!1387 = !DILocalVariable(name: "errnum", arg: 2, scope: !1382, file: !320, line: 285, type: !100)
!1388 = !DILocalVariable(name: "message", arg: 3, scope: !1382, file: !320, line: 285, type: !78)
!1389 = !DILocalVariable(name: "ap", scope: !1382, file: !320, line: 287, type: !330)
!1390 = distinct !DIAssignID()
!1391 = !DILocation(line: 0, scope: !1382)
!1392 = !DILocation(line: 287, column: 3, scope: !1382)
!1393 = !DILocation(line: 288, column: 3, scope: !1382)
!1394 = !DILocation(line: 289, column: 3, scope: !1382)
!1395 = !DILocation(line: 290, column: 3, scope: !1382)
!1396 = !DILocation(line: 291, column: 1, scope: !1382)
!1397 = !DILocation(line: 0, scope: !327)
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
!1437 = distinct !DIAssignID()
!1438 = !DILocation(line: 0, scope: !1427)
!1439 = !DILocation(line: 362, column: 3, scope: !1427)
!1440 = !DILocation(line: 363, column: 3, scope: !1427)
!1441 = !DILocation(line: 364, column: 3, scope: !1427)
!1442 = !DILocation(line: 366, column: 3, scope: !1427)
!1443 = !DILocation(line: 367, column: 1, scope: !1427)
!1444 = distinct !DISubprogram(name: "getprogname", scope: !709, file: !709, line: 54, type: !1445, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!78}
!1447 = !DILocation(line: 58, column: 10, scope: !1444)
!1448 = !DILocation(line: 58, column: 3, scope: !1444)
!1449 = distinct !DISubprogram(name: "parse_long_options", scope: !375, file: !375, line: 45, type: !1450, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1453)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !100, !1015, !78, !78, !78, !1452, null}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1464}
!1454 = !DILocalVariable(name: "argc", arg: 1, scope: !1449, file: !375, line: 45, type: !100)
!1455 = !DILocalVariable(name: "argv", arg: 2, scope: !1449, file: !375, line: 46, type: !1015)
!1456 = !DILocalVariable(name: "command_name", arg: 3, scope: !1449, file: !375, line: 47, type: !78)
!1457 = !DILocalVariable(name: "package", arg: 4, scope: !1449, file: !375, line: 48, type: !78)
!1458 = !DILocalVariable(name: "version", arg: 5, scope: !1449, file: !375, line: 49, type: !78)
!1459 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1449, file: !375, line: 50, type: !1452)
!1460 = !DILocalVariable(name: "saved_opterr", scope: !1449, file: !375, line: 53, type: !100)
!1461 = !DILocalVariable(name: "c", scope: !1462, file: !375, line: 60, type: !100)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !375, line: 59, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !375, line: 58, column: 7)
!1464 = !DILocalVariable(name: "authors", scope: !1465, file: !375, line: 71, type: !1469)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !375, line: 70, column: 15)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !375, line: 64, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !375, line: 62, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !375, line: 61, column: 11)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 12, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !375, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1472, file: !375, line: 71, baseType: !99, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1472, file: !375, line: 71, baseType: !99, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1472, file: !375, line: 71, baseType: !99, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1472, file: !375, line: 71, baseType: !100, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1472, file: !375, line: 71, baseType: !100, size: 32, offset: 224)
!1479 = distinct !DIAssignID()
!1480 = !DILocation(line: 0, scope: !1465)
!1481 = !DILocation(line: 0, scope: !1449)
!1482 = !DILocation(line: 53, column: 22, scope: !1449)
!1483 = !DILocation(line: 56, column: 10, scope: !1449)
!1484 = !DILocation(line: 58, column: 12, scope: !1463)
!1485 = !DILocation(line: 58, column: 7, scope: !1449)
!1486 = !DILocation(line: 60, column: 15, scope: !1462)
!1487 = !DILocation(line: 0, scope: !1462)
!1488 = !DILocation(line: 61, column: 11, scope: !1462)
!1489 = !DILocation(line: 66, column: 15, scope: !1466)
!1490 = !DILocation(line: 67, column: 15, scope: !1466)
!1491 = !DILocation(line: 71, column: 17, scope: !1465)
!1492 = !DILocation(line: 72, column: 17, scope: !1465)
!1493 = !DILocation(line: 73, column: 33, scope: !1465)
!1494 = !DILocation(line: 73, column: 17, scope: !1465)
!1495 = !DILocation(line: 74, column: 17, scope: !1465)
!1496 = !DILocation(line: 85, column: 10, scope: !1449)
!1497 = !DILocation(line: 89, column: 10, scope: !1449)
!1498 = !DILocation(line: 90, column: 1, scope: !1449)
!1499 = !DISubprogram(name: "getopt_long", scope: !390, file: !390, line: 66, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!100, !100, !1502, !78, !1504, !395}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!1505 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !375, file: !375, line: 98, type: !1506, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !100, !1015, !78, !78, !78, !223, !1452, null}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1509 = !DILocalVariable(name: "argc", arg: 1, scope: !1505, file: !375, line: 98, type: !100)
!1510 = !DILocalVariable(name: "argv", arg: 2, scope: !1505, file: !375, line: 99, type: !1015)
!1511 = !DILocalVariable(name: "command_name", arg: 3, scope: !1505, file: !375, line: 100, type: !78)
!1512 = !DILocalVariable(name: "package", arg: 4, scope: !1505, file: !375, line: 101, type: !78)
!1513 = !DILocalVariable(name: "version", arg: 5, scope: !1505, file: !375, line: 102, type: !78)
!1514 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1505, file: !375, line: 103, type: !223)
!1515 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1505, file: !375, line: 104, type: !1452)
!1516 = !DILocalVariable(name: "saved_opterr", scope: !1505, file: !375, line: 107, type: !100)
!1517 = !DILocalVariable(name: "optstring", scope: !1505, file: !375, line: 112, type: !78)
!1518 = !DILocalVariable(name: "c", scope: !1505, file: !375, line: 114, type: !100)
!1519 = !DILocalVariable(name: "authors", scope: !1520, file: !375, line: 125, type: !1469)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !375, line: 124, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !375, line: 118, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !375, line: 116, column: 5)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !375, line: 115, column: 7)
!1524 = distinct !DIAssignID()
!1525 = !DILocation(line: 0, scope: !1520)
!1526 = !DILocation(line: 0, scope: !1505)
!1527 = !DILocation(line: 107, column: 22, scope: !1505)
!1528 = !DILocation(line: 110, column: 10, scope: !1505)
!1529 = !DILocation(line: 112, column: 27, scope: !1505)
!1530 = !DILocation(line: 114, column: 11, scope: !1505)
!1531 = !DILocation(line: 115, column: 7, scope: !1505)
!1532 = !DILocation(line: 125, column: 13, scope: !1520)
!1533 = !DILocation(line: 126, column: 13, scope: !1520)
!1534 = !DILocation(line: 127, column: 29, scope: !1520)
!1535 = !DILocation(line: 127, column: 13, scope: !1520)
!1536 = !DILocation(line: 128, column: 13, scope: !1520)
!1537 = !DILocation(line: 132, column: 26, scope: !1521)
!1538 = !DILocation(line: 133, column: 11, scope: !1521)
!1539 = !DILocation(line: 0, scope: !1521)
!1540 = !DILocation(line: 138, column: 10, scope: !1505)
!1541 = !DILocation(line: 139, column: 1, scope: !1505)
!1542 = distinct !DISubprogram(name: "set_program_name", scope: !400, file: !400, line: 37, type: !818, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DILocalVariable(name: "argv0", arg: 1, scope: !1542, file: !400, line: 37, type: !78)
!1545 = !DILocalVariable(name: "slash", scope: !1542, file: !400, line: 44, type: !78)
!1546 = !DILocalVariable(name: "base", scope: !1542, file: !400, line: 45, type: !78)
!1547 = !DILocation(line: 0, scope: !1542)
!1548 = !DILocation(line: 44, column: 23, scope: !1542)
!1549 = !DILocation(line: 45, column: 22, scope: !1542)
!1550 = !DILocation(line: 46, column: 17, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !400, line: 46, column: 7)
!1552 = !DILocation(line: 46, column: 9, scope: !1551)
!1553 = !DILocation(line: 46, column: 25, scope: !1551)
!1554 = !DILocation(line: 46, column: 40, scope: !1551)
!1555 = !DILocalVariable(name: "__s1", arg: 1, scope: !1556, file: !877, line: 974, type: !1010)
!1556 = distinct !DISubprogram(name: "memeq", scope: !877, file: !877, line: 974, type: !1557, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!223, !1010, !1010, !102}
!1559 = !{!1555, !1560, !1561}
!1560 = !DILocalVariable(name: "__s2", arg: 2, scope: !1556, file: !877, line: 974, type: !1010)
!1561 = !DILocalVariable(name: "__n", arg: 3, scope: !1556, file: !877, line: 974, type: !102)
!1562 = !DILocation(line: 0, scope: !1556, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 46, column: 28, scope: !1551)
!1564 = !DILocation(line: 976, column: 11, scope: !1556, inlinedAt: !1563)
!1565 = !DILocation(line: 976, column: 10, scope: !1556, inlinedAt: !1563)
!1566 = !DILocation(line: 46, column: 7, scope: !1542)
!1567 = !DILocation(line: 49, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !400, line: 49, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1551, file: !400, line: 47, column: 5)
!1570 = !DILocation(line: 49, column: 36, scope: !1568)
!1571 = !DILocation(line: 49, column: 11, scope: !1569)
!1572 = !DILocation(line: 65, column: 16, scope: !1542)
!1573 = !DILocation(line: 71, column: 27, scope: !1542)
!1574 = !DILocation(line: 74, column: 33, scope: !1542)
!1575 = !DILocation(line: 76, column: 1, scope: !1542)
!1576 = !DISubprogram(name: "strrchr", scope: !981, file: !981, line: 273, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = distinct !DIAssignID()
!1578 = !DILocation(line: 0, scope: !409)
!1579 = distinct !DIAssignID()
!1580 = !DILocation(line: 40, column: 29, scope: !409)
!1581 = !DILocation(line: 41, column: 19, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !409, file: !410, line: 41, column: 7)
!1583 = !DILocation(line: 41, column: 7, scope: !409)
!1584 = !DILocation(line: 47, column: 3, scope: !409)
!1585 = !DILocation(line: 48, column: 3, scope: !409)
!1586 = !DILocalVariable(name: "ps", arg: 1, scope: !1587, file: !1588, line: 1135, type: !1591)
!1587 = distinct !DISubprogram(name: "mbszero", scope: !1588, file: !1588, line: 1135, type: !1589, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1592)
!1588 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1592 = !{!1586}
!1593 = !DILocation(line: 0, scope: !1587, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 48, column: 18, scope: !409)
!1595 = !DILocalVariable(name: "__dest", arg: 1, scope: !1596, file: !1597, line: 57, type: !99)
!1596 = distinct !DISubprogram(name: "memset", scope: !1597, file: !1597, line: 57, type: !1598, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !1600)
!1597 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!99, !99, !100, !102}
!1600 = !{!1595, !1601, !1602}
!1601 = !DILocalVariable(name: "__ch", arg: 2, scope: !1596, file: !1597, line: 57, type: !100)
!1602 = !DILocalVariable(name: "__len", arg: 3, scope: !1596, file: !1597, line: 57, type: !102)
!1603 = !DILocation(line: 0, scope: !1596, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 1137, column: 3, scope: !1587, inlinedAt: !1594)
!1605 = !DILocation(line: 59, column: 10, scope: !1596, inlinedAt: !1604)
!1606 = !DILocation(line: 49, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !409, file: !410, line: 49, column: 7)
!1608 = !DILocation(line: 49, column: 39, scope: !1607)
!1609 = !DILocation(line: 49, column: 44, scope: !1607)
!1610 = !DILocation(line: 54, column: 1, scope: !409)
!1611 = !DISubprogram(name: "mbrtoc32", scope: !421, file: !421, line: 57, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!102, !1614, !858, !102, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1591)
!1617 = distinct !DISubprogram(name: "clone_quoting_options", scope: !440, file: !440, line: 113, type: !1618, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1621)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1620, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1621 = !{!1622, !1623, !1624}
!1622 = !DILocalVariable(name: "o", arg: 1, scope: !1617, file: !440, line: 113, type: !1620)
!1623 = !DILocalVariable(name: "saved_errno", scope: !1617, file: !440, line: 115, type: !100)
!1624 = !DILocalVariable(name: "p", scope: !1617, file: !440, line: 116, type: !1620)
!1625 = !DILocation(line: 0, scope: !1617)
!1626 = !DILocation(line: 115, column: 21, scope: !1617)
!1627 = !DILocation(line: 116, column: 40, scope: !1617)
!1628 = !DILocation(line: 116, column: 31, scope: !1617)
!1629 = !DILocation(line: 118, column: 9, scope: !1617)
!1630 = !DILocation(line: 119, column: 3, scope: !1617)
!1631 = distinct !DISubprogram(name: "get_quoting_style", scope: !440, file: !440, line: 124, type: !1632, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1636)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!463, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!1636 = !{!1637}
!1637 = !DILocalVariable(name: "o", arg: 1, scope: !1631, file: !440, line: 124, type: !1634)
!1638 = !DILocation(line: 0, scope: !1631)
!1639 = !DILocation(line: 126, column: 11, scope: !1631)
!1640 = !DILocation(line: 126, column: 46, scope: !1631)
!1641 = !{!1642, !865, i64 0}
!1642 = !{!"quoting_options", !865, i64 0, !865, i64 4, !810, i64 8, !809, i64 40, !809, i64 48}
!1643 = !DILocation(line: 126, column: 3, scope: !1631)
!1644 = distinct !DISubprogram(name: "set_quoting_style", scope: !440, file: !440, line: 132, type: !1645, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1620, !463}
!1647 = !{!1648, !1649}
!1648 = !DILocalVariable(name: "o", arg: 1, scope: !1644, file: !440, line: 132, type: !1620)
!1649 = !DILocalVariable(name: "s", arg: 2, scope: !1644, file: !440, line: 132, type: !463)
!1650 = !DILocation(line: 0, scope: !1644)
!1651 = !DILocation(line: 134, column: 4, scope: !1644)
!1652 = !DILocation(line: 134, column: 45, scope: !1644)
!1653 = !DILocation(line: 135, column: 1, scope: !1644)
!1654 = distinct !DISubprogram(name: "set_char_quoting", scope: !440, file: !440, line: 143, type: !1655, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!100, !1620, !4, !100}
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1664, !1665}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !440, line: 143, type: !1620)
!1659 = !DILocalVariable(name: "c", arg: 2, scope: !1654, file: !440, line: 143, type: !4)
!1660 = !DILocalVariable(name: "i", arg: 3, scope: !1654, file: !440, line: 143, type: !100)
!1661 = !DILocalVariable(name: "uc", scope: !1654, file: !440, line: 145, type: !105)
!1662 = !DILocalVariable(name: "p", scope: !1654, file: !440, line: 146, type: !1663)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1664 = !DILocalVariable(name: "shift", scope: !1654, file: !440, line: 148, type: !100)
!1665 = !DILocalVariable(name: "r", scope: !1654, file: !440, line: 149, type: !84)
!1666 = !DILocation(line: 0, scope: !1654)
!1667 = !DILocation(line: 147, column: 6, scope: !1654)
!1668 = !DILocation(line: 147, column: 41, scope: !1654)
!1669 = !DILocation(line: 147, column: 62, scope: !1654)
!1670 = !DILocation(line: 147, column: 57, scope: !1654)
!1671 = !DILocation(line: 148, column: 15, scope: !1654)
!1672 = !DILocation(line: 149, column: 21, scope: !1654)
!1673 = !DILocation(line: 149, column: 24, scope: !1654)
!1674 = !DILocation(line: 149, column: 34, scope: !1654)
!1675 = !DILocation(line: 150, column: 19, scope: !1654)
!1676 = !DILocation(line: 150, column: 24, scope: !1654)
!1677 = !DILocation(line: 150, column: 6, scope: !1654)
!1678 = !DILocation(line: 151, column: 3, scope: !1654)
!1679 = distinct !DISubprogram(name: "set_quoting_flags", scope: !440, file: !440, line: 159, type: !1680, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!100, !1620, !100}
!1682 = !{!1683, !1684, !1685}
!1683 = !DILocalVariable(name: "o", arg: 1, scope: !1679, file: !440, line: 159, type: !1620)
!1684 = !DILocalVariable(name: "i", arg: 2, scope: !1679, file: !440, line: 159, type: !100)
!1685 = !DILocalVariable(name: "r", scope: !1679, file: !440, line: 163, type: !100)
!1686 = !DILocation(line: 0, scope: !1679)
!1687 = !DILocation(line: 161, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !440, line: 161, column: 7)
!1689 = !DILocation(line: 161, column: 7, scope: !1679)
!1690 = !DILocation(line: 163, column: 14, scope: !1679)
!1691 = !{!1642, !865, i64 4}
!1692 = !DILocation(line: 164, column: 12, scope: !1679)
!1693 = !DILocation(line: 165, column: 3, scope: !1679)
!1694 = distinct !DISubprogram(name: "set_custom_quoting", scope: !440, file: !440, line: 169, type: !1695, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1620, !78, !78}
!1697 = !{!1698, !1699, !1700}
!1698 = !DILocalVariable(name: "o", arg: 1, scope: !1694, file: !440, line: 169, type: !1620)
!1699 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1694, file: !440, line: 170, type: !78)
!1700 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1694, file: !440, line: 170, type: !78)
!1701 = !DILocation(line: 0, scope: !1694)
!1702 = !DILocation(line: 172, column: 8, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !440, line: 172, column: 7)
!1704 = !DILocation(line: 172, column: 7, scope: !1694)
!1705 = !DILocation(line: 174, column: 12, scope: !1694)
!1706 = !DILocation(line: 175, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1694, file: !440, line: 175, column: 7)
!1708 = !DILocation(line: 175, column: 19, scope: !1707)
!1709 = !DILocation(line: 176, column: 5, scope: !1707)
!1710 = !DILocation(line: 177, column: 6, scope: !1694)
!1711 = !DILocation(line: 177, column: 17, scope: !1694)
!1712 = !{!1642, !809, i64 40}
!1713 = !DILocation(line: 178, column: 6, scope: !1694)
!1714 = !DILocation(line: 178, column: 18, scope: !1694)
!1715 = !{!1642, !809, i64 48}
!1716 = !DILocation(line: 179, column: 1, scope: !1694)
!1717 = !DISubprogram(name: "abort", scope: !988, file: !988, line: 598, type: !371, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1718 = distinct !DISubprogram(name: "quotearg_buffer", scope: !440, file: !440, line: 774, type: !1719, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1721)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!102, !244, !102, !78, !102, !1634}
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1722 = !DILocalVariable(name: "buffer", arg: 1, scope: !1718, file: !440, line: 774, type: !244)
!1723 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1718, file: !440, line: 774, type: !102)
!1724 = !DILocalVariable(name: "arg", arg: 3, scope: !1718, file: !440, line: 775, type: !78)
!1725 = !DILocalVariable(name: "argsize", arg: 4, scope: !1718, file: !440, line: 775, type: !102)
!1726 = !DILocalVariable(name: "o", arg: 5, scope: !1718, file: !440, line: 776, type: !1634)
!1727 = !DILocalVariable(name: "p", scope: !1718, file: !440, line: 778, type: !1634)
!1728 = !DILocalVariable(name: "saved_errno", scope: !1718, file: !440, line: 779, type: !100)
!1729 = !DILocalVariable(name: "r", scope: !1718, file: !440, line: 780, type: !102)
!1730 = !DILocation(line: 0, scope: !1718)
!1731 = !DILocation(line: 778, column: 37, scope: !1718)
!1732 = !DILocation(line: 779, column: 21, scope: !1718)
!1733 = !DILocation(line: 781, column: 43, scope: !1718)
!1734 = !DILocation(line: 781, column: 53, scope: !1718)
!1735 = !DILocation(line: 781, column: 63, scope: !1718)
!1736 = !DILocation(line: 782, column: 43, scope: !1718)
!1737 = !DILocation(line: 782, column: 58, scope: !1718)
!1738 = !DILocation(line: 780, column: 14, scope: !1718)
!1739 = !DILocation(line: 783, column: 9, scope: !1718)
!1740 = !DILocation(line: 784, column: 3, scope: !1718)
!1741 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !440, file: !440, line: 251, type: !1742, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1746)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!102, !244, !102, !78, !102, !463, !100, !1744, !78, !78}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1772, !1774, !1777, !1778, !1779, !1780, !1783, !1784, !1786, !1787, !1790, !1794, !1795, !1803, !1806, !1807, !1808}
!1747 = !DILocalVariable(name: "buffer", arg: 1, scope: !1741, file: !440, line: 251, type: !244)
!1748 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1741, file: !440, line: 251, type: !102)
!1749 = !DILocalVariable(name: "arg", arg: 3, scope: !1741, file: !440, line: 252, type: !78)
!1750 = !DILocalVariable(name: "argsize", arg: 4, scope: !1741, file: !440, line: 252, type: !102)
!1751 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1741, file: !440, line: 253, type: !463)
!1752 = !DILocalVariable(name: "flags", arg: 6, scope: !1741, file: !440, line: 253, type: !100)
!1753 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1741, file: !440, line: 254, type: !1744)
!1754 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1741, file: !440, line: 255, type: !78)
!1755 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1741, file: !440, line: 256, type: !78)
!1756 = !DILocalVariable(name: "unibyte_locale", scope: !1741, file: !440, line: 258, type: !223)
!1757 = !DILocalVariable(name: "len", scope: !1741, file: !440, line: 260, type: !102)
!1758 = !DILocalVariable(name: "orig_buffersize", scope: !1741, file: !440, line: 261, type: !102)
!1759 = !DILocalVariable(name: "quote_string", scope: !1741, file: !440, line: 262, type: !78)
!1760 = !DILocalVariable(name: "quote_string_len", scope: !1741, file: !440, line: 263, type: !102)
!1761 = !DILocalVariable(name: "backslash_escapes", scope: !1741, file: !440, line: 264, type: !223)
!1762 = !DILocalVariable(name: "elide_outer_quotes", scope: !1741, file: !440, line: 265, type: !223)
!1763 = !DILocalVariable(name: "encountered_single_quote", scope: !1741, file: !440, line: 266, type: !223)
!1764 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1741, file: !440, line: 267, type: !223)
!1765 = !DILabel(scope: !1741, name: "process_input", file: !440, line: 308)
!1766 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1741, file: !440, line: 309, type: !223)
!1767 = !DILocalVariable(name: "lq", scope: !1768, file: !440, line: 361, type: !78)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !440, line: 361, column: 11)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !440, line: 360, column: 13)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !440, line: 333, column: 7)
!1771 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 312, column: 5)
!1772 = !DILocalVariable(name: "i", scope: !1773, file: !440, line: 395, type: !102)
!1773 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 395, column: 3)
!1774 = !DILocalVariable(name: "is_right_quote", scope: !1775, file: !440, line: 397, type: !223)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !440, line: 396, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !440, line: 395, column: 3)
!1777 = !DILocalVariable(name: "escaping", scope: !1775, file: !440, line: 398, type: !223)
!1778 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1775, file: !440, line: 399, type: !223)
!1779 = !DILocalVariable(name: "c", scope: !1775, file: !440, line: 417, type: !105)
!1780 = !DILabel(scope: !1781, name: "c_and_shell_escape", file: !440, line: 502)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 478, column: 9)
!1782 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 419, column: 9)
!1783 = !DILabel(scope: !1781, name: "c_escape", file: !440, line: 507)
!1784 = !DILocalVariable(name: "m", scope: !1785, file: !440, line: 598, type: !102)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 596, column: 11)
!1786 = !DILocalVariable(name: "printable", scope: !1785, file: !440, line: 600, type: !223)
!1787 = !DILocalVariable(name: "mbs", scope: !1788, file: !440, line: 609, type: !524)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !440, line: 608, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !440, line: 602, column: 17)
!1790 = !DILocalVariable(name: "w", scope: !1791, file: !440, line: 618, type: !420)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !440, line: 617, column: 19)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !440, line: 616, column: 17)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !440, line: 616, column: 17)
!1794 = !DILocalVariable(name: "bytes", scope: !1791, file: !440, line: 619, type: !102)
!1795 = !DILocalVariable(name: "j", scope: !1796, file: !440, line: 648, type: !102)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !440, line: 648, column: 29)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !440, line: 647, column: 27)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !440, line: 645, column: 29)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !440, line: 636, column: 23)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !440, line: 628, column: 30)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !440, line: 623, column: 30)
!1802 = distinct !DILexicalBlock(scope: !1791, file: !440, line: 621, column: 25)
!1803 = !DILocalVariable(name: "ilim", scope: !1804, file: !440, line: 674, type: !102)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !440, line: 671, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1785, file: !440, line: 670, column: 17)
!1806 = !DILabel(scope: !1775, name: "store_escape", file: !440, line: 709)
!1807 = !DILabel(scope: !1775, name: "store_c", file: !440, line: 712)
!1808 = !DILabel(scope: !1741, name: "force_outer_quoting_style", file: !440, line: 753)
!1809 = distinct !DIAssignID()
!1810 = distinct !DIAssignID()
!1811 = distinct !DIAssignID()
!1812 = distinct !DIAssignID()
!1813 = distinct !DIAssignID()
!1814 = !DILocation(line: 0, scope: !1788)
!1815 = distinct !DIAssignID()
!1816 = !DILocation(line: 0, scope: !1791)
!1817 = !DILocation(line: 0, scope: !1741)
!1818 = !DILocation(line: 258, column: 25, scope: !1741)
!1819 = !DILocation(line: 258, column: 36, scope: !1741)
!1820 = !DILocation(line: 267, column: 3, scope: !1741)
!1821 = !DILocation(line: 261, column: 10, scope: !1741)
!1822 = !DILocation(line: 262, column: 15, scope: !1741)
!1823 = !DILocation(line: 263, column: 10, scope: !1741)
!1824 = !DILocation(line: 308, column: 2, scope: !1741)
!1825 = !DILocation(line: 311, column: 3, scope: !1741)
!1826 = !DILocation(line: 318, column: 11, scope: !1771)
!1827 = !DILocation(line: 319, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !440, line: 319, column: 9)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !440, line: 319, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1771, file: !440, line: 318, column: 11)
!1831 = !DILocation(line: 319, column: 9, scope: !1829)
!1832 = !DILocation(line: 0, scope: !515, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 357, column: 26, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !440, line: 335, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1770, file: !440, line: 334, column: 13)
!1836 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1833)
!1837 = !DILocation(line: 201, column: 19, scope: !1838, inlinedAt: !1833)
!1838 = distinct !DILexicalBlock(scope: !515, file: !440, line: 201, column: 7)
!1839 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1833)
!1840 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1833)
!1841 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1833)
!1842 = !DILocalVariable(name: "ps", arg: 1, scope: !1843, file: !1588, line: 1135, type: !1846)
!1843 = distinct !DISubprogram(name: "mbszero", scope: !1588, file: !1588, line: 1135, type: !1844, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1847)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1847 = !{!1842}
!1848 = !DILocation(line: 0, scope: !1843, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1833)
!1850 = !DILocalVariable(name: "__dest", arg: 1, scope: !1851, file: !1597, line: 57, type: !99)
!1851 = distinct !DISubprogram(name: "memset", scope: !1597, file: !1597, line: 57, type: !1598, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1852)
!1852 = !{!1850, !1853, !1854}
!1853 = !DILocalVariable(name: "__ch", arg: 2, scope: !1851, file: !1597, line: 57, type: !100)
!1854 = !DILocalVariable(name: "__len", arg: 3, scope: !1851, file: !1597, line: 57, type: !102)
!1855 = !DILocation(line: 0, scope: !1851, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 1137, column: 3, scope: !1843, inlinedAt: !1849)
!1857 = !DILocation(line: 59, column: 10, scope: !1851, inlinedAt: !1856)
!1858 = !DILocation(line: 231, column: 7, scope: !1859, inlinedAt: !1833)
!1859 = distinct !DILexicalBlock(scope: !515, file: !440, line: 231, column: 7)
!1860 = !DILocation(line: 231, column: 40, scope: !1859, inlinedAt: !1833)
!1861 = !DILocation(line: 231, column: 45, scope: !1859, inlinedAt: !1833)
!1862 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1833)
!1863 = !DILocation(line: 0, scope: !515, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 358, column: 27, scope: !1834)
!1865 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1864)
!1866 = !DILocation(line: 201, column: 19, scope: !1838, inlinedAt: !1864)
!1867 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1864)
!1868 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1864)
!1869 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1864)
!1870 = !DILocation(line: 0, scope: !1843, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1864)
!1872 = !DILocation(line: 0, scope: !1851, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1137, column: 3, scope: !1843, inlinedAt: !1871)
!1874 = !DILocation(line: 59, column: 10, scope: !1851, inlinedAt: !1873)
!1875 = !DILocation(line: 231, column: 7, scope: !1859, inlinedAt: !1864)
!1876 = !DILocation(line: 231, column: 40, scope: !1859, inlinedAt: !1864)
!1877 = !DILocation(line: 231, column: 45, scope: !1859, inlinedAt: !1864)
!1878 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1864)
!1879 = !DILocation(line: 360, column: 13, scope: !1770)
!1880 = !DILocation(line: 0, scope: !1768)
!1881 = !DILocation(line: 361, column: 45, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1768, file: !440, line: 361, column: 11)
!1883 = !DILocation(line: 361, column: 11, scope: !1768)
!1884 = !DILocation(line: 362, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !440, line: 362, column: 13)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !440, line: 362, column: 13)
!1887 = !DILocation(line: 362, column: 13, scope: !1886)
!1888 = !DILocation(line: 361, column: 52, scope: !1882)
!1889 = distinct !{!1889, !1883, !1890, !911}
!1890 = !DILocation(line: 362, column: 13, scope: !1768)
!1891 = !DILocation(line: 365, column: 28, scope: !1770)
!1892 = !DILocation(line: 260, column: 10, scope: !1741)
!1893 = !DILocation(line: 367, column: 7, scope: !1771)
!1894 = !DILocation(line: 373, column: 7, scope: !1771)
!1895 = !DILocation(line: 381, column: 11, scope: !1771)
!1896 = !DILocation(line: 376, column: 11, scope: !1771)
!1897 = !DILocation(line: 382, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !440, line: 382, column: 9)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !440, line: 382, column: 9)
!1900 = distinct !DILexicalBlock(scope: !1771, file: !440, line: 381, column: 11)
!1901 = !DILocation(line: 382, column: 9, scope: !1899)
!1902 = !DILocation(line: 389, column: 7, scope: !1771)
!1903 = !DILocation(line: 392, column: 7, scope: !1771)
!1904 = !DILocation(line: 0, scope: !1773)
!1905 = !DILocation(line: 395, column: 8, scope: !1773)
!1906 = !DILocation(line: 395, scope: !1773)
!1907 = !DILocation(line: 395, column: 34, scope: !1776)
!1908 = !DILocation(line: 395, column: 26, scope: !1776)
!1909 = !DILocation(line: 395, column: 48, scope: !1776)
!1910 = !DILocation(line: 395, column: 55, scope: !1776)
!1911 = !DILocation(line: 395, column: 3, scope: !1773)
!1912 = !DILocation(line: 395, column: 67, scope: !1776)
!1913 = !DILocation(line: 0, scope: !1775)
!1914 = !DILocation(line: 402, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 401, column: 11)
!1916 = !DILocation(line: 404, column: 17, scope: !1915)
!1917 = !DILocation(line: 405, column: 39, scope: !1915)
!1918 = !DILocation(line: 409, column: 32, scope: !1915)
!1919 = !DILocation(line: 405, column: 19, scope: !1915)
!1920 = !DILocation(line: 405, column: 15, scope: !1915)
!1921 = !DILocation(line: 410, column: 11, scope: !1915)
!1922 = !DILocation(line: 410, column: 25, scope: !1915)
!1923 = !DILocalVariable(name: "__s1", arg: 1, scope: !1924, file: !877, line: 974, type: !1010)
!1924 = distinct !DISubprogram(name: "memeq", scope: !877, file: !877, line: 974, type: !1557, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1925)
!1925 = !{!1923, !1926, !1927}
!1926 = !DILocalVariable(name: "__s2", arg: 2, scope: !1924, file: !877, line: 974, type: !1010)
!1927 = !DILocalVariable(name: "__n", arg: 3, scope: !1924, file: !877, line: 974, type: !102)
!1928 = !DILocation(line: 0, scope: !1924, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 410, column: 14, scope: !1915)
!1930 = !DILocation(line: 976, column: 11, scope: !1924, inlinedAt: !1929)
!1931 = !DILocation(line: 976, column: 10, scope: !1924, inlinedAt: !1929)
!1932 = !DILocation(line: 401, column: 11, scope: !1775)
!1933 = !DILocation(line: 417, column: 25, scope: !1775)
!1934 = !DILocation(line: 418, column: 7, scope: !1775)
!1935 = !DILocation(line: 421, column: 15, scope: !1782)
!1936 = !DILocation(line: 423, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !440, line: 423, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !440, line: 422, column: 13)
!1939 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 421, column: 15)
!1940 = !DILocation(line: 423, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !440, line: 423, column: 15)
!1942 = !DILocation(line: 423, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !440, line: 423, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !440, line: 423, column: 15)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !440, line: 423, column: 15)
!1946 = !DILocation(line: 423, column: 15, scope: !1944)
!1947 = !DILocation(line: 423, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !440, line: 423, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !440, line: 423, column: 15)
!1950 = !DILocation(line: 423, column: 15, scope: !1949)
!1951 = !DILocation(line: 423, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !440, line: 423, column: 15)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !440, line: 423, column: 15)
!1954 = !DILocation(line: 423, column: 15, scope: !1953)
!1955 = !DILocation(line: 423, column: 15, scope: !1945)
!1956 = !DILocation(line: 423, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !440, line: 423, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1937, file: !440, line: 423, column: 15)
!1959 = !DILocation(line: 423, column: 15, scope: !1958)
!1960 = !DILocation(line: 431, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1938, file: !440, line: 430, column: 19)
!1962 = !DILocation(line: 431, column: 24, scope: !1961)
!1963 = !DILocation(line: 431, column: 28, scope: !1961)
!1964 = !DILocation(line: 431, column: 38, scope: !1961)
!1965 = !DILocation(line: 431, column: 48, scope: !1961)
!1966 = !DILocation(line: 431, column: 59, scope: !1961)
!1967 = !DILocation(line: 433, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !440, line: 433, column: 19)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !440, line: 433, column: 19)
!1970 = distinct !DILexicalBlock(scope: !1961, file: !440, line: 432, column: 17)
!1971 = !DILocation(line: 433, column: 19, scope: !1969)
!1972 = !DILocation(line: 434, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !440, line: 434, column: 19)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !440, line: 434, column: 19)
!1975 = !DILocation(line: 434, column: 19, scope: !1974)
!1976 = !DILocation(line: 435, column: 17, scope: !1970)
!1977 = !DILocation(line: 442, column: 20, scope: !1939)
!1978 = !DILocation(line: 447, column: 11, scope: !1782)
!1979 = !DILocation(line: 450, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 448, column: 13)
!1981 = !DILocation(line: 456, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !440, line: 455, column: 19)
!1983 = !DILocation(line: 456, column: 24, scope: !1982)
!1984 = !DILocation(line: 456, column: 28, scope: !1982)
!1985 = !DILocation(line: 456, column: 38, scope: !1982)
!1986 = !DILocation(line: 456, column: 41, scope: !1982)
!1987 = !DILocation(line: 456, column: 52, scope: !1982)
!1988 = !DILocation(line: 455, column: 19, scope: !1980)
!1989 = !DILocation(line: 457, column: 25, scope: !1982)
!1990 = !DILocation(line: 457, column: 17, scope: !1982)
!1991 = !DILocation(line: 464, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1982, file: !440, line: 458, column: 19)
!1993 = !DILocation(line: 468, column: 21, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !440, line: 468, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !440, line: 468, column: 21)
!1996 = !DILocation(line: 468, column: 21, scope: !1995)
!1997 = !DILocation(line: 469, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !440, line: 469, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !440, line: 469, column: 21)
!2000 = !DILocation(line: 469, column: 21, scope: !1999)
!2001 = !DILocation(line: 470, column: 21, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !440, line: 470, column: 21)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !440, line: 470, column: 21)
!2004 = !DILocation(line: 470, column: 21, scope: !2003)
!2005 = !DILocation(line: 471, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !440, line: 471, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1992, file: !440, line: 471, column: 21)
!2008 = !DILocation(line: 471, column: 21, scope: !2007)
!2009 = !DILocation(line: 472, column: 21, scope: !1992)
!2010 = !DILocation(line: 482, column: 33, scope: !1781)
!2011 = !DILocation(line: 483, column: 33, scope: !1781)
!2012 = !DILocation(line: 485, column: 33, scope: !1781)
!2013 = !DILocation(line: 486, column: 33, scope: !1781)
!2014 = !DILocation(line: 487, column: 33, scope: !1781)
!2015 = !DILocation(line: 490, column: 17, scope: !1781)
!2016 = !DILocation(line: 492, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !440, line: 491, column: 15)
!2018 = distinct !DILexicalBlock(scope: !1781, file: !440, line: 490, column: 17)
!2019 = !DILocation(line: 499, column: 35, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1781, file: !440, line: 499, column: 17)
!2021 = !DILocation(line: 0, scope: !1781)
!2022 = !DILocation(line: 502, column: 11, scope: !1781)
!2023 = !DILocation(line: 504, column: 17, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1781, file: !440, line: 503, column: 17)
!2025 = !DILocation(line: 507, column: 11, scope: !1781)
!2026 = !DILocation(line: 508, column: 17, scope: !1781)
!2027 = !DILocation(line: 517, column: 15, scope: !1782)
!2028 = !DILocation(line: 517, column: 40, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 517, column: 15)
!2030 = !DILocation(line: 517, column: 47, scope: !2029)
!2031 = !DILocation(line: 517, column: 18, scope: !2029)
!2032 = !DILocation(line: 521, column: 17, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 521, column: 15)
!2034 = !DILocation(line: 521, column: 15, scope: !1782)
!2035 = !DILocation(line: 525, column: 11, scope: !1782)
!2036 = !DILocation(line: 537, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 536, column: 15)
!2038 = !DILocation(line: 536, column: 15, scope: !1782)
!2039 = !DILocation(line: 544, column: 15, scope: !1782)
!2040 = !DILocation(line: 546, column: 19, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !440, line: 545, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1782, file: !440, line: 544, column: 15)
!2043 = !DILocation(line: 549, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !440, line: 549, column: 19)
!2045 = !DILocation(line: 549, column: 30, scope: !2044)
!2046 = !DILocation(line: 558, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !440, line: 558, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2041, file: !440, line: 558, column: 15)
!2049 = !DILocation(line: 558, column: 15, scope: !2048)
!2050 = !DILocation(line: 559, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !440, line: 559, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2041, file: !440, line: 559, column: 15)
!2053 = !DILocation(line: 559, column: 15, scope: !2052)
!2054 = !DILocation(line: 560, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !440, line: 560, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2041, file: !440, line: 560, column: 15)
!2057 = !DILocation(line: 560, column: 15, scope: !2056)
!2058 = !DILocation(line: 562, column: 13, scope: !2041)
!2059 = !DILocation(line: 602, column: 17, scope: !1785)
!2060 = !DILocation(line: 0, scope: !1785)
!2061 = !DILocation(line: 605, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1789, file: !440, line: 603, column: 15)
!2063 = !DILocation(line: 605, column: 41, scope: !2062)
!2064 = !DILocation(line: 606, column: 15, scope: !2062)
!2065 = !DILocation(line: 609, column: 17, scope: !1788)
!2066 = !DILocation(line: 0, scope: !1843, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 609, column: 32, scope: !1788)
!2068 = !DILocation(line: 0, scope: !1851, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 1137, column: 3, scope: !1843, inlinedAt: !2067)
!2070 = !DILocation(line: 59, column: 10, scope: !1851, inlinedAt: !2069)
!2071 = !DILocation(line: 613, column: 29, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1788, file: !440, line: 613, column: 21)
!2073 = !DILocation(line: 613, column: 21, scope: !1788)
!2074 = !DILocation(line: 614, column: 29, scope: !2072)
!2075 = !DILocation(line: 614, column: 19, scope: !2072)
!2076 = !DILocation(line: 618, column: 21, scope: !1791)
!2077 = !DILocation(line: 620, column: 54, scope: !1791)
!2078 = !DILocation(line: 619, column: 36, scope: !1791)
!2079 = !DILocation(line: 621, column: 25, scope: !1791)
!2080 = !DILocation(line: 631, column: 38, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1800, file: !440, line: 629, column: 23)
!2082 = !DILocation(line: 631, column: 48, scope: !2081)
!2083 = !DILocation(line: 631, column: 25, scope: !2081)
!2084 = !DILocation(line: 626, column: 25, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1801, file: !440, line: 624, column: 23)
!2086 = !DILocation(line: 631, column: 51, scope: !2081)
!2087 = !DILocation(line: 632, column: 28, scope: !2081)
!2088 = !DILocation(line: 631, column: 34, scope: !2081)
!2089 = distinct !{!2089, !2083, !2087, !911}
!2090 = !DILocation(line: 0, scope: !1796)
!2091 = !DILocation(line: 646, column: 29, scope: !1798)
!2092 = !DILocation(line: 648, column: 29, scope: !1796)
!2093 = !DILocation(line: 649, column: 39, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1796, file: !440, line: 648, column: 29)
!2095 = !DILocation(line: 649, column: 31, scope: !2094)
!2096 = !DILocation(line: 648, column: 60, scope: !2094)
!2097 = !DILocation(line: 648, column: 50, scope: !2094)
!2098 = distinct !{!2098, !2092, !2099, !911}
!2099 = !DILocation(line: 654, column: 33, scope: !1796)
!2100 = !DILocation(line: 657, column: 43, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1799, file: !440, line: 657, column: 29)
!2102 = !DILocalVariable(name: "wc", arg: 1, scope: !2103, file: !2104, line: 865, type: !2107)
!2103 = distinct !DISubprogram(name: "c32isprint", scope: !2104, file: !2104, line: 865, type: !2105, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2109)
!2104 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!100, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2108, line: 20, baseType: !84)
!2108 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2109 = !{!2102}
!2110 = !DILocation(line: 0, scope: !2103, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 657, column: 31, scope: !2101)
!2112 = !DILocation(line: 871, column: 10, scope: !2103, inlinedAt: !2111)
!2113 = !DILocation(line: 657, column: 31, scope: !2101)
!2114 = !DILocation(line: 664, column: 23, scope: !1791)
!2115 = !DILocation(line: 665, column: 19, scope: !1792)
!2116 = !DILocation(line: 666, column: 15, scope: !1789)
!2117 = !DILocation(line: 753, column: 2, scope: !1741)
!2118 = !DILocation(line: 756, column: 51, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 756, column: 7)
!2120 = !DILocation(line: 0, scope: !1789)
!2121 = !DILocation(line: 670, column: 19, scope: !1805)
!2122 = !DILocation(line: 670, column: 23, scope: !1805)
!2123 = !DILocation(line: 674, column: 33, scope: !1804)
!2124 = !DILocation(line: 0, scope: !1804)
!2125 = !DILocation(line: 676, column: 17, scope: !1804)
!2126 = !DILocation(line: 678, column: 43, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !440, line: 678, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !440, line: 677, column: 19)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !440, line: 676, column: 17)
!2130 = distinct !DILexicalBlock(scope: !1804, file: !440, line: 676, column: 17)
!2131 = !DILocation(line: 680, column: 25, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !440, line: 680, column: 25)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !440, line: 679, column: 23)
!2134 = !DILocation(line: 680, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !440, line: 680, column: 25)
!2136 = !DILocation(line: 680, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !440, line: 680, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !440, line: 680, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !440, line: 680, column: 25)
!2140 = !DILocation(line: 680, column: 25, scope: !2138)
!2141 = !DILocation(line: 680, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !440, line: 680, column: 25)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !440, line: 680, column: 25)
!2144 = !DILocation(line: 680, column: 25, scope: !2143)
!2145 = !DILocation(line: 680, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !440, line: 680, column: 25)
!2147 = distinct !DILexicalBlock(scope: !2139, file: !440, line: 680, column: 25)
!2148 = !DILocation(line: 680, column: 25, scope: !2147)
!2149 = !DILocation(line: 680, column: 25, scope: !2139)
!2150 = !DILocation(line: 680, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !440, line: 680, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2132, file: !440, line: 680, column: 25)
!2153 = !DILocation(line: 680, column: 25, scope: !2152)
!2154 = !DILocation(line: 681, column: 25, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !440, line: 681, column: 25)
!2156 = distinct !DILexicalBlock(scope: !2133, file: !440, line: 681, column: 25)
!2157 = !DILocation(line: 681, column: 25, scope: !2156)
!2158 = !DILocation(line: 682, column: 25, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !440, line: 682, column: 25)
!2160 = distinct !DILexicalBlock(scope: !2133, file: !440, line: 682, column: 25)
!2161 = !DILocation(line: 682, column: 25, scope: !2160)
!2162 = !DILocation(line: 683, column: 38, scope: !2133)
!2163 = !DILocation(line: 683, column: 33, scope: !2133)
!2164 = !DILocation(line: 684, column: 23, scope: !2133)
!2165 = !DILocation(line: 685, column: 30, scope: !2127)
!2166 = !DILocation(line: 687, column: 25, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !440, line: 687, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !440, line: 687, column: 25)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !440, line: 686, column: 23)
!2170 = distinct !DILexicalBlock(scope: !2127, file: !440, line: 685, column: 30)
!2171 = !DILocation(line: 687, column: 25, scope: !2168)
!2172 = !DILocation(line: 689, column: 23, scope: !2169)
!2173 = !DILocation(line: 690, column: 35, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2128, file: !440, line: 690, column: 25)
!2175 = !DILocation(line: 690, column: 30, scope: !2174)
!2176 = !DILocation(line: 690, column: 25, scope: !2128)
!2177 = !DILocation(line: 692, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !440, line: 692, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2128, file: !440, line: 692, column: 21)
!2180 = !DILocation(line: 692, column: 21, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !440, line: 692, column: 21)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !440, line: 692, column: 21)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !440, line: 692, column: 21)
!2184 = !DILocation(line: 692, column: 21, scope: !2182)
!2185 = !DILocation(line: 692, column: 21, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !440, line: 692, column: 21)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !440, line: 692, column: 21)
!2188 = !DILocation(line: 692, column: 21, scope: !2187)
!2189 = !DILocation(line: 692, column: 21, scope: !2183)
!2190 = !DILocation(line: 0, scope: !2128)
!2191 = !DILocation(line: 693, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !440, line: 693, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2128, file: !440, line: 693, column: 21)
!2194 = !DILocation(line: 693, column: 21, scope: !2193)
!2195 = !DILocation(line: 694, column: 25, scope: !2128)
!2196 = !DILocation(line: 676, column: 17, scope: !2129)
!2197 = distinct !{!2197, !2198, !2199}
!2198 = !DILocation(line: 676, column: 17, scope: !2130)
!2199 = !DILocation(line: 695, column: 19, scope: !2130)
!2200 = !DILocation(line: 409, column: 30, scope: !1915)
!2201 = !DILocation(line: 702, column: 34, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 702, column: 11)
!2203 = !DILocation(line: 704, column: 14, scope: !2202)
!2204 = !DILocation(line: 705, column: 14, scope: !2202)
!2205 = !DILocation(line: 705, column: 35, scope: !2202)
!2206 = !DILocation(line: 705, column: 17, scope: !2202)
!2207 = !DILocation(line: 705, column: 47, scope: !2202)
!2208 = !DILocation(line: 705, column: 65, scope: !2202)
!2209 = !DILocation(line: 706, column: 11, scope: !2202)
!2210 = !DILocation(line: 702, column: 11, scope: !1775)
!2211 = !DILocation(line: 395, column: 15, scope: !1773)
!2212 = !DILocation(line: 709, column: 5, scope: !1775)
!2213 = !DILocation(line: 710, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 710, column: 7)
!2215 = !DILocation(line: 710, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2214, file: !440, line: 710, column: 7)
!2217 = !DILocation(line: 710, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !440, line: 710, column: 7)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !440, line: 710, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !440, line: 710, column: 7)
!2221 = !DILocation(line: 710, column: 7, scope: !2219)
!2222 = !DILocation(line: 710, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !440, line: 710, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !440, line: 710, column: 7)
!2225 = !DILocation(line: 710, column: 7, scope: !2224)
!2226 = !DILocation(line: 710, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !440, line: 710, column: 7)
!2228 = distinct !DILexicalBlock(scope: !2220, file: !440, line: 710, column: 7)
!2229 = !DILocation(line: 710, column: 7, scope: !2228)
!2230 = !DILocation(line: 710, column: 7, scope: !2220)
!2231 = !DILocation(line: 710, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !440, line: 710, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2214, file: !440, line: 710, column: 7)
!2234 = !DILocation(line: 710, column: 7, scope: !2233)
!2235 = !DILocation(line: 712, column: 5, scope: !1775)
!2236 = !DILocation(line: 713, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !440, line: 713, column: 7)
!2238 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 713, column: 7)
!2239 = !DILocation(line: 417, column: 21, scope: !1775)
!2240 = !DILocation(line: 713, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !440, line: 713, column: 7)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !440, line: 713, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !440, line: 713, column: 7)
!2244 = !DILocation(line: 713, column: 7, scope: !2242)
!2245 = !DILocation(line: 713, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !440, line: 713, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !440, line: 713, column: 7)
!2248 = !DILocation(line: 713, column: 7, scope: !2247)
!2249 = !DILocation(line: 713, column: 7, scope: !2243)
!2250 = !DILocation(line: 714, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !440, line: 714, column: 7)
!2252 = distinct !DILexicalBlock(scope: !1775, file: !440, line: 714, column: 7)
!2253 = !DILocation(line: 714, column: 7, scope: !2252)
!2254 = !DILocation(line: 716, column: 11, scope: !1775)
!2255 = !DILocation(line: 718, column: 5, scope: !1776)
!2256 = !DILocation(line: 395, column: 82, scope: !1776)
!2257 = !DILocation(line: 395, column: 3, scope: !1776)
!2258 = distinct !{!2258, !1911, !2259, !911}
!2259 = !DILocation(line: 718, column: 5, scope: !1773)
!2260 = !DILocation(line: 720, column: 11, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 720, column: 7)
!2262 = !DILocation(line: 720, column: 16, scope: !2261)
!2263 = !DILocation(line: 728, column: 51, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 728, column: 7)
!2265 = !DILocation(line: 731, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2264, file: !440, line: 730, column: 5)
!2267 = !DILocation(line: 732, column: 16, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2266, file: !440, line: 731, column: 11)
!2269 = !DILocation(line: 732, column: 9, scope: !2268)
!2270 = !DILocation(line: 736, column: 18, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !440, line: 736, column: 16)
!2272 = !DILocation(line: 736, column: 29, scope: !2271)
!2273 = !DILocation(line: 745, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 745, column: 7)
!2275 = !DILocation(line: 745, column: 20, scope: !2274)
!2276 = !DILocation(line: 746, column: 12, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !440, line: 746, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !440, line: 746, column: 5)
!2279 = !DILocation(line: 746, column: 5, scope: !2278)
!2280 = !DILocation(line: 747, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !440, line: 747, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !440, line: 747, column: 7)
!2283 = !DILocation(line: 747, column: 7, scope: !2282)
!2284 = !DILocation(line: 746, column: 39, scope: !2277)
!2285 = distinct !{!2285, !2279, !2286, !911}
!2286 = !DILocation(line: 747, column: 7, scope: !2278)
!2287 = !DILocation(line: 749, column: 11, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1741, file: !440, line: 749, column: 7)
!2289 = !DILocation(line: 749, column: 7, scope: !1741)
!2290 = !DILocation(line: 750, column: 5, scope: !2288)
!2291 = !DILocation(line: 750, column: 17, scope: !2288)
!2292 = !DILocation(line: 756, column: 21, scope: !2119)
!2293 = !DILocation(line: 760, column: 42, scope: !1741)
!2294 = !DILocation(line: 758, column: 10, scope: !1741)
!2295 = !DILocation(line: 758, column: 3, scope: !1741)
!2296 = !DILocation(line: 762, column: 1, scope: !1741)
!2297 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !988, file: !988, line: 98, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!102}
!2300 = !DISubprogram(name: "strlen", scope: !981, file: !981, line: 407, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!104, !78}
!2303 = !DISubprogram(name: "iswprint", scope: !2304, file: !2304, line: 120, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2304 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2305 = distinct !DISubprogram(name: "quotearg_alloc", scope: !440, file: !440, line: 788, type: !2306, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!244, !78, !102, !1634}
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !440, line: 788, type: !78)
!2310 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !440, line: 788, type: !102)
!2311 = !DILocalVariable(name: "o", arg: 3, scope: !2305, file: !440, line: 789, type: !1634)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !440, line: 801, type: !78)
!2314 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !440, file: !440, line: 801, type: !2315, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!244, !78, !102, !723, !1634}
!2317 = !{!2313, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !440, line: 801, type: !102)
!2319 = !DILocalVariable(name: "size", arg: 3, scope: !2314, file: !440, line: 801, type: !723)
!2320 = !DILocalVariable(name: "o", arg: 4, scope: !2314, file: !440, line: 802, type: !1634)
!2321 = !DILocalVariable(name: "p", scope: !2314, file: !440, line: 804, type: !1634)
!2322 = !DILocalVariable(name: "saved_errno", scope: !2314, file: !440, line: 805, type: !100)
!2323 = !DILocalVariable(name: "flags", scope: !2314, file: !440, line: 807, type: !100)
!2324 = !DILocalVariable(name: "bufsize", scope: !2314, file: !440, line: 808, type: !102)
!2325 = !DILocalVariable(name: "buf", scope: !2314, file: !440, line: 812, type: !244)
!2326 = !DILocation(line: 0, scope: !2314, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 791, column: 10, scope: !2305)
!2328 = !DILocation(line: 804, column: 37, scope: !2314, inlinedAt: !2327)
!2329 = !DILocation(line: 805, column: 21, scope: !2314, inlinedAt: !2327)
!2330 = !DILocation(line: 807, column: 18, scope: !2314, inlinedAt: !2327)
!2331 = !DILocation(line: 807, column: 24, scope: !2314, inlinedAt: !2327)
!2332 = !DILocation(line: 808, column: 72, scope: !2314, inlinedAt: !2327)
!2333 = !DILocation(line: 809, column: 56, scope: !2314, inlinedAt: !2327)
!2334 = !DILocation(line: 810, column: 49, scope: !2314, inlinedAt: !2327)
!2335 = !DILocation(line: 811, column: 49, scope: !2314, inlinedAt: !2327)
!2336 = !DILocation(line: 808, column: 20, scope: !2314, inlinedAt: !2327)
!2337 = !DILocation(line: 811, column: 62, scope: !2314, inlinedAt: !2327)
!2338 = !DILocation(line: 812, column: 15, scope: !2314, inlinedAt: !2327)
!2339 = !DILocation(line: 813, column: 60, scope: !2314, inlinedAt: !2327)
!2340 = !DILocation(line: 815, column: 32, scope: !2314, inlinedAt: !2327)
!2341 = !DILocation(line: 815, column: 47, scope: !2314, inlinedAt: !2327)
!2342 = !DILocation(line: 813, column: 3, scope: !2314, inlinedAt: !2327)
!2343 = !DILocation(line: 816, column: 9, scope: !2314, inlinedAt: !2327)
!2344 = !DILocation(line: 791, column: 3, scope: !2305)
!2345 = !DILocation(line: 0, scope: !2314)
!2346 = !DILocation(line: 804, column: 37, scope: !2314)
!2347 = !DILocation(line: 805, column: 21, scope: !2314)
!2348 = !DILocation(line: 807, column: 18, scope: !2314)
!2349 = !DILocation(line: 807, column: 27, scope: !2314)
!2350 = !DILocation(line: 807, column: 24, scope: !2314)
!2351 = !DILocation(line: 808, column: 72, scope: !2314)
!2352 = !DILocation(line: 809, column: 56, scope: !2314)
!2353 = !DILocation(line: 810, column: 49, scope: !2314)
!2354 = !DILocation(line: 811, column: 49, scope: !2314)
!2355 = !DILocation(line: 808, column: 20, scope: !2314)
!2356 = !DILocation(line: 811, column: 62, scope: !2314)
!2357 = !DILocation(line: 812, column: 15, scope: !2314)
!2358 = !DILocation(line: 813, column: 60, scope: !2314)
!2359 = !DILocation(line: 815, column: 32, scope: !2314)
!2360 = !DILocation(line: 815, column: 47, scope: !2314)
!2361 = !DILocation(line: 813, column: 3, scope: !2314)
!2362 = !DILocation(line: 816, column: 9, scope: !2314)
!2363 = !DILocation(line: 817, column: 7, scope: !2314)
!2364 = !DILocation(line: 818, column: 11, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2314, file: !440, line: 817, column: 7)
!2366 = !{!1357, !1357, i64 0}
!2367 = !DILocation(line: 818, column: 5, scope: !2365)
!2368 = !DILocation(line: 819, column: 3, scope: !2314)
!2369 = distinct !DISubprogram(name: "quotearg_free", scope: !440, file: !440, line: 837, type: !371, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2370)
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "sv", scope: !2369, file: !440, line: 839, type: !538)
!2372 = !DILocalVariable(name: "i", scope: !2373, file: !440, line: 840, type: !100)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !440, line: 840, column: 3)
!2374 = !DILocation(line: 839, column: 24, scope: !2369)
!2375 = !DILocation(line: 0, scope: !2369)
!2376 = !DILocation(line: 0, scope: !2373)
!2377 = !DILocation(line: 840, column: 21, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !440, line: 840, column: 3)
!2379 = !DILocation(line: 840, column: 3, scope: !2373)
!2380 = !DILocation(line: 842, column: 13, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2369, file: !440, line: 842, column: 7)
!2382 = !{!2383, !809, i64 8}
!2383 = !{!"slotvec", !1357, i64 0, !809, i64 8}
!2384 = !DILocation(line: 842, column: 17, scope: !2381)
!2385 = !DILocation(line: 842, column: 7, scope: !2369)
!2386 = !DILocation(line: 841, column: 17, scope: !2378)
!2387 = !DILocation(line: 841, column: 5, scope: !2378)
!2388 = !DILocation(line: 840, column: 32, scope: !2378)
!2389 = distinct !{!2389, !2379, !2390, !911}
!2390 = !DILocation(line: 841, column: 20, scope: !2373)
!2391 = !DILocation(line: 844, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2381, file: !440, line: 843, column: 5)
!2393 = !DILocation(line: 845, column: 21, scope: !2392)
!2394 = !{!2383, !1357, i64 0}
!2395 = !DILocation(line: 846, column: 20, scope: !2392)
!2396 = !DILocation(line: 847, column: 5, scope: !2392)
!2397 = !DILocation(line: 848, column: 10, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2369, file: !440, line: 848, column: 7)
!2399 = !DILocation(line: 848, column: 7, scope: !2369)
!2400 = !DILocation(line: 850, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2398, file: !440, line: 849, column: 5)
!2402 = !DILocation(line: 851, column: 15, scope: !2401)
!2403 = !DILocation(line: 852, column: 5, scope: !2401)
!2404 = !DILocation(line: 853, column: 10, scope: !2369)
!2405 = !DILocation(line: 854, column: 1, scope: !2369)
!2406 = !DISubprogram(name: "free", scope: !1588, file: !1588, line: 786, type: !2407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !99}
!2409 = distinct !DISubprogram(name: "quotearg_n", scope: !440, file: !440, line: 919, type: !978, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2410)
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2409, file: !440, line: 919, type: !100)
!2412 = !DILocalVariable(name: "arg", arg: 2, scope: !2409, file: !440, line: 919, type: !78)
!2413 = !DILocation(line: 0, scope: !2409)
!2414 = !DILocation(line: 921, column: 10, scope: !2409)
!2415 = !DILocation(line: 921, column: 3, scope: !2409)
!2416 = distinct !DISubprogram(name: "quotearg_n_options", scope: !440, file: !440, line: 866, type: !2417, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!244, !100, !78, !102, !1634}
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2430, !2431, !2433, !2434, !2435}
!2420 = !DILocalVariable(name: "n", arg: 1, scope: !2416, file: !440, line: 866, type: !100)
!2421 = !DILocalVariable(name: "arg", arg: 2, scope: !2416, file: !440, line: 866, type: !78)
!2422 = !DILocalVariable(name: "argsize", arg: 3, scope: !2416, file: !440, line: 866, type: !102)
!2423 = !DILocalVariable(name: "options", arg: 4, scope: !2416, file: !440, line: 867, type: !1634)
!2424 = !DILocalVariable(name: "saved_errno", scope: !2416, file: !440, line: 869, type: !100)
!2425 = !DILocalVariable(name: "sv", scope: !2416, file: !440, line: 871, type: !538)
!2426 = !DILocalVariable(name: "nslots_max", scope: !2416, file: !440, line: 873, type: !100)
!2427 = !DILocalVariable(name: "preallocated", scope: !2428, file: !440, line: 879, type: !223)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !440, line: 878, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2416, file: !440, line: 877, column: 7)
!2430 = !DILocalVariable(name: "new_nslots", scope: !2428, file: !440, line: 880, type: !736)
!2431 = !DILocalVariable(name: "size", scope: !2432, file: !440, line: 891, type: !102)
!2432 = distinct !DILexicalBlock(scope: !2416, file: !440, line: 890, column: 3)
!2433 = !DILocalVariable(name: "val", scope: !2432, file: !440, line: 892, type: !244)
!2434 = !DILocalVariable(name: "flags", scope: !2432, file: !440, line: 894, type: !100)
!2435 = !DILocalVariable(name: "qsize", scope: !2432, file: !440, line: 895, type: !102)
!2436 = distinct !DIAssignID()
!2437 = !DILocation(line: 0, scope: !2428)
!2438 = !DILocation(line: 0, scope: !2416)
!2439 = !DILocation(line: 869, column: 21, scope: !2416)
!2440 = !DILocation(line: 871, column: 24, scope: !2416)
!2441 = !DILocation(line: 874, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2416, file: !440, line: 874, column: 7)
!2443 = !DILocation(line: 875, column: 5, scope: !2442)
!2444 = !DILocation(line: 877, column: 7, scope: !2429)
!2445 = !DILocation(line: 877, column: 14, scope: !2429)
!2446 = !DILocation(line: 877, column: 7, scope: !2416)
!2447 = !DILocation(line: 879, column: 31, scope: !2428)
!2448 = !DILocation(line: 880, column: 7, scope: !2428)
!2449 = !DILocation(line: 880, column: 26, scope: !2428)
!2450 = !DILocation(line: 880, column: 13, scope: !2428)
!2451 = distinct !DIAssignID()
!2452 = !DILocation(line: 882, column: 31, scope: !2428)
!2453 = !DILocation(line: 883, column: 33, scope: !2428)
!2454 = !DILocation(line: 883, column: 42, scope: !2428)
!2455 = !DILocation(line: 883, column: 31, scope: !2428)
!2456 = !DILocation(line: 882, column: 22, scope: !2428)
!2457 = !DILocation(line: 882, column: 15, scope: !2428)
!2458 = !DILocation(line: 884, column: 11, scope: !2428)
!2459 = !DILocation(line: 885, column: 15, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2428, file: !440, line: 884, column: 11)
!2461 = !{i64 0, i64 8, !2366, i64 8, i64 8, !808}
!2462 = !DILocation(line: 885, column: 9, scope: !2460)
!2463 = !DILocation(line: 886, column: 20, scope: !2428)
!2464 = !DILocation(line: 886, column: 18, scope: !2428)
!2465 = !DILocation(line: 886, column: 32, scope: !2428)
!2466 = !DILocation(line: 886, column: 43, scope: !2428)
!2467 = !DILocation(line: 886, column: 53, scope: !2428)
!2468 = !DILocation(line: 0, scope: !1851, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 886, column: 7, scope: !2428)
!2470 = !DILocation(line: 59, column: 10, scope: !1851, inlinedAt: !2469)
!2471 = !DILocation(line: 887, column: 16, scope: !2428)
!2472 = !DILocation(line: 887, column: 14, scope: !2428)
!2473 = !DILocation(line: 888, column: 5, scope: !2429)
!2474 = !DILocation(line: 888, column: 5, scope: !2428)
!2475 = !DILocation(line: 891, column: 19, scope: !2432)
!2476 = !DILocation(line: 891, column: 25, scope: !2432)
!2477 = !DILocation(line: 0, scope: !2432)
!2478 = !DILocation(line: 892, column: 23, scope: !2432)
!2479 = !DILocation(line: 894, column: 26, scope: !2432)
!2480 = !DILocation(line: 894, column: 32, scope: !2432)
!2481 = !DILocation(line: 896, column: 55, scope: !2432)
!2482 = !DILocation(line: 897, column: 55, scope: !2432)
!2483 = !DILocation(line: 898, column: 55, scope: !2432)
!2484 = !DILocation(line: 899, column: 55, scope: !2432)
!2485 = !DILocation(line: 895, column: 20, scope: !2432)
!2486 = !DILocation(line: 901, column: 14, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2432, file: !440, line: 901, column: 9)
!2488 = !DILocation(line: 901, column: 9, scope: !2432)
!2489 = !DILocation(line: 903, column: 35, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !440, line: 902, column: 7)
!2491 = !DILocation(line: 903, column: 20, scope: !2490)
!2492 = !DILocation(line: 904, column: 17, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !440, line: 904, column: 13)
!2494 = !DILocation(line: 904, column: 13, scope: !2490)
!2495 = !DILocation(line: 905, column: 11, scope: !2493)
!2496 = !DILocation(line: 906, column: 27, scope: !2490)
!2497 = !DILocation(line: 906, column: 19, scope: !2490)
!2498 = !DILocation(line: 907, column: 69, scope: !2490)
!2499 = !DILocation(line: 909, column: 44, scope: !2490)
!2500 = !DILocation(line: 910, column: 44, scope: !2490)
!2501 = !DILocation(line: 907, column: 9, scope: !2490)
!2502 = !DILocation(line: 911, column: 7, scope: !2490)
!2503 = !DILocation(line: 913, column: 11, scope: !2432)
!2504 = !DILocation(line: 914, column: 5, scope: !2432)
!2505 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !440, file: !440, line: 925, type: !2506, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!244, !100, !78, !102}
!2508 = !{!2509, !2510, !2511}
!2509 = !DILocalVariable(name: "n", arg: 1, scope: !2505, file: !440, line: 925, type: !100)
!2510 = !DILocalVariable(name: "arg", arg: 2, scope: !2505, file: !440, line: 925, type: !78)
!2511 = !DILocalVariable(name: "argsize", arg: 3, scope: !2505, file: !440, line: 925, type: !102)
!2512 = !DILocation(line: 0, scope: !2505)
!2513 = !DILocation(line: 927, column: 10, scope: !2505)
!2514 = !DILocation(line: 927, column: 3, scope: !2505)
!2515 = distinct !DISubprogram(name: "quotearg", scope: !440, file: !440, line: 931, type: !990, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2516)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2515, file: !440, line: 931, type: !78)
!2518 = !DILocation(line: 0, scope: !2515)
!2519 = !DILocation(line: 0, scope: !2409, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 933, column: 10, scope: !2515)
!2521 = !DILocation(line: 921, column: 10, scope: !2409, inlinedAt: !2520)
!2522 = !DILocation(line: 933, column: 3, scope: !2515)
!2523 = distinct !DISubprogram(name: "quotearg_mem", scope: !440, file: !440, line: 937, type: !2524, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!244, !78, !102}
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2523, file: !440, line: 937, type: !78)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2523, file: !440, line: 937, type: !102)
!2529 = !DILocation(line: 0, scope: !2523)
!2530 = !DILocation(line: 0, scope: !2505, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 939, column: 10, scope: !2523)
!2532 = !DILocation(line: 927, column: 10, scope: !2505, inlinedAt: !2531)
!2533 = !DILocation(line: 939, column: 3, scope: !2523)
!2534 = distinct !DISubprogram(name: "quotearg_n_style", scope: !440, file: !440, line: 943, type: !2535, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!244, !100, !463, !78}
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !440, line: 943, type: !100)
!2539 = !DILocalVariable(name: "s", arg: 2, scope: !2534, file: !440, line: 943, type: !463)
!2540 = !DILocalVariable(name: "arg", arg: 3, scope: !2534, file: !440, line: 943, type: !78)
!2541 = !DILocalVariable(name: "o", scope: !2534, file: !440, line: 945, type: !1635)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 0, scope: !2534)
!2544 = !DILocation(line: 945, column: 3, scope: !2534)
!2545 = !{!2546}
!2546 = distinct !{!2546, !2547, !"quoting_options_from_style: argument 0"}
!2547 = distinct !{!2547, !"quoting_options_from_style"}
!2548 = !DILocation(line: 945, column: 36, scope: !2534)
!2549 = !DILocalVariable(name: "style", arg: 1, scope: !2550, file: !440, line: 183, type: !463)
!2550 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !440, file: !440, line: 183, type: !2551, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!490, !463}
!2553 = !{!2549, !2554}
!2554 = !DILocalVariable(name: "o", scope: !2550, file: !440, line: 185, type: !490)
!2555 = !DILocation(line: 0, scope: !2550, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 945, column: 36, scope: !2534)
!2557 = !DILocation(line: 185, column: 26, scope: !2550, inlinedAt: !2556)
!2558 = distinct !DIAssignID()
!2559 = !DILocation(line: 186, column: 13, scope: !2560, inlinedAt: !2556)
!2560 = distinct !DILexicalBlock(scope: !2550, file: !440, line: 186, column: 7)
!2561 = !DILocation(line: 186, column: 7, scope: !2550, inlinedAt: !2556)
!2562 = !DILocation(line: 187, column: 5, scope: !2560, inlinedAt: !2556)
!2563 = !DILocation(line: 188, column: 11, scope: !2550, inlinedAt: !2556)
!2564 = distinct !DIAssignID()
!2565 = !DILocation(line: 946, column: 10, scope: !2534)
!2566 = !DILocation(line: 947, column: 1, scope: !2534)
!2567 = !DILocation(line: 946, column: 3, scope: !2534)
!2568 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !440, file: !440, line: 950, type: !2569, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!244, !100, !463, !78, !102}
!2571 = !{!2572, !2573, !2574, !2575, !2576}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2568, file: !440, line: 950, type: !100)
!2573 = !DILocalVariable(name: "s", arg: 2, scope: !2568, file: !440, line: 950, type: !463)
!2574 = !DILocalVariable(name: "arg", arg: 3, scope: !2568, file: !440, line: 951, type: !78)
!2575 = !DILocalVariable(name: "argsize", arg: 4, scope: !2568, file: !440, line: 951, type: !102)
!2576 = !DILocalVariable(name: "o", scope: !2568, file: !440, line: 953, type: !1635)
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 0, scope: !2568)
!2579 = !DILocation(line: 953, column: 3, scope: !2568)
!2580 = !{!2581}
!2581 = distinct !{!2581, !2582, !"quoting_options_from_style: argument 0"}
!2582 = distinct !{!2582, !"quoting_options_from_style"}
!2583 = !DILocation(line: 953, column: 36, scope: !2568)
!2584 = !DILocation(line: 0, scope: !2550, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 953, column: 36, scope: !2568)
!2586 = !DILocation(line: 185, column: 26, scope: !2550, inlinedAt: !2585)
!2587 = distinct !DIAssignID()
!2588 = !DILocation(line: 186, column: 13, scope: !2560, inlinedAt: !2585)
!2589 = !DILocation(line: 186, column: 7, scope: !2550, inlinedAt: !2585)
!2590 = !DILocation(line: 187, column: 5, scope: !2560, inlinedAt: !2585)
!2591 = !DILocation(line: 188, column: 11, scope: !2550, inlinedAt: !2585)
!2592 = distinct !DIAssignID()
!2593 = !DILocation(line: 954, column: 10, scope: !2568)
!2594 = !DILocation(line: 955, column: 1, scope: !2568)
!2595 = !DILocation(line: 954, column: 3, scope: !2568)
!2596 = distinct !DISubprogram(name: "quotearg_style", scope: !440, file: !440, line: 958, type: !2597, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!244, !463, !78}
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "s", arg: 1, scope: !2596, file: !440, line: 958, type: !463)
!2601 = !DILocalVariable(name: "arg", arg: 2, scope: !2596, file: !440, line: 958, type: !78)
!2602 = distinct !DIAssignID()
!2603 = !DILocation(line: 0, scope: !2596)
!2604 = !DILocation(line: 0, scope: !2534, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 960, column: 10, scope: !2596)
!2606 = !DILocation(line: 945, column: 3, scope: !2534, inlinedAt: !2605)
!2607 = !{!2608}
!2608 = distinct !{!2608, !2609, !"quoting_options_from_style: argument 0"}
!2609 = distinct !{!2609, !"quoting_options_from_style"}
!2610 = !DILocation(line: 945, column: 36, scope: !2534, inlinedAt: !2605)
!2611 = !DILocation(line: 0, scope: !2550, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 945, column: 36, scope: !2534, inlinedAt: !2605)
!2613 = !DILocation(line: 185, column: 26, scope: !2550, inlinedAt: !2612)
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 186, column: 13, scope: !2560, inlinedAt: !2612)
!2616 = !DILocation(line: 186, column: 7, scope: !2550, inlinedAt: !2612)
!2617 = !DILocation(line: 187, column: 5, scope: !2560, inlinedAt: !2612)
!2618 = !DILocation(line: 188, column: 11, scope: !2550, inlinedAt: !2612)
!2619 = distinct !DIAssignID()
!2620 = !DILocation(line: 946, column: 10, scope: !2534, inlinedAt: !2605)
!2621 = !DILocation(line: 947, column: 1, scope: !2534, inlinedAt: !2605)
!2622 = !DILocation(line: 960, column: 3, scope: !2596)
!2623 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !440, file: !440, line: 964, type: !2624, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!244, !463, !78, !102}
!2626 = !{!2627, !2628, !2629}
!2627 = !DILocalVariable(name: "s", arg: 1, scope: !2623, file: !440, line: 964, type: !463)
!2628 = !DILocalVariable(name: "arg", arg: 2, scope: !2623, file: !440, line: 964, type: !78)
!2629 = !DILocalVariable(name: "argsize", arg: 3, scope: !2623, file: !440, line: 964, type: !102)
!2630 = distinct !DIAssignID()
!2631 = !DILocation(line: 0, scope: !2623)
!2632 = !DILocation(line: 0, scope: !2568, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 966, column: 10, scope: !2623)
!2634 = !DILocation(line: 953, column: 3, scope: !2568, inlinedAt: !2633)
!2635 = !{!2636}
!2636 = distinct !{!2636, !2637, !"quoting_options_from_style: argument 0"}
!2637 = distinct !{!2637, !"quoting_options_from_style"}
!2638 = !DILocation(line: 953, column: 36, scope: !2568, inlinedAt: !2633)
!2639 = !DILocation(line: 0, scope: !2550, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 953, column: 36, scope: !2568, inlinedAt: !2633)
!2641 = !DILocation(line: 185, column: 26, scope: !2550, inlinedAt: !2640)
!2642 = distinct !DIAssignID()
!2643 = !DILocation(line: 186, column: 13, scope: !2560, inlinedAt: !2640)
!2644 = !DILocation(line: 186, column: 7, scope: !2550, inlinedAt: !2640)
!2645 = !DILocation(line: 187, column: 5, scope: !2560, inlinedAt: !2640)
!2646 = !DILocation(line: 188, column: 11, scope: !2550, inlinedAt: !2640)
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 954, column: 10, scope: !2568, inlinedAt: !2633)
!2649 = !DILocation(line: 955, column: 1, scope: !2568, inlinedAt: !2633)
!2650 = !DILocation(line: 966, column: 3, scope: !2623)
!2651 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !440, file: !440, line: 970, type: !2652, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!244, !78, !102, !4}
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DILocalVariable(name: "arg", arg: 1, scope: !2651, file: !440, line: 970, type: !78)
!2656 = !DILocalVariable(name: "argsize", arg: 2, scope: !2651, file: !440, line: 970, type: !102)
!2657 = !DILocalVariable(name: "ch", arg: 3, scope: !2651, file: !440, line: 970, type: !4)
!2658 = !DILocalVariable(name: "options", scope: !2651, file: !440, line: 972, type: !490)
!2659 = distinct !DIAssignID()
!2660 = !DILocation(line: 0, scope: !2651)
!2661 = !DILocation(line: 972, column: 3, scope: !2651)
!2662 = !DILocation(line: 973, column: 13, scope: !2651)
!2663 = !{i64 0, i64 4, !864, i64 4, i64 4, !864, i64 8, i64 32, !873, i64 40, i64 8, !808, i64 48, i64 8, !808}
!2664 = distinct !DIAssignID()
!2665 = !DILocation(line: 0, scope: !1654, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 974, column: 3, scope: !2651)
!2667 = !DILocation(line: 147, column: 41, scope: !1654, inlinedAt: !2666)
!2668 = !DILocation(line: 147, column: 62, scope: !1654, inlinedAt: !2666)
!2669 = !DILocation(line: 147, column: 57, scope: !1654, inlinedAt: !2666)
!2670 = !DILocation(line: 148, column: 15, scope: !1654, inlinedAt: !2666)
!2671 = !DILocation(line: 149, column: 21, scope: !1654, inlinedAt: !2666)
!2672 = !DILocation(line: 149, column: 24, scope: !1654, inlinedAt: !2666)
!2673 = !DILocation(line: 150, column: 19, scope: !1654, inlinedAt: !2666)
!2674 = !DILocation(line: 150, column: 24, scope: !1654, inlinedAt: !2666)
!2675 = !DILocation(line: 150, column: 6, scope: !1654, inlinedAt: !2666)
!2676 = !DILocation(line: 975, column: 10, scope: !2651)
!2677 = !DILocation(line: 976, column: 1, scope: !2651)
!2678 = !DILocation(line: 975, column: 3, scope: !2651)
!2679 = distinct !DISubprogram(name: "quotearg_char", scope: !440, file: !440, line: 979, type: !2680, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!244, !78, !4}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "arg", arg: 1, scope: !2679, file: !440, line: 979, type: !78)
!2684 = !DILocalVariable(name: "ch", arg: 2, scope: !2679, file: !440, line: 979, type: !4)
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 0, scope: !2679)
!2687 = !DILocation(line: 0, scope: !2651, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 981, column: 10, scope: !2679)
!2689 = !DILocation(line: 972, column: 3, scope: !2651, inlinedAt: !2688)
!2690 = !DILocation(line: 973, column: 13, scope: !2651, inlinedAt: !2688)
!2691 = distinct !DIAssignID()
!2692 = !DILocation(line: 0, scope: !1654, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 974, column: 3, scope: !2651, inlinedAt: !2688)
!2694 = !DILocation(line: 147, column: 41, scope: !1654, inlinedAt: !2693)
!2695 = !DILocation(line: 147, column: 62, scope: !1654, inlinedAt: !2693)
!2696 = !DILocation(line: 147, column: 57, scope: !1654, inlinedAt: !2693)
!2697 = !DILocation(line: 148, column: 15, scope: !1654, inlinedAt: !2693)
!2698 = !DILocation(line: 149, column: 21, scope: !1654, inlinedAt: !2693)
!2699 = !DILocation(line: 149, column: 24, scope: !1654, inlinedAt: !2693)
!2700 = !DILocation(line: 150, column: 19, scope: !1654, inlinedAt: !2693)
!2701 = !DILocation(line: 150, column: 24, scope: !1654, inlinedAt: !2693)
!2702 = !DILocation(line: 150, column: 6, scope: !1654, inlinedAt: !2693)
!2703 = !DILocation(line: 975, column: 10, scope: !2651, inlinedAt: !2688)
!2704 = !DILocation(line: 976, column: 1, scope: !2651, inlinedAt: !2688)
!2705 = !DILocation(line: 981, column: 3, scope: !2679)
!2706 = distinct !DISubprogram(name: "quotearg_colon", scope: !440, file: !440, line: 985, type: !990, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2707)
!2707 = !{!2708}
!2708 = !DILocalVariable(name: "arg", arg: 1, scope: !2706, file: !440, line: 985, type: !78)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2706)
!2711 = !DILocation(line: 0, scope: !2679, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 987, column: 10, scope: !2706)
!2713 = !DILocation(line: 0, scope: !2651, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 981, column: 10, scope: !2679, inlinedAt: !2712)
!2715 = !DILocation(line: 972, column: 3, scope: !2651, inlinedAt: !2714)
!2716 = !DILocation(line: 973, column: 13, scope: !2651, inlinedAt: !2714)
!2717 = distinct !DIAssignID()
!2718 = !DILocation(line: 0, scope: !1654, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 974, column: 3, scope: !2651, inlinedAt: !2714)
!2720 = !DILocation(line: 147, column: 57, scope: !1654, inlinedAt: !2719)
!2721 = !DILocation(line: 149, column: 21, scope: !1654, inlinedAt: !2719)
!2722 = !DILocation(line: 150, column: 6, scope: !1654, inlinedAt: !2719)
!2723 = !DILocation(line: 975, column: 10, scope: !2651, inlinedAt: !2714)
!2724 = !DILocation(line: 976, column: 1, scope: !2651, inlinedAt: !2714)
!2725 = !DILocation(line: 987, column: 3, scope: !2706)
!2726 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !440, file: !440, line: 991, type: !2524, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2727)
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !440, line: 991, type: !78)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2726, file: !440, line: 991, type: !102)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 0, scope: !2726)
!2732 = !DILocation(line: 0, scope: !2651, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 993, column: 10, scope: !2726)
!2734 = !DILocation(line: 972, column: 3, scope: !2651, inlinedAt: !2733)
!2735 = !DILocation(line: 973, column: 13, scope: !2651, inlinedAt: !2733)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 0, scope: !1654, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 974, column: 3, scope: !2651, inlinedAt: !2733)
!2739 = !DILocation(line: 147, column: 57, scope: !1654, inlinedAt: !2738)
!2740 = !DILocation(line: 149, column: 21, scope: !1654, inlinedAt: !2738)
!2741 = !DILocation(line: 150, column: 6, scope: !1654, inlinedAt: !2738)
!2742 = !DILocation(line: 975, column: 10, scope: !2651, inlinedAt: !2733)
!2743 = !DILocation(line: 976, column: 1, scope: !2651, inlinedAt: !2733)
!2744 = !DILocation(line: 993, column: 3, scope: !2726)
!2745 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !440, file: !440, line: 997, type: !2535, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2746)
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2745, file: !440, line: 997, type: !100)
!2748 = !DILocalVariable(name: "s", arg: 2, scope: !2745, file: !440, line: 997, type: !463)
!2749 = !DILocalVariable(name: "arg", arg: 3, scope: !2745, file: !440, line: 997, type: !78)
!2750 = !DILocalVariable(name: "options", scope: !2745, file: !440, line: 999, type: !490)
!2751 = distinct !DIAssignID()
!2752 = !DILocation(line: 0, scope: !2745)
!2753 = !DILocation(line: 185, column: 26, scope: !2550, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1000, column: 13, scope: !2745)
!2755 = !DILocation(line: 999, column: 3, scope: !2745)
!2756 = !DILocation(line: 0, scope: !2550, inlinedAt: !2754)
!2757 = !DILocation(line: 186, column: 13, scope: !2560, inlinedAt: !2754)
!2758 = !DILocation(line: 186, column: 7, scope: !2550, inlinedAt: !2754)
!2759 = !DILocation(line: 187, column: 5, scope: !2560, inlinedAt: !2754)
!2760 = !{!2761}
!2761 = distinct !{!2761, !2762, !"quoting_options_from_style: argument 0"}
!2762 = distinct !{!2762, !"quoting_options_from_style"}
!2763 = !DILocation(line: 1000, column: 13, scope: !2745)
!2764 = distinct !DIAssignID()
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 0, scope: !1654, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1001, column: 3, scope: !2745)
!2768 = !DILocation(line: 147, column: 57, scope: !1654, inlinedAt: !2767)
!2769 = !DILocation(line: 149, column: 21, scope: !1654, inlinedAt: !2767)
!2770 = !DILocation(line: 150, column: 6, scope: !1654, inlinedAt: !2767)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 1002, column: 10, scope: !2745)
!2773 = !DILocation(line: 1003, column: 1, scope: !2745)
!2774 = !DILocation(line: 1002, column: 3, scope: !2745)
!2775 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !440, file: !440, line: 1006, type: !2776, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!244, !100, !78, !78, !78}
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !440, line: 1006, type: !100)
!2780 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2775, file: !440, line: 1006, type: !78)
!2781 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2775, file: !440, line: 1007, type: !78)
!2782 = !DILocalVariable(name: "arg", arg: 4, scope: !2775, file: !440, line: 1007, type: !78)
!2783 = distinct !DIAssignID()
!2784 = !DILocation(line: 0, scope: !2775)
!2785 = !DILocalVariable(name: "o", scope: !2786, file: !440, line: 1018, type: !490)
!2786 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !440, file: !440, line: 1014, type: !2787, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!244, !100, !78, !78, !78, !102}
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2785}
!2790 = !DILocalVariable(name: "n", arg: 1, scope: !2786, file: !440, line: 1014, type: !100)
!2791 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2786, file: !440, line: 1014, type: !78)
!2792 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2786, file: !440, line: 1015, type: !78)
!2793 = !DILocalVariable(name: "arg", arg: 4, scope: !2786, file: !440, line: 1016, type: !78)
!2794 = !DILocalVariable(name: "argsize", arg: 5, scope: !2786, file: !440, line: 1016, type: !102)
!2795 = !DILocation(line: 0, scope: !2786, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 1009, column: 10, scope: !2775)
!2797 = !DILocation(line: 1018, column: 3, scope: !2786, inlinedAt: !2796)
!2798 = !DILocation(line: 1018, column: 30, scope: !2786, inlinedAt: !2796)
!2799 = distinct !DIAssignID()
!2800 = distinct !DIAssignID()
!2801 = !DILocation(line: 0, scope: !1694, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1019, column: 3, scope: !2786, inlinedAt: !2796)
!2803 = !DILocation(line: 174, column: 12, scope: !1694, inlinedAt: !2802)
!2804 = distinct !DIAssignID()
!2805 = !DILocation(line: 175, column: 8, scope: !1707, inlinedAt: !2802)
!2806 = !DILocation(line: 175, column: 19, scope: !1707, inlinedAt: !2802)
!2807 = !DILocation(line: 176, column: 5, scope: !1707, inlinedAt: !2802)
!2808 = !DILocation(line: 177, column: 6, scope: !1694, inlinedAt: !2802)
!2809 = !DILocation(line: 177, column: 17, scope: !1694, inlinedAt: !2802)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 178, column: 6, scope: !1694, inlinedAt: !2802)
!2812 = !DILocation(line: 178, column: 18, scope: !1694, inlinedAt: !2802)
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 1020, column: 10, scope: !2786, inlinedAt: !2796)
!2815 = !DILocation(line: 1021, column: 1, scope: !2786, inlinedAt: !2796)
!2816 = !DILocation(line: 1009, column: 3, scope: !2775)
!2817 = distinct !DIAssignID()
!2818 = !DILocation(line: 0, scope: !2786)
!2819 = !DILocation(line: 1018, column: 3, scope: !2786)
!2820 = !DILocation(line: 1018, column: 30, scope: !2786)
!2821 = distinct !DIAssignID()
!2822 = distinct !DIAssignID()
!2823 = !DILocation(line: 0, scope: !1694, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1019, column: 3, scope: !2786)
!2825 = !DILocation(line: 174, column: 12, scope: !1694, inlinedAt: !2824)
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 175, column: 8, scope: !1707, inlinedAt: !2824)
!2828 = !DILocation(line: 175, column: 19, scope: !1707, inlinedAt: !2824)
!2829 = !DILocation(line: 176, column: 5, scope: !1707, inlinedAt: !2824)
!2830 = !DILocation(line: 177, column: 6, scope: !1694, inlinedAt: !2824)
!2831 = !DILocation(line: 177, column: 17, scope: !1694, inlinedAt: !2824)
!2832 = distinct !DIAssignID()
!2833 = !DILocation(line: 178, column: 6, scope: !1694, inlinedAt: !2824)
!2834 = !DILocation(line: 178, column: 18, scope: !1694, inlinedAt: !2824)
!2835 = distinct !DIAssignID()
!2836 = !DILocation(line: 1020, column: 10, scope: !2786)
!2837 = !DILocation(line: 1021, column: 1, scope: !2786)
!2838 = !DILocation(line: 1020, column: 3, scope: !2786)
!2839 = distinct !DISubprogram(name: "quotearg_custom", scope: !440, file: !440, line: 1024, type: !2840, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!244, !78, !78, !78}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2839, file: !440, line: 1024, type: !78)
!2844 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2839, file: !440, line: 1024, type: !78)
!2845 = !DILocalVariable(name: "arg", arg: 3, scope: !2839, file: !440, line: 1025, type: !78)
!2846 = distinct !DIAssignID()
!2847 = !DILocation(line: 0, scope: !2839)
!2848 = !DILocation(line: 0, scope: !2775, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1027, column: 10, scope: !2839)
!2850 = !DILocation(line: 0, scope: !2786, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1009, column: 10, scope: !2775, inlinedAt: !2849)
!2852 = !DILocation(line: 1018, column: 3, scope: !2786, inlinedAt: !2851)
!2853 = !DILocation(line: 1018, column: 30, scope: !2786, inlinedAt: !2851)
!2854 = distinct !DIAssignID()
!2855 = distinct !DIAssignID()
!2856 = !DILocation(line: 0, scope: !1694, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 1019, column: 3, scope: !2786, inlinedAt: !2851)
!2858 = !DILocation(line: 174, column: 12, scope: !1694, inlinedAt: !2857)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 175, column: 8, scope: !1707, inlinedAt: !2857)
!2861 = !DILocation(line: 175, column: 19, scope: !1707, inlinedAt: !2857)
!2862 = !DILocation(line: 176, column: 5, scope: !1707, inlinedAt: !2857)
!2863 = !DILocation(line: 177, column: 6, scope: !1694, inlinedAt: !2857)
!2864 = !DILocation(line: 177, column: 17, scope: !1694, inlinedAt: !2857)
!2865 = distinct !DIAssignID()
!2866 = !DILocation(line: 178, column: 6, scope: !1694, inlinedAt: !2857)
!2867 = !DILocation(line: 178, column: 18, scope: !1694, inlinedAt: !2857)
!2868 = distinct !DIAssignID()
!2869 = !DILocation(line: 1020, column: 10, scope: !2786, inlinedAt: !2851)
!2870 = !DILocation(line: 1021, column: 1, scope: !2786, inlinedAt: !2851)
!2871 = !DILocation(line: 1027, column: 3, scope: !2839)
!2872 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !440, file: !440, line: 1031, type: !2873, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!244, !78, !78, !78, !102}
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2872, file: !440, line: 1031, type: !78)
!2877 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2872, file: !440, line: 1031, type: !78)
!2878 = !DILocalVariable(name: "arg", arg: 3, scope: !2872, file: !440, line: 1032, type: !78)
!2879 = !DILocalVariable(name: "argsize", arg: 4, scope: !2872, file: !440, line: 1032, type: !102)
!2880 = distinct !DIAssignID()
!2881 = !DILocation(line: 0, scope: !2872)
!2882 = !DILocation(line: 0, scope: !2786, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 1034, column: 10, scope: !2872)
!2884 = !DILocation(line: 1018, column: 3, scope: !2786, inlinedAt: !2883)
!2885 = !DILocation(line: 1018, column: 30, scope: !2786, inlinedAt: !2883)
!2886 = distinct !DIAssignID()
!2887 = distinct !DIAssignID()
!2888 = !DILocation(line: 0, scope: !1694, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1019, column: 3, scope: !2786, inlinedAt: !2883)
!2890 = !DILocation(line: 174, column: 12, scope: !1694, inlinedAt: !2889)
!2891 = distinct !DIAssignID()
!2892 = !DILocation(line: 175, column: 8, scope: !1707, inlinedAt: !2889)
!2893 = !DILocation(line: 175, column: 19, scope: !1707, inlinedAt: !2889)
!2894 = !DILocation(line: 176, column: 5, scope: !1707, inlinedAt: !2889)
!2895 = !DILocation(line: 177, column: 6, scope: !1694, inlinedAt: !2889)
!2896 = !DILocation(line: 177, column: 17, scope: !1694, inlinedAt: !2889)
!2897 = distinct !DIAssignID()
!2898 = !DILocation(line: 178, column: 6, scope: !1694, inlinedAt: !2889)
!2899 = !DILocation(line: 178, column: 18, scope: !1694, inlinedAt: !2889)
!2900 = distinct !DIAssignID()
!2901 = !DILocation(line: 1020, column: 10, scope: !2786, inlinedAt: !2883)
!2902 = !DILocation(line: 1021, column: 1, scope: !2786, inlinedAt: !2883)
!2903 = !DILocation(line: 1034, column: 3, scope: !2872)
!2904 = distinct !DISubprogram(name: "quote_n_mem", scope: !440, file: !440, line: 1049, type: !2905, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!78, !100, !78, !102}
!2907 = !{!2908, !2909, !2910}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !440, line: 1049, type: !100)
!2909 = !DILocalVariable(name: "arg", arg: 2, scope: !2904, file: !440, line: 1049, type: !78)
!2910 = !DILocalVariable(name: "argsize", arg: 3, scope: !2904, file: !440, line: 1049, type: !102)
!2911 = !DILocation(line: 0, scope: !2904)
!2912 = !DILocation(line: 1051, column: 10, scope: !2904)
!2913 = !DILocation(line: 1051, column: 3, scope: !2904)
!2914 = distinct !DISubprogram(name: "quote_mem", scope: !440, file: !440, line: 1055, type: !2915, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!78, !78, !102}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !440, line: 1055, type: !78)
!2919 = !DILocalVariable(name: "argsize", arg: 2, scope: !2914, file: !440, line: 1055, type: !102)
!2920 = !DILocation(line: 0, scope: !2914)
!2921 = !DILocation(line: 0, scope: !2904, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1057, column: 10, scope: !2914)
!2923 = !DILocation(line: 1051, column: 10, scope: !2904, inlinedAt: !2922)
!2924 = !DILocation(line: 1057, column: 3, scope: !2914)
!2925 = distinct !DISubprogram(name: "quote_n", scope: !440, file: !440, line: 1061, type: !2926, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!78, !100, !78}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !440, line: 1061, type: !100)
!2930 = !DILocalVariable(name: "arg", arg: 2, scope: !2925, file: !440, line: 1061, type: !78)
!2931 = !DILocation(line: 0, scope: !2925)
!2932 = !DILocation(line: 0, scope: !2904, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 1063, column: 10, scope: !2925)
!2934 = !DILocation(line: 1051, column: 10, scope: !2904, inlinedAt: !2933)
!2935 = !DILocation(line: 1063, column: 3, scope: !2925)
!2936 = distinct !DISubprogram(name: "quote", scope: !440, file: !440, line: 1067, type: !2937, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!78, !78}
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2936, file: !440, line: 1067, type: !78)
!2941 = !DILocation(line: 0, scope: !2936)
!2942 = !DILocation(line: 0, scope: !2925, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 1069, column: 10, scope: !2936)
!2944 = !DILocation(line: 0, scope: !2904, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1063, column: 10, scope: !2925, inlinedAt: !2943)
!2946 = !DILocation(line: 1051, column: 10, scope: !2904, inlinedAt: !2945)
!2947 = !DILocation(line: 1069, column: 3, scope: !2936)
!2948 = distinct !DISubprogram(name: "version_etc_arn", scope: !553, file: !553, line: 61, type: !2949, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !2986)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2951, !78, !78, !78, !2985, !102}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2953, file: !240, line: 51, baseType: !100, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2953, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2953, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2953, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2953, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2953, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2953, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2953, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2953, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2953, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2953, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2953, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2953, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2953, file: !240, line: 70, baseType: !2969, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2953, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2953, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2953, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2953, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2953, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2953, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2953, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2953, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2953, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2953, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2953, file: !240, line: 93, baseType: !2969, size: 64, offset: 1344)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2953, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2953, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2953, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2953, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992}
!2987 = !DILocalVariable(name: "stream", arg: 1, scope: !2948, file: !553, line: 61, type: !2951)
!2988 = !DILocalVariable(name: "command_name", arg: 2, scope: !2948, file: !553, line: 62, type: !78)
!2989 = !DILocalVariable(name: "package", arg: 3, scope: !2948, file: !553, line: 62, type: !78)
!2990 = !DILocalVariable(name: "version", arg: 4, scope: !2948, file: !553, line: 63, type: !78)
!2991 = !DILocalVariable(name: "authors", arg: 5, scope: !2948, file: !553, line: 64, type: !2985)
!2992 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2948, file: !553, line: 64, type: !102)
!2993 = !DILocation(line: 0, scope: !2948)
!2994 = !DILocation(line: 66, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2948, file: !553, line: 66, column: 7)
!2996 = !DILocation(line: 66, column: 7, scope: !2948)
!2997 = !DILocation(line: 67, column: 5, scope: !2995)
!2998 = !DILocation(line: 69, column: 5, scope: !2995)
!2999 = !DILocation(line: 83, column: 3, scope: !2948)
!3000 = !DILocation(line: 85, column: 3, scope: !2948)
!3001 = !DILocation(line: 88, column: 3, scope: !2948)
!3002 = !DILocation(line: 95, column: 3, scope: !2948)
!3003 = !DILocation(line: 97, column: 3, scope: !2948)
!3004 = !DILocation(line: 105, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2948, file: !553, line: 98, column: 5)
!3006 = !DILocation(line: 106, column: 7, scope: !3005)
!3007 = !DILocation(line: 109, column: 7, scope: !3005)
!3008 = !DILocation(line: 110, column: 7, scope: !3005)
!3009 = !DILocation(line: 113, column: 7, scope: !3005)
!3010 = !DILocation(line: 115, column: 7, scope: !3005)
!3011 = !DILocation(line: 120, column: 7, scope: !3005)
!3012 = !DILocation(line: 122, column: 7, scope: !3005)
!3013 = !DILocation(line: 127, column: 7, scope: !3005)
!3014 = !DILocation(line: 129, column: 7, scope: !3005)
!3015 = !DILocation(line: 134, column: 7, scope: !3005)
!3016 = !DILocation(line: 137, column: 7, scope: !3005)
!3017 = !DILocation(line: 142, column: 7, scope: !3005)
!3018 = !DILocation(line: 145, column: 7, scope: !3005)
!3019 = !DILocation(line: 150, column: 7, scope: !3005)
!3020 = !DILocation(line: 154, column: 7, scope: !3005)
!3021 = !DILocation(line: 159, column: 7, scope: !3005)
!3022 = !DILocation(line: 163, column: 7, scope: !3005)
!3023 = !DILocation(line: 170, column: 7, scope: !3005)
!3024 = !DILocation(line: 174, column: 7, scope: !3005)
!3025 = !DILocation(line: 176, column: 1, scope: !2948)
!3026 = distinct !DISubprogram(name: "version_etc_ar", scope: !553, file: !553, line: 183, type: !3027, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2951, !78, !78, !78, !2985}
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035}
!3030 = !DILocalVariable(name: "stream", arg: 1, scope: !3026, file: !553, line: 183, type: !2951)
!3031 = !DILocalVariable(name: "command_name", arg: 2, scope: !3026, file: !553, line: 184, type: !78)
!3032 = !DILocalVariable(name: "package", arg: 3, scope: !3026, file: !553, line: 184, type: !78)
!3033 = !DILocalVariable(name: "version", arg: 4, scope: !3026, file: !553, line: 185, type: !78)
!3034 = !DILocalVariable(name: "authors", arg: 5, scope: !3026, file: !553, line: 185, type: !2985)
!3035 = !DILocalVariable(name: "n_authors", scope: !3026, file: !553, line: 187, type: !102)
!3036 = !DILocation(line: 0, scope: !3026)
!3037 = !DILocation(line: 189, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3026, file: !553, line: 189, column: 3)
!3039 = !DILocation(line: 189, scope: !3038)
!3040 = !DILocation(line: 189, column: 23, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !553, line: 189, column: 3)
!3042 = !DILocation(line: 189, column: 3, scope: !3038)
!3043 = !DILocation(line: 189, column: 52, scope: !3041)
!3044 = distinct !{!3044, !3042, !3045, !911}
!3045 = !DILocation(line: 190, column: 5, scope: !3038)
!3046 = !DILocation(line: 191, column: 3, scope: !3026)
!3047 = !DILocation(line: 192, column: 1, scope: !3026)
!3048 = distinct !DISubprogram(name: "version_etc_va", scope: !553, file: !553, line: 199, type: !3049, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3061)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2951, !78, !78, !78, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !331, line: 52, baseType: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !333, line: 12, baseType: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !553, baseType: !3054)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3054, file: !553, line: 192, baseType: !99, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3054, file: !553, line: 192, baseType: !99, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3054, file: !553, line: 192, baseType: !99, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3054, file: !553, line: 192, baseType: !100, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3054, file: !553, line: 192, baseType: !100, size: 32, offset: 224)
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3062 = !DILocalVariable(name: "stream", arg: 1, scope: !3048, file: !553, line: 199, type: !2951)
!3063 = !DILocalVariable(name: "command_name", arg: 2, scope: !3048, file: !553, line: 200, type: !78)
!3064 = !DILocalVariable(name: "package", arg: 3, scope: !3048, file: !553, line: 200, type: !78)
!3065 = !DILocalVariable(name: "version", arg: 4, scope: !3048, file: !553, line: 201, type: !78)
!3066 = !DILocalVariable(name: "authors", arg: 5, scope: !3048, file: !553, line: 201, type: !3051)
!3067 = !DILocalVariable(name: "n_authors", scope: !3048, file: !553, line: 203, type: !102)
!3068 = !DILocalVariable(name: "authtab", scope: !3048, file: !553, line: 204, type: !3069)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !35)
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 0, scope: !3048)
!3072 = !DILocation(line: 204, column: 3, scope: !3048)
!3073 = !DILocation(line: 208, column: 35, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !553, line: 206, column: 3)
!3075 = distinct !DILexicalBlock(scope: !3048, file: !553, line: 206, column: 3)
!3076 = !DILocation(line: 208, column: 33, scope: !3074)
!3077 = !DILocation(line: 208, column: 67, scope: !3074)
!3078 = !DILocation(line: 206, column: 3, scope: !3075)
!3079 = !DILocation(line: 208, column: 14, scope: !3074)
!3080 = !DILocation(line: 0, scope: !3075)
!3081 = !DILocation(line: 211, column: 3, scope: !3048)
!3082 = !DILocation(line: 213, column: 1, scope: !3048)
!3083 = distinct !DISubprogram(name: "version_etc", scope: !553, file: !553, line: 230, type: !3084, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !2951, !78, !78, !78, null}
!3086 = !{!3087, !3088, !3089, !3090, !3091}
!3087 = !DILocalVariable(name: "stream", arg: 1, scope: !3083, file: !553, line: 230, type: !2951)
!3088 = !DILocalVariable(name: "command_name", arg: 2, scope: !3083, file: !553, line: 231, type: !78)
!3089 = !DILocalVariable(name: "package", arg: 3, scope: !3083, file: !553, line: 231, type: !78)
!3090 = !DILocalVariable(name: "version", arg: 4, scope: !3083, file: !553, line: 232, type: !78)
!3091 = !DILocalVariable(name: "authors", scope: !3083, file: !553, line: 234, type: !3051)
!3092 = distinct !DIAssignID()
!3093 = !DILocation(line: 0, scope: !3083)
!3094 = !DILocation(line: 234, column: 3, scope: !3083)
!3095 = !DILocation(line: 235, column: 3, scope: !3083)
!3096 = !DILocation(line: 236, column: 3, scope: !3083)
!3097 = !DILocation(line: 237, column: 3, scope: !3083)
!3098 = !DILocation(line: 238, column: 1, scope: !3083)
!3099 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !553, file: !553, line: 241, type: !371, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710)
!3100 = !DILocation(line: 243, column: 3, scope: !3099)
!3101 = !DILocation(line: 248, column: 3, scope: !3099)
!3102 = !DILocation(line: 254, column: 3, scope: !3099)
!3103 = !DILocation(line: 259, column: 3, scope: !3099)
!3104 = !DILocation(line: 261, column: 1, scope: !3099)
!3105 = distinct !DISubprogram(name: "xnrealloc", scope: !3106, file: !3106, line: 147, type: !3107, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3109)
!3106 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!99, !99, !102, !102}
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "p", arg: 1, scope: !3105, file: !3106, line: 147, type: !99)
!3111 = !DILocalVariable(name: "n", arg: 2, scope: !3105, file: !3106, line: 147, type: !102)
!3112 = !DILocalVariable(name: "s", arg: 3, scope: !3105, file: !3106, line: 147, type: !102)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocalVariable(name: "p", arg: 1, scope: !3115, file: !717, line: 83, type: !99)
!3115 = distinct !DISubprogram(name: "xreallocarray", scope: !717, file: !717, line: 83, type: !3107, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3116)
!3116 = !{!3114, !3117, !3118}
!3117 = !DILocalVariable(name: "n", arg: 2, scope: !3115, file: !717, line: 83, type: !102)
!3118 = !DILocalVariable(name: "s", arg: 3, scope: !3115, file: !717, line: 83, type: !102)
!3119 = !DILocation(line: 0, scope: !3115, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 149, column: 10, scope: !3105)
!3121 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3120)
!3122 = !DILocalVariable(name: "p", arg: 1, scope: !3123, file: !717, line: 37, type: !99)
!3123 = distinct !DISubprogram(name: "check_nonnull", scope: !717, file: !717, line: 37, type: !3124, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!99, !99}
!3126 = !{!3122}
!3127 = !DILocation(line: 0, scope: !3123, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3120)
!3129 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3128)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !717, line: 39, column: 7)
!3131 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3128)
!3132 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3128)
!3133 = !DILocation(line: 149, column: 3, scope: !3105)
!3134 = !DILocation(line: 0, scope: !3115)
!3135 = !DILocation(line: 85, column: 25, scope: !3115)
!3136 = !DILocation(line: 0, scope: !3123, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 85, column: 10, scope: !3115)
!3138 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3137)
!3139 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3137)
!3140 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3137)
!3141 = !DILocation(line: 85, column: 3, scope: !3115)
!3142 = distinct !DISubprogram(name: "xmalloc", scope: !717, file: !717, line: 47, type: !3143, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!99, !102}
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "s", arg: 1, scope: !3142, file: !717, line: 47, type: !102)
!3147 = !DILocation(line: 0, scope: !3142)
!3148 = !DILocation(line: 49, column: 25, scope: !3142)
!3149 = !DILocation(line: 0, scope: !3123, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 49, column: 10, scope: !3142)
!3151 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3150)
!3152 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3150)
!3153 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3150)
!3154 = !DILocation(line: 49, column: 3, scope: !3142)
!3155 = !DISubprogram(name: "malloc", scope: !988, file: !988, line: 540, type: !3143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3156 = distinct !DISubprogram(name: "ximalloc", scope: !717, file: !717, line: 53, type: !3157, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!99, !736}
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "s", arg: 1, scope: !3156, file: !717, line: 53, type: !736)
!3161 = !DILocation(line: 0, scope: !3156)
!3162 = !DILocalVariable(name: "s", arg: 1, scope: !3163, file: !3164, line: 55, type: !736)
!3163 = distinct !DISubprogram(name: "imalloc", scope: !3164, file: !3164, line: 55, type: !3157, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3165)
!3164 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3165 = !{!3162}
!3166 = !DILocation(line: 0, scope: !3163, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 55, column: 25, scope: !3156)
!3168 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3167)
!3169 = !DILocation(line: 0, scope: !3123, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 55, column: 10, scope: !3156)
!3171 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3170)
!3172 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3170)
!3173 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3170)
!3174 = !DILocation(line: 55, column: 3, scope: !3156)
!3175 = distinct !DISubprogram(name: "xcharalloc", scope: !717, file: !717, line: 59, type: !3176, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!244, !102}
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !717, line: 59, type: !102)
!3180 = !DILocation(line: 0, scope: !3175)
!3181 = !DILocation(line: 0, scope: !3142, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 61, column: 10, scope: !3175)
!3183 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3182)
!3184 = !DILocation(line: 0, scope: !3123, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3182)
!3186 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3185)
!3187 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3185)
!3188 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3185)
!3189 = !DILocation(line: 61, column: 3, scope: !3175)
!3190 = distinct !DISubprogram(name: "xrealloc", scope: !717, file: !717, line: 68, type: !3191, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!99, !99, !102}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3190, file: !717, line: 68, type: !99)
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3190, file: !717, line: 68, type: !102)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocalVariable(name: "ptr", arg: 1, scope: !3198, file: !3199, line: 2057, type: !99)
!3198 = distinct !DISubprogram(name: "rpl_realloc", scope: !3199, file: !3199, line: 2057, type: !3191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3200)
!3199 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3200 = !{!3197, !3201}
!3201 = !DILocalVariable(name: "size", arg: 2, scope: !3198, file: !3199, line: 2057, type: !102)
!3202 = !DILocation(line: 0, scope: !3198, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 70, column: 25, scope: !3190)
!3204 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3203)
!3205 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3203)
!3206 = !DILocation(line: 0, scope: !3123, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 70, column: 10, scope: !3190)
!3208 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3207)
!3209 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3207)
!3210 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3207)
!3211 = !DILocation(line: 70, column: 3, scope: !3190)
!3212 = !DISubprogram(name: "realloc", scope: !988, file: !988, line: 551, type: !3191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3213 = distinct !DISubprogram(name: "xirealloc", scope: !717, file: !717, line: 74, type: !3214, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!99, !99, !736}
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "p", arg: 1, scope: !3213, file: !717, line: 74, type: !99)
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3213, file: !717, line: 74, type: !736)
!3219 = !DILocation(line: 0, scope: !3213)
!3220 = !DILocalVariable(name: "p", arg: 1, scope: !3221, file: !3164, line: 66, type: !99)
!3221 = distinct !DISubprogram(name: "irealloc", scope: !3164, file: !3164, line: 66, type: !3214, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !3164, line: 66, type: !736)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 76, column: 25, scope: !3213)
!3226 = !DILocation(line: 0, scope: !3198, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 68, column: 26, scope: !3221, inlinedAt: !3225)
!3228 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3227)
!3229 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3227)
!3230 = !DILocation(line: 0, scope: !3123, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 76, column: 10, scope: !3213)
!3232 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3231)
!3233 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3231)
!3234 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3231)
!3235 = !DILocation(line: 76, column: 3, scope: !3213)
!3236 = distinct !DISubprogram(name: "xireallocarray", scope: !717, file: !717, line: 89, type: !3237, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!99, !99, !736, !736}
!3239 = !{!3240, !3241, !3242}
!3240 = !DILocalVariable(name: "p", arg: 1, scope: !3236, file: !717, line: 89, type: !99)
!3241 = !DILocalVariable(name: "n", arg: 2, scope: !3236, file: !717, line: 89, type: !736)
!3242 = !DILocalVariable(name: "s", arg: 3, scope: !3236, file: !717, line: 89, type: !736)
!3243 = !DILocation(line: 0, scope: !3236)
!3244 = !DILocalVariable(name: "p", arg: 1, scope: !3245, file: !3164, line: 98, type: !99)
!3245 = distinct !DISubprogram(name: "ireallocarray", scope: !3164, file: !3164, line: 98, type: !3237, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3246)
!3246 = !{!3244, !3247, !3248}
!3247 = !DILocalVariable(name: "n", arg: 2, scope: !3245, file: !3164, line: 98, type: !736)
!3248 = !DILocalVariable(name: "s", arg: 3, scope: !3245, file: !3164, line: 98, type: !736)
!3249 = !DILocation(line: 0, scope: !3245, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 91, column: 25, scope: !3236)
!3251 = !DILocation(line: 101, column: 13, scope: !3245, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !3123, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 91, column: 10, scope: !3236)
!3254 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3253)
!3257 = !DILocation(line: 91, column: 3, scope: !3236)
!3258 = distinct !DISubprogram(name: "xnmalloc", scope: !717, file: !717, line: 98, type: !3259, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!99, !102, !102}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3258, file: !717, line: 98, type: !102)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3258, file: !717, line: 98, type: !102)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 0, scope: !3115, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 100, column: 10, scope: !3258)
!3267 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3266)
!3268 = !DILocation(line: 0, scope: !3123, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3266)
!3270 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3269)
!3271 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3269)
!3272 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3269)
!3273 = !DILocation(line: 100, column: 3, scope: !3258)
!3274 = distinct !DISubprogram(name: "xinmalloc", scope: !717, file: !717, line: 104, type: !3275, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!99, !736, !736}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !717, line: 104, type: !736)
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !717, line: 104, type: !736)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 0, scope: !3236, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 106, column: 10, scope: !3274)
!3283 = !DILocation(line: 0, scope: !3245, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 91, column: 25, scope: !3236, inlinedAt: !3282)
!3285 = !DILocation(line: 101, column: 13, scope: !3245, inlinedAt: !3284)
!3286 = !DILocation(line: 0, scope: !3123, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 91, column: 10, scope: !3236, inlinedAt: !3282)
!3288 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3287)
!3289 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3287)
!3290 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3287)
!3291 = !DILocation(line: 106, column: 3, scope: !3274)
!3292 = distinct !DISubprogram(name: "x2realloc", scope: !717, file: !717, line: 116, type: !3293, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!99, !99, !723}
!3295 = !{!3296, !3297}
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3292, file: !717, line: 116, type: !99)
!3297 = !DILocalVariable(name: "ps", arg: 2, scope: !3292, file: !717, line: 116, type: !723)
!3298 = !DILocation(line: 0, scope: !3292)
!3299 = !DILocation(line: 0, scope: !720, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 118, column: 10, scope: !3292)
!3301 = !DILocation(line: 178, column: 14, scope: !720, inlinedAt: !3300)
!3302 = !DILocation(line: 180, column: 9, scope: !3303, inlinedAt: !3300)
!3303 = distinct !DILexicalBlock(scope: !720, file: !717, line: 180, column: 7)
!3304 = !DILocation(line: 180, column: 7, scope: !720, inlinedAt: !3300)
!3305 = !DILocation(line: 182, column: 13, scope: !3306, inlinedAt: !3300)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !717, line: 182, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !717, line: 181, column: 5)
!3308 = !DILocation(line: 182, column: 11, scope: !3307, inlinedAt: !3300)
!3309 = !DILocation(line: 197, column: 11, scope: !3310, inlinedAt: !3300)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !717, line: 197, column: 11)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !717, line: 195, column: 5)
!3312 = !DILocation(line: 197, column: 11, scope: !3311, inlinedAt: !3300)
!3313 = !DILocation(line: 198, column: 9, scope: !3310, inlinedAt: !3300)
!3314 = !DILocation(line: 0, scope: !3115, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 201, column: 7, scope: !720, inlinedAt: !3300)
!3316 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3315)
!3317 = !DILocation(line: 0, scope: !3123, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3315)
!3319 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3318)
!3322 = !DILocation(line: 202, column: 7, scope: !720, inlinedAt: !3300)
!3323 = !DILocation(line: 118, column: 3, scope: !3292)
!3324 = !DILocation(line: 0, scope: !720)
!3325 = !DILocation(line: 178, column: 14, scope: !720)
!3326 = !DILocation(line: 180, column: 9, scope: !3303)
!3327 = !DILocation(line: 180, column: 7, scope: !720)
!3328 = !DILocation(line: 182, column: 13, scope: !3306)
!3329 = !DILocation(line: 182, column: 11, scope: !3307)
!3330 = !DILocation(line: 190, column: 30, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3306, file: !717, line: 183, column: 9)
!3332 = !DILocation(line: 191, column: 16, scope: !3331)
!3333 = !DILocation(line: 191, column: 13, scope: !3331)
!3334 = !DILocation(line: 192, column: 9, scope: !3331)
!3335 = !DILocation(line: 197, column: 11, scope: !3310)
!3336 = !DILocation(line: 197, column: 11, scope: !3311)
!3337 = !DILocation(line: 198, column: 9, scope: !3310)
!3338 = !DILocation(line: 0, scope: !3115, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 201, column: 7, scope: !720)
!3340 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !3123, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3339)
!3343 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3342)
!3346 = !DILocation(line: 202, column: 7, scope: !720)
!3347 = !DILocation(line: 203, column: 3, scope: !720)
!3348 = !DILocation(line: 0, scope: !732)
!3349 = !DILocation(line: 230, column: 14, scope: !732)
!3350 = !DILocation(line: 238, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !732, file: !717, line: 238, column: 7)
!3352 = !DILocation(line: 238, column: 7, scope: !732)
!3353 = !DILocation(line: 240, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !732, file: !717, line: 240, column: 7)
!3355 = !DILocation(line: 240, column: 18, scope: !3354)
!3356 = !DILocation(line: 253, column: 8, scope: !732)
!3357 = !DILocation(line: 256, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !732, file: !717, line: 256, column: 7)
!3359 = !DILocation(line: 256, column: 7, scope: !732)
!3360 = !DILocation(line: 258, column: 27, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3358, file: !717, line: 257, column: 5)
!3362 = !DILocation(line: 259, column: 32, scope: !3361)
!3363 = !DILocation(line: 260, column: 5, scope: !3361)
!3364 = !DILocation(line: 262, column: 9, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !732, file: !717, line: 262, column: 7)
!3366 = !DILocation(line: 262, column: 7, scope: !732)
!3367 = !DILocation(line: 263, column: 9, scope: !3365)
!3368 = !DILocation(line: 263, column: 5, scope: !3365)
!3369 = !DILocation(line: 264, column: 9, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !732, file: !717, line: 264, column: 7)
!3371 = !DILocation(line: 264, column: 14, scope: !3370)
!3372 = !DILocation(line: 265, column: 7, scope: !3370)
!3373 = !DILocation(line: 265, column: 11, scope: !3370)
!3374 = !DILocation(line: 266, column: 11, scope: !3370)
!3375 = !DILocation(line: 267, column: 14, scope: !3370)
!3376 = !DILocation(line: 264, column: 7, scope: !732)
!3377 = !DILocation(line: 268, column: 5, scope: !3370)
!3378 = !DILocation(line: 0, scope: !3190, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 269, column: 8, scope: !732)
!3380 = !DILocation(line: 0, scope: !3198, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 70, column: 25, scope: !3190, inlinedAt: !3379)
!3382 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3381)
!3383 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3381)
!3384 = !DILocation(line: 0, scope: !3123, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 70, column: 10, scope: !3190, inlinedAt: !3379)
!3386 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3385)
!3389 = !DILocation(line: 270, column: 7, scope: !732)
!3390 = !DILocation(line: 271, column: 3, scope: !732)
!3391 = distinct !DISubprogram(name: "xzalloc", scope: !717, file: !717, line: 279, type: !3143, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3392)
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "s", arg: 1, scope: !3391, file: !717, line: 279, type: !102)
!3394 = !DILocation(line: 0, scope: !3391)
!3395 = !DILocalVariable(name: "n", arg: 1, scope: !3396, file: !717, line: 294, type: !102)
!3396 = distinct !DISubprogram(name: "xcalloc", scope: !717, file: !717, line: 294, type: !3259, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3397)
!3397 = !{!3395, !3398}
!3398 = !DILocalVariable(name: "s", arg: 2, scope: !3396, file: !717, line: 294, type: !102)
!3399 = !DILocation(line: 0, scope: !3396, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 281, column: 10, scope: !3391)
!3401 = !DILocation(line: 296, column: 25, scope: !3396, inlinedAt: !3400)
!3402 = !DILocation(line: 0, scope: !3123, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 296, column: 10, scope: !3396, inlinedAt: !3400)
!3404 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3403)
!3405 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3403)
!3406 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3403)
!3407 = !DILocation(line: 281, column: 3, scope: !3391)
!3408 = !DISubprogram(name: "calloc", scope: !988, file: !988, line: 543, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3409 = !DILocation(line: 0, scope: !3396)
!3410 = !DILocation(line: 296, column: 25, scope: !3396)
!3411 = !DILocation(line: 0, scope: !3123, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 296, column: 10, scope: !3396)
!3413 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3412)
!3414 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3412)
!3415 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3412)
!3416 = !DILocation(line: 296, column: 3, scope: !3396)
!3417 = distinct !DISubprogram(name: "xizalloc", scope: !717, file: !717, line: 285, type: !3157, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3418)
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "s", arg: 1, scope: !3417, file: !717, line: 285, type: !736)
!3420 = !DILocation(line: 0, scope: !3417)
!3421 = !DILocalVariable(name: "n", arg: 1, scope: !3422, file: !717, line: 300, type: !736)
!3422 = distinct !DISubprogram(name: "xicalloc", scope: !717, file: !717, line: 300, type: !3275, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3423)
!3423 = !{!3421, !3424}
!3424 = !DILocalVariable(name: "s", arg: 2, scope: !3422, file: !717, line: 300, type: !736)
!3425 = !DILocation(line: 0, scope: !3422, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 287, column: 10, scope: !3417)
!3427 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !3164, line: 77, type: !736)
!3428 = distinct !DISubprogram(name: "icalloc", scope: !3164, file: !3164, line: 77, type: !3275, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3429)
!3429 = !{!3427, !3430}
!3430 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !3164, line: 77, type: !736)
!3431 = !DILocation(line: 0, scope: !3428, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 302, column: 25, scope: !3422, inlinedAt: !3426)
!3433 = !DILocation(line: 91, column: 10, scope: !3428, inlinedAt: !3432)
!3434 = !DILocation(line: 0, scope: !3123, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 302, column: 10, scope: !3422, inlinedAt: !3426)
!3436 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3435)
!3437 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3435)
!3438 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3435)
!3439 = !DILocation(line: 287, column: 3, scope: !3417)
!3440 = !DILocation(line: 0, scope: !3422)
!3441 = !DILocation(line: 0, scope: !3428, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 302, column: 25, scope: !3422)
!3443 = !DILocation(line: 91, column: 10, scope: !3428, inlinedAt: !3442)
!3444 = !DILocation(line: 0, scope: !3123, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 302, column: 10, scope: !3422)
!3446 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3445)
!3447 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3445)
!3448 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3445)
!3449 = !DILocation(line: 302, column: 3, scope: !3422)
!3450 = distinct !DISubprogram(name: "xmemdup", scope: !717, file: !717, line: 310, type: !3451, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!99, !1010, !102}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !717, line: 310, type: !1010)
!3455 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !717, line: 310, type: !102)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 0, scope: !3142, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 312, column: 18, scope: !3450)
!3459 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !3123, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3458)
!3462 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3461)
!3465 = !DILocalVariable(name: "__dest", arg: 1, scope: !3466, file: !1597, line: 26, type: !3469)
!3466 = distinct !DISubprogram(name: "memcpy", scope: !1597, file: !1597, line: 26, type: !3467, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3470)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!99, !3469, !1009, !102}
!3469 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3470 = !{!3465, !3471, !3472}
!3471 = !DILocalVariable(name: "__src", arg: 2, scope: !3466, file: !1597, line: 26, type: !1009)
!3472 = !DILocalVariable(name: "__len", arg: 3, scope: !3466, file: !1597, line: 26, type: !102)
!3473 = !DILocation(line: 0, scope: !3466, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 312, column: 10, scope: !3450)
!3475 = !DILocation(line: 29, column: 10, scope: !3466, inlinedAt: !3474)
!3476 = !DILocation(line: 312, column: 3, scope: !3450)
!3477 = distinct !DISubprogram(name: "ximemdup", scope: !717, file: !717, line: 316, type: !3478, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!99, !1010, !736}
!3480 = !{!3481, !3482}
!3481 = !DILocalVariable(name: "p", arg: 1, scope: !3477, file: !717, line: 316, type: !1010)
!3482 = !DILocalVariable(name: "s", arg: 2, scope: !3477, file: !717, line: 316, type: !736)
!3483 = !DILocation(line: 0, scope: !3477)
!3484 = !DILocation(line: 0, scope: !3156, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 318, column: 18, scope: !3477)
!3486 = !DILocation(line: 0, scope: !3163, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 55, column: 25, scope: !3156, inlinedAt: !3485)
!3488 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3487)
!3489 = !DILocation(line: 0, scope: !3123, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 55, column: 10, scope: !3156, inlinedAt: !3485)
!3491 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3490)
!3492 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3490)
!3493 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3490)
!3494 = !DILocation(line: 0, scope: !3466, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 318, column: 10, scope: !3477)
!3496 = !DILocation(line: 29, column: 10, scope: !3466, inlinedAt: !3495)
!3497 = !DILocation(line: 318, column: 3, scope: !3477)
!3498 = distinct !DISubprogram(name: "ximemdup0", scope: !717, file: !717, line: 325, type: !3499, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!244, !1010, !736}
!3501 = !{!3502, !3503, !3504}
!3502 = !DILocalVariable(name: "p", arg: 1, scope: !3498, file: !717, line: 325, type: !1010)
!3503 = !DILocalVariable(name: "s", arg: 2, scope: !3498, file: !717, line: 325, type: !736)
!3504 = !DILocalVariable(name: "result", scope: !3498, file: !717, line: 327, type: !244)
!3505 = !DILocation(line: 0, scope: !3498)
!3506 = !DILocation(line: 327, column: 30, scope: !3498)
!3507 = !DILocation(line: 0, scope: !3156, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 327, column: 18, scope: !3498)
!3509 = !DILocation(line: 0, scope: !3163, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 55, column: 25, scope: !3156, inlinedAt: !3508)
!3511 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3510)
!3512 = !DILocation(line: 0, scope: !3123, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 55, column: 10, scope: !3156, inlinedAt: !3508)
!3514 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3513)
!3515 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3513)
!3516 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3513)
!3517 = !DILocation(line: 328, column: 3, scope: !3498)
!3518 = !DILocation(line: 328, column: 13, scope: !3498)
!3519 = !DILocation(line: 0, scope: !3466, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 329, column: 10, scope: !3498)
!3521 = !DILocation(line: 29, column: 10, scope: !3466, inlinedAt: !3520)
!3522 = !DILocation(line: 329, column: 3, scope: !3498)
!3523 = distinct !DISubprogram(name: "xstrdup", scope: !717, file: !717, line: 335, type: !990, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3524)
!3524 = !{!3525}
!3525 = !DILocalVariable(name: "string", arg: 1, scope: !3523, file: !717, line: 335, type: !78)
!3526 = !DILocation(line: 0, scope: !3523)
!3527 = !DILocation(line: 337, column: 27, scope: !3523)
!3528 = !DILocation(line: 337, column: 43, scope: !3523)
!3529 = !DILocation(line: 0, scope: !3450, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 337, column: 10, scope: !3523)
!3531 = !DILocation(line: 0, scope: !3142, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 312, column: 18, scope: !3450, inlinedAt: !3530)
!3533 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3532)
!3534 = !DILocation(line: 0, scope: !3123, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3532)
!3536 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3535)
!3537 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3535)
!3538 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3535)
!3539 = !DILocation(line: 0, scope: !3466, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 312, column: 10, scope: !3450, inlinedAt: !3530)
!3541 = !DILocation(line: 29, column: 10, scope: !3466, inlinedAt: !3540)
!3542 = !DILocation(line: 337, column: 3, scope: !3523)
!3543 = distinct !DISubprogram(name: "xalloc_die", scope: !649, file: !649, line: 32, type: !371, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3544)
!3544 = !{!3545}
!3545 = !DILocalVariable(name: "__errstatus", scope: !3546, file: !649, line: 34, type: !675)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !649, line: 34, column: 3)
!3547 = !DILocation(line: 34, column: 3, scope: !3546)
!3548 = !DILocation(line: 0, scope: !3546)
!3549 = !DILocation(line: 40, column: 3, scope: !3543)
!3550 = distinct !DISubprogram(name: "xnanosleep", scope: !754, file: !754, line: 40, type: !3551, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!100, !1020}
!3553 = !{!3554, !3555}
!3554 = !DILocalVariable(name: "seconds", arg: 1, scope: !3550, file: !754, line: 40, type: !1020)
!3555 = !DILocalVariable(name: "ts_sleep", scope: !3550, file: !754, line: 53, type: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3557, line: 11, size: 128, elements: !3558)
!3557 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3556, file: !3557, line: 16, baseType: !758, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3556, file: !3557, line: 21, baseType: !3561, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !264, line: 197, baseType: !265)
!3562 = distinct !DIAssignID()
!3563 = !DILocation(line: 0, scope: !3550)
!3564 = !DILocation(line: 43, column: 35, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3550, file: !754, line: 43, column: 7)
!3566 = !DILocation(line: 43, column: 7, scope: !3550)
!3567 = !DILocation(line: 45, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !754, line: 44, column: 5)
!3569 = !DILocation(line: 46, column: 9, scope: !3568)
!3570 = !DILocation(line: 47, column: 14, scope: !3568)
!3571 = !DILocation(line: 47, column: 20, scope: !3568)
!3572 = distinct !{!3572, !3567, !3573, !911}
!3573 = !DILocation(line: 47, column: 28, scope: !3568)
!3574 = !DILocation(line: 53, column: 3, scope: !3550)
!3575 = !DILocation(line: 53, column: 30, scope: !3550)
!3576 = distinct !DIAssignID()
!3577 = distinct !DIAssignID()
!3578 = !DILocation(line: 68, column: 13, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !754, line: 56, column: 5)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !754, line: 55, column: 3)
!3581 = distinct !DILexicalBlock(scope: !3550, file: !754, line: 55, column: 3)
!3582 = !DILocation(line: 69, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !754, line: 69, column: 11)
!3584 = !DILocation(line: 69, column: 44, scope: !3583)
!3585 = !DILocation(line: 69, column: 11, scope: !3579)
!3586 = !DILocation(line: 55, column: 3, scope: !3581)
!3587 = !DILocation(line: 71, column: 11, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3579, file: !754, line: 71, column: 11)
!3589 = !DILocation(line: 71, column: 26, scope: !3588)
!3590 = distinct !{!3590, !3586, !3591}
!3591 = !DILocation(line: 73, column: 5, scope: !3581)
!3592 = !DILocation(line: 76, column: 1, scope: !3550)
!3593 = !DISubprogram(name: "pause", scope: !1224, file: !1224, line: 489, type: !3594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!100}
!3596 = distinct !DISubprogram(name: "c_strtod", scope: !657, file: !657, line: 102, type: !3597, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!1020, !78, !1015}
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DILocalVariable(name: "nptr", arg: 1, scope: !3596, file: !657, line: 102, type: !78)
!3601 = !DILocalVariable(name: "endptr", arg: 2, scope: !3596, file: !657, line: 102, type: !1015)
!3602 = !DILocalVariable(name: "r", scope: !3596, file: !657, line: 104, type: !1020)
!3603 = !DILocalVariable(name: "locale", scope: !3596, file: !657, line: 108, type: !659)
!3604 = !DILocation(line: 0, scope: !3596)
!3605 = !DILocation(line: 65, column: 8, scope: !3606, inlinedAt: !3610)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !657, line: 65, column: 7)
!3607 = distinct !DISubprogram(name: "c_locale", scope: !657, file: !657, line: 63, type: !3608, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!659}
!3610 = distinct !DILocation(line: 108, column: 21, scope: !3596)
!3611 = !DILocation(line: 65, column: 7, scope: !3607, inlinedAt: !3610)
!3612 = !DILocation(line: 66, column: 22, scope: !3606, inlinedAt: !3610)
!3613 = !DILocation(line: 66, column: 20, scope: !3606, inlinedAt: !3610)
!3614 = !DILocation(line: 66, column: 5, scope: !3606, inlinedAt: !3610)
!3615 = !DILocation(line: 67, column: 10, scope: !3607, inlinedAt: !3610)
!3616 = !DILocation(line: 109, column: 8, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3596, file: !657, line: 109, column: 7)
!3618 = !DILocation(line: 109, column: 7, scope: !3596)
!3619 = !DILocation(line: 111, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !657, line: 111, column: 11)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !657, line: 110, column: 5)
!3622 = !DILocation(line: 111, column: 11, scope: !3621)
!3623 = !DILocation(line: 112, column: 17, scope: !3620)
!3624 = !DILocation(line: 112, column: 9, scope: !3620)
!3625 = !DILocation(line: 118, column: 7, scope: !3596)
!3626 = !DILocation(line: 342, column: 3, scope: !3596)
!3627 = !DILocation(line: 343, column: 1, scope: !3596)
!3628 = !DISubprogram(name: "newlocale", scope: !977, file: !977, line: 141, type: !3629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!659, !100, !78, !659}
!3631 = !DISubprogram(name: "strtod_l", scope: !988, file: !988, line: 296, type: !3632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!1020, !858, !1134, !659}
!3634 = distinct !DISubprogram(name: "close_stream", scope: !760, file: !760, line: 55, type: !3635, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3671)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!100, !3637}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3639, file: !240, line: 51, baseType: !100, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3639, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3639, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3639, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3639, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3639, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3639, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3639, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3639, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3639, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3639, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3639, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3639, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3639, file: !240, line: 70, baseType: !3655, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3639, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3639, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3639, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3639, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3639, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3639, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3639, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3639, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3639, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3639, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3639, file: !240, line: 93, baseType: !3655, size: 64, offset: 1344)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3639, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3639, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3639, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3639, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3671 = !{!3672, !3673, !3675, !3676}
!3672 = !DILocalVariable(name: "stream", arg: 1, scope: !3634, file: !760, line: 55, type: !3637)
!3673 = !DILocalVariable(name: "some_pending", scope: !3634, file: !760, line: 57, type: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!3675 = !DILocalVariable(name: "prev_fail", scope: !3634, file: !760, line: 58, type: !3674)
!3676 = !DILocalVariable(name: "fclose_fail", scope: !3634, file: !760, line: 59, type: !3674)
!3677 = !DILocation(line: 0, scope: !3634)
!3678 = !DILocation(line: 57, column: 30, scope: !3634)
!3679 = !DILocalVariable(name: "__stream", arg: 1, scope: !3680, file: !1347, line: 135, type: !3637)
!3680 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1347, file: !1347, line: 135, type: !3635, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3681)
!3681 = !{!3679}
!3682 = !DILocation(line: 0, scope: !3680, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 58, column: 27, scope: !3634)
!3684 = !DILocation(line: 137, column: 10, scope: !3680, inlinedAt: !3683)
!3685 = !{!1356, !865, i64 0}
!3686 = !DILocation(line: 58, column: 43, scope: !3634)
!3687 = !DILocation(line: 59, column: 29, scope: !3634)
!3688 = !DILocation(line: 59, column: 45, scope: !3634)
!3689 = !DILocation(line: 69, column: 17, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3634, file: !760, line: 69, column: 7)
!3691 = !DILocation(line: 57, column: 50, scope: !3634)
!3692 = !DILocation(line: 69, column: 33, scope: !3690)
!3693 = !DILocation(line: 69, column: 53, scope: !3690)
!3694 = !DILocation(line: 69, column: 59, scope: !3690)
!3695 = !DILocation(line: 69, column: 7, scope: !3634)
!3696 = !DILocation(line: 71, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3690, file: !760, line: 70, column: 5)
!3698 = !DILocation(line: 72, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3697, file: !760, line: 71, column: 11)
!3700 = !DILocation(line: 72, column: 15, scope: !3699)
!3701 = !DILocation(line: 77, column: 1, scope: !3634)
!3702 = !DISubprogram(name: "__fpending", scope: !3703, file: !3703, line: 75, type: !3704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3703 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!102, !3637}
!3706 = distinct !DISubprogram(name: "dtotimespec", scope: !762, file: !762, line: 30, type: !3707, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3713)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3709, !1020}
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3557, line: 11, size: 128, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3709, file: !3557, line: 16, baseType: !758, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3709, file: !3557, line: 21, baseType: !3561, size: 64, offset: 64)
!3713 = !{!3714, !3715, !3719, !3720}
!3714 = !DILocalVariable(name: "sec", arg: 1, scope: !3706, file: !762, line: 30, type: !1020)
!3715 = !DILocalVariable(name: "s", scope: !3716, file: !762, line: 38, type: !756)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !762, line: 37, column: 5)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !762, line: 34, column: 12)
!3718 = distinct !DILexicalBlock(scope: !3706, file: !762, line: 32, column: 7)
!3719 = !DILocalVariable(name: "frac", scope: !3716, file: !762, line: 39, type: !1020)
!3720 = !DILocalVariable(name: "ns", scope: !3716, file: !762, line: 40, type: !265)
!3721 = !DILocation(line: 0, scope: !3706)
!3722 = !DILocation(line: 32, column: 32, scope: !3718)
!3723 = !DILocation(line: 32, column: 7, scope: !3706)
!3724 = !DILocation(line: 34, column: 19, scope: !3717)
!3725 = !DILocation(line: 34, column: 12, scope: !3718)
!3726 = !DILocation(line: 38, column: 18, scope: !3716)
!3727 = !DILocation(line: 0, scope: !3716)
!3728 = !DILocation(line: 39, column: 42, scope: !3716)
!3729 = !DILocation(line: 39, column: 40, scope: !3716)
!3730 = !DILocation(line: 39, column: 33, scope: !3716)
!3731 = !DILocation(line: 40, column: 17, scope: !3716)
!3732 = !DILocation(line: 41, column: 13, scope: !3716)
!3733 = !DILocation(line: 41, column: 16, scope: !3716)
!3734 = !DILocation(line: 41, column: 10, scope: !3716)
!3735 = !DILocation(line: 42, column: 15, scope: !3716)
!3736 = !DILocation(line: 42, column: 9, scope: !3716)
!3737 = !DILocation(line: 45, column: 14, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3716, file: !762, line: 45, column: 11)
!3739 = !DILocation(line: 45, column: 11, scope: !3716)
!3740 = !DILocalVariable(name: "s", arg: 1, scope: !3741, file: !765, line: 56, type: !756)
!3741 = distinct !DISubprogram(name: "make_timespec", scope: !765, file: !765, line: 56, type: !3742, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3709, !756, !265}
!3744 = !{!3740, !3745}
!3745 = !DILocalVariable(name: "ns", arg: 2, scope: !3741, file: !765, line: 56, type: !265)
!3746 = !DILocation(line: 0, scope: !3741, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 51, column: 14, scope: !3716)
!3748 = !DILocation(line: 58, column: 3, scope: !3741, inlinedAt: !3747)
!3749 = !DILocation(line: 53, column: 1, scope: !3706)
!3750 = distinct !DISubprogram(name: "rpl_fclose", scope: !769, file: !769, line: 58, type: !3751, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3787)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!100, !3753}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3755)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3755, file: !240, line: 51, baseType: !100, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3755, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3755, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3755, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3755, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3755, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3755, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3755, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3755, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3755, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3755, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3755, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3755, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3755, file: !240, line: 70, baseType: !3771, size: 64, offset: 832)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3755, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3755, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3755, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3755, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3755, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3755, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3755, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3755, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3755, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3755, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3755, file: !240, line: 93, baseType: !3771, size: 64, offset: 1344)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3755, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3755, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3755, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3755, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3787 = !{!3788, !3789, !3790, !3791}
!3788 = !DILocalVariable(name: "fp", arg: 1, scope: !3750, file: !769, line: 58, type: !3753)
!3789 = !DILocalVariable(name: "saved_errno", scope: !3750, file: !769, line: 60, type: !100)
!3790 = !DILocalVariable(name: "fd", scope: !3750, file: !769, line: 63, type: !100)
!3791 = !DILocalVariable(name: "result", scope: !3750, file: !769, line: 74, type: !100)
!3792 = !DILocation(line: 0, scope: !3750)
!3793 = !DILocation(line: 63, column: 12, scope: !3750)
!3794 = !DILocation(line: 64, column: 10, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3750, file: !769, line: 64, column: 7)
!3796 = !DILocation(line: 64, column: 7, scope: !3750)
!3797 = !DILocation(line: 65, column: 12, scope: !3795)
!3798 = !DILocation(line: 65, column: 5, scope: !3795)
!3799 = !DILocation(line: 70, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3750, file: !769, line: 70, column: 7)
!3801 = !DILocation(line: 70, column: 23, scope: !3800)
!3802 = !DILocation(line: 70, column: 33, scope: !3800)
!3803 = !DILocation(line: 70, column: 26, scope: !3800)
!3804 = !DILocation(line: 70, column: 59, scope: !3800)
!3805 = !DILocation(line: 71, column: 7, scope: !3800)
!3806 = !DILocation(line: 71, column: 10, scope: !3800)
!3807 = !DILocation(line: 70, column: 7, scope: !3750)
!3808 = !DILocation(line: 100, column: 12, scope: !3750)
!3809 = !DILocation(line: 105, column: 7, scope: !3750)
!3810 = !DILocation(line: 72, column: 19, scope: !3800)
!3811 = !DILocation(line: 105, column: 19, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3750, file: !769, line: 105, column: 7)
!3813 = !DILocation(line: 107, column: 13, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3812, file: !769, line: 106, column: 5)
!3815 = !DILocation(line: 109, column: 5, scope: !3814)
!3816 = !DILocation(line: 112, column: 1, scope: !3750)
!3817 = !DISubprogram(name: "fileno", scope: !331, file: !331, line: 809, type: !3751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3818 = !DISubprogram(name: "fclose", scope: !331, file: !331, line: 178, type: !3751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3819 = !DISubprogram(name: "__freading", scope: !3703, file: !3703, line: 51, type: !3751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3820 = !DISubprogram(name: "lseek", scope: !1224, file: !1224, line: 339, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!263, !100, !263, !100}
!3823 = distinct !DISubprogram(name: "rpl_fflush", scope: !771, file: !771, line: 130, type: !3824, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3860)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!100, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3829)
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3828, file: !240, line: 51, baseType: !100, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3828, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3828, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3828, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3828, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3828, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3828, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3828, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3828, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3828, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3828, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3828, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3828, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3828, file: !240, line: 70, baseType: !3844, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3828, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3828, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3828, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3828, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3828, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3828, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3828, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3828, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3828, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3828, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3828, file: !240, line: 93, baseType: !3844, size: 64, offset: 1344)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3828, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3828, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3828, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3828, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !771, line: 130, type: !3826)
!3862 = !DILocation(line: 0, scope: !3823)
!3863 = !DILocation(line: 151, column: 14, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3823, file: !771, line: 151, column: 7)
!3865 = !DILocation(line: 151, column: 22, scope: !3864)
!3866 = !DILocation(line: 151, column: 27, scope: !3864)
!3867 = !DILocation(line: 151, column: 7, scope: !3823)
!3868 = !DILocation(line: 152, column: 12, scope: !3864)
!3869 = !DILocation(line: 152, column: 5, scope: !3864)
!3870 = !DILocalVariable(name: "fp", arg: 1, scope: !3871, file: !771, line: 42, type: !3826)
!3871 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !771, file: !771, line: 42, type: !3872, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3874)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3826}
!3874 = !{!3870}
!3875 = !DILocation(line: 0, scope: !3871, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 157, column: 3, scope: !3823)
!3877 = !DILocation(line: 44, column: 12, scope: !3878, inlinedAt: !3876)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !771, line: 44, column: 7)
!3879 = !DILocation(line: 44, column: 19, scope: !3878, inlinedAt: !3876)
!3880 = !DILocation(line: 44, column: 7, scope: !3871, inlinedAt: !3876)
!3881 = !DILocation(line: 46, column: 5, scope: !3878, inlinedAt: !3876)
!3882 = !DILocation(line: 159, column: 10, scope: !3823)
!3883 = !DILocation(line: 159, column: 3, scope: !3823)
!3884 = !DILocation(line: 236, column: 1, scope: !3823)
!3885 = !DISubprogram(name: "fflush", scope: !331, file: !331, line: 230, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3886 = distinct !DISubprogram(name: "rpl_fseeko", scope: !773, file: !773, line: 28, type: !3887, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3924)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!100, !3889, !3923, !100}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3891)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3891, file: !240, line: 51, baseType: !100, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3891, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3891, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3891, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3891, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3891, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3891, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3891, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3891, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3891, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3891, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3891, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3891, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3891, file: !240, line: 70, baseType: !3907, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3891, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3891, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3891, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3891, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3891, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3891, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3891, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3891, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3891, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3891, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3891, file: !240, line: 93, baseType: !3907, size: 64, offset: 1344)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3891, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3891, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3891, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3891, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !331, line: 63, baseType: !263)
!3924 = !{!3925, !3926, !3927, !3928}
!3925 = !DILocalVariable(name: "fp", arg: 1, scope: !3886, file: !773, line: 28, type: !3889)
!3926 = !DILocalVariable(name: "offset", arg: 2, scope: !3886, file: !773, line: 28, type: !3923)
!3927 = !DILocalVariable(name: "whence", arg: 3, scope: !3886, file: !773, line: 28, type: !100)
!3928 = !DILocalVariable(name: "pos", scope: !3929, file: !773, line: 123, type: !3923)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !773, line: 119, column: 5)
!3930 = distinct !DILexicalBlock(scope: !3886, file: !773, line: 55, column: 7)
!3931 = !DILocation(line: 0, scope: !3886)
!3932 = !DILocation(line: 55, column: 12, scope: !3930)
!3933 = !{!1356, !809, i64 16}
!3934 = !DILocation(line: 55, column: 33, scope: !3930)
!3935 = !{!1356, !809, i64 8}
!3936 = !DILocation(line: 55, column: 25, scope: !3930)
!3937 = !DILocation(line: 56, column: 7, scope: !3930)
!3938 = !DILocation(line: 56, column: 15, scope: !3930)
!3939 = !DILocation(line: 56, column: 37, scope: !3930)
!3940 = !{!1356, !809, i64 32}
!3941 = !DILocation(line: 56, column: 29, scope: !3930)
!3942 = !DILocation(line: 57, column: 7, scope: !3930)
!3943 = !DILocation(line: 57, column: 15, scope: !3930)
!3944 = !{!1356, !809, i64 72}
!3945 = !DILocation(line: 57, column: 29, scope: !3930)
!3946 = !DILocation(line: 55, column: 7, scope: !3886)
!3947 = !DILocation(line: 123, column: 26, scope: !3929)
!3948 = !DILocation(line: 123, column: 19, scope: !3929)
!3949 = !DILocation(line: 0, scope: !3929)
!3950 = !DILocation(line: 124, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3929, file: !773, line: 124, column: 11)
!3952 = !DILocation(line: 124, column: 11, scope: !3929)
!3953 = !DILocation(line: 135, column: 19, scope: !3929)
!3954 = !DILocation(line: 136, column: 12, scope: !3929)
!3955 = !DILocation(line: 136, column: 20, scope: !3929)
!3956 = !{!1356, !1357, i64 144}
!3957 = !DILocation(line: 167, column: 7, scope: !3929)
!3958 = !DILocation(line: 169, column: 10, scope: !3886)
!3959 = !DILocation(line: 169, column: 3, scope: !3886)
!3960 = !DILocation(line: 170, column: 1, scope: !3886)
!3961 = !DISubprogram(name: "fseeko", scope: !331, file: !331, line: 736, type: !3962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!100, !3889, !263, !100}
!3964 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !685, file: !685, line: 100, type: !3965, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3968)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!102, !1615, !78, !102, !3967}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!3968 = !{!3969, !3970, !3971, !3972, !3973}
!3969 = !DILocalVariable(name: "pwc", arg: 1, scope: !3964, file: !685, line: 100, type: !1615)
!3970 = !DILocalVariable(name: "s", arg: 2, scope: !3964, file: !685, line: 100, type: !78)
!3971 = !DILocalVariable(name: "n", arg: 3, scope: !3964, file: !685, line: 100, type: !102)
!3972 = !DILocalVariable(name: "ps", arg: 4, scope: !3964, file: !685, line: 100, type: !3967)
!3973 = !DILocalVariable(name: "ret", scope: !3964, file: !685, line: 130, type: !102)
!3974 = !DILocation(line: 0, scope: !3964)
!3975 = !DILocation(line: 105, column: 9, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3964, file: !685, line: 105, column: 7)
!3977 = !DILocation(line: 105, column: 7, scope: !3964)
!3978 = !DILocation(line: 117, column: 10, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3964, file: !685, line: 117, column: 7)
!3980 = !DILocation(line: 117, column: 7, scope: !3964)
!3981 = !DILocation(line: 130, column: 16, scope: !3964)
!3982 = !DILocation(line: 135, column: 11, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3964, file: !685, line: 135, column: 7)
!3984 = !DILocation(line: 135, column: 25, scope: !3983)
!3985 = !DILocation(line: 135, column: 30, scope: !3983)
!3986 = !DILocation(line: 135, column: 7, scope: !3964)
!3987 = !DILocalVariable(name: "ps", arg: 1, scope: !3988, file: !1588, line: 1135, type: !3967)
!3988 = distinct !DISubprogram(name: "mbszero", scope: !1588, file: !1588, line: 1135, type: !3989, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3967}
!3991 = !{!3987}
!3992 = !DILocation(line: 0, scope: !3988, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 137, column: 5, scope: !3983)
!3994 = !DILocalVariable(name: "__dest", arg: 1, scope: !3995, file: !1597, line: 57, type: !99)
!3995 = distinct !DISubprogram(name: "memset", scope: !1597, file: !1597, line: 57, type: !1598, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3996)
!3996 = !{!3994, !3997, !3998}
!3997 = !DILocalVariable(name: "__ch", arg: 2, scope: !3995, file: !1597, line: 57, type: !100)
!3998 = !DILocalVariable(name: "__len", arg: 3, scope: !3995, file: !1597, line: 57, type: !102)
!3999 = !DILocation(line: 0, scope: !3995, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 1137, column: 3, scope: !3988, inlinedAt: !3993)
!4001 = !DILocation(line: 59, column: 10, scope: !3995, inlinedAt: !4000)
!4002 = !DILocation(line: 137, column: 5, scope: !3983)
!4003 = !DILocation(line: 138, column: 11, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3964, file: !685, line: 138, column: 7)
!4005 = !DILocation(line: 138, column: 7, scope: !3964)
!4006 = !DILocation(line: 139, column: 5, scope: !4004)
!4007 = !DILocation(line: 143, column: 26, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3964, file: !685, line: 143, column: 7)
!4009 = !DILocation(line: 143, column: 41, scope: !4008)
!4010 = !DILocation(line: 143, column: 7, scope: !3964)
!4011 = !DILocation(line: 145, column: 15, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !685, line: 145, column: 11)
!4013 = distinct !DILexicalBlock(scope: !4008, file: !685, line: 144, column: 5)
!4014 = !DILocation(line: 145, column: 11, scope: !4013)
!4015 = !DILocation(line: 146, column: 32, scope: !4012)
!4016 = !DILocation(line: 146, column: 16, scope: !4012)
!4017 = !DILocation(line: 146, column: 14, scope: !4012)
!4018 = !DILocation(line: 146, column: 9, scope: !4012)
!4019 = !DILocation(line: 286, column: 1, scope: !3964)
!4020 = !DISubprogram(name: "mbsinit", scope: !4021, file: !4021, line: 293, type: !4022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4021 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!100, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!4026 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !775, file: !775, line: 42, type: !4027, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4036)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!100, !4029, !4035}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3557, line: 11, size: 128, elements: !4032)
!4032 = !{!4033, !4034}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4031, file: !3557, line: 16, baseType: !758, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4031, file: !3557, line: 21, baseType: !3561, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4036 = !{!4037, !4038, !4039, !4042, !4043, !4044}
!4037 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !4026, file: !775, line: 42, type: !4029)
!4038 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !4026, file: !775, line: 43, type: !4035)
!4039 = !DILocalVariable(name: "limit", scope: !4040, file: !775, line: 61, type: !4041)
!4040 = distinct !DILexicalBlock(scope: !4026, file: !775, line: 58, column: 3)
!4041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!4042 = !DILocalVariable(name: "seconds", scope: !4040, file: !775, line: 62, type: !756)
!4043 = !DILocalVariable(name: "intermediate", scope: !4040, file: !775, line: 63, type: !4031)
!4044 = !DILocalVariable(name: "result", scope: !4045, file: !775, line: 68, type: !100)
!4045 = distinct !DILexicalBlock(scope: !4040, file: !775, line: 66, column: 7)
!4046 = distinct !DIAssignID()
!4047 = !DILocation(line: 0, scope: !4040)
!4048 = !DILocation(line: 0, scope: !4026)
!4049 = !DILocation(line: 52, column: 24, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4026, file: !775, line: 52, column: 7)
!4051 = !{!4052, !1357, i64 8}
!4052 = !{!"timespec", !1357, i64 0, !1357, i64 8}
!4053 = !DILocation(line: 52, column: 36, scope: !4050)
!4054 = !DILocation(line: 54, column: 7, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4050, file: !775, line: 53, column: 5)
!4056 = !DILocation(line: 54, column: 13, scope: !4055)
!4057 = !DILocation(line: 55, column: 7, scope: !4055)
!4058 = !DILocation(line: 62, column: 39, scope: !4040)
!4059 = !{!4052, !1357, i64 0}
!4060 = !DILocation(line: 63, column: 5, scope: !4040)
!4061 = !DILocation(line: 63, column: 36, scope: !4040)
!4062 = !{i64 0, i64 8, !2366, i64 8, i64 8, !2366}
!4063 = distinct !DIAssignID()
!4064 = !DILocation(line: 65, column: 18, scope: !4040)
!4065 = !DILocation(line: 65, column: 5, scope: !4040)
!4066 = !DILocation(line: 67, column: 29, scope: !4045)
!4067 = distinct !DIAssignID()
!4068 = !DILocation(line: 68, column: 22, scope: !4045)
!4069 = !DILocation(line: 0, scope: !4045)
!4070 = !DILocation(line: 69, column: 17, scope: !4045)
!4071 = !DILocation(line: 70, column: 13, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4045, file: !775, line: 70, column: 13)
!4073 = !DILocation(line: 70, column: 13, scope: !4045)
!4074 = !DILocation(line: 72, column: 17, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !775, line: 72, column: 17)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !775, line: 71, column: 11)
!4077 = !DILocation(line: 72, column: 17, scope: !4076)
!4078 = !DILocation(line: 73, column: 39, scope: !4075)
!4079 = !DILocation(line: 73, column: 15, scope: !4075)
!4080 = !DILocation(line: 76, column: 30, scope: !4045)
!4081 = distinct !DIAssignID()
!4082 = distinct !{!4082, !4065, !4083, !911}
!4083 = !DILocation(line: 77, column: 7, scope: !4040)
!4084 = !DILocation(line: 78, column: 25, scope: !4040)
!4085 = distinct !DIAssignID()
!4086 = !DILocation(line: 79, column: 12, scope: !4040)
!4087 = !DILocation(line: 79, column: 5, scope: !4040)
!4088 = !DILocation(line: 80, column: 3, scope: !4026)
!4089 = !DILocation(line: 81, column: 1, scope: !4026)
!4090 = !DISubprogram(name: "nanosleep", scope: !4091, file: !4091, line: 272, type: !4027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4091 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!4092 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !781, file: !781, line: 27, type: !3107, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4093)
!4093 = !{!4094, !4095, !4096, !4097}
!4094 = !DILocalVariable(name: "ptr", arg: 1, scope: !4092, file: !781, line: 27, type: !99)
!4095 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4092, file: !781, line: 27, type: !102)
!4096 = !DILocalVariable(name: "size", arg: 3, scope: !4092, file: !781, line: 27, type: !102)
!4097 = !DILocalVariable(name: "nbytes", scope: !4092, file: !781, line: 29, type: !102)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocation(line: 30, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4092, file: !781, line: 30, column: 7)
!4101 = !DILocation(line: 30, column: 7, scope: !4092)
!4102 = !DILocation(line: 32, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !781, line: 31, column: 5)
!4104 = !DILocation(line: 32, column: 13, scope: !4103)
!4105 = !DILocation(line: 33, column: 7, scope: !4103)
!4106 = !DILocalVariable(name: "ptr", arg: 1, scope: !4107, file: !3199, line: 2057, type: !99)
!4107 = distinct !DISubprogram(name: "rpl_realloc", scope: !3199, file: !3199, line: 2057, type: !3191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4108)
!4108 = !{!4106, !4109}
!4109 = !DILocalVariable(name: "size", arg: 2, scope: !4107, file: !3199, line: 2057, type: !102)
!4110 = !DILocation(line: 0, scope: !4107, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 37, column: 10, scope: !4092)
!4112 = !DILocation(line: 2059, column: 24, scope: !4107, inlinedAt: !4111)
!4113 = !DILocation(line: 2059, column: 10, scope: !4107, inlinedAt: !4111)
!4114 = !DILocation(line: 37, column: 3, scope: !4092)
!4115 = !DILocation(line: 38, column: 1, scope: !4092)
!4116 = distinct !DISubprogram(name: "hard_locale", scope: !703, file: !703, line: 28, type: !4117, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!223, !100}
!4119 = !{!4120, !4121}
!4120 = !DILocalVariable(name: "category", arg: 1, scope: !4116, file: !703, line: 28, type: !100)
!4121 = !DILocalVariable(name: "locale", scope: !4116, file: !703, line: 30, type: !4122)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4123)
!4123 = !{!4124}
!4124 = !DISubrange(count: 257)
!4125 = distinct !DIAssignID()
!4126 = !DILocation(line: 0, scope: !4116)
!4127 = !DILocation(line: 30, column: 3, scope: !4116)
!4128 = !DILocation(line: 32, column: 7, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4116, file: !703, line: 32, column: 7)
!4130 = !DILocation(line: 32, column: 7, scope: !4116)
!4131 = !DILocalVariable(name: "__s1", arg: 1, scope: !4132, file: !877, line: 1359, type: !78)
!4132 = distinct !DISubprogram(name: "streq", scope: !877, file: !877, line: 1359, type: !878, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4133)
!4133 = !{!4131, !4134}
!4134 = !DILocalVariable(name: "__s2", arg: 2, scope: !4132, file: !877, line: 1359, type: !78)
!4135 = !DILocation(line: 0, scope: !4132, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 35, column: 9, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4116, file: !703, line: 35, column: 7)
!4138 = !DILocation(line: 1361, column: 11, scope: !4132, inlinedAt: !4136)
!4139 = !DILocation(line: 1361, column: 10, scope: !4132, inlinedAt: !4136)
!4140 = !DILocation(line: 35, column: 29, scope: !4137)
!4141 = !DILocation(line: 0, scope: !4132, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 35, column: 32, scope: !4137)
!4143 = !DILocation(line: 1361, column: 11, scope: !4132, inlinedAt: !4142)
!4144 = !DILocation(line: 1361, column: 10, scope: !4132, inlinedAt: !4142)
!4145 = !DILocation(line: 35, column: 7, scope: !4116)
!4146 = !DILocation(line: 46, column: 3, scope: !4116)
!4147 = !DILocation(line: 47, column: 1, scope: !4116)
!4148 = distinct !DISubprogram(name: "setlocale_null_r", scope: !785, file: !785, line: 154, type: !4149, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!100, !100, !244, !102}
!4151 = !{!4152, !4153, !4154}
!4152 = !DILocalVariable(name: "category", arg: 1, scope: !4148, file: !785, line: 154, type: !100)
!4153 = !DILocalVariable(name: "buf", arg: 2, scope: !4148, file: !785, line: 154, type: !244)
!4154 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4148, file: !785, line: 154, type: !102)
!4155 = !DILocation(line: 0, scope: !4148)
!4156 = !DILocation(line: 159, column: 10, scope: !4148)
!4157 = !DILocation(line: 159, column: 3, scope: !4148)
!4158 = distinct !DISubprogram(name: "setlocale_null", scope: !785, file: !785, line: 186, type: !4159, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!78, !100}
!4161 = !{!4162}
!4162 = !DILocalVariable(name: "category", arg: 1, scope: !4158, file: !785, line: 186, type: !100)
!4163 = !DILocation(line: 0, scope: !4158)
!4164 = !DILocation(line: 189, column: 10, scope: !4158)
!4165 = !DILocation(line: 189, column: 3, scope: !4158)
!4166 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !787, file: !787, line: 35, type: !4159, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4167)
!4167 = !{!4168, !4169}
!4168 = !DILocalVariable(name: "category", arg: 1, scope: !4166, file: !787, line: 35, type: !100)
!4169 = !DILocalVariable(name: "result", scope: !4166, file: !787, line: 37, type: !78)
!4170 = !DILocation(line: 0, scope: !4166)
!4171 = !DILocation(line: 37, column: 24, scope: !4166)
!4172 = !DILocation(line: 62, column: 3, scope: !4166)
!4173 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !787, file: !787, line: 66, type: !4149, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4174)
!4174 = !{!4175, !4176, !4177, !4178, !4179}
!4175 = !DILocalVariable(name: "category", arg: 1, scope: !4173, file: !787, line: 66, type: !100)
!4176 = !DILocalVariable(name: "buf", arg: 2, scope: !4173, file: !787, line: 66, type: !244)
!4177 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4173, file: !787, line: 66, type: !102)
!4178 = !DILocalVariable(name: "result", scope: !4173, file: !787, line: 111, type: !78)
!4179 = !DILocalVariable(name: "length", scope: !4180, file: !787, line: 125, type: !102)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !787, line: 124, column: 5)
!4181 = distinct !DILexicalBlock(scope: !4173, file: !787, line: 113, column: 7)
!4182 = !DILocation(line: 0, scope: !4173)
!4183 = !DILocation(line: 0, scope: !4166, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 111, column: 24, scope: !4173)
!4185 = !DILocation(line: 37, column: 24, scope: !4166, inlinedAt: !4184)
!4186 = !DILocation(line: 113, column: 14, scope: !4181)
!4187 = !DILocation(line: 113, column: 7, scope: !4173)
!4188 = !DILocation(line: 116, column: 19, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !787, line: 116, column: 11)
!4190 = distinct !DILexicalBlock(scope: !4181, file: !787, line: 114, column: 5)
!4191 = !DILocation(line: 116, column: 11, scope: !4190)
!4192 = !DILocation(line: 120, column: 16, scope: !4189)
!4193 = !DILocation(line: 120, column: 9, scope: !4189)
!4194 = !DILocation(line: 125, column: 23, scope: !4180)
!4195 = !DILocation(line: 0, scope: !4180)
!4196 = !DILocation(line: 126, column: 18, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4180, file: !787, line: 126, column: 11)
!4198 = !DILocation(line: 126, column: 11, scope: !4180)
!4199 = !DILocation(line: 128, column: 39, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4197, file: !787, line: 127, column: 9)
!4201 = !DILocalVariable(name: "__dest", arg: 1, scope: !4202, file: !1597, line: 26, type: !3469)
!4202 = distinct !DISubprogram(name: "memcpy", scope: !1597, file: !1597, line: 26, type: !3467, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4203)
!4203 = !{!4201, !4204, !4205}
!4204 = !DILocalVariable(name: "__src", arg: 2, scope: !4202, file: !1597, line: 26, type: !1009)
!4205 = !DILocalVariable(name: "__len", arg: 3, scope: !4202, file: !1597, line: 26, type: !102)
!4206 = !DILocation(line: 0, scope: !4202, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 128, column: 11, scope: !4200)
!4208 = !DILocation(line: 29, column: 10, scope: !4202, inlinedAt: !4207)
!4209 = !DILocation(line: 129, column: 11, scope: !4200)
!4210 = !DILocation(line: 133, column: 23, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !787, line: 133, column: 15)
!4212 = distinct !DILexicalBlock(scope: !4197, file: !787, line: 132, column: 9)
!4213 = !DILocation(line: 133, column: 15, scope: !4212)
!4214 = !DILocation(line: 138, column: 44, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !787, line: 134, column: 13)
!4216 = !DILocation(line: 0, scope: !4202, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 138, column: 15, scope: !4215)
!4218 = !DILocation(line: 29, column: 10, scope: !4202, inlinedAt: !4217)
!4219 = !DILocation(line: 139, column: 15, scope: !4215)
!4220 = !DILocation(line: 139, column: 32, scope: !4215)
!4221 = !DILocation(line: 140, column: 13, scope: !4215)
!4222 = !DILocation(line: 0, scope: !4181)
!4223 = !DILocation(line: 145, column: 1, scope: !4173)
