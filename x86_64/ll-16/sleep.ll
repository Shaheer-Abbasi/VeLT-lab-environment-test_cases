; ModuleID = 'src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !355
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !325
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !345
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !347
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !349
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !351
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !357
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !359
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !364
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !369
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !372
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !796
  %2 = icmp eq i32 %0, 0, !dbg !797
  br i1 %2, label %8, label %3, !dbg !799

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !800, !tbaa !802
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !800
  %6 = load ptr, ptr @program_name, align 8, !dbg !800, !tbaa !802
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !800
  br label %28, !dbg !800

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !806
  %10 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !802
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #38, !dbg !806
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #38, !dbg !808
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !808
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !809
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !809
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !810, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr poison, metadata !822, metadata !DIExpression()), !dbg !827
  tail call void @emit_bug_reporting_address() #38, !dbg !829
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !830
  call void @llvm.dbg.value(metadata ptr %14, metadata !825, metadata !DIExpression()), !dbg !827
  %15 = icmp eq ptr %14, null, !dbg !831
  br i1 %15, label %23, label %16, !dbg !833

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #39, !dbg !834
  %18 = icmp eq i32 %17, 0, !dbg !834
  br i1 %18, label %23, label %19, !dbg !835

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #38, !dbg !836
  %21 = load ptr, ptr @stdout, align 8, !dbg !836, !tbaa !802
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !836
  br label %23, !dbg !838

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !826, metadata !DIExpression()), !dbg !827
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !839
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #38, !dbg !839
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !840
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38, !dbg !840
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !841
  unreachable, !dbg !841
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !842 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !847 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !853 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !74 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !217, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !856
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !857, !tbaa !858
  %3 = icmp eq i32 %2, -1, !dbg !860
  br i1 %3, label %4, label %16, !dbg !861

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #38, !dbg !862
  call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !863
  %6 = icmp eq ptr %5, null, !dbg !864
  br i1 %6, label %14, label %7, !dbg !865

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !866, !tbaa !867
  %9 = icmp eq i8 %8, 0, !dbg !866
  br i1 %9, label %14, label %10, !dbg !868

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !869, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !878
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
  br label %128, !dbg !887

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !856
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !888
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !889
  call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !856
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !890
  call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !856
  %26 = icmp eq ptr %25, null, !dbg !891
  br i1 %26, label %58, label %27, !dbg !892

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !893
  br i1 %28, label %58, label %29, !dbg !894

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !895
  %30 = icmp ult ptr %24, %25, !dbg !896
  br i1 %30, label %31, label %52, !dbg !897

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !856
  %33 = load ptr, ptr %32, align 8, !tbaa !802
  br label %34, !dbg !897

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !895
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !898
  call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !895
  %38 = load i8, ptr %35, align 1, !dbg !898, !tbaa !867
  %39 = sext i8 %38 to i64, !dbg !898
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !898
  %41 = load i16, ptr %40, align 2, !dbg !898, !tbaa !899
  %42 = freeze i16 %41, !dbg !901
  %43 = lshr i16 %42, 13, !dbg !901
  %44 = and i16 %43, 1, !dbg !901
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !902
  call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !895
  %47 = icmp ult ptr %37, %25, !dbg !896
  %48 = icmp ult i64 %46, 2, !dbg !903
  %49 = select i1 %47, i1 %48, i1 false, !dbg !903
  br i1 %49, label %34, label %50, !dbg !897, !llvm.loop !904

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !906
  br i1 %51, label %52, label %54, !dbg !908

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !908

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !908
  call void @llvm.dbg.value(metadata i8 %57, metadata !222, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %56, metadata !225, metadata !DIExpression()), !dbg !856
  br label %58, !dbg !909

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !856
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !856
  call void @llvm.dbg.value(metadata i8 %60, metadata !222, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %59, metadata !225, metadata !DIExpression()), !dbg !856
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.17) #39, !dbg !910
  call void @llvm.dbg.value(metadata i64 %61, metadata !231, metadata !DIExpression()), !dbg !856
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !911
  call void @llvm.dbg.value(metadata ptr %62, metadata !232, metadata !DIExpression()), !dbg !856
  br label %63, !dbg !912

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !856
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !856
  call void @llvm.dbg.value(metadata i8 %65, metadata !222, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %64, metadata !232, metadata !DIExpression()), !dbg !856
  %66 = load i8, ptr %64, align 1, !dbg !913, !tbaa !867
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !914

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !915
  %69 = load i8, ptr %68, align 1, !dbg !918, !tbaa !867
  %70 = icmp eq i8 %69, 45, !dbg !919
  %71 = select i1 %70, i8 0, i8 %65, !dbg !920
  br label %72, !dbg !920

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !856
  call void @llvm.dbg.value(metadata i8 %73, metadata !222, metadata !DIExpression()), !dbg !856
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !921
  %75 = load ptr, ptr %74, align 8, !dbg !921, !tbaa !802
  %76 = sext i8 %66 to i64, !dbg !921
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !921
  %78 = load i16, ptr %77, align 2, !dbg !921, !tbaa !899
  %79 = and i16 %78, 8192, !dbg !921
  %80 = icmp eq i16 %79, 0, !dbg !921
  br i1 %80, label %96, label %81, !dbg !923

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !924
  br i1 %82, label %98, label %83, !dbg !927

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !928
  %85 = load i8, ptr %84, align 1, !dbg !928, !tbaa !867
  %86 = sext i8 %85 to i64, !dbg !928
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !928
  %88 = load i16, ptr %87, align 2, !dbg !928, !tbaa !899
  %89 = and i16 %88, 8192, !dbg !928
  %90 = icmp eq i16 %89, 0, !dbg !928
  br i1 %90, label %91, label %98, !dbg !929

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !930
  %93 = icmp ne i8 %92, 0, !dbg !930
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !932
  br i1 %95, label %96, label %98, !dbg !932

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !933
  call void @llvm.dbg.value(metadata ptr %97, metadata !232, metadata !DIExpression()), !dbg !856
  br label %63, !dbg !912, !llvm.loop !934

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !936
  %100 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !802
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !869, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !290, metadata !DIExpression()), !dbg !856
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #39, !dbg !957
  %103 = icmp eq i32 %102, 0, !dbg !957
  br i1 %103, label %107, label %104, !dbg !959

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #39, !dbg !960
  %106 = icmp eq i32 %105, 0, !dbg !960
  br i1 %106, label %107, label %110, !dbg !961

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !962
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %108, ptr noundef %59) #38, !dbg !962
  br label %113, !dbg !964

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !965
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef %111, ptr noundef %59) #38, !dbg !965
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !802
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %114), !dbg !967
  %116 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !802
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %116), !dbg !968
  %118 = ptrtoint ptr %64 to i64, !dbg !969
  %119 = sub i64 %118, %99, !dbg !969
  %120 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !802
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !969
  %122 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !802
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %122), !dbg !970
  %124 = load ptr, ptr @stdout, align 8, !dbg !971, !tbaa !802
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %124), !dbg !971
  %126 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !802
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !972
  br label %128, !dbg !973

128:                                              ; preds = %113, %19
  ret void, !dbg !973
}

; Function Attrs: nounwind
declare !dbg !974 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !978 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !982 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !986 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !988 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !991 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !994 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !997 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1000 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1004 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1005 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1011 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1016, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %1, metadata !1017, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8 1, metadata !1020, metadata !DIExpression()), !dbg !1028
  %4 = load ptr, ptr %1, align 8, !dbg !1029, !tbaa !802
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1030
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #38, !dbg !1031
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #38, !dbg !1032
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #38, !dbg !1033
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1034
  %9 = load ptr, ptr @Version, align 8, !dbg !1035, !tbaa !802
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #38, !dbg !1036
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #38, !dbg !1036
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %9, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %10, ptr noundef %11, ptr noundef null) #38, !dbg !1037
  %12 = icmp eq i32 %0, 1, !dbg !1038
  br i1 %12, label %13, label %15, !dbg !1040

13:                                               ; preds = %2
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !1041
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %14) #38, !dbg !1041
  tail call void @usage(i32 noundef 1) #42, !dbg !1043
  unreachable, !dbg !1043

15:                                               ; preds = %2
  %16 = load i32, ptr @optind, align 4, !dbg !1044, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %16, metadata !1021, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8 1, metadata !1020, metadata !DIExpression()), !dbg !1028
  %17 = icmp slt i32 %16, %0, !dbg !1046
  br i1 %17, label %18, label %72, !dbg !1047

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #41, !dbg !1028
  %20 = sext i32 %16 to i64, !dbg !1047
  br label %24, !dbg !1047

21:                                               ; preds = %63
  %22 = and i8 %65, 1, !dbg !1048
  %23 = icmp eq i8 %22, 0, !dbg !1048
  br i1 %23, label %71, label %72, !dbg !1050

24:                                               ; preds = %18, %63
  %25 = phi i64 [ %20, %18 ], [ %68, %63 ]
  %26 = phi double [ 0.000000e+00, %18 ], [ %67, %63 ]
  %27 = phi i8 [ 1, %18 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata double %26, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %25, metadata !1021, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %27, metadata !1020, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1051
  store i32 0, ptr %19, align 4, !dbg !1052, !tbaa !858
  %28 = getelementptr inbounds ptr, ptr %1, i64 %25, !dbg !1053
  %29 = load ptr, ptr %28, align 8, !dbg !1053, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %3, metadata !1023, metadata !DIExpression(DW_OP_deref)), !dbg !1054
  %30 = call double @cl_strtod(ptr noundef %29, ptr noundef nonnull %3) #38, !dbg !1055
  call void @llvm.dbg.value(metadata double %30, metadata !1026, metadata !DIExpression()), !dbg !1054
  %31 = load i32, ptr %19, align 4, !dbg !1056, !tbaa !858
  call void @llvm.dbg.value(metadata double %30, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %31, metadata !1063, metadata !DIExpression()), !dbg !1065
  %32 = icmp eq i32 %31, 34, !dbg !1067
  %33 = fcmp oeq double %30, 0.000000e+00
  %34 = and i1 %33, %32, !dbg !1069
  %35 = call double @llvm.copysign.f64(double 4.940660e-324, double %30), !dbg !1069
  %36 = call double @llvm.fmuladd.f64(double %30, double 0x3CA0000000000001, double %30), !dbg !1069
  %37 = select i1 %34, double %35, double %36, !dbg !1069
  call void @llvm.dbg.value(metadata double %37, metadata !1027, metadata !DIExpression()), !dbg !1054
  %38 = load ptr, ptr %28, align 8, !dbg !1070, !tbaa !802
  %39 = load ptr, ptr %3, align 8, !dbg !1072, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %39, metadata !1023, metadata !DIExpression()), !dbg !1054
  %40 = icmp ne ptr %38, %39, !dbg !1073
  %41 = fcmp oge double %37, 0.000000e+00
  %42 = select i1 %40, i1 %41, i1 false, !dbg !1074
  br i1 %42, label %43, label %59, !dbg !1074

43:                                               ; preds = %24
  %44 = load i8, ptr %39, align 1, !dbg !1075, !tbaa !867
  %45 = icmp eq i8 %44, 0, !dbg !1075
  br i1 %45, label %55, label %46, !dbg !1076

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1077
  %48 = load i8, ptr %47, align 1, !dbg !1078, !tbaa !867
  %49 = icmp eq i8 %48, 0, !dbg !1078
  br i1 %49, label %50, label %59, !dbg !1079

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %39, metadata !1023, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr undef, metadata !1080, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %44, metadata !1086, metadata !DIExpression()), !dbg !1088
  %51 = sext i8 %44 to i32, !dbg !1090
  switch i32 %51, label %59 [
    i32 0, label %55
    i32 115, label %55
    i32 109, label %52
    i32 104, label %53
    i32 100, label %54
  ], !dbg !1091

52:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 60, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %55, !dbg !1092

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 3600, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %55, !dbg !1094

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 86400, metadata !1087, metadata !DIExpression()), !dbg !1088
  br label %55, !dbg !1095

55:                                               ; preds = %50, %50, %52, %53, %54, %43
  %56 = phi double [ 8.640000e+04, %54 ], [ 3.600000e+03, %53 ], [ 6.000000e+01, %52 ], [ 1.000000e+00, %50 ], [ 1.000000e+00, %50 ], [ 1.000000e+00, %43 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1087, metadata !DIExpression()), !dbg !1088
  %57 = fmul double %37, %56, !dbg !1096
  call void @llvm.dbg.value(metadata double %57, metadata !1057, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 0, metadata !1063, metadata !DIExpression()), !dbg !1097
  %58 = call double @llvm.fmuladd.f64(double %57, double 0x3CA0000000000001, double %57), !dbg !1099
  br label %63, !dbg !1100

59:                                               ; preds = %50, %46, %24
  %60 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !1101
  %61 = load ptr, ptr %28, align 8, !dbg !1101, !tbaa !802
  %62 = call ptr @quote(ptr noundef %61) #38, !dbg !1101
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %60, ptr noundef %62) #38, !dbg !1101
  call void @llvm.dbg.value(metadata i8 0, metadata !1020, metadata !DIExpression()), !dbg !1028
  br label %63, !dbg !1103

63:                                               ; preds = %55, %59
  %64 = phi double [ %37, %59 ], [ %58, %55 ], !dbg !1104
  %65 = phi i8 [ 0, %59 ], [ %27, %55 ], !dbg !1028
  call void @llvm.dbg.value(metadata i8 %65, metadata !1020, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double %64, metadata !1027, metadata !DIExpression()), !dbg !1054
  %66 = fadd double %26, %64, !dbg !1105
  call void @llvm.dbg.value(metadata double %66, metadata !1057, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 0, metadata !1063, metadata !DIExpression()), !dbg !1106
  %67 = call double @llvm.fmuladd.f64(double %66, double 0x3CA0000000000001, double %66), !dbg !1108
  call void @llvm.dbg.value(metadata double %67, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1109
  %68 = add nsw i64 %25, 1, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %68, metadata !1021, metadata !DIExpression()), !dbg !1045
  %69 = trunc i64 %68 to i32, !dbg !1046
  %70 = icmp eq i32 %69, %0, !dbg !1046
  br i1 %70, label %21, label %24, !dbg !1047, !llvm.loop !1111

71:                                               ; preds = %21
  call void @usage(i32 noundef 1) #42, !dbg !1113
  unreachable, !dbg !1113

72:                                               ; preds = %15, %21
  %73 = phi double [ %67, %21 ], [ 0.000000e+00, %15 ]
  %74 = call i32 @xnanosleep(double noundef %73) #38, !dbg !1114
  %75 = icmp eq i32 %74, 0, !dbg !1114
  br i1 %75, label %80, label %76, !dbg !1116

76:                                               ; preds = %72
  %77 = tail call ptr @__errno_location() #41, !dbg !1117
  %78 = load i32, ptr %77, align 4, !dbg !1117, !tbaa !858
  %79 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1117
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %78, ptr noundef %79) #38, !dbg !1117
  unreachable, !dbg !1117

80:                                               ; preds = %72
  ret i32 0, !dbg !1118
}

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
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1135, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %1, metadata !1136, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %3, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !1144
  %5 = call double @strtod(ptr noundef nonnull %0, ptr noundef nonnull %3) #38, !dbg !1146
  call void @llvm.dbg.value(metadata double %5, metadata !1138, metadata !DIExpression()), !dbg !1144
  %6 = load ptr, ptr %3, align 8, !dbg !1147, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %6, metadata !1137, metadata !DIExpression()), !dbg !1144
  %7 = load i8, ptr %6, align 1, !dbg !1148, !tbaa !867
  %8 = icmp eq i8 %7, 0, !dbg !1148
  br i1 %8, label %19, label %9, !dbg !1149

9:                                                ; preds = %2
  %10 = tail call ptr @__errno_location() #41, !dbg !1150
  %11 = load i32, ptr %10, align 4, !dbg !1150, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %11, metadata !1139, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %4, metadata !1142, metadata !DIExpression(DW_OP_deref)), !dbg !1151
  %12 = call double @c_strtod(ptr noundef nonnull %0, ptr noundef nonnull %4) #38, !dbg !1153
  call void @llvm.dbg.value(metadata double %12, metadata !1143, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %6, metadata !1137, metadata !DIExpression()), !dbg !1144
  %13 = load ptr, ptr %4, align 8, !dbg !1154, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %13, metadata !1142, metadata !DIExpression()), !dbg !1151
  %14 = icmp ult ptr %6, %13, !dbg !1156
  br i1 %14, label %16, label %15, !dbg !1157

15:                                               ; preds = %9
  store i32 %11, ptr %10, align 4, !dbg !1158, !tbaa !858
  br label %16

16:                                               ; preds = %9, %15
  %17 = phi ptr [ %6, %15 ], [ %13, %9 ]
  %18 = phi double [ %5, %15 ], [ %12, %9 ], !dbg !1144
  call void @llvm.dbg.value(metadata double %18, metadata !1138, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1159
  br label %19, !dbg !1160

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %17, %16 ], [ %6, %2 ]
  %21 = phi double [ %18, %16 ], [ %5, %2 ], !dbg !1144
  call void @llvm.dbg.value(metadata double %21, metadata !1138, metadata !DIExpression()), !dbg !1144
  %22 = icmp eq ptr %1, null, !dbg !1161
  br i1 %22, label %24, label %23, !dbg !1163

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1137, metadata !DIExpression()), !dbg !1144
  store ptr %20, ptr %1, align 8, !dbg !1164, !tbaa !802
  br label %24, !dbg !1165

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1166
  ret double %21, !dbg !1167
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1168 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1171 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1173, metadata !DIExpression()), !dbg !1174
  store ptr %0, ptr @file_name, align 8, !dbg !1175, !tbaa !802
  ret void, !dbg !1176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1177 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1183, !tbaa !1184
  ret void, !dbg !1186
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1187 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1192, !tbaa !802
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1193
  %3 = icmp eq i32 %2, 0, !dbg !1194
  br i1 %3, label %22, label %4, !dbg !1195

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1196, !tbaa !1184, !range !1197, !noundef !846
  %6 = icmp eq i8 %5, 0, !dbg !1196
  br i1 %6, label %11, label %7, !dbg !1198

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1199
  %9 = load i32, ptr %8, align 4, !dbg !1199, !tbaa !858
  %10 = icmp eq i32 %9, 32, !dbg !1200
  br i1 %10, label %22, label %11, !dbg !1201

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #38, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %12, metadata !1189, metadata !DIExpression()), !dbg !1203
  %13 = load ptr, ptr @file_name, align 8, !dbg !1204, !tbaa !802
  %14 = icmp eq ptr %13, null, !dbg !1204
  %15 = tail call ptr @__errno_location() #41, !dbg !1206
  %16 = load i32, ptr %15, align 4, !dbg !1206, !tbaa !858
  br i1 %14, label %19, label %17, !dbg !1207

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1208
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #38, !dbg !1208
  br label %20, !dbg !1208

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #38, !dbg !1209
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1210, !tbaa !858
  tail call void @_exit(i32 noundef %21) #40, !dbg !1211
  unreachable, !dbg !1211

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1212, !tbaa !802
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1214
  %25 = icmp eq i32 %24, 0, !dbg !1215
  br i1 %25, label %28, label %26, !dbg !1216

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1217, !tbaa !858
  tail call void @_exit(i32 noundef %27) #40, !dbg !1218
  unreachable, !dbg !1218

28:                                               ; preds = %22
  ret void, !dbg !1219
}

; Function Attrs: noreturn
declare !dbg !1220 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1226, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %1, metadata !1227, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %2, metadata !1228, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %3, metadata !1229, metadata !DIExpression()), !dbg !1230
  tail call fastcc void @flush_stdout(), !dbg !1231
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1232, !tbaa !802
  %6 = icmp eq ptr %5, null, !dbg !1232
  br i1 %6, label %8, label %7, !dbg !1234

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1235
  br label %12, !dbg !1235

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !802
  %10 = tail call ptr @getprogname() #39, !dbg !1236
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #38, !dbg !1236
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1238
  ret void, !dbg !1239
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1240 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1242, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 1, metadata !1244, metadata !DIExpression()), !dbg !1249
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1252
  %2 = icmp slt i32 %1, 0, !dbg !1253
  br i1 %2, label %6, label %3, !dbg !1254

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1255, !tbaa !802
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1255
  br label %6, !dbg !1255

6:                                                ; preds = %3, %0
  ret void, !dbg !1256
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1257 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1259, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i32 %1, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr %2, metadata !1261, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr %3, metadata !1262, metadata !DIExpression()), !dbg !1263
  %6 = load ptr, ptr @stderr, align 8, !dbg !1264, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %6, metadata !1265, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %2, metadata !1305, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %3, metadata !1306, metadata !DIExpression()), !dbg !1307
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1309
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1310, !tbaa !858
  %9 = add i32 %8, 1, !dbg !1310
  store i32 %9, ptr @error_message_count, align 4, !dbg !1310, !tbaa !858
  %10 = icmp eq i32 %1, 0, !dbg !1311
  br i1 %10, label %20, label %11, !dbg !1313

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1324
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1318, metadata !DIExpression()), !dbg !1325
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %12, metadata !1317, metadata !DIExpression()), !dbg !1322
  %13 = icmp eq ptr %12, null, !dbg !1327
  br i1 %13, label %14, label %16, !dbg !1329

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #38, !dbg !1330
  call void @llvm.dbg.value(metadata ptr %15, metadata !1317, metadata !DIExpression()), !dbg !1322
  br label %16, !dbg !1331

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1322
  call void @llvm.dbg.value(metadata ptr %17, metadata !1317, metadata !DIExpression()), !dbg !1322
  %18 = load ptr, ptr @stderr, align 8, !dbg !1332, !tbaa !802
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #38, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1333
  br label %20, !dbg !1334

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1335, !tbaa !802
  call void @llvm.dbg.value(metadata i32 10, metadata !1336, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %21, metadata !1342, metadata !DIExpression()), !dbg !1343
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1345
  %23 = load ptr, ptr %22, align 8, !dbg !1345, !tbaa !1346
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1345
  %25 = load ptr, ptr %24, align 8, !dbg !1345, !tbaa !1349
  %26 = icmp ult ptr %23, %25, !dbg !1345
  br i1 %26, label %29, label %27, !dbg !1345, !prof !1350

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1345
  br label %31, !dbg !1345

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1345
  store ptr %30, ptr %22, align 8, !dbg !1345, !tbaa !1346
  store i8 10, ptr %23, align 1, !dbg !1345, !tbaa !867
  br label %31, !dbg !1345

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1351, !tbaa !802
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1351
  %34 = icmp eq i32 %0, 0, !dbg !1352
  br i1 %34, label %36, label %35, !dbg !1354

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1355
  unreachable, !dbg !1355

36:                                               ; preds = %31
  ret void, !dbg !1356
}

declare !dbg !1357 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1360 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1363 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1366 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1369 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1373 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1377, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %1, metadata !1378, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %2, metadata !1379, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1380, metadata !DIExpression()), !dbg !1388
  call void @llvm.va_start(ptr nonnull %4), !dbg !1389
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1390
  call void @llvm.va_end(ptr nonnull %4), !dbg !1391
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1392
  ret void, !dbg !1392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %1, metadata !340, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !342, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %5, metadata !344, metadata !DIExpression()), !dbg !1393
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1394, !tbaa !858
  %8 = icmp eq i32 %7, 0, !dbg !1394
  br i1 %8, label %23, label %9, !dbg !1396

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1397, !tbaa !858
  %11 = icmp eq i32 %10, %3, !dbg !1400
  br i1 %11, label %12, label %22, !dbg !1401

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1402, !tbaa !802
  %14 = icmp eq ptr %13, %2, !dbg !1403
  br i1 %14, label %36, label %15, !dbg !1404

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1405
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1406
  br i1 %18, label %19, label %22, !dbg !1406

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1407
  %21 = icmp eq i32 %20, 0, !dbg !1408
  br i1 %21, label %36, label %22, !dbg !1409

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1410, !tbaa !802
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1411, !tbaa !858
  br label %23, !dbg !1412

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1413
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1414, !tbaa !802
  %25 = icmp eq ptr %24, null, !dbg !1414
  br i1 %25, label %27, label %26, !dbg !1416

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1417
  br label %31, !dbg !1417

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1418, !tbaa !802
  %29 = tail call ptr @getprogname() #39, !dbg !1418
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #38, !dbg !1418
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1420, !tbaa !802
  %33 = icmp eq ptr %2, null, !dbg !1420
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1420
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1420
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1421
  br label %36, !dbg !1422

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1422
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1423 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1427, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %1, metadata !1428, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %2, metadata !1429, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %3, metadata !1430, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1432, metadata !DIExpression()), !dbg !1435
  call void @llvm.va_start(ptr nonnull %6), !dbg !1436
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1437
  call void @llvm.va_end(ptr nonnull %6), !dbg !1438
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1439
  ret void, !dbg !1439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1440 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1443, !tbaa !802
  ret ptr %1, !dbg !1444
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1445 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1450, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %1, metadata !1451, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %2, metadata !1452, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %3, metadata !1453, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %5, metadata !1455, metadata !DIExpression()), !dbg !1476
  %8 = load i32, ptr @opterr, align 4, !dbg !1477, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %8, metadata !1456, metadata !DIExpression()), !dbg !1476
  store i32 0, ptr @opterr, align 4, !dbg !1478, !tbaa !858
  %9 = icmp eq i32 %0, 2, !dbg !1479
  br i1 %9, label %10, label %15, !dbg !1480

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %11, metadata !1457, metadata !DIExpression()), !dbg !1482
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1483

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #38, !dbg !1484
  br label %15, !dbg !1485

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #38, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1460, metadata !DIExpression()), !dbg !1487
  call void @llvm.va_start(ptr nonnull %7), !dbg !1488
  %14 = load ptr, ptr @stdout, align 8, !dbg !1489, !tbaa !802
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #38, !dbg !1490
  call void @exit(i32 noundef 0) #40, !dbg !1491
  unreachable, !dbg !1491

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1492, !tbaa !858
  store i32 0, ptr @optind, align 4, !dbg !1493, !tbaa !858
  ret void, !dbg !1494
}

; Function Attrs: nounwind
declare !dbg !1495 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1501 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1505, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %1, metadata !1506, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %2, metadata !1507, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %3, metadata !1508, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i1 %5, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %6, metadata !1511, metadata !DIExpression()), !dbg !1520
  %9 = load i32, ptr @opterr, align 4, !dbg !1521, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %9, metadata !1512, metadata !DIExpression()), !dbg !1520
  store i32 1, ptr @opterr, align 4, !dbg !1522, !tbaa !858
  %10 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %10, metadata !1513, metadata !DIExpression()), !dbg !1520
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %11, metadata !1514, metadata !DIExpression()), !dbg !1520
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1525

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #38, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1515, metadata !DIExpression()), !dbg !1527
  call void @llvm.va_start(ptr nonnull %8), !dbg !1528
  %13 = load ptr, ptr @stdout, align 8, !dbg !1529, !tbaa !802
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #38, !dbg !1530
  call void @exit(i32 noundef 0) #40, !dbg !1531
  unreachable, !dbg !1531

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1532, !tbaa !858
  br label %16, !dbg !1533

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #38, !dbg !1534
  br label %18, !dbg !1535

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1535, !tbaa !858
  ret void, !dbg !1536
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1537 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1539, metadata !DIExpression()), !dbg !1542
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %2, metadata !1540, metadata !DIExpression()), !dbg !1542
  %3 = icmp eq ptr %2, null, !dbg !1544
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1544
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %5, metadata !1541, metadata !DIExpression()), !dbg !1542
  %6 = ptrtoint ptr %5 to i64, !dbg !1545
  %7 = ptrtoint ptr %0 to i64, !dbg !1545
  %8 = sub i64 %6, %7, !dbg !1545
  %9 = icmp sgt i64 %8, 6, !dbg !1547
  br i1 %9, label %10, label %19, !dbg !1548

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %11, metadata !1550, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1555, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 7, metadata !1556, metadata !DIExpression()), !dbg !1557
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1559
  %13 = icmp eq i32 %12, 0, !dbg !1560
  br i1 %13, label %14, label %19, !dbg !1561

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !1542
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #39, !dbg !1562
  %16 = icmp eq i32 %15, 0, !dbg !1565
  %17 = select i1 %16, i64 3, i64 0, !dbg !1566
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1566
  br label %19, !dbg !1566

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1542
  call void @llvm.dbg.value(metadata ptr %21, metadata !1541, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %20, metadata !1539, metadata !DIExpression()), !dbg !1542
  store ptr %20, ptr @program_name, align 8, !dbg !1567, !tbaa !802
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1568, !tbaa !802
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1569, !tbaa !802
  ret void, !dbg !1570
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1571 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !404 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !411, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %1, metadata !412, metadata !DIExpression()), !dbg !1572
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1573
  call void @llvm.dbg.value(metadata ptr %5, metadata !413, metadata !DIExpression()), !dbg !1572
  %6 = icmp eq ptr %5, %0, !dbg !1574
  br i1 %6, label %7, label %14, !dbg !1576

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1577
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %4, metadata !419, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata ptr %4, metadata !1580, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %4, metadata !1589, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 0, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i64 8, metadata !1596, metadata !DIExpression()), !dbg !1597
  store i64 0, ptr %4, align 8, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression(DW_OP_deref)), !dbg !1572
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1600
  %9 = icmp eq i64 %8, 2, !dbg !1602
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !414, metadata !DIExpression()), !dbg !1572
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1603
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1604
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1572
  ret ptr %15, !dbg !1604
}

; Function Attrs: nounwind
declare !dbg !1605 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1611 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1616, metadata !DIExpression()), !dbg !1619
  %2 = tail call ptr @__errno_location() #41, !dbg !1620
  %3 = load i32, ptr %2, align 4, !dbg !1620, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %3, metadata !1617, metadata !DIExpression()), !dbg !1619
  %4 = icmp eq ptr %0, null, !dbg !1621
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1621
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %6, metadata !1618, metadata !DIExpression()), !dbg !1619
  store i32 %3, ptr %2, align 4, !dbg !1623, !tbaa !858
  ret ptr %6, !dbg !1624
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1625 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1631, metadata !DIExpression()), !dbg !1632
  %2 = icmp eq ptr %0, null, !dbg !1633
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1633
  %4 = load i32, ptr %3, align 8, !dbg !1634, !tbaa !1635
  ret i32 %4, !dbg !1637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %1, metadata !1643, metadata !DIExpression()), !dbg !1644
  %3 = icmp eq ptr %0, null, !dbg !1645
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1645
  store i32 %1, ptr %4, align 8, !dbg !1646, !tbaa !1635
  ret void, !dbg !1647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1648 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %1, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %2, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %1, metadata !1655, metadata !DIExpression()), !dbg !1660
  %4 = icmp eq ptr %0, null, !dbg !1661
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1661
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1662
  %7 = lshr i8 %1, 5, !dbg !1663
  %8 = zext i8 %7 to i64, !dbg !1663
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %9, metadata !1656, metadata !DIExpression()), !dbg !1660
  %10 = and i8 %1, 31, !dbg !1665
  %11 = zext i8 %10 to i32, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %11, metadata !1658, metadata !DIExpression()), !dbg !1660
  %12 = load i32, ptr %9, align 4, !dbg !1666, !tbaa !858
  %13 = lshr i32 %12, %11, !dbg !1667
  %14 = and i32 %13, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %14, metadata !1659, metadata !DIExpression()), !dbg !1660
  %15 = xor i32 %13, %2, !dbg !1669
  %16 = and i32 %15, 1, !dbg !1669
  %17 = shl nuw i32 %16, %11, !dbg !1670
  %18 = xor i32 %17, %12, !dbg !1671
  store i32 %18, ptr %9, align 4, !dbg !1671, !tbaa !858
  ret i32 %14, !dbg !1672
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1677, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %1, metadata !1678, metadata !DIExpression()), !dbg !1680
  %3 = icmp eq ptr %0, null, !dbg !1681
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %4, metadata !1677, metadata !DIExpression()), !dbg !1680
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1684
  %6 = load i32, ptr %5, align 4, !dbg !1684, !tbaa !1685
  call void @llvm.dbg.value(metadata i32 %6, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i32 %1, ptr %5, align 4, !dbg !1686, !tbaa !1685
  ret i32 %6, !dbg !1687
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %1, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %2, metadata !1694, metadata !DIExpression()), !dbg !1695
  %4 = icmp eq ptr %0, null, !dbg !1696
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %5, metadata !1692, metadata !DIExpression()), !dbg !1695
  store i32 10, ptr %5, align 8, !dbg !1699, !tbaa !1635
  %6 = icmp ne ptr %1, null, !dbg !1700
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1702
  br i1 %8, label %10, label %9, !dbg !1702

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1703
  unreachable, !dbg !1703

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1704
  store ptr %1, ptr %11, align 8, !dbg !1705, !tbaa !1706
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1707
  store ptr %2, ptr %12, align 8, !dbg !1708, !tbaa !1709
  ret void, !dbg !1710
}

; Function Attrs: noreturn nounwind
declare !dbg !1711 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1712 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1716, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %1, metadata !1717, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %2, metadata !1718, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %3, metadata !1719, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %4, metadata !1720, metadata !DIExpression()), !dbg !1724
  %6 = icmp eq ptr %4, null, !dbg !1725
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %7, metadata !1721, metadata !DIExpression()), !dbg !1724
  %8 = tail call ptr @__errno_location() #41, !dbg !1726
  %9 = load i32, ptr %8, align 4, !dbg !1726, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %9, metadata !1722, metadata !DIExpression()), !dbg !1724
  %10 = load i32, ptr %7, align 8, !dbg !1727, !tbaa !1635
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1728
  %12 = load i32, ptr %11, align 4, !dbg !1728, !tbaa !1685
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1729
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1730
  %15 = load ptr, ptr %14, align 8, !dbg !1730, !tbaa !1706
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1731
  %17 = load ptr, ptr %16, align 8, !dbg !1731, !tbaa !1709
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %18, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i32 %9, ptr %8, align 4, !dbg !1733, !tbaa !858
  ret i64 %18, !dbg !1734
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1735 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1741, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %1, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %2, metadata !1743, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %3, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %4, metadata !1745, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %5, metadata !1746, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %6, metadata !1747, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %7, metadata !1748, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %8, metadata !1749, metadata !DIExpression()), !dbg !1803
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1804
  %17 = icmp eq i64 %16, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i1 %17, metadata !1750, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr null, metadata !1753, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1803
  %18 = trunc i32 %5 to i8, !dbg !1806
  %19 = lshr i8 %18, 1, !dbg !1806
  %20 = and i8 %19, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i8 %20, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1803
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1807

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1808
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1809
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1810
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1811
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1803
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1812
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1813
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %39, metadata !1758, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %38, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %37, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %36, metadata !1755, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %35, metadata !1754, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %34, metadata !1753, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %33, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %32, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %31, metadata !1749, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %30, metadata !1748, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %29, metadata !1745, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.label(metadata !1796), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1803
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
  ], !dbg !1815

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 5, metadata !1745, metadata !DIExpression()), !dbg !1803
  br label %115, !dbg !1816

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 5, metadata !1745, metadata !DIExpression()), !dbg !1803
  %43 = and i8 %37, 1, !dbg !1817
  %44 = icmp eq i8 %43, 0, !dbg !1817
  br i1 %44, label %45, label %115, !dbg !1816

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1819
  br i1 %46, label %115, label %47, !dbg !1822

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1819, !tbaa !867
  br label %115, !dbg !1819

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !514, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1823
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #38, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %49, metadata !516, metadata !DIExpression()), !dbg !1823
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1828
  br i1 %50, label %51, label %60, !dbg !1830

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1831
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %13, metadata !518, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %13, metadata !1834, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %13, metadata !1842, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i64 0, ptr %13, align 8, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %12, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1823
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1850
  %53 = icmp eq i64 %52, 3, !dbg !1852
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !517, metadata !DIExpression()), !dbg !1823
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1853
  %57 = icmp eq i32 %29, 9, !dbg !1853
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1853
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1853
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1854
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1854
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1823
  call void @llvm.dbg.value(metadata ptr %61, metadata !1748, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !514, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1855
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #38, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %62, metadata !516, metadata !DIExpression()), !dbg !1855
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1858
  br i1 %63, label %64, label %73, !dbg !1859

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %11, metadata !518, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %11, metadata !1834, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %11, metadata !1842, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !1865
  store i64 0, ptr %11, align 8, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %10, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1855
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1868
  %66 = icmp eq i64 %65, 3, !dbg !1869
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !517, metadata !DIExpression()), !dbg !1855
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1870
  %70 = icmp eq i32 %29, 9, !dbg !1870
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1870
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1870
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1871
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1871
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1749, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %74, metadata !1748, metadata !DIExpression()), !dbg !1803
  %76 = and i8 %37, 1, !dbg !1872
  %77 = icmp eq i8 %76, 0, !dbg !1872
  br i1 %77, label %78, label %93, !dbg !1873

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1760, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1803
  %79 = load i8, ptr %74, align 1, !dbg !1875, !tbaa !867
  %80 = icmp eq i8 %79, 0, !dbg !1877
  br i1 %80, label %93, label %81, !dbg !1877

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1760, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %84, metadata !1751, metadata !DIExpression()), !dbg !1803
  %85 = icmp ult i64 %84, %40, !dbg !1878
  br i1 %85, label %86, label %88, !dbg !1881

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1878
  store i8 %82, ptr %87, align 1, !dbg !1878, !tbaa !867
  br label %88, !dbg !1878

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %89, metadata !1751, metadata !DIExpression()), !dbg !1803
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %90, metadata !1760, metadata !DIExpression()), !dbg !1874
  %91 = load i8, ptr %90, align 1, !dbg !1875, !tbaa !867
  %92 = icmp eq i8 %91, 0, !dbg !1877
  br i1 %92, label %93, label %81, !dbg !1877, !llvm.loop !1883

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1885
  call void @llvm.dbg.value(metadata i64 %94, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %75, metadata !1753, metadata !DIExpression()), !dbg !1803
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %95, metadata !1754, metadata !DIExpression()), !dbg !1803
  br label %115, !dbg !1887

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1803
  br label %97, !dbg !1888

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %98, metadata !1755, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1756, metadata !DIExpression()), !dbg !1803
  br label %99, !dbg !1889

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1811
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %101, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %100, metadata !1755, metadata !DIExpression()), !dbg !1803
  %102 = and i8 %101, 1, !dbg !1890
  %103 = icmp eq i8 %102, 0, !dbg !1890
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1892
  br label %105, !dbg !1892

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1803
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %107, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %106, metadata !1755, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1803
  %108 = and i8 %107, 1, !dbg !1893
  %109 = icmp eq i8 %108, 0, !dbg !1893
  br i1 %109, label %110, label %115, !dbg !1895

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1896
  br i1 %111, label %115, label %112, !dbg !1899

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1896, !tbaa !867
  br label %115, !dbg !1896

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1756, metadata !DIExpression()), !dbg !1803
  br label %115, !dbg !1900

114:                                              ; preds = %28
  call void @abort() #40, !dbg !1901
  unreachable, !dbg !1901

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1885
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %110 ], [ @.str.12.68, %112 ], [ @.str.12.68, %105 ], [ @.str.10.67, %41 ], !dbg !1803
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1803
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1803
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %123, metadata !1756, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %122, metadata !1755, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %121, metadata !1754, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %120, metadata !1753, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %119, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %118, metadata !1749, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %117, metadata !1748, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %116, metadata !1745, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1902
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
  br label %138, !dbg !1903

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1885
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1808
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1812
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1813
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1904
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1905
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %145, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %144, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %143, metadata !1758, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %142, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %141, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %140, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %139, metadata !1744, metadata !DIExpression()), !dbg !1803
  %147 = icmp eq i64 %139, -1, !dbg !1906
  br i1 %147, label %148, label %152, !dbg !1907

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1908
  %150 = load i8, ptr %149, align 1, !dbg !1908, !tbaa !867
  %151 = icmp eq i8 %150, 0, !dbg !1909
  br i1 %151, label %627, label %154, !dbg !1910

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1911
  br i1 %153, label %627, label %154, !dbg !1910

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1912
  br i1 %129, label %155, label %170, !dbg !1913

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1915
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1916
  br i1 %157, label %158, label %160, !dbg !1916

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %159, metadata !1744, metadata !DIExpression()), !dbg !1803
  br label %160, !dbg !1918

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1918
  call void @llvm.dbg.value(metadata i64 %161, metadata !1744, metadata !DIExpression()), !dbg !1803
  %162 = icmp ugt i64 %156, %161, !dbg !1919
  br i1 %162, label %170, label %163, !dbg !1920

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1921
  call void @llvm.dbg.value(metadata ptr %164, metadata !1922, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata ptr %120, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %121, metadata !1926, metadata !DIExpression()), !dbg !1927
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1929
  %166 = icmp ne i32 %165, 0, !dbg !1930
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1931
  %168 = xor i1 %166, true, !dbg !1931
  %169 = zext i1 %168 to i8, !dbg !1931
  br i1 %167, label %170, label %688, !dbg !1931

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1912
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1912
  call void @llvm.dbg.value(metadata i8 %173, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %171, metadata !1744, metadata !DIExpression()), !dbg !1803
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1932
  %175 = load i8, ptr %174, align 1, !dbg !1932, !tbaa !867
  call void @llvm.dbg.value(metadata i8 %175, metadata !1772, metadata !DIExpression()), !dbg !1912
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
  ], !dbg !1933

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1934

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1935

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1912
  %179 = and i8 %144, 1, !dbg !1939
  %180 = icmp eq i8 %179, 0, !dbg !1939
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1939
  br i1 %181, label %182, label %198, !dbg !1939

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1941
  br i1 %183, label %184, label %186, !dbg !1945

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1941
  store i8 39, ptr %185, align 1, !dbg !1941, !tbaa !867
  br label %186, !dbg !1941

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %187, metadata !1751, metadata !DIExpression()), !dbg !1803
  %188 = icmp ult i64 %187, %146, !dbg !1946
  br i1 %188, label %189, label %191, !dbg !1949

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1946
  store i8 36, ptr %190, align 1, !dbg !1946, !tbaa !867
  br label %191, !dbg !1946

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %192, metadata !1751, metadata !DIExpression()), !dbg !1803
  %193 = icmp ult i64 %192, %146, !dbg !1950
  br i1 %193, label %194, label %196, !dbg !1953

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1950
  store i8 39, ptr %195, align 1, !dbg !1950, !tbaa !867
  br label %196, !dbg !1950

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %197, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %198, !dbg !1954

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1803
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %200, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %199, metadata !1751, metadata !DIExpression()), !dbg !1803
  %201 = icmp ult i64 %199, %146, !dbg !1955
  br i1 %201, label %202, label %204, !dbg !1958

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1955
  store i8 92, ptr %203, align 1, !dbg !1955, !tbaa !867
  br label %204, !dbg !1955

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %205, metadata !1751, metadata !DIExpression()), !dbg !1803
  br i1 %126, label %206, label %491, !dbg !1959

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1961
  %208 = icmp ult i64 %207, %171, !dbg !1962
  br i1 %208, label %209, label %480, !dbg !1963

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1964
  %211 = load i8, ptr %210, align 1, !dbg !1964, !tbaa !867
  %212 = add i8 %211, -48, !dbg !1965
  %213 = icmp ult i8 %212, 10, !dbg !1965
  br i1 %213, label %214, label %480, !dbg !1965

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1966
  br i1 %215, label %216, label %218, !dbg !1970

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1966
  store i8 48, ptr %217, align 1, !dbg !1966, !tbaa !867
  br label %218, !dbg !1966

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %219, metadata !1751, metadata !DIExpression()), !dbg !1803
  %220 = icmp ult i64 %219, %146, !dbg !1971
  br i1 %220, label %221, label %223, !dbg !1974

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1971
  store i8 48, ptr %222, align 1, !dbg !1971, !tbaa !867
  br label %223, !dbg !1971

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %224, metadata !1751, metadata !DIExpression()), !dbg !1803
  br label %480, !dbg !1975

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1976

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1977

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1978

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1980

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1982
  %231 = icmp ult i64 %230, %171, !dbg !1983
  br i1 %231, label %232, label %480, !dbg !1984

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1985
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1986
  %235 = load i8, ptr %234, align 1, !dbg !1986, !tbaa !867
  %236 = icmp eq i8 %235, 63, !dbg !1987
  br i1 %236, label %237, label %480, !dbg !1988

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1989
  %239 = load i8, ptr %238, align 1, !dbg !1989, !tbaa !867
  %240 = sext i8 %239 to i32, !dbg !1989
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
  ], !dbg !1990

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1991

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %230, metadata !1765, metadata !DIExpression()), !dbg !1902
  %243 = icmp ult i64 %140, %146, !dbg !1993
  br i1 %243, label %244, label %246, !dbg !1996

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1993
  store i8 63, ptr %245, align 1, !dbg !1993, !tbaa !867
  br label %246, !dbg !1993

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %247, metadata !1751, metadata !DIExpression()), !dbg !1803
  %248 = icmp ult i64 %247, %146, !dbg !1997
  br i1 %248, label %249, label %251, !dbg !2000

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1997
  store i8 34, ptr %250, align 1, !dbg !1997, !tbaa !867
  br label %251, !dbg !1997

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %252, metadata !1751, metadata !DIExpression()), !dbg !1803
  %253 = icmp ult i64 %252, %146, !dbg !2001
  br i1 %253, label %254, label %256, !dbg !2004

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2001
  store i8 34, ptr %255, align 1, !dbg !2001, !tbaa !867
  br label %256, !dbg !2001

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %257, metadata !1751, metadata !DIExpression()), !dbg !1803
  %258 = icmp ult i64 %257, %146, !dbg !2005
  br i1 %258, label %259, label %261, !dbg !2008

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2005
  store i8 63, ptr %260, align 1, !dbg !2005, !tbaa !867
  br label %261, !dbg !2005

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %262, metadata !1751, metadata !DIExpression()), !dbg !1803
  br label %480, !dbg !2009

263:                                              ; preds = %170
  br label %274, !dbg !2010

264:                                              ; preds = %170
  br label %274, !dbg !2011

265:                                              ; preds = %170
  br label %272, !dbg !2012

266:                                              ; preds = %170
  br label %272, !dbg !2013

267:                                              ; preds = %170
  br label %274, !dbg !2014

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2015

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2016

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2019

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2021

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2022
  call void @llvm.dbg.label(metadata !1797), !dbg !2023
  br i1 %134, label %274, label %670, !dbg !2024

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2022
  call void @llvm.dbg.label(metadata !1799), !dbg !2026
  br i1 %125, label %535, label %491, !dbg !2027

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2028

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2029, !tbaa !867
  %279 = icmp eq i8 %278, 0, !dbg !2031
  br i1 %279, label %280, label %480, !dbg !2032

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2033
  br i1 %281, label %282, label %480, !dbg !2035

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1771, metadata !DIExpression()), !dbg !1912
  br label %283, !dbg !2036

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1912
  call void @llvm.dbg.value(metadata i8 %284, metadata !1771, metadata !DIExpression()), !dbg !1912
  br i1 %134, label %480, label %670, !dbg !2037

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1771, metadata !DIExpression()), !dbg !1912
  br i1 %133, label %286, label %480, !dbg !2039

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2040

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2043
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2045
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2045
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %292, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %291, metadata !1752, metadata !DIExpression()), !dbg !1803
  %293 = icmp ult i64 %140, %292, !dbg !2046
  br i1 %293, label %294, label %296, !dbg !2049

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2046
  store i8 39, ptr %295, align 1, !dbg !2046, !tbaa !867
  br label %296, !dbg !2046

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %297, metadata !1751, metadata !DIExpression()), !dbg !1803
  %298 = icmp ult i64 %297, %292, !dbg !2050
  br i1 %298, label %299, label %301, !dbg !2053

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2050
  store i8 92, ptr %300, align 1, !dbg !2050, !tbaa !867
  br label %301, !dbg !2050

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %302, metadata !1751, metadata !DIExpression()), !dbg !1803
  %303 = icmp ult i64 %302, %292, !dbg !2054
  br i1 %303, label %304, label %306, !dbg !2057

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2054
  store i8 39, ptr %305, align 1, !dbg !2054, !tbaa !867
  br label %306, !dbg !2054

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %307, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %480, !dbg !2058

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2059

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1773, metadata !DIExpression()), !dbg !2060
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2061
  %311 = load ptr, ptr %310, align 8, !dbg !2061, !tbaa !802
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2061
  %314 = load i16, ptr %313, align 2, !dbg !2061, !tbaa !899
  %315 = lshr i16 %314, 14, !dbg !2063
  %316 = trunc i16 %315 to i8, !dbg !2063
  %317 = and i8 %316, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i8 %317, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %171, metadata !1744, metadata !DIExpression()), !dbg !1803
  %318 = icmp eq i8 %317, 0, !dbg !2064
  call void @llvm.dbg.value(metadata i1 %318, metadata !1771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  br label %368, !dbg !2065

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1777, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata ptr %14, metadata !1834, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %14, metadata !1842, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !2070
  store i64 0, ptr %14, align 8, !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !2060
  %320 = icmp eq i64 %171, -1, !dbg !2073
  br i1 %320, label %321, label %323, !dbg !2075

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %322, metadata !1744, metadata !DIExpression()), !dbg !1803
  br label %323, !dbg !2077

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1912
  call void @llvm.dbg.value(metadata i64 %324, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2078
  %325 = sub i64 %324, %145, !dbg !2079
  call void @llvm.dbg.value(metadata ptr %15, metadata !1780, metadata !DIExpression(DW_OP_deref)), !dbg !2080
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %326, metadata !1784, metadata !DIExpression()), !dbg !2080
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2082

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !2060
  %328 = icmp ugt i64 %324, %145, !dbg !2083
  br i1 %328, label %331, label %329, !dbg !2085

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %324, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i1 true, metadata !1771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  br label %368, !dbg !2065

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !2060
  br label %360, !dbg !2088

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1773, metadata !DIExpression()), !dbg !2060
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2090
  %335 = load i8, ptr %334, align 1, !dbg !2090, !tbaa !867
  %336 = icmp eq i8 %335, 0, !dbg !2085
  br i1 %336, label %363, label %337, !dbg !2091

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %338, metadata !1773, metadata !DIExpression()), !dbg !2060
  %339 = add i64 %338, %145, !dbg !2093
  %340 = icmp eq i64 %338, %325, !dbg !2083
  br i1 %340, label %363, label %331, !dbg !2085, !llvm.loop !2094

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2095
  %344 = and i1 %343, %133, !dbg !2095
  call void @llvm.dbg.value(metadata i64 1, metadata !1785, metadata !DIExpression()), !dbg !2096
  br i1 %344, label %345, label %354, !dbg !2095

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1785, metadata !DIExpression()), !dbg !2096
  %347 = add i64 %346, %145, !dbg !2097
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2099
  %349 = load i8, ptr %348, align 1, !dbg !2099, !tbaa !867
  %350 = sext i8 %349 to i32, !dbg !2099
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2100

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %352, metadata !1785, metadata !DIExpression()), !dbg !2096
  %353 = icmp eq i64 %352, %326, !dbg !2102
  br i1 %353, label %354, label %345, !dbg !2103, !llvm.loop !2104

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2106, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %355, metadata !1780, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 %355, metadata !2108, metadata !DIExpression()), !dbg !2116
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2118
  %357 = icmp ne i32 %356, 0, !dbg !2119
  %358 = zext i1 %357 to i8, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %358, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %326, metadata !1773, metadata !DIExpression()), !dbg !2060
  br label %363, !dbg !2121

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2087
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %324, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i1 %361, metadata !1771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  br label %368, !dbg !2065

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1776, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %364, metadata !1773, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %324, metadata !1744, metadata !DIExpression()), !dbg !1803
  %366 = icmp eq i8 %365, 0, !dbg !2064
  call void @llvm.dbg.value(metadata i1 %366, metadata !1771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  %367 = icmp ugt i64 %364, 1, !dbg !2122
  br i1 %367, label %374, label %368, !dbg !2065

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2123
  br i1 %373, label %374, label %480, !dbg !2123

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %379, metadata !1793, metadata !DIExpression()), !dbg !2125
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2126

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1803
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1904
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1902
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1912
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2127
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1912
  call void @llvm.dbg.value(metadata i8 %387, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %386, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %385, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %384, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %383, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %382, metadata !1751, metadata !DIExpression()), !dbg !1803
  br i1 %380, label %388, label %434, !dbg !2128

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2133

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1912
  %390 = and i8 %383, 1, !dbg !2136
  %391 = icmp eq i8 %390, 0, !dbg !2136
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2136
  br i1 %392, label %393, label %409, !dbg !2136

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2138
  br i1 %394, label %395, label %397, !dbg !2142

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2138
  store i8 39, ptr %396, align 1, !dbg !2138, !tbaa !867
  br label %397, !dbg !2138

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %398, metadata !1751, metadata !DIExpression()), !dbg !1803
  %399 = icmp ult i64 %398, %146, !dbg !2143
  br i1 %399, label %400, label %402, !dbg !2146

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2143
  store i8 36, ptr %401, align 1, !dbg !2143, !tbaa !867
  br label %402, !dbg !2143

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %403, metadata !1751, metadata !DIExpression()), !dbg !1803
  %404 = icmp ult i64 %403, %146, !dbg !2147
  br i1 %404, label %405, label %407, !dbg !2150

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2147
  store i8 39, ptr %406, align 1, !dbg !2147, !tbaa !867
  br label %407, !dbg !2147

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %408, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %409, !dbg !2151

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1803
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %411, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %410, metadata !1751, metadata !DIExpression()), !dbg !1803
  %412 = icmp ult i64 %410, %146, !dbg !2152
  br i1 %412, label %413, label %415, !dbg !2155

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2152
  store i8 92, ptr %414, align 1, !dbg !2152, !tbaa !867
  br label %415, !dbg !2152

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %416, metadata !1751, metadata !DIExpression()), !dbg !1803
  %417 = icmp ult i64 %416, %146, !dbg !2156
  br i1 %417, label %418, label %422, !dbg !2159

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2156
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2156
  store i8 %420, ptr %421, align 1, !dbg !2156, !tbaa !867
  br label %422, !dbg !2156

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %423, metadata !1751, metadata !DIExpression()), !dbg !1803
  %424 = icmp ult i64 %423, %146, !dbg !2160
  br i1 %424, label %425, label %430, !dbg !2163

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2160
  %428 = or i8 %427, 48, !dbg !2160
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2160
  store i8 %428, ptr %429, align 1, !dbg !2160, !tbaa !867
  br label %430, !dbg !2160

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %431, metadata !1751, metadata !DIExpression()), !dbg !1803
  %432 = and i8 %387, 7, !dbg !2164
  %433 = or i8 %432, 48, !dbg !2165
  call void @llvm.dbg.value(metadata i8 %433, metadata !1772, metadata !DIExpression()), !dbg !1912
  br label %443, !dbg !2166

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2167
  %436 = icmp eq i8 %435, 0, !dbg !2167
  br i1 %436, label %443, label %437, !dbg !2169

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2170
  br i1 %438, label %439, label %441, !dbg !2174

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2170
  store i8 92, ptr %440, align 1, !dbg !2170, !tbaa !867
  br label %441, !dbg !2170

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %442, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1912
  br label %443, !dbg !2175

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1803
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1904
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1912
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1912
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1912
  call void @llvm.dbg.value(metadata i8 %448, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %447, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %446, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %445, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %444, metadata !1751, metadata !DIExpression()), !dbg !1803
  %449 = add i64 %384, 1, !dbg !2176
  %450 = icmp ugt i64 %379, %449, !dbg !2178
  br i1 %450, label %451, label %478, !dbg !2179

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2180
  %453 = icmp ne i8 %452, 0, !dbg !2180
  %454 = and i8 %447, 1, !dbg !2180
  %455 = icmp eq i8 %454, 0, !dbg !2180
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2180
  br i1 %456, label %457, label %468, !dbg !2180

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2183
  br i1 %458, label %459, label %461, !dbg !2187

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2183
  store i8 39, ptr %460, align 1, !dbg !2183, !tbaa !867
  br label %461, !dbg !2183

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %462, metadata !1751, metadata !DIExpression()), !dbg !1803
  %463 = icmp ult i64 %462, %146, !dbg !2188
  br i1 %463, label %464, label %466, !dbg !2191

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2188
  store i8 39, ptr %465, align 1, !dbg !2188, !tbaa !867
  br label %466, !dbg !2188

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %467, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %468, !dbg !2192

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2193
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %470, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %469, metadata !1751, metadata !DIExpression()), !dbg !1803
  %471 = icmp ult i64 %469, %146, !dbg !2194
  br i1 %471, label %472, label %474, !dbg !2197

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2194
  store i8 %448, ptr %473, align 1, !dbg !2194, !tbaa !867
  br label %474, !dbg !2194

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %475, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %449, metadata !1765, metadata !DIExpression()), !dbg !1902
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2198
  %477 = load i8, ptr %476, align 1, !dbg !2198, !tbaa !867
  call void @llvm.dbg.value(metadata i8 %477, metadata !1772, metadata !DIExpression()), !dbg !1912
  br label %381, !dbg !2199, !llvm.loop !2200

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i8 %448, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %479, metadata !1771, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %447, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %446, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %384, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %445, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %444, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %378, metadata !1744, metadata !DIExpression()), !dbg !1803
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2203
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1803
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1808
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1803
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1803
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1902
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1912
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1912
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1912
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %489, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %488, metadata !1771, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %487, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %173, metadata !1767, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %486, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %485, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %484, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %483, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %482, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %481, metadata !1744, metadata !DIExpression()), !dbg !1803
  br i1 %127, label %502, label %491, !dbg !2204

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
  br i1 %137, label %503, label %524, !dbg !2206

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2207

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
  %514 = lshr i8 %505, 5, !dbg !2208
  %515 = zext i8 %514 to i64, !dbg !2208
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2209
  %517 = load i32, ptr %516, align 4, !dbg !2209, !tbaa !858
  %518 = and i8 %505, 31, !dbg !2210
  %519 = zext i8 %518 to i32, !dbg !2210
  %520 = shl nuw i32 1, %519, !dbg !2211
  %521 = and i32 %517, %520, !dbg !2211
  %522 = icmp eq i32 %521, 0, !dbg !2211
  %523 = and i1 %172, %522, !dbg !2212
  br i1 %523, label %573, label %535, !dbg !2212

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
  br i1 %172, label %573, label %535, !dbg !2213

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2203
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1803
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1808
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1812
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1904
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2214
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1912
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1912
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %543, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %542, metadata !1771, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %541, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %540, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %539, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %538, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %537, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %536, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.label(metadata !1800), !dbg !2215
  br i1 %132, label %545, label %674, !dbg !2216

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1912
  %546 = and i8 %540, 1, !dbg !2218
  %547 = icmp eq i8 %546, 0, !dbg !2218
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2218
  br i1 %548, label %549, label %565, !dbg !2218

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2220
  br i1 %550, label %551, label %553, !dbg !2224

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2220
  store i8 39, ptr %552, align 1, !dbg !2220, !tbaa !867
  br label %553, !dbg !2220

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %554, metadata !1751, metadata !DIExpression()), !dbg !1803
  %555 = icmp ult i64 %554, %544, !dbg !2225
  br i1 %555, label %556, label %558, !dbg !2228

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2225
  store i8 36, ptr %557, align 1, !dbg !2225, !tbaa !867
  br label %558, !dbg !2225

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %559, metadata !1751, metadata !DIExpression()), !dbg !1803
  %560 = icmp ult i64 %559, %544, !dbg !2229
  br i1 %560, label %561, label %563, !dbg !2232

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2229
  store i8 39, ptr %562, align 1, !dbg !2229, !tbaa !867
  br label %563, !dbg !2229

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %564, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %565, !dbg !2233

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1912
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %567, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %566, metadata !1751, metadata !DIExpression()), !dbg !1803
  %568 = icmp ult i64 %566, %544, !dbg !2234
  br i1 %568, label %569, label %571, !dbg !2237

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2234
  store i8 92, ptr %570, align 1, !dbg !2234, !tbaa !867
  br label %571, !dbg !2234

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %544, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %543, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %542, metadata !1771, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %541, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %567, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %539, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %538, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %572, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %536, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.label(metadata !1801), !dbg !2238
  br label %600, !dbg !2239

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2203
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1803
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1808
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1812
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1904
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2214
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1912
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1912
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2242
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %582, metadata !1772, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %581, metadata !1771, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %580, metadata !1770, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %579, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %578, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %577, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %576, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %575, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %574, metadata !1744, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.label(metadata !1801), !dbg !2238
  %584 = and i8 %578, 1, !dbg !2239
  %585 = icmp ne i8 %584, 0, !dbg !2239
  %586 = and i8 %580, 1, !dbg !2239
  %587 = icmp eq i8 %586, 0, !dbg !2239
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2239
  br i1 %588, label %589, label %600, !dbg !2239

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2243
  br i1 %590, label %591, label %593, !dbg !2247

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2243
  store i8 39, ptr %592, align 1, !dbg !2243, !tbaa !867
  br label %593, !dbg !2243

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %594, metadata !1751, metadata !DIExpression()), !dbg !1803
  %595 = icmp ult i64 %594, %583, !dbg !2248
  br i1 %595, label %596, label %598, !dbg !2251

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2248
  store i8 39, ptr %597, align 1, !dbg !2248, !tbaa !867
  br label %598, !dbg !2248

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %599, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1803
  br label %600, !dbg !2252

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1912
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %609, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %608, metadata !1751, metadata !DIExpression()), !dbg !1803
  %610 = icmp ult i64 %608, %601, !dbg !2253
  br i1 %610, label %611, label %613, !dbg !2256

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2253
  store i8 %602, ptr %612, align 1, !dbg !2253, !tbaa !867
  br label %613, !dbg !2253

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %614, metadata !1751, metadata !DIExpression()), !dbg !1803
  %615 = icmp eq i8 %603, 0, !dbg !2257
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2259
  call void @llvm.dbg.value(metadata i8 %616, metadata !1758, metadata !DIExpression()), !dbg !1803
  br label %617, !dbg !2260

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2203
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1803
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1808
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1812
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1813
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1904
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2214
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %624, metadata !1765, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %623, metadata !1759, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %622, metadata !1758, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %621, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %620, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %619, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %618, metadata !1744, metadata !DIExpression()), !dbg !1803
  %626 = add i64 %624, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %626, metadata !1765, metadata !DIExpression()), !dbg !1902
  br label %138, !dbg !2262, !llvm.loop !2263

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1742, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %143, metadata !1758, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %142, metadata !1757, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %141, metadata !1752, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %140, metadata !1751, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %139, metadata !1744, metadata !DIExpression()), !dbg !1803
  %628 = icmp eq i64 %140, 0, !dbg !2265
  %629 = and i1 %133, %628, !dbg !2267
  %630 = xor i1 %629, true, !dbg !2267
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2267
  br i1 %631, label %632, label %670, !dbg !2267

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2268
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2268
  br i1 %636, label %637, label %646, !dbg !2268

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2270
  %639 = icmp eq i8 %638, 0, !dbg !2270
  br i1 %639, label %642, label %640, !dbg !2273

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2274
  br label %694, !dbg !2275

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2276
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2278
  br i1 %645, label %28, label %646, !dbg !2278

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2279
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2281
  br i1 %649, label %650, label %665, !dbg !2281

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1753, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %140, metadata !1751, metadata !DIExpression()), !dbg !1803
  %651 = load i8, ptr %120, align 1, !dbg !2282, !tbaa !867
  %652 = icmp eq i8 %651, 0, !dbg !2285
  br i1 %652, label %665, label %653, !dbg !2285

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1753, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %656, metadata !1751, metadata !DIExpression()), !dbg !1803
  %657 = icmp ult i64 %656, %146, !dbg !2286
  br i1 %657, label %658, label %660, !dbg !2289

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2286
  store i8 %654, ptr %659, align 1, !dbg !2286, !tbaa !867
  br label %660, !dbg !2286

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %661, metadata !1751, metadata !DIExpression()), !dbg !1803
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %662, metadata !1753, metadata !DIExpression()), !dbg !1803
  %663 = load i8, ptr %662, align 1, !dbg !2282, !tbaa !867
  %664 = icmp eq i8 %663, 0, !dbg !2285
  br i1 %664, label %665, label %653, !dbg !2285, !llvm.loop !2291

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1885
  call void @llvm.dbg.value(metadata i64 %666, metadata !1751, metadata !DIExpression()), !dbg !1803
  %667 = icmp ult i64 %666, %146, !dbg !2293
  br i1 %667, label %668, label %694, !dbg !2295

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2296
  store i8 0, ptr %669, align 1, !dbg !2297, !tbaa !867
  br label %694, !dbg !2296

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1802), !dbg !2298
  %672 = icmp eq i8 %124, 0, !dbg !2299
  %673 = select i1 %672, i32 2, i32 4, !dbg !2299
  br label %684, !dbg !2299

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2299
  %678 = select i1 %677, i32 2, i32 4, !dbg !2299
  br label %679, !dbg !2301

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1802), !dbg !2298
  %683 = icmp eq i32 %116, 2, !dbg !2301
  br i1 %683, label %684, label %688, !dbg !2299

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2299

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1745, metadata !DIExpression()), !dbg !1803
  %692 = and i32 %5, -3, !dbg !2302
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2303
  br label %694, !dbg !2304

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2305
}

; Function Attrs: nounwind
declare !dbg !2306 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2309 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2312 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2314 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i64 %1, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata ptr %2, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata ptr %0, metadata !2322, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %1, metadata !2327, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr null, metadata !2328, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr %2, metadata !2329, metadata !DIExpression()), !dbg !2335
  %4 = icmp eq ptr %2, null, !dbg !2337
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %5, metadata !2330, metadata !DIExpression()), !dbg !2335
  %6 = tail call ptr @__errno_location() #41, !dbg !2338
  %7 = load i32, ptr %6, align 4, !dbg !2338, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %7, metadata !2331, metadata !DIExpression()), !dbg !2335
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2339
  %9 = load i32, ptr %8, align 4, !dbg !2339, !tbaa !1685
  %10 = or i32 %9, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %10, metadata !2332, metadata !DIExpression()), !dbg !2335
  %11 = load i32, ptr %5, align 8, !dbg !2341, !tbaa !1635
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2342
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2343
  %14 = load ptr, ptr %13, align 8, !dbg !2343, !tbaa !1706
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2344
  %16 = load ptr, ptr %15, align 8, !dbg !2344, !tbaa !1709
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2345
  %18 = add i64 %17, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %18, metadata !2333, metadata !DIExpression()), !dbg !2335
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %19, metadata !2334, metadata !DIExpression()), !dbg !2335
  %20 = load i32, ptr %5, align 8, !dbg !2348, !tbaa !1635
  %21 = load ptr, ptr %13, align 8, !dbg !2349, !tbaa !1706
  %22 = load ptr, ptr %15, align 8, !dbg !2350, !tbaa !1709
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2351
  store i32 %7, ptr %6, align 4, !dbg !2352, !tbaa !858
  ret ptr %19, !dbg !2353
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2322, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %1, metadata !2327, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %3, metadata !2329, metadata !DIExpression()), !dbg !2354
  %5 = icmp eq ptr %3, null, !dbg !2355
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %6, metadata !2330, metadata !DIExpression()), !dbg !2354
  %7 = tail call ptr @__errno_location() #41, !dbg !2356
  %8 = load i32, ptr %7, align 4, !dbg !2356, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %8, metadata !2331, metadata !DIExpression()), !dbg !2354
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2357
  %10 = load i32, ptr %9, align 4, !dbg !2357, !tbaa !1685
  %11 = icmp eq ptr %2, null, !dbg !2358
  %12 = zext i1 %11 to i32, !dbg !2358
  %13 = or i32 %10, %12, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %13, metadata !2332, metadata !DIExpression()), !dbg !2354
  %14 = load i32, ptr %6, align 8, !dbg !2360, !tbaa !1635
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2361
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2362
  %17 = load ptr, ptr %16, align 8, !dbg !2362, !tbaa !1706
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2363
  %19 = load ptr, ptr %18, align 8, !dbg !2363, !tbaa !1709
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2364
  %21 = add i64 %20, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %21, metadata !2333, metadata !DIExpression()), !dbg !2354
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %22, metadata !2334, metadata !DIExpression()), !dbg !2354
  %23 = load i32, ptr %6, align 8, !dbg !2367, !tbaa !1635
  %24 = load ptr, ptr %16, align 8, !dbg !2368, !tbaa !1706
  %25 = load ptr, ptr %18, align 8, !dbg !2369, !tbaa !1709
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2370
  store i32 %8, ptr %7, align 4, !dbg !2371, !tbaa !858
  br i1 %11, label %28, label %27, !dbg !2372

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2373, !tbaa !2375
  br label %28, !dbg !2376

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2378 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2383, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %1, metadata !2380, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 1, metadata !2381, metadata !DIExpression()), !dbg !2385
  %2 = load i32, ptr @nslots, align 4, !tbaa !858
  call void @llvm.dbg.value(metadata i32 1, metadata !2381, metadata !DIExpression()), !dbg !2385
  %3 = icmp sgt i32 %2, 1, !dbg !2386
  br i1 %3, label %4, label %6, !dbg !2388

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2386
  br label %10, !dbg !2388

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2389
  %8 = load ptr, ptr %7, align 8, !dbg !2389, !tbaa !2391
  %9 = icmp eq ptr %8, @slot0, !dbg !2393
  br i1 %9, label %17, label %16, !dbg !2394

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2381, metadata !DIExpression()), !dbg !2385
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2395
  %13 = load ptr, ptr %12, align 8, !dbg !2395, !tbaa !2391
  tail call void @free(ptr noundef %13) #38, !dbg !2396
  %14 = add nuw nsw i64 %11, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %14, metadata !2381, metadata !DIExpression()), !dbg !2385
  %15 = icmp eq i64 %14, %5, !dbg !2386
  br i1 %15, label %6, label %10, !dbg !2388, !llvm.loop !2398

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2400
  store i64 256, ptr @slotvec0, align 8, !dbg !2402, !tbaa !2403
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2404, !tbaa !2391
  br label %17, !dbg !2405

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2406
  br i1 %18, label %20, label %19, !dbg !2408

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2409
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2411, !tbaa !802
  br label %20, !dbg !2412

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2413, !tbaa !858
  ret void, !dbg !2414
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2415 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata ptr %1, metadata !2421, metadata !DIExpression()), !dbg !2422
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2423
  ret ptr %3, !dbg !2424
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2425 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %1, metadata !2430, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %2, metadata !2431, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %3, metadata !2432, metadata !DIExpression()), !dbg !2445
  %6 = tail call ptr @__errno_location() #41, !dbg !2446
  %7 = load i32, ptr %6, align 4, !dbg !2446, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %7, metadata !2433, metadata !DIExpression()), !dbg !2445
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2447, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %8, metadata !2434, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2435, metadata !DIExpression()), !dbg !2445
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2448
  br i1 %9, label %10, label %11, !dbg !2448

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2450
  unreachable, !dbg !2450

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2451, !tbaa !858
  %13 = icmp sgt i32 %12, %0, !dbg !2452
  br i1 %13, label %32, label %14, !dbg !2453

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2454
  call void @llvm.dbg.value(metadata i1 %15, metadata !2436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2456
  %16 = sext i32 %12 to i64, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %16, metadata !2439, metadata !DIExpression()), !dbg !2455
  store i64 %16, ptr %5, align 8, !dbg !2458, !tbaa !2375
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2459
  %18 = add nuw nsw i32 %0, 1, !dbg !2460
  %19 = sub i32 %18, %12, !dbg !2461
  %20 = sext i32 %19 to i64, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %5, metadata !2439, metadata !DIExpression(DW_OP_deref)), !dbg !2455
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2463
  call void @llvm.dbg.value(metadata ptr %21, metadata !2434, metadata !DIExpression()), !dbg !2445
  store ptr %21, ptr @slotvec, align 8, !dbg !2464, !tbaa !802
  br i1 %15, label %22, label %23, !dbg !2465

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2466, !tbaa.struct !2468
  br label %23, !dbg !2469

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2470, !tbaa !858
  %25 = sext i32 %24 to i64, !dbg !2471
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2471
  %27 = load i64, ptr %5, align 8, !dbg !2472, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %27, metadata !2439, metadata !DIExpression()), !dbg !2455
  %28 = sub nsw i64 %27, %25, !dbg !2473
  %29 = shl i64 %28, 4, !dbg !2474
  call void @llvm.dbg.value(metadata ptr %26, metadata !1842, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %29, metadata !1846, metadata !DIExpression()), !dbg !2475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2477
  %30 = load i64, ptr %5, align 8, !dbg !2478, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %30, metadata !2439, metadata !DIExpression()), !dbg !2455
  %31 = trunc i64 %30 to i32, !dbg !2478
  store i32 %31, ptr @nslots, align 4, !dbg !2479, !tbaa !858
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2480
  br label %32, !dbg !2481

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2445
  call void @llvm.dbg.value(metadata ptr %33, metadata !2434, metadata !DIExpression()), !dbg !2445
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2482
  %36 = load i64, ptr %35, align 8, !dbg !2483, !tbaa !2403
  call void @llvm.dbg.value(metadata i64 %36, metadata !2440, metadata !DIExpression()), !dbg !2484
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2485
  %38 = load ptr, ptr %37, align 8, !dbg !2485, !tbaa !2391
  call void @llvm.dbg.value(metadata ptr %38, metadata !2442, metadata !DIExpression()), !dbg !2484
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2486
  %40 = load i32, ptr %39, align 4, !dbg !2486, !tbaa !1685
  %41 = or i32 %40, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %41, metadata !2443, metadata !DIExpression()), !dbg !2484
  %42 = load i32, ptr %3, align 8, !dbg !2488, !tbaa !1635
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2489
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2490
  %45 = load ptr, ptr %44, align 8, !dbg !2490, !tbaa !1706
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2491
  %47 = load ptr, ptr %46, align 8, !dbg !2491, !tbaa !1709
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %48, metadata !2444, metadata !DIExpression()), !dbg !2484
  %49 = icmp ugt i64 %36, %48, !dbg !2493
  br i1 %49, label %60, label %50, !dbg !2495

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %51, metadata !2440, metadata !DIExpression()), !dbg !2484
  store i64 %51, ptr %35, align 8, !dbg !2498, !tbaa !2403
  %52 = icmp eq ptr %38, @slot0, !dbg !2499
  br i1 %52, label %54, label %53, !dbg !2501

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2502
  br label %54, !dbg !2502

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %55, metadata !2442, metadata !DIExpression()), !dbg !2484
  store ptr %55, ptr %37, align 8, !dbg !2504, !tbaa !2391
  %56 = load i32, ptr %3, align 8, !dbg !2505, !tbaa !1635
  %57 = load ptr, ptr %44, align 8, !dbg !2506, !tbaa !1706
  %58 = load ptr, ptr %46, align 8, !dbg !2507, !tbaa !1709
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2508
  br label %60, !dbg !2509

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2484
  call void @llvm.dbg.value(metadata ptr %61, metadata !2442, metadata !DIExpression()), !dbg !2484
  store i32 %7, ptr %6, align 4, !dbg !2510, !tbaa !858
  ret ptr %61, !dbg !2511
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata ptr %1, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %2, metadata !2518, metadata !DIExpression()), !dbg !2519
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2520
  ret ptr %4, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %0, metadata !2421, metadata !DIExpression()), !dbg !2526
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2528
  ret ptr %2, !dbg !2529
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2516, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2537
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2539
  ret ptr %3, !dbg !2540
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2541 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %2, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2548, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %1, metadata !2556, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2564, !alias.scope !2552
  %5 = icmp eq i32 %1, 10, !dbg !2565
  br i1 %5, label %6, label %7, !dbg !2567

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2568, !noalias !2552
  unreachable, !dbg !2568

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2569, !tbaa !1635, !alias.scope !2552
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2570
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2571
  ret ptr %8, !dbg !2572
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2573 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %3, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2581, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %1, metadata !2556, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2561, metadata !DIExpression()), !dbg !2591
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2591, !alias.scope !2585
  %6 = icmp eq i32 %1, 10, !dbg !2592
  br i1 %6, label %7, label %8, !dbg !2593

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2594, !noalias !2585
  unreachable, !dbg !2594

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2595, !tbaa !1635, !alias.scope !2585
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2596
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2597
  ret ptr %9, !dbg !2598
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2599 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %1, metadata !2547, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2608
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2548, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2561, metadata !DIExpression()), !dbg !2616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2616, !alias.scope !2610
  %4 = icmp eq i32 %0, 10, !dbg !2617
  br i1 %4, label %5, label %6, !dbg !2618

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2619, !noalias !2610
  unreachable, !dbg !2619

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2620, !tbaa !1635, !alias.scope !2610
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2621
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2622
  ret ptr %7, !dbg !2623
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %2, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %2, metadata !2580, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2581, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2561, metadata !DIExpression()), !dbg !2642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2642, !alias.scope !2636
  %5 = icmp eq i32 %0, 10, !dbg !2643
  br i1 %5, label %6, label %7, !dbg !2644

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2645, !noalias !2636
  unreachable, !dbg !2645

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2646, !tbaa !1635, !alias.scope !2636
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2647
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2648
  ret ptr %8, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2650 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %2, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2661, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %4, metadata !1652, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %2, metadata !1653, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %2, metadata !1655, metadata !DIExpression()), !dbg !2663
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2665
  %6 = lshr i8 %2, 5, !dbg !2666
  %7 = zext i8 %6 to i64, !dbg !2666
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %8, metadata !1656, metadata !DIExpression()), !dbg !2663
  %9 = and i8 %2, 31, !dbg !2668
  %10 = zext i8 %9 to i32, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %10, metadata !1658, metadata !DIExpression()), !dbg !2663
  %11 = load i32, ptr %8, align 4, !dbg !2669, !tbaa !858
  %12 = lshr i32 %11, %10, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %12, metadata !1659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2663
  %13 = and i32 %12, 1, !dbg !2671
  %14 = xor i32 %13, 1, !dbg !2671
  %15 = shl nuw i32 %14, %10, !dbg !2672
  %16 = xor i32 %15, %11, !dbg !2673
  store i32 %16, ptr %8, align 4, !dbg !2673, !tbaa !858
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2675
  ret ptr %17, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2677 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 %1, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 %1, metadata !2656, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2657, metadata !DIExpression()), !dbg !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2688, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %3, metadata !1652, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %1, metadata !1653, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %1, metadata !1655, metadata !DIExpression()), !dbg !2689
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2691
  %5 = lshr i8 %1, 5, !dbg !2692
  %6 = zext i8 %5 to i64, !dbg !2692
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %7, metadata !1656, metadata !DIExpression()), !dbg !2689
  %8 = and i8 %1, 31, !dbg !2694
  %9 = zext i8 %8 to i32, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %9, metadata !1658, metadata !DIExpression()), !dbg !2689
  %10 = load i32, ptr %7, align 4, !dbg !2695, !tbaa !858
  %11 = lshr i32 %10, %9, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %11, metadata !1659, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2689
  %12 = and i32 %11, 1, !dbg !2697
  %13 = xor i32 %12, 1, !dbg !2697
  %14 = shl nuw i32 %13, %9, !dbg !2698
  %15 = xor i32 %14, %10, !dbg !2699
  store i32 %15, ptr %7, align 4, !dbg !2699, !tbaa !858
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2701
  ret ptr %16, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2703 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 58, metadata !2682, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()), !dbg !2709
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2657, metadata !DIExpression()), !dbg !2712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2713, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %2, metadata !1652, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()), !dbg !2714
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2716
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 26, metadata !1658, metadata !DIExpression()), !dbg !2714
  %4 = load i32, ptr %3, align 4, !dbg !2717, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %4, metadata !1659, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2714
  %5 = or i32 %4, 67108864, !dbg !2718
  store i32 %5, ptr %3, align 4, !dbg !2718, !tbaa !858
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2719
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2720
  ret ptr %6, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2722 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2729
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2657, metadata !DIExpression()), !dbg !2730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2731, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %3, metadata !1652, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()), !dbg !2732
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 26, metadata !1658, metadata !DIExpression()), !dbg !2732
  %5 = load i32, ptr %4, align 4, !dbg !2735, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %5, metadata !1659, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2732
  %6 = or i32 %5, 67108864, !dbg !2736
  store i32 %6, ptr %4, align 4, !dbg !2736, !tbaa !858
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2737
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2738
  ret ptr %7, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2740 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2561, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2746
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %1, metadata !2743, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %2, metadata !2744, metadata !DIExpression()), !dbg !2748
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2745, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %1, metadata !2556, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2751
  %5 = icmp eq i32 %1, 10, !dbg !2752
  br i1 %5, label %6, label %7, !dbg !2753

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2754, !noalias !2755
  unreachable, !dbg !2754

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2561, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2751
  store i32 %1, ptr %4, align 8, !dbg !2758, !tbaa.struct !2662
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2758
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %4, metadata !1652, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()), !dbg !2759
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2761
  call void @llvm.dbg.value(metadata ptr %9, metadata !1656, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 26, metadata !1658, metadata !DIExpression()), !dbg !2759
  %10 = load i32, ptr %9, align 4, !dbg !2762, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %10, metadata !1659, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2759
  %11 = or i32 %10, 67108864, !dbg !2763
  store i32 %11, ptr %9, align 4, !dbg !2763, !tbaa !858
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2764
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2765
  ret ptr %12, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2767 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %1, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %2, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %3, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %1, metadata !2781, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %2, metadata !2782, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %3, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 -1, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2785, metadata !DIExpression()), !dbg !2789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2790, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %5, metadata !1692, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %1, metadata !1693, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %2, metadata !1694, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %5, metadata !1692, metadata !DIExpression()), !dbg !2791
  store i32 10, ptr %5, align 8, !dbg !2793, !tbaa !1635
  %6 = icmp ne ptr %1, null, !dbg !2794
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2795
  br i1 %8, label %10, label %9, !dbg !2795

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2796
  unreachable, !dbg !2796

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2797
  store ptr %1, ptr %11, align 8, !dbg !2798, !tbaa !1706
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2799
  store ptr %2, ptr %12, align 8, !dbg !2800, !tbaa !1709
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2802
  ret ptr %13, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2777 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %1, metadata !2781, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %2, metadata !2782, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %3, metadata !2783, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %4, metadata !2784, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2785, metadata !DIExpression()), !dbg !2806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2807, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %6, metadata !1692, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %1, metadata !1693, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %2, metadata !1694, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %6, metadata !1692, metadata !DIExpression()), !dbg !2808
  store i32 10, ptr %6, align 8, !dbg !2810, !tbaa !1635
  %7 = icmp ne ptr %1, null, !dbg !2811
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2812
  br i1 %9, label %11, label %10, !dbg !2812

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2813
  unreachable, !dbg !2813

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2814
  store ptr %1, ptr %12, align 8, !dbg !2815, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2816
  store ptr %2, ptr %13, align 8, !dbg !2817, !tbaa !1709
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2818
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2819
  ret ptr %14, !dbg !2820
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2821 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %0, metadata !2772, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %1, metadata !2773, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %2, metadata !2774, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 0, metadata !2776, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %0, metadata !2781, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !2782, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %2, metadata !2783, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 -1, metadata !2784, metadata !DIExpression()), !dbg !2831
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2785, metadata !DIExpression()), !dbg !2834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2835, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %4, metadata !1692, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %1, metadata !1694, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %4, metadata !1692, metadata !DIExpression()), !dbg !2836
  store i32 10, ptr %4, align 8, !dbg !2838, !tbaa !1635
  %5 = icmp ne ptr %0, null, !dbg !2839
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2840
  br i1 %7, label %9, label %8, !dbg !2840

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2841
  unreachable, !dbg !2841

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2842
  store ptr %0, ptr %10, align 8, !dbg !2843, !tbaa !1706
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2844
  store ptr %1, ptr %11, align 8, !dbg !2845, !tbaa !1709
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2846
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2847
  ret ptr %12, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2849 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %1, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %2, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %3, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 0, metadata !2776, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %0, metadata !2781, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %1, metadata !2782, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %2, metadata !2783, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %3, metadata !2784, metadata !DIExpression()), !dbg !2858
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2785, metadata !DIExpression()), !dbg !2861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2862, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata ptr %5, metadata !1692, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %1, metadata !1694, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %5, metadata !1692, metadata !DIExpression()), !dbg !2863
  store i32 10, ptr %5, align 8, !dbg !2865, !tbaa !1635
  %6 = icmp ne ptr %0, null, !dbg !2866
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2867
  br i1 %8, label %10, label %9, !dbg !2867

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2868
  unreachable, !dbg !2868

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2869
  store ptr %0, ptr %11, align 8, !dbg !2870, !tbaa !1706
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2871
  store ptr %1, ptr %12, align 8, !dbg !2872, !tbaa !1709
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2874
  ret ptr %13, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %1, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %2, metadata !2882, metadata !DIExpression()), !dbg !2883
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2884
  ret ptr %4, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2882, metadata !DIExpression()), !dbg !2893
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2895
  ret ptr %3, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %1, metadata !2881, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 -1, metadata !2882, metadata !DIExpression()), !dbg !2904
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2906
  ret ptr %3, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 -1, metadata !2882, metadata !DIExpression()), !dbg !2916
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2918
  ret ptr %2, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2920 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %1, metadata !2960, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata ptr %4, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %5, metadata !2964, metadata !DIExpression()), !dbg !2965
  %7 = icmp eq ptr %1, null, !dbg !2966
  br i1 %7, label %10, label %8, !dbg !2968

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2969
  br label %12, !dbg !2969

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %2, ptr noundef %3) #38, !dbg !2970
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.3.76, i32 noundef 5) #38, !dbg !2971
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2971
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2972
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.5.78, i32 noundef 5) #38, !dbg !2973
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.79) #38, !dbg !2973
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %0), !dbg !2974
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
  ], !dbg !2975

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.7.80, i32 noundef 5) #38, !dbg !2976
  %21 = load ptr, ptr %4, align 8, !dbg !2976, !tbaa !802
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !2976
  br label %147, !dbg !2978

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.8.81, i32 noundef 5) #38, !dbg !2979
  %25 = load ptr, ptr %4, align 8, !dbg !2979, !tbaa !802
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2979
  %27 = load ptr, ptr %26, align 8, !dbg !2979, !tbaa !802
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !2979
  br label %147, !dbg !2980

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.9.82, i32 noundef 5) #38, !dbg !2981
  %31 = load ptr, ptr %4, align 8, !dbg !2981, !tbaa !802
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2981
  %33 = load ptr, ptr %32, align 8, !dbg !2981, !tbaa !802
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2981
  %35 = load ptr, ptr %34, align 8, !dbg !2981, !tbaa !802
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !2981
  br label %147, !dbg !2982

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.10.83, i32 noundef 5) #38, !dbg !2983
  %39 = load ptr, ptr %4, align 8, !dbg !2983, !tbaa !802
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2983
  %41 = load ptr, ptr %40, align 8, !dbg !2983, !tbaa !802
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2983
  %43 = load ptr, ptr %42, align 8, !dbg !2983, !tbaa !802
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2983
  %45 = load ptr, ptr %44, align 8, !dbg !2983, !tbaa !802
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !2983
  br label %147, !dbg !2984

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.11.84, i32 noundef 5) #38, !dbg !2985
  %49 = load ptr, ptr %4, align 8, !dbg !2985, !tbaa !802
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2985
  %51 = load ptr, ptr %50, align 8, !dbg !2985, !tbaa !802
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2985
  %53 = load ptr, ptr %52, align 8, !dbg !2985, !tbaa !802
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2985
  %55 = load ptr, ptr %54, align 8, !dbg !2985, !tbaa !802
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2985
  %57 = load ptr, ptr %56, align 8, !dbg !2985, !tbaa !802
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !2985
  br label %147, !dbg !2986

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.12.85, i32 noundef 5) #38, !dbg !2987
  %61 = load ptr, ptr %4, align 8, !dbg !2987, !tbaa !802
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2987
  %63 = load ptr, ptr %62, align 8, !dbg !2987, !tbaa !802
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2987
  %65 = load ptr, ptr %64, align 8, !dbg !2987, !tbaa !802
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2987
  %67 = load ptr, ptr %66, align 8, !dbg !2987, !tbaa !802
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2987
  %69 = load ptr, ptr %68, align 8, !dbg !2987, !tbaa !802
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2987
  %71 = load ptr, ptr %70, align 8, !dbg !2987, !tbaa !802
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !2987
  br label %147, !dbg !2988

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.13.86, i32 noundef 5) #38, !dbg !2989
  %75 = load ptr, ptr %4, align 8, !dbg !2989, !tbaa !802
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2989
  %77 = load ptr, ptr %76, align 8, !dbg !2989, !tbaa !802
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2989
  %79 = load ptr, ptr %78, align 8, !dbg !2989, !tbaa !802
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2989
  %81 = load ptr, ptr %80, align 8, !dbg !2989, !tbaa !802
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2989
  %83 = load ptr, ptr %82, align 8, !dbg !2989, !tbaa !802
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2989
  %85 = load ptr, ptr %84, align 8, !dbg !2989, !tbaa !802
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2989
  %87 = load ptr, ptr %86, align 8, !dbg !2989, !tbaa !802
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !2989
  br label %147, !dbg !2990

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.14.87, i32 noundef 5) #38, !dbg !2991
  %91 = load ptr, ptr %4, align 8, !dbg !2991, !tbaa !802
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2991
  %93 = load ptr, ptr %92, align 8, !dbg !2991, !tbaa !802
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2991
  %95 = load ptr, ptr %94, align 8, !dbg !2991, !tbaa !802
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2991
  %97 = load ptr, ptr %96, align 8, !dbg !2991, !tbaa !802
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2991
  %99 = load ptr, ptr %98, align 8, !dbg !2991, !tbaa !802
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2991
  %101 = load ptr, ptr %100, align 8, !dbg !2991, !tbaa !802
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2991
  %103 = load ptr, ptr %102, align 8, !dbg !2991, !tbaa !802
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2991
  %105 = load ptr, ptr %104, align 8, !dbg !2991, !tbaa !802
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !2991
  br label %147, !dbg !2992

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.15.88, i32 noundef 5) #38, !dbg !2993
  %109 = load ptr, ptr %4, align 8, !dbg !2993, !tbaa !802
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2993
  %111 = load ptr, ptr %110, align 8, !dbg !2993, !tbaa !802
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2993
  %113 = load ptr, ptr %112, align 8, !dbg !2993, !tbaa !802
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2993
  %115 = load ptr, ptr %114, align 8, !dbg !2993, !tbaa !802
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2993
  %117 = load ptr, ptr %116, align 8, !dbg !2993, !tbaa !802
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2993
  %119 = load ptr, ptr %118, align 8, !dbg !2993, !tbaa !802
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2993
  %121 = load ptr, ptr %120, align 8, !dbg !2993, !tbaa !802
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2993
  %123 = load ptr, ptr %122, align 8, !dbg !2993, !tbaa !802
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2993
  %125 = load ptr, ptr %124, align 8, !dbg !2993, !tbaa !802
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !2993
  br label %147, !dbg !2994

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.16.89, i32 noundef 5) #38, !dbg !2995
  %129 = load ptr, ptr %4, align 8, !dbg !2995, !tbaa !802
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2995
  %131 = load ptr, ptr %130, align 8, !dbg !2995, !tbaa !802
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2995
  %133 = load ptr, ptr %132, align 8, !dbg !2995, !tbaa !802
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2995
  %135 = load ptr, ptr %134, align 8, !dbg !2995, !tbaa !802
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2995
  %137 = load ptr, ptr %136, align 8, !dbg !2995, !tbaa !802
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2995
  %139 = load ptr, ptr %138, align 8, !dbg !2995, !tbaa !802
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2995
  %141 = load ptr, ptr %140, align 8, !dbg !2995, !tbaa !802
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2995
  %143 = load ptr, ptr %142, align 8, !dbg !2995, !tbaa !802
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2995
  %145 = load ptr, ptr %144, align 8, !dbg !2995, !tbaa !802
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !2995
  br label %147, !dbg !2996

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2998 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3002, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !3003, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !3004, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %3, metadata !3005, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %4, metadata !3006, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 0, metadata !3007, metadata !DIExpression()), !dbg !3008
  br label %6, !dbg !3009

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3011
  call void @llvm.dbg.value(metadata i64 %7, metadata !3007, metadata !DIExpression()), !dbg !3008
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3012
  %9 = load ptr, ptr %8, align 8, !dbg !3012, !tbaa !802
  %10 = icmp eq ptr %9, null, !dbg !3014
  %11 = add i64 %7, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %11, metadata !3007, metadata !DIExpression()), !dbg !3008
  br i1 %10, label %12, label %6, !dbg !3014, !llvm.loop !3016

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3018
  ret void, !dbg !3019
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3020 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %3, metadata !3035, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %4, metadata !3036, metadata !DIExpression()), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3041
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 0, metadata !3037, metadata !DIExpression()), !dbg !3040
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3037, metadata !DIExpression()), !dbg !3040
  %10 = icmp ult i32 %9, 41, !dbg !3043
  br i1 %10, label %11, label %16, !dbg !3043

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3043
  %13 = zext i32 %9 to i64, !dbg !3043
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3043
  %15 = add nuw nsw i32 %9, 8, !dbg !3043
  store i32 %15, ptr %4, align 8, !dbg !3043
  br label %19, !dbg !3043

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3043
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3043
  store ptr %18, ptr %7, align 8, !dbg !3043
  br label %19, !dbg !3043

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3043
  %22 = load ptr, ptr %21, align 8, !dbg !3043
  store ptr %22, ptr %6, align 16, !dbg !3046, !tbaa !802
  %23 = icmp eq ptr %22, null, !dbg !3047
  br i1 %23, label %128, label %24, !dbg !3048

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 1, metadata !3037, metadata !DIExpression()), !dbg !3040
  %25 = icmp ult i32 %20, 41, !dbg !3043
  br i1 %25, label %29, label %26, !dbg !3043

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3043
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3043
  store ptr %28, ptr %7, align 8, !dbg !3043
  br label %34, !dbg !3043

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3043
  %31 = zext i32 %20 to i64, !dbg !3043
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3043
  %33 = add nuw nsw i32 %20, 8, !dbg !3043
  store i32 %33, ptr %4, align 8, !dbg !3043
  br label %34, !dbg !3043

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3043
  %37 = load ptr, ptr %36, align 8, !dbg !3043
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3049
  store ptr %37, ptr %38, align 8, !dbg !3046, !tbaa !802
  %39 = icmp eq ptr %37, null, !dbg !3047
  br i1 %39, label %128, label %40, !dbg !3048

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 2, metadata !3037, metadata !DIExpression()), !dbg !3040
  %41 = icmp ult i32 %35, 41, !dbg !3043
  br i1 %41, label %45, label %42, !dbg !3043

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3043
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3043
  store ptr %44, ptr %7, align 8, !dbg !3043
  br label %50, !dbg !3043

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3043
  %47 = zext i32 %35 to i64, !dbg !3043
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3043
  %49 = add nuw nsw i32 %35, 8, !dbg !3043
  store i32 %49, ptr %4, align 8, !dbg !3043
  br label %50, !dbg !3043

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3043
  %53 = load ptr, ptr %52, align 8, !dbg !3043
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3049
  store ptr %53, ptr %54, align 16, !dbg !3046, !tbaa !802
  %55 = icmp eq ptr %53, null, !dbg !3047
  br i1 %55, label %128, label %56, !dbg !3048

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 3, metadata !3037, metadata !DIExpression()), !dbg !3040
  %57 = icmp ult i32 %51, 41, !dbg !3043
  br i1 %57, label %61, label %58, !dbg !3043

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3043
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3043
  store ptr %60, ptr %7, align 8, !dbg !3043
  br label %66, !dbg !3043

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3043
  %63 = zext i32 %51 to i64, !dbg !3043
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3043
  %65 = add nuw nsw i32 %51, 8, !dbg !3043
  store i32 %65, ptr %4, align 8, !dbg !3043
  br label %66, !dbg !3043

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3043
  %69 = load ptr, ptr %68, align 8, !dbg !3043
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3049
  store ptr %69, ptr %70, align 8, !dbg !3046, !tbaa !802
  %71 = icmp eq ptr %69, null, !dbg !3047
  br i1 %71, label %128, label %72, !dbg !3048

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 4, metadata !3037, metadata !DIExpression()), !dbg !3040
  %73 = icmp ult i32 %67, 41, !dbg !3043
  br i1 %73, label %77, label %74, !dbg !3043

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3043
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3043
  store ptr %76, ptr %7, align 8, !dbg !3043
  br label %82, !dbg !3043

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3043
  %79 = zext i32 %67 to i64, !dbg !3043
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3043
  %81 = add nuw nsw i32 %67, 8, !dbg !3043
  store i32 %81, ptr %4, align 8, !dbg !3043
  br label %82, !dbg !3043

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3043
  %85 = load ptr, ptr %84, align 8, !dbg !3043
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3049
  store ptr %85, ptr %86, align 16, !dbg !3046, !tbaa !802
  %87 = icmp eq ptr %85, null, !dbg !3047
  br i1 %87, label %128, label %88, !dbg !3048

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 5, metadata !3037, metadata !DIExpression()), !dbg !3040
  %89 = icmp ult i32 %83, 41, !dbg !3043
  br i1 %89, label %93, label %90, !dbg !3043

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3043
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3043
  store ptr %92, ptr %7, align 8, !dbg !3043
  br label %98, !dbg !3043

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3043
  %95 = zext i32 %83 to i64, !dbg !3043
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3043
  %97 = add nuw nsw i32 %83, 8, !dbg !3043
  store i32 %97, ptr %4, align 8, !dbg !3043
  br label %98, !dbg !3043

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3043
  %100 = load ptr, ptr %99, align 8, !dbg !3043
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3049
  store ptr %100, ptr %101, align 8, !dbg !3046, !tbaa !802
  %102 = icmp eq ptr %100, null, !dbg !3047
  br i1 %102, label %128, label %103, !dbg !3048

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3037, metadata !DIExpression()), !dbg !3040
  %104 = load ptr, ptr %7, align 8, !dbg !3043
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3043
  store ptr %105, ptr %7, align 8, !dbg !3043
  %106 = load ptr, ptr %104, align 8, !dbg !3043
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3049
  store ptr %106, ptr %107, align 16, !dbg !3046, !tbaa !802
  %108 = icmp eq ptr %106, null, !dbg !3047
  br i1 %108, label %128, label %109, !dbg !3048

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3037, metadata !DIExpression()), !dbg !3040
  %110 = load ptr, ptr %7, align 8, !dbg !3043
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3043
  store ptr %111, ptr %7, align 8, !dbg !3043
  %112 = load ptr, ptr %110, align 8, !dbg !3043
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3049
  store ptr %112, ptr %113, align 8, !dbg !3046, !tbaa !802
  %114 = icmp eq ptr %112, null, !dbg !3047
  br i1 %114, label %128, label %115, !dbg !3048

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3037, metadata !DIExpression()), !dbg !3040
  %116 = load ptr, ptr %7, align 8, !dbg !3043
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3043
  store ptr %117, ptr %7, align 8, !dbg !3043
  %118 = load ptr, ptr %116, align 8, !dbg !3043
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3049
  store ptr %118, ptr %119, align 16, !dbg !3046, !tbaa !802
  %120 = icmp eq ptr %118, null, !dbg !3047
  br i1 %120, label %128, label %121, !dbg !3048

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3037, metadata !DIExpression()), !dbg !3040
  %122 = load ptr, ptr %7, align 8, !dbg !3043
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3043
  store ptr %123, ptr %7, align 8, !dbg !3043
  %124 = load ptr, ptr %122, align 8, !dbg !3043
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3049
  store ptr %124, ptr %125, align 8, !dbg !3046, !tbaa !802
  %126 = icmp eq ptr %124, null, !dbg !3047
  %127 = select i1 %126, i64 9, i64 10, !dbg !3048
  br label %128, !dbg !3048

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3050
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3051
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3052
  ret void, !dbg !3052
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3053 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %1, metadata !3058, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %2, metadata !3059, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %3, metadata !3060, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3067
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3061, metadata !DIExpression()), !dbg !3068
  call void @llvm.va_start(ptr nonnull %5), !dbg !3069
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3070
  call void @llvm.va_end(ptr nonnull %5), !dbg !3071
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3072
  ret void, !dbg !3072
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3073 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3074, !tbaa !802
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.77, ptr noundef %1), !dbg !3074
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.17.94, i32 noundef 5) #38, !dbg !3075
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.95) #38, !dbg !3075
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !3076
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !3076
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.75, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !3077
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.96) #38, !dbg !3077
  ret void, !dbg !3078
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3079 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3084, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %2, metadata !3086, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()), !dbg !3093
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3095
  call void @llvm.dbg.value(metadata ptr %4, metadata !3096, metadata !DIExpression()), !dbg !3101
  %5 = icmp eq ptr %4, null, !dbg !3103
  br i1 %5, label %6, label %7, !dbg !3105

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3106
  unreachable, !dbg !3106

7:                                                ; preds = %3
  ret ptr %4, !dbg !3107
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()), !dbg !3108
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %4, metadata !3096, metadata !DIExpression()), !dbg !3110
  %5 = icmp eq ptr %4, null, !dbg !3112
  br i1 %5, label %6, label %7, !dbg !3113

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3114
  unreachable, !dbg !3114

7:                                                ; preds = %3
  ret ptr %4, !dbg !3115
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3116 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3121
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3123
  %3 = icmp eq ptr %2, null, !dbg !3125
  br i1 %3, label %4, label %5, !dbg !3126

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3127
  unreachable, !dbg !3127

5:                                                ; preds = %1
  ret ptr %2, !dbg !3128
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3129 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3130 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3140
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3142
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3143
  %3 = icmp eq ptr %2, null, !dbg !3145
  br i1 %3, label %4, label %5, !dbg !3146

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3147
  unreachable, !dbg !3147

5:                                                ; preds = %1
  ret ptr %2, !dbg !3148
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3149 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3155
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3158
  %3 = icmp eq ptr %2, null, !dbg !3160
  br i1 %3, label %4, label %5, !dbg !3161

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3162
  unreachable, !dbg !3162

5:                                                ; preds = %1
  ret ptr %2, !dbg !3163
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3164 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3176
  %3 = icmp eq i64 %1, 0, !dbg !3178
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3178
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %5, metadata !3096, metadata !DIExpression()), !dbg !3180
  %6 = icmp eq ptr %5, null, !dbg !3182
  br i1 %6, label %7, label %8, !dbg !3183

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3184
  unreachable, !dbg !3184

8:                                                ; preds = %2
  ret ptr %5, !dbg !3185
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3186 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3200
  %3 = icmp eq i64 %1, 0, !dbg !3202
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3202
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3203
  call void @llvm.dbg.value(metadata ptr %5, metadata !3096, metadata !DIExpression()), !dbg !3204
  %6 = icmp eq ptr %5, null, !dbg !3206
  br i1 %6, label %7, label %8, !dbg !3207

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3208
  unreachable, !dbg !3208

8:                                                ; preds = %2
  ret ptr %5, !dbg !3209
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3210 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %2, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata ptr %0, metadata !3218, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !3222, metadata !DIExpression()), !dbg !3223
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %4, metadata !3096, metadata !DIExpression()), !dbg !3226
  %5 = icmp eq ptr %4, null, !dbg !3228
  br i1 %5, label %6, label %7, !dbg !3229

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3230
  unreachable, !dbg !3230

7:                                                ; preds = %3
  ret ptr %4, !dbg !3231
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3232 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr null, metadata !3088, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3239
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3242
  %4 = icmp eq ptr %3, null, !dbg !3244
  br i1 %4, label %5, label %6, !dbg !3245

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3246
  unreachable, !dbg !3246

6:                                                ; preds = %2
  ret ptr %3, !dbg !3247
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3248 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr null, metadata !3214, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3216, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr null, metadata !3218, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3257
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3259
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3260
  %4 = icmp eq ptr %3, null, !dbg !3262
  br i1 %4, label %5, label %6, !dbg !3263

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3264
  unreachable, !dbg !3264

6:                                                ; preds = %2
  ret ptr %3, !dbg !3265
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3266 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %0, metadata !719, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %1, metadata !720, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 1, metadata !721, metadata !DIExpression()), !dbg !3273
  %3 = load i64, ptr %1, align 8, !dbg !3275, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %3, metadata !722, metadata !DIExpression()), !dbg !3273
  %4 = icmp eq ptr %0, null, !dbg !3276
  br i1 %4, label %5, label %8, !dbg !3278

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3279
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3282
  br label %15, !dbg !3282

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3283
  %10 = add nuw i64 %9, 1, !dbg !3283
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3283
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3283
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %13, metadata !722, metadata !DIExpression()), !dbg !3273
  br i1 %12, label %14, label %15, !dbg !3286

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3287
  unreachable, !dbg !3287

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3273
  call void @llvm.dbg.value(metadata i64 %16, metadata !722, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %16, metadata !3091, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 1, metadata !3092, metadata !DIExpression()), !dbg !3288
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3290
  call void @llvm.dbg.value(metadata ptr %17, metadata !3096, metadata !DIExpression()), !dbg !3291
  %18 = icmp eq ptr %17, null, !dbg !3293
  br i1 %18, label %19, label %20, !dbg !3294

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3295
  unreachable, !dbg !3295

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !719, metadata !DIExpression()), !dbg !3273
  store i64 %16, ptr %1, align 8, !dbg !3296, !tbaa !2375
  ret ptr %17, !dbg !3297
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !714 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !719, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %1, metadata !720, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %2, metadata !721, metadata !DIExpression()), !dbg !3298
  %4 = load i64, ptr %1, align 8, !dbg !3299, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %4, metadata !722, metadata !DIExpression()), !dbg !3298
  %5 = icmp eq ptr %0, null, !dbg !3300
  br i1 %5, label %6, label %13, !dbg !3301

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3302
  br i1 %7, label %8, label %20, !dbg !3303

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %9, metadata !722, metadata !DIExpression()), !dbg !3298
  %10 = icmp ugt i64 %2, 128, !dbg !3306
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %12, metadata !722, metadata !DIExpression()), !dbg !3298
  br label %20, !dbg !3308

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3309
  %15 = add nuw i64 %14, 1, !dbg !3309
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3309
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3309
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %18, metadata !722, metadata !DIExpression()), !dbg !3298
  br i1 %17, label %19, label %20, !dbg !3310

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3311
  unreachable, !dbg !3311

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3298
  call void @llvm.dbg.value(metadata i64 %21, metadata !722, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %21, metadata !3091, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()), !dbg !3312
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %22, metadata !3096, metadata !DIExpression()), !dbg !3315
  %23 = icmp eq ptr %22, null, !dbg !3317
  br i1 %23, label %24, label %25, !dbg !3318

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3319
  unreachable, !dbg !3319

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !719, metadata !DIExpression()), !dbg !3298
  store i64 %21, ptr %1, align 8, !dbg !3320, !tbaa !2375
  ret ptr %22, !dbg !3321
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !726 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !734, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %1, metadata !735, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %2, metadata !736, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %3, metadata !737, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %4, metadata !738, metadata !DIExpression()), !dbg !3322
  %6 = load i64, ptr %1, align 8, !dbg !3323, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %6, metadata !739, metadata !DIExpression()), !dbg !3322
  %7 = ashr i64 %6, 1, !dbg !3324
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3324
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3324
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %10, metadata !740, metadata !DIExpression()), !dbg !3322
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %11, metadata !740, metadata !DIExpression()), !dbg !3322
  %12 = icmp sgt i64 %3, -1, !dbg !3327
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3329
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %15, metadata !740, metadata !DIExpression()), !dbg !3322
  %16 = icmp slt i64 %4, 0, !dbg !3330
  br i1 %16, label %17, label %30, !dbg !3330

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3330
  br i1 %18, label %19, label %24, !dbg !3330

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3330
  %21 = udiv i64 9223372036854775807, %20, !dbg !3330
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3330
  br i1 %23, label %46, label %43, !dbg !3330

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3330
  br i1 %25, label %43, label %26, !dbg !3330

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3330
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3330
  %29 = icmp ult i64 %28, %15, !dbg !3330
  br i1 %29, label %46, label %43, !dbg !3330

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3330
  br i1 %31, label %43, label %32, !dbg !3330

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3330
  br i1 %33, label %34, label %40, !dbg !3330

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3330
  br i1 %35, label %43, label %36, !dbg !3330

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3330
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3330
  %39 = icmp ult i64 %38, %4, !dbg !3330
  br i1 %39, label %46, label %43, !dbg !3330

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3330
  br i1 %42, label %46, label %43, !dbg !3330

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !741, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3322
  %44 = mul i64 %15, %4, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %44, metadata !741, metadata !DIExpression()), !dbg !3322
  %45 = icmp slt i64 %44, 128, !dbg !3330
  br i1 %45, label %46, label %51, !dbg !3330

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !742, metadata !DIExpression()), !dbg !3322
  %48 = sdiv i64 %47, %4, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %48, metadata !740, metadata !DIExpression()), !dbg !3322
  %49 = srem i64 %47, %4, !dbg !3334
  %50 = sub nsw i64 %47, %49, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %50, metadata !741, metadata !DIExpression()), !dbg !3322
  br label %51, !dbg !3336

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3322
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3322
  call void @llvm.dbg.value(metadata i64 %53, metadata !741, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %52, metadata !740, metadata !DIExpression()), !dbg !3322
  %54 = icmp eq ptr %0, null, !dbg !3337
  br i1 %54, label %55, label %56, !dbg !3339

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3340, !tbaa !2375
  br label %56, !dbg !3341

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3342
  %58 = icmp slt i64 %57, %2, !dbg !3344
  br i1 %58, label %59, label %96, !dbg !3345

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3346
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3346
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %62, metadata !740, metadata !DIExpression()), !dbg !3322
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3347
  br i1 %65, label %95, label %66, !dbg !3347

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3348

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3348
  br i1 %68, label %69, label %74, !dbg !3348

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3348
  %71 = udiv i64 9223372036854775807, %70, !dbg !3348
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3348
  br i1 %73, label %95, label %93, !dbg !3348

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3348
  br i1 %75, label %93, label %76, !dbg !3348

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3348
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3348
  %79 = icmp ult i64 %78, %62, !dbg !3348
  br i1 %79, label %95, label %93, !dbg !3348

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3348
  br i1 %81, label %93, label %82, !dbg !3348

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3348
  br i1 %83, label %84, label %90, !dbg !3348

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3348
  br i1 %85, label %93, label %86, !dbg !3348

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3348
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3348
  %89 = icmp ult i64 %88, %4, !dbg !3348
  br i1 %89, label %95, label %93, !dbg !3348

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3348
  br i1 %92, label %95, label %93, !dbg !3348

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !741, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3322
  %94 = mul i64 %62, %4, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %94, metadata !741, metadata !DIExpression()), !dbg !3322
  br label %96, !dbg !3349

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !3350
  unreachable, !dbg !3350

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3322
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3322
  call void @llvm.dbg.value(metadata i64 %98, metadata !741, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %97, metadata !740, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %98, metadata !3169, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %98, metadata !3175, metadata !DIExpression()), !dbg !3353
  %99 = icmp eq i64 %98, 0, !dbg !3355
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3355
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %101, metadata !3096, metadata !DIExpression()), !dbg !3357
  %102 = icmp eq ptr %101, null, !dbg !3359
  br i1 %102, label %103, label %104, !dbg !3360

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !3361
  unreachable, !dbg !3361

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !734, metadata !DIExpression()), !dbg !3322
  store i64 %97, ptr %1, align 8, !dbg !3362, !tbaa !2375
  ret ptr %101, !dbg !3363
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3364 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 1, metadata !3371, metadata !DIExpression()), !dbg !3372
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3375
  %3 = icmp eq ptr %2, null, !dbg !3377
  br i1 %3, label %4, label %5, !dbg !3378

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3379
  unreachable, !dbg !3379

5:                                                ; preds = %1
  ret ptr %2, !dbg !3380
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3381 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3369 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %1, metadata !3371, metadata !DIExpression()), !dbg !3382
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3384
  %4 = icmp eq ptr %3, null, !dbg !3386
  br i1 %4, label %5, label %6, !dbg !3387

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3388
  unreachable, !dbg !3388

6:                                                ; preds = %2
  ret ptr %3, !dbg !3389
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3390 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 1, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 1, metadata !3403, metadata !DIExpression()), !dbg !3404
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3407
  %3 = icmp eq ptr %2, null, !dbg !3409
  br i1 %3, label %4, label %5, !dbg !3410

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3411
  unreachable, !dbg !3411

5:                                                ; preds = %1
  ret ptr %2, !dbg !3412
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3395 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3414
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3416
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3417
  %4 = icmp eq ptr %3, null, !dbg !3419
  br i1 %4, label %5, label %6, !dbg !3420

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3421
  unreachable, !dbg !3421

6:                                                ; preds = %2
  ret ptr %3, !dbg !3422
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3423 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3430
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3433
  %4 = icmp eq ptr %3, null, !dbg !3435
  br i1 %4, label %5, label %6, !dbg !3436

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3437
  unreachable, !dbg !3437

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3438, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3448
  ret ptr %3, !dbg !3449
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3450 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3459
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3461
  call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3462
  %4 = icmp eq ptr %3, null, !dbg !3464
  br i1 %4, label %5, label %6, !dbg !3465

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3466
  unreachable, !dbg !3466

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3438, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3467
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3469
  ret ptr %3, !dbg !3470
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3471 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3478
  %3 = add nsw i64 %1, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %3, metadata !3134, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %3, metadata !3136, metadata !DIExpression()), !dbg !3482
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %4, metadata !3096, metadata !DIExpression()), !dbg !3485
  %5 = icmp eq ptr %4, null, !dbg !3487
  br i1 %5, label %6, label %7, !dbg !3488

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3489
  unreachable, !dbg !3489

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3477, metadata !DIExpression()), !dbg !3478
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3490
  store i8 0, ptr %8, align 1, !dbg !3491, !tbaa !867
  call void @llvm.dbg.value(metadata ptr %4, metadata !3438, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3492
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3494
  ret ptr %4, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3500
  %3 = add i64 %2, 1, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3428, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3120, metadata !DIExpression()), !dbg !3504
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3506
  call void @llvm.dbg.value(metadata ptr %4, metadata !3096, metadata !DIExpression()), !dbg !3507
  %5 = icmp eq ptr %4, null, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3510

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3511
  unreachable, !dbg !3511

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3438, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %3, metadata !3445, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3514
  ret ptr %4, !dbg !3515
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3516 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3520, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %1, metadata !3518, metadata !DIExpression()), !dbg !3521
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.107, ptr noundef nonnull @.str.2.108, i32 noundef 5) #38, !dbg !3520
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.109, ptr noundef %2) #38, !dbg !3520
  %3 = icmp eq i32 %1, 0, !dbg !3520
  tail call void @llvm.assume(i1 %3), !dbg !3520
  tail call void @abort() #40, !dbg !3522
  unreachable, !dbg !3522
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @xnanosleep(double noundef %0) local_unnamed_addr #10 !dbg !3523 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !3527, metadata !DIExpression()), !dbg !3535
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3536
  br i1 %3, label %4, label %6, !dbg !3538

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #41, !dbg !3535
  br label %11, !dbg !3538

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #38, !dbg !3539
  %8 = tail call ptr @__errno_location() #41, !dbg !3541
  %9 = load i32, ptr %8, align 4, !dbg !3541, !tbaa !858
  %10 = icmp eq i32 %9, 4, !dbg !3542
  br i1 %10, label %6, label %11, !dbg !3539, !llvm.loop !3543

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %5, %4 ], [ %8, %6 ], !dbg !3535
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #38, !dbg !3546
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3547
  %13 = tail call { i64, i64 } @dtotimespec(double noundef %0) #41, !dbg !3548
  %14 = extractvalue { i64, i64 } %13, 0, !dbg !3548
  store i64 %14, ptr %2, align 8, !dbg !3548
  %15 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1, !dbg !3548
  %16 = extractvalue { i64, i64 } %13, 1, !dbg !3548
  store i64 %16, ptr %15, align 8, !dbg !3548
  store i32 0, ptr %12, align 4, !dbg !3549, !tbaa !858
  %17 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #38, !dbg !3553
  %18 = icmp eq i32 %17, 0, !dbg !3555
  br i1 %18, label %24, label %19, !dbg !3556

19:                                               ; preds = %11, %21
  %20 = load i32, ptr %12, align 4, !dbg !3557, !tbaa !858
  switch i32 %20, label %24 [
    i32 4, label %21
    i32 0, label %21
  ], !dbg !3559

21:                                               ; preds = %19, %19
  store i32 0, ptr %12, align 4, !dbg !3549, !tbaa !858
  %22 = call i32 @rpl_nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #38, !dbg !3553
  %23 = icmp eq i32 %22, 0, !dbg !3555
  br i1 %23, label %24, label %19, !dbg !3556, !llvm.loop !3560

24:                                               ; preds = %19, %21, %11
  %25 = phi i32 [ 0, %11 ], [ 0, %21 ], [ -1, %19 ], !dbg !3535
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #38, !dbg !3563
  ret i32 %25, !dbg !3563
}

declare !dbg !3564 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3567 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3575
  %3 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3576, !tbaa !802
  %4 = icmp eq ptr %3, null, !dbg !3576
  br i1 %4, label %5, label %7, !dbg !3582

5:                                                ; preds = %2
  %6 = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.114, ptr noundef null) #38, !dbg !3583
  store volatile ptr %6, ptr @c_locale_cache, align 8, !dbg !3584, !tbaa !802
  br label %7, !dbg !3585

7:                                                ; preds = %2, %5
  %8 = load volatile ptr, ptr @c_locale_cache, align 8, !dbg !3586, !tbaa !802
  call void @llvm.dbg.value(metadata ptr %8, metadata !3574, metadata !DIExpression()), !dbg !3575
  %9 = icmp eq ptr %8, null, !dbg !3587
  br i1 %9, label %10, label %13, !dbg !3589

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null, !dbg !3590
  br i1 %11, label %15, label %12, !dbg !3593

12:                                               ; preds = %10
  store ptr %0, ptr %1, align 8, !dbg !3594, !tbaa !802
  br label %15, !dbg !3595

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #38, !dbg !3596
  call void @llvm.dbg.value(metadata double %14, metadata !3573, metadata !DIExpression()), !dbg !3575
  br label %15, !dbg !3597

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3575
  ret double %16, !dbg !3598
}

; Function Attrs: nounwind
declare !dbg !3599 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3602 double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3648
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3649
  call void @llvm.dbg.value(metadata i1 poison, metadata !3644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %0, metadata !3650, metadata !DIExpression()), !dbg !3653
  %3 = load i32, ptr %0, align 8, !dbg !3655, !tbaa !3656
  %4 = and i32 %3, 32, !dbg !3657
  %5 = icmp eq i32 %4, 0, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %5, metadata !3646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3648
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3658
  %7 = icmp eq i32 %6, 0, !dbg !3659
  call void @llvm.dbg.value(metadata i1 %7, metadata !3647, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3648
  br i1 %5, label %8, label %18, !dbg !3660

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %9, metadata !3644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3648
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3663
  %11 = xor i1 %7, true, !dbg !3663
  %12 = sext i1 %11 to i32, !dbg !3663
  br i1 %10, label %21, label %13, !dbg !3663

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3664
  %15 = load i32, ptr %14, align 4, !dbg !3664, !tbaa !858
  %16 = icmp ne i32 %15, 9, !dbg !3665
  %17 = sext i1 %16 to i32, !dbg !3666
  br label %21, !dbg !3666

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3667

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3669
  store i32 0, ptr %20, align 4, !dbg !3671, !tbaa !858
  br label %21, !dbg !3669

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3648
  ret i32 %22, !dbg !3672
}

; Function Attrs: nounwind
declare !dbg !3673 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @dtotimespec(double noundef %0) local_unnamed_addr #35 !dbg !3677 {
  call void @llvm.dbg.value(metadata double %0, metadata !3685, metadata !DIExpression()), !dbg !3692
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3693
  br i1 %2, label %3, label %25, !dbg !3694

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3695
  br i1 %4, label %5, label %25, !dbg !3696

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %6, metadata !3686, metadata !DIExpression()), !dbg !3698
  %7 = sitofp i64 %6 to double, !dbg !3699
  %8 = fsub double %0, %7, !dbg !3700
  %9 = fmul double %8, 1.000000e+09, !dbg !3701
  call void @llvm.dbg.value(metadata double %9, metadata !3690, metadata !DIExpression()), !dbg !3698
  %10 = fptosi double %9 to i64, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %10, metadata !3691, metadata !DIExpression()), !dbg !3698
  %11 = sitofp i64 %10 to double, !dbg !3703
  %12 = fcmp ogt double %9, %11, !dbg !3704
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %14, metadata !3691, metadata !DIExpression()), !dbg !3698
  %15 = sdiv i64 %14, 1000000000, !dbg !3706
  %16 = add nsw i64 %15, %6, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %16, metadata !3686, metadata !DIExpression()), !dbg !3698
  %17 = srem i64 %14, 1000000000, !dbg !3708
  call void @llvm.dbg.value(metadata i64 %17, metadata !3691, metadata !DIExpression()), !dbg !3698
  %18 = icmp slt i64 %17, 0, !dbg !3709
  %19 = add nsw i64 %17, 1000000000, !dbg !3711
  %20 = ashr i64 %17, 63, !dbg !3711
  %21 = add nsw i64 %16, %20, !dbg !3711
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %22, metadata !3691, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 %21, metadata !3686, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 %21, metadata !3712, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %22, metadata !3717, metadata !DIExpression()), !dbg !3718
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0, !dbg !3720
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1, !dbg !3720
  br label %25

25:                                               ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26, !dbg !3721
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3760, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3761, metadata !DIExpression()), !dbg !3764
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3765
  call void @llvm.dbg.value(metadata i32 %2, metadata !3762, metadata !DIExpression()), !dbg !3764
  %3 = icmp slt i32 %2, 0, !dbg !3766
  br i1 %3, label %4, label %6, !dbg !3768

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3769
  br label %24, !dbg !3770

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3771
  %8 = icmp eq i32 %7, 0, !dbg !3771
  br i1 %8, label %13, label %9, !dbg !3773

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3774
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3775
  %12 = icmp eq i64 %11, -1, !dbg !3776
  br i1 %12, label %16, label %13, !dbg !3777

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3778
  %15 = icmp eq i32 %14, 0, !dbg !3778
  br i1 %15, label %16, label %18, !dbg !3779

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3764
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %17, metadata !3763, metadata !DIExpression()), !dbg !3764
  br label %24, !dbg !3781

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3782
  %20 = load i32, ptr %19, align 4, !dbg !3782, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %20, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3763, metadata !DIExpression()), !dbg !3764
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %21, metadata !3763, metadata !DIExpression()), !dbg !3764
  %22 = icmp eq i32 %20, 0, !dbg !3783
  br i1 %22, label %24, label %23, !dbg !3781

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3785, !tbaa !858
  call void @llvm.dbg.value(metadata i32 -1, metadata !3763, metadata !DIExpression()), !dbg !3764
  br label %24, !dbg !3787

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3764
  ret i32 %25, !dbg !3788
}

; Function Attrs: nofree nounwind
declare !dbg !3789 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3790 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3791 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3792 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3795 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3834
  %2 = icmp eq ptr %0, null, !dbg !3835
  br i1 %2, label %6, label %3, !dbg !3837

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3838
  %5 = icmp eq i32 %4, 0, !dbg !3838
  br i1 %5, label %6, label %8, !dbg !3839

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3840
  br label %16, !dbg !3841

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3842, metadata !DIExpression()), !dbg !3847
  %9 = load i32, ptr %0, align 8, !dbg !3849, !tbaa !3656
  %10 = and i32 %9, 256, !dbg !3851
  %11 = icmp eq i32 %10, 0, !dbg !3851
  br i1 %11, label %14, label %12, !dbg !3852

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3853
  br label %14, !dbg !3853

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3854
  br label %16, !dbg !3855

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3834
  ret i32 %17, !dbg !3856
}

; Function Attrs: nofree nounwind
declare !dbg !3857 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3898, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 %2, metadata !3899, metadata !DIExpression()), !dbg !3903
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3904
  %5 = load ptr, ptr %4, align 8, !dbg !3904, !tbaa !3905
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3906
  %7 = load ptr, ptr %6, align 8, !dbg !3906, !tbaa !3907
  %8 = icmp eq ptr %5, %7, !dbg !3908
  br i1 %8, label %9, label %27, !dbg !3909

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3910
  %11 = load ptr, ptr %10, align 8, !dbg !3910, !tbaa !1346
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3911
  %13 = load ptr, ptr %12, align 8, !dbg !3911, !tbaa !3912
  %14 = icmp eq ptr %11, %13, !dbg !3913
  br i1 %14, label %15, label %27, !dbg !3914

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3915
  %17 = load ptr, ptr %16, align 8, !dbg !3915, !tbaa !3916
  %18 = icmp eq ptr %17, null, !dbg !3917
  br i1 %18, label %19, label %27, !dbg !3918

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3919
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %21, metadata !3900, metadata !DIExpression()), !dbg !3921
  %22 = icmp eq i64 %21, -1, !dbg !3922
  br i1 %22, label %29, label %23, !dbg !3924

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3925, !tbaa !3656
  %25 = and i32 %24, -17, !dbg !3925
  store i32 %25, ptr %0, align 8, !dbg !3925, !tbaa !3656
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3926
  store i64 %21, ptr %26, align 8, !dbg !3927, !tbaa !3928
  br label %29, !dbg !3929

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3930
  br label %29, !dbg !3931

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3903
  ret i32 %30, !dbg !3932
}

; Function Attrs: nofree nounwind
declare !dbg !3933 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3936 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %1, metadata !3942, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %2, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %3, metadata !3944, metadata !DIExpression()), !dbg !3946
  %5 = icmp eq ptr %1, null, !dbg !3947
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3949
  %7 = select i1 %5, ptr @.str.127, ptr %1, !dbg !3949
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %8, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %7, metadata !3942, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %6, metadata !3941, metadata !DIExpression()), !dbg !3946
  %9 = icmp eq ptr %3, null, !dbg !3950
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %10, metadata !3944, metadata !DIExpression()), !dbg !3946
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %11, metadata !3945, metadata !DIExpression()), !dbg !3946
  %12 = icmp ult i64 %11, -3, !dbg !3954
  br i1 %12, label %13, label %17, !dbg !3956

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !3957
  %15 = icmp eq i32 %14, 0, !dbg !3957
  br i1 %15, label %16, label %29, !dbg !3958

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %10, metadata !3966, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 8, metadata !3970, metadata !DIExpression()), !dbg !3971
  store i64 0, ptr %10, align 1, !dbg !3973
  br label %29, !dbg !3974

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3975
  br i1 %18, label %19, label %20, !dbg !3977

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3978
  unreachable, !dbg !3978

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3979

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !3981
  br i1 %23, label %29, label %24, !dbg !3982

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3983
  br i1 %25, label %29, label %26, !dbg !3986

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3987, !tbaa !867
  %28 = zext i8 %27 to i32, !dbg !3988
  store i32 %28, ptr %6, align 4, !dbg !3989, !tbaa !858
  br label %29, !dbg !3990

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3946
  ret i64 %30, !dbg !3991
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3992 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_nanosleep(ptr nocapture noundef nonnull readonly %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3998 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %1, metadata !4010, metadata !DIExpression()), !dbg !4018
  %4 = getelementptr inbounds %struct.timespec, ptr %0, i64 0, i32 1, !dbg !4019
  %5 = load i64, ptr %4, align 8, !dbg !4019, !tbaa !4021
  %6 = icmp ugt i64 %5, 999999999, !dbg !4023
  br i1 %6, label %7, label %9, !dbg !4023

7:                                                ; preds = %2
  %8 = tail call ptr @__errno_location() #41, !dbg !4024
  store i32 22, ptr %8, align 4, !dbg !4026, !tbaa !858
  br label %31, !dbg !4027

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !4011, metadata !DIExpression()), !dbg !4028
  %10 = load i64, ptr %0, align 8, !dbg !4029, !tbaa !4030
  call void @llvm.dbg.value(metadata i64 %10, metadata !4014, metadata !DIExpression()), !dbg !4028
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !4033, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata i64 %10, metadata !4014, metadata !DIExpression()), !dbg !4028
  %11 = icmp sgt i64 %10, 2073600, !dbg !4035
  br i1 %11, label %12, label %26, !dbg !4036

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %14, !dbg !4036

14:                                               ; preds = %12, %24
  %15 = phi i64 [ %10, %12 ], [ %17, %24 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4014, metadata !DIExpression()), !dbg !4028
  store i64 2073600, ptr %3, align 8, !dbg !4037, !tbaa !4030
  %16 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #38, !dbg !4038
  call void @llvm.dbg.value(metadata i32 %16, metadata !4016, metadata !DIExpression()), !dbg !4039
  %17 = add nsw i64 %15, -2073600, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %17, metadata !4014, metadata !DIExpression()), !dbg !4028
  %18 = icmp eq i32 %16, 0, !dbg !4041
  br i1 %18, label %24, label %19, !dbg !4043

19:                                               ; preds = %14
  %20 = icmp eq ptr %1, null, !dbg !4044
  br i1 %20, label %29, label %21, !dbg !4047

21:                                               ; preds = %19
  %22 = load i64, ptr %1, align 8, !dbg !4048, !tbaa !4030
  %23 = add nsw i64 %22, %17, !dbg !4048
  store i64 %23, ptr %1, align 8, !dbg !4048, !tbaa !4030
  br label %29, !dbg !4049

24:                                               ; preds = %14
  store i64 0, ptr %13, align 8, !dbg !4050, !tbaa !4021
  call void @llvm.dbg.value(metadata i64 %17, metadata !4014, metadata !DIExpression()), !dbg !4028
  %25 = icmp ugt i64 %15, 4147200, !dbg !4035
  br i1 %25, label %14, label %26, !dbg !4036, !llvm.loop !4051

26:                                               ; preds = %24, %9
  %27 = phi i64 [ %10, %9 ], [ %17, %24 ], !dbg !4028
  store i64 %27, ptr %3, align 8, !dbg !4053, !tbaa !4030
  %28 = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef %1) #38, !dbg !4054
  br label %29, !dbg !4055

29:                                               ; preds = %21, %19, %26
  %30 = phi i32 [ %28, %26 ], [ %16, %19 ], [ %16, %21 ], !dbg !4028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38, !dbg !4056
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i32 [ -1, %7 ], [ %30, %29 ], !dbg !4018
  ret i32 %32, !dbg !4057
}

declare !dbg !4058 i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4060 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %2, metadata !4064, metadata !DIExpression()), !dbg !4066
  %4 = icmp eq i64 %2, 0, !dbg !4067
  br i1 %4, label %8, label %5, !dbg !4067

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4067
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4067
  br i1 %7, label %13, label %8, !dbg !4067

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4065, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4066
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4065, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4066
  %9 = mul i64 %2, %1, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %9, metadata !4065, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %9, metadata !4072, metadata !DIExpression()), !dbg !4073
  %10 = icmp eq i64 %9, 0, !dbg !4075
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4075
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4076
  br label %15, !dbg !4077

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4065, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4066
  %14 = tail call ptr @__errno_location() #41, !dbg !4078
  store i32 12, ptr %14, align 4, !dbg !4080, !tbaa !858
  br label %15, !dbg !4081

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4066
  ret ptr %16, !dbg !4082
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4083 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4087, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4088, metadata !DIExpression()), !dbg !4094
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4095
  %4 = icmp eq i32 %3, 0, !dbg !4095
  br i1 %4, label %5, label %12, !dbg !4097

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4098, metadata !DIExpression()), !dbg !4102
  %6 = load i16, ptr %2, align 16, !dbg !4105
  %7 = icmp eq i16 %6, 67, !dbg !4105
  br i1 %7, label %11, label %8, !dbg !4106

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4098, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr @.str.1.134, metadata !4101, metadata !DIExpression()), !dbg !4107
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.134, i64 6), !dbg !4109
  %10 = icmp eq i32 %9, 0, !dbg !4110
  br i1 %10, label %11, label %12, !dbg !4111

11:                                               ; preds = %8, %5
  br label %12, !dbg !4112

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4092
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4113
  ret i1 %13, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %2, metadata !4120, metadata !DIExpression()), !dbg !4121
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4122
  ret i32 %4, !dbg !4123
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4129
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4130
  ret ptr %2, !dbg !4131
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()), !dbg !4136
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4137
  call void @llvm.dbg.value(metadata ptr %2, metadata !4135, metadata !DIExpression()), !dbg !4136
  ret ptr %2, !dbg !4138
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4139 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4141, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4142, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %2, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()), !dbg !4149
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4151
  call void @llvm.dbg.value(metadata ptr %4, metadata !4135, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata ptr %4, metadata !4144, metadata !DIExpression()), !dbg !4148
  %5 = icmp eq ptr %4, null, !dbg !4152
  br i1 %5, label %6, label %9, !dbg !4153

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4154
  br i1 %7, label %19, label %8, !dbg !4157

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4158, !tbaa !867
  br label %19, !dbg !4159

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %10, metadata !4145, metadata !DIExpression()), !dbg !4161
  %11 = icmp ult i64 %10, %2, !dbg !4162
  br i1 %11, label %12, label %14, !dbg !4164

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4165
  call void @llvm.dbg.value(metadata ptr %1, metadata !4167, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %4, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %13, metadata !4171, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4174
  br label %19, !dbg !4175

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4176
  br i1 %15, label %19, label %16, !dbg !4179

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4180
  call void @llvm.dbg.value(metadata ptr %1, metadata !4167, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %4, metadata !4170, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %17, metadata !4171, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4184
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4185
  store i8 0, ptr %18, align 1, !dbg !4186, !tbaa !867
  br label %19, !dbg !4187

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4188
  ret i32 %20, !dbg !4189
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!80, !300, !699, !304, !319, !638, !701, !374, !394, !408, !456, !703, !630, !710, !744, !746, !651, !752, !754, !761, !763, !765, !683, !767, !773, !776, !780, !782}
!llvm.ident = !{!784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784, !784}
!llvm.module.flags = !{!785, !786, !787, !788, !789, !790}

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
!318 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !319, file: !320, line: 66, type: !366, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!321 = !{!99, !105}
!322 = !{!323, !325, !345, !347, !349, !351, !317, !353, !355, !357, !359, !364}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !320, line: 272, type: !109, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "old_file_name", scope: !327, file: !320, line: 304, type: !78, isLocal: true, isDefinition: true)
!327 = distinct !DISubprogram(name: "verror_at_line", scope: !320, file: !320, line: 298, type: !328, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !338)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !100, !100, !78, !84, !78, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !332)
!332 = !{!333, !335, !336, !337}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !331, file: !334, baseType: !84, size: 32)
!334 = !DIFile(filename: "lib/error.c", directory: "/src")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !331, file: !334, baseType: !84, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !331, file: !334, baseType: !99, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !331, file: !334, baseType: !99, size: 64, offset: 128)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DILocalVariable(name: "status", arg: 1, scope: !327, file: !320, line: 298, type: !100)
!340 = !DILocalVariable(name: "errnum", arg: 2, scope: !327, file: !320, line: 298, type: !100)
!341 = !DILocalVariable(name: "file_name", arg: 3, scope: !327, file: !320, line: 298, type: !78)
!342 = !DILocalVariable(name: "line_number", arg: 4, scope: !327, file: !320, line: 298, type: !84)
!343 = !DILocalVariable(name: "message", arg: 5, scope: !327, file: !320, line: 298, type: !78)
!344 = !DILocalVariable(name: "args", arg: 6, scope: !327, file: !320, line: 298, type: !330)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "old_line_number", scope: !327, file: !320, line: 305, type: !84, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !320, line: 338, type: !116, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !148, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !320, line: 346, type: !123, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_message_count", scope: !319, file: !320, line: 69, type: !84, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !319, file: !320, line: 295, type: !100, isLocal: false, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !143, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !320, line: 208, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 21)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !320, line: 214, type: !109, isLocal: true, isDefinition: true)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !371, line: 60, type: !123, isLocal: true, isDefinition: true)
!371 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "long_options", scope: !374, file: !371, line: 34, type: !382, isLocal: true, isDefinition: true)
!374 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !375, splitDebugInlining: false, nameTableKind: None)
!375 = !{!369, !376, !378, !380, !372}
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !371, line: 112, type: !29, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !371, line: 36, type: !109, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !371, line: 37, type: !148, isLocal: true, isDefinition: true)
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
!394 = distinct !DICompileUnit(language: DW_LANG_C11, file: !395, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !396, globals: !397, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!396 = !{!244}
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
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !405, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !409, splitDebugInlining: false, nameTableKind: None)
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
!456 = distinct !DICompileUnit(language: DW_LANG_C11, file: !435, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !457, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!457 = !{!458, !472, !82}
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !459, line: 42, baseType: !84, size: 32, elements: !460)
!459 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!477 = !{!100, !101, !102}
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
!630 = distinct !DICompileUnit(language: DW_LANG_C11, file: !631, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!632 = !{!628}
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 47)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "exit_failure", scope: !638, file: !639, line: 24, type: !641, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !640, splitDebugInlining: false, nameTableKind: None)
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
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !674, splitDebugInlining: false, nameTableKind: None)
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
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, globals: !685, splitDebugInlining: false, nameTableKind: None)
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
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !704, retainedTypes: !708, globals: !709, splitDebugInlining: false, nameTableKind: None)
!704 = !{!705}
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 40, baseType: !84, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!708 = !{!99}
!709 = !{!546, !549, !551, !553, !555, !557, !562, !567, !569, !574, !579, !584, !589, !591, !596, !601, !606, !611, !613, !615, !617, !619, !621, !623}
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!712 = !{!713, !725}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !714, file: !711, line: 188, baseType: !84, size: 32, elements: !723)
!714 = distinct !DISubprogram(name: "x2nrealloc", scope: !711, file: !711, line: 176, type: !715, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !718)
!715 = !DISubroutineType(types: !716)
!716 = !{!99, !99, !717, !102}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!718 = !{!719, !720, !721, !722}
!719 = !DILocalVariable(name: "p", arg: 1, scope: !714, file: !711, line: 176, type: !99)
!720 = !DILocalVariable(name: "pn", arg: 2, scope: !714, file: !711, line: 176, type: !717)
!721 = !DILocalVariable(name: "s", arg: 3, scope: !714, file: !711, line: 176, type: !102)
!722 = !DILocalVariable(name: "n", scope: !714, file: !711, line: 178, type: !102)
!723 = !{!724}
!724 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!725 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !726, file: !711, line: 228, baseType: !84, size: 32, elements: !723)
!726 = distinct !DISubprogram(name: "xpalloc", scope: !711, file: !711, line: 223, type: !727, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !733)
!727 = !DISubroutineType(types: !728)
!728 = !{!99, !99, !729, !730, !732, !730}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !731, line: 130, baseType: !732)
!731 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !103, line: 35, baseType: !265)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742}
!734 = !DILocalVariable(name: "pa", arg: 1, scope: !726, file: !711, line: 223, type: !99)
!735 = !DILocalVariable(name: "pn", arg: 2, scope: !726, file: !711, line: 223, type: !729)
!736 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !726, file: !711, line: 223, type: !730)
!737 = !DILocalVariable(name: "n_max", arg: 4, scope: !726, file: !711, line: 223, type: !732)
!738 = !DILocalVariable(name: "s", arg: 5, scope: !726, file: !711, line: 223, type: !730)
!739 = !DILocalVariable(name: "n0", scope: !726, file: !711, line: 230, type: !730)
!740 = !DILocalVariable(name: "n", scope: !726, file: !711, line: 237, type: !730)
!741 = !DILocalVariable(name: "nbytes", scope: !726, file: !711, line: 248, type: !730)
!742 = !DILocalVariable(name: "adjusted_nbytes", scope: !726, file: !711, line: 252, type: !730)
!743 = !{!244, !99, !223, !265, !104}
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !745, splitDebugInlining: false, nameTableKind: None)
!745 = !{!642, !645, !647}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !750, line: 10, baseType: !751)
!750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !264, line: 160, baseType: !265)
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !756, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!756 = !{!757}
!757 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !758, line: 44, baseType: !84, size: 32, elements: !759)
!758 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!759 = !{!760}
!760 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !708, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !708, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !768, line: 37, baseType: !84, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIEnumerator(name: "BILLION", value: 1000000000)
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!775 = !{!223, !104, !99}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !777, splitDebugInlining: false, nameTableKind: None)
!777 = !{!778, !696}
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !698, line: 35, type: !123, isLocal: true, isDefinition: true)
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !708, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!784 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!785 = !{i32 7, !"Dwarf Version", i32 5}
!786 = !{i32 2, !"Debug Info Version", i32 3}
!787 = !{i32 1, !"wchar_size", i32 4}
!788 = !{i32 8, !"PIC Level", i32 2}
!789 = !{i32 7, !"PIE Level", i32 2}
!790 = !{i32 7, !"uwtable", i32 2}
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
!829 = !DILocation(line: 857, column: 3, scope: !811, inlinedAt: !828)
!830 = !DILocation(line: 861, column: 29, scope: !811, inlinedAt: !828)
!831 = !DILocation(line: 862, column: 7, scope: !832, inlinedAt: !828)
!832 = distinct !DILexicalBlock(scope: !811, file: !75, line: 862, column: 7)
!833 = !DILocation(line: 862, column: 19, scope: !832, inlinedAt: !828)
!834 = !DILocation(line: 862, column: 22, scope: !832, inlinedAt: !828)
!835 = !DILocation(line: 862, column: 7, scope: !811, inlinedAt: !828)
!836 = !DILocation(line: 868, column: 7, scope: !837, inlinedAt: !828)
!837 = distinct !DILexicalBlock(scope: !832, file: !75, line: 863, column: 5)
!838 = !DILocation(line: 870, column: 5, scope: !837, inlinedAt: !828)
!839 = !DILocation(line: 875, column: 3, scope: !811, inlinedAt: !828)
!840 = !DILocation(line: 877, column: 3, scope: !811, inlinedAt: !828)
!841 = !DILocation(line: 55, column: 3, scope: !791)
!842 = !DISubprogram(name: "dcgettext", scope: !843, file: !843, line: 51, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!843 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!844 = !DISubroutineType(types: !845)
!845 = !{!244, !78, !78, !100}
!846 = !{}
!847 = !DISubprogram(name: "__fprintf_chk", scope: !848, file: !848, line: 93, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!848 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!849 = !DISubroutineType(types: !850)
!850 = !{!100, !851, !100, !852, null}
!851 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!853 = !DISubprogram(name: "__printf_chk", scope: !848, file: !848, line: 95, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
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
!909 = !DILocation(line: 618, column: 5, scope: !227)
!910 = !DILocation(line: 620, column: 23, scope: !74)
!911 = !DILocation(line: 625, column: 39, scope: !74)
!912 = !DILocation(line: 626, column: 3, scope: !74)
!913 = !DILocation(line: 626, column: 10, scope: !74)
!914 = !DILocation(line: 626, column: 21, scope: !74)
!915 = !DILocation(line: 628, column: 44, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !75, line: 628, column: 11)
!917 = distinct !DILexicalBlock(scope: !74, file: !75, line: 627, column: 5)
!918 = !DILocation(line: 628, column: 32, scope: !916)
!919 = !DILocation(line: 628, column: 49, scope: !916)
!920 = !DILocation(line: 628, column: 11, scope: !917)
!921 = !DILocation(line: 630, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !75, line: 630, column: 11)
!923 = !DILocation(line: 630, column: 11, scope: !917)
!924 = !DILocation(line: 632, column: 26, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !75, line: 632, column: 15)
!926 = distinct !DILexicalBlock(scope: !922, file: !75, line: 631, column: 9)
!927 = !DILocation(line: 632, column: 34, scope: !925)
!928 = !DILocation(line: 632, column: 37, scope: !925)
!929 = !DILocation(line: 632, column: 15, scope: !926)
!930 = !DILocation(line: 636, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !75, line: 636, column: 15)
!932 = !DILocation(line: 636, column: 29, scope: !931)
!933 = !DILocation(line: 640, column: 16, scope: !917)
!934 = distinct !{!934, !912, !935, !905}
!935 = !DILocation(line: 641, column: 5, scope: !74)
!936 = !DILocation(line: 644, column: 3, scope: !74)
!937 = !DILocation(line: 0, scope: !870, inlinedAt: !938)
!938 = distinct !DILocation(line: 648, column: 31, scope: !74)
!939 = !DILocation(line: 0, scope: !870, inlinedAt: !940)
!940 = distinct !DILocation(line: 649, column: 31, scope: !74)
!941 = !DILocation(line: 0, scope: !870, inlinedAt: !942)
!942 = distinct !DILocation(line: 650, column: 31, scope: !74)
!943 = !DILocation(line: 0, scope: !870, inlinedAt: !944)
!944 = distinct !DILocation(line: 651, column: 31, scope: !74)
!945 = !DILocation(line: 0, scope: !870, inlinedAt: !946)
!946 = distinct !DILocation(line: 652, column: 31, scope: !74)
!947 = !DILocation(line: 0, scope: !870, inlinedAt: !948)
!948 = distinct !DILocation(line: 653, column: 31, scope: !74)
!949 = !DILocation(line: 0, scope: !870, inlinedAt: !950)
!950 = distinct !DILocation(line: 654, column: 31, scope: !74)
!951 = !DILocation(line: 0, scope: !870, inlinedAt: !952)
!952 = distinct !DILocation(line: 655, column: 31, scope: !74)
!953 = !DILocation(line: 0, scope: !870, inlinedAt: !954)
!954 = distinct !DILocation(line: 656, column: 31, scope: !74)
!955 = !DILocation(line: 0, scope: !870, inlinedAt: !956)
!956 = distinct !DILocation(line: 657, column: 31, scope: !74)
!957 = !DILocation(line: 663, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !74, file: !75, line: 663, column: 7)
!959 = !DILocation(line: 664, column: 7, scope: !958)
!960 = !DILocation(line: 664, column: 10, scope: !958)
!961 = !DILocation(line: 663, column: 7, scope: !74)
!962 = !DILocation(line: 669, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !75, line: 665, column: 5)
!964 = !DILocation(line: 671, column: 5, scope: !963)
!965 = !DILocation(line: 676, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !75, line: 673, column: 5)
!967 = !DILocation(line: 679, column: 3, scope: !74)
!968 = !DILocation(line: 683, column: 3, scope: !74)
!969 = !DILocation(line: 686, column: 3, scope: !74)
!970 = !DILocation(line: 688, column: 3, scope: !74)
!971 = !DILocation(line: 691, column: 3, scope: !74)
!972 = !DILocation(line: 695, column: 3, scope: !74)
!973 = !DILocation(line: 696, column: 1, scope: !74)
!974 = !DISubprogram(name: "setlocale", scope: !975, file: !975, line: 122, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!975 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!976 = !DISubroutineType(types: !977)
!977 = !{!244, !100, !78}
!978 = !DISubprogram(name: "strncmp", scope: !979, file: !979, line: 159, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!979 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!980 = !DISubroutineType(types: !981)
!981 = !{!100, !78, !78, !102}
!982 = !DISubprogram(name: "fputs_unlocked", scope: !983, file: !983, line: 691, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!983 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!984 = !DISubroutineType(types: !985)
!985 = !{!100, !852, !851}
!986 = !DISubprogram(name: "exit", scope: !987, file: !987, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !846)
!987 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!988 = !DISubprogram(name: "getenv", scope: !987, file: !987, line: 641, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!989 = !DISubroutineType(types: !990)
!990 = !{!244, !78}
!991 = !DISubprogram(name: "strcmp", scope: !979, file: !979, line: 156, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!992 = !DISubroutineType(types: !993)
!993 = !{!100, !78, !78}
!994 = !DISubprogram(name: "strspn", scope: !979, file: !979, line: 297, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!995 = !DISubroutineType(types: !996)
!996 = !{!104, !78, !78}
!997 = !DISubprogram(name: "strchr", scope: !979, file: !979, line: 246, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!998 = !DISubroutineType(types: !999)
!999 = !{!244, !78, !100}
!1000 = !DISubprogram(name: "__ctype_b_loc", scope: !83, file: !83, line: 79, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!1004 = !DISubprogram(name: "strcspn", scope: !979, file: !979, line: 293, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1005 = !DISubprogram(name: "fwrite_unlocked", scope: !983, file: !983, line: 704, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!102, !1008, !102, !102, !851}
!1008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1011 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 94, type: !1012, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1015)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!100, !100, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1015 = !{!1016, !1017, !1018, !1020, !1021, !1023, !1026, !1027}
!1016 = !DILocalVariable(name: "argc", arg: 1, scope: !1011, file: !2, line: 94, type: !100)
!1017 = !DILocalVariable(name: "argv", arg: 2, scope: !1011, file: !2, line: 94, type: !1014)
!1018 = !DILocalVariable(name: "seconds", scope: !1011, file: !2, line: 96, type: !1019)
!1019 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1020 = !DILocalVariable(name: "ok", scope: !1011, file: !2, line: 97, type: !223)
!1021 = !DILocalVariable(name: "i", scope: !1022, file: !2, line: 117, type: !100)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 117, column: 3)
!1023 = !DILocalVariable(name: "p", scope: !1024, file: !2, line: 119, type: !244)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 118, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 117, column: 3)
!1026 = !DILocalVariable(name: "duration", scope: !1024, file: !2, line: 121, type: !1019)
!1027 = !DILocalVariable(name: "s", scope: !1024, file: !2, line: 122, type: !1019)
!1028 = !DILocation(line: 0, scope: !1011)
!1029 = !DILocation(line: 100, column: 21, scope: !1011)
!1030 = !DILocation(line: 100, column: 3, scope: !1011)
!1031 = !DILocation(line: 101, column: 3, scope: !1011)
!1032 = !DILocation(line: 102, column: 3, scope: !1011)
!1033 = !DILocation(line: 103, column: 3, scope: !1011)
!1034 = !DILocation(line: 105, column: 3, scope: !1011)
!1035 = !DILocation(line: 108, column: 36, scope: !1011)
!1036 = !DILocation(line: 108, column: 58, scope: !1011)
!1037 = !DILocation(line: 107, column: 3, scope: !1011)
!1038 = !DILocation(line: 111, column: 12, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 111, column: 7)
!1040 = !DILocation(line: 111, column: 7, scope: !1011)
!1041 = !DILocation(line: 113, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 112, column: 5)
!1043 = !DILocation(line: 114, column: 7, scope: !1042)
!1044 = !DILocation(line: 117, column: 16, scope: !1022)
!1045 = !DILocation(line: 0, scope: !1022)
!1046 = !DILocation(line: 117, column: 26, scope: !1025)
!1047 = !DILocation(line: 117, column: 3, scope: !1022)
!1048 = !DILocation(line: 138, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 138, column: 7)
!1050 = !DILocation(line: 138, column: 7, scope: !1011)
!1051 = !DILocation(line: 119, column: 7, scope: !1024)
!1052 = !DILocation(line: 120, column: 13, scope: !1024)
!1053 = !DILocation(line: 121, column: 36, scope: !1024)
!1054 = !DILocation(line: 0, scope: !1024)
!1055 = !DILocation(line: 121, column: 25, scope: !1024)
!1056 = !DILocation(line: 122, column: 45, scope: !1024)
!1057 = !DILocalVariable(name: "c", arg: 1, scope: !1058, file: !1059, line: 54, type: !1019)
!1058 = distinct !DISubprogram(name: "dtimespec_bound", scope: !1059, file: !1059, line: 54, type: !1060, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80, retainedNodes: !1062)
!1059 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1019, !1019, !100}
!1062 = !{!1057, !1063, !1064}
!1063 = !DILocalVariable(name: "err", arg: 2, scope: !1058, file: !1059, line: 54, type: !100)
!1064 = !DILocalVariable(name: "phi", scope: !1058, file: !1059, line: 70, type: !1019)
!1065 = !DILocation(line: 0, scope: !1058, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 122, column: 18, scope: !1024)
!1067 = !DILocation(line: 60, column: 11, scope: !1068, inlinedAt: !1066)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !1059, line: 60, column: 7)
!1069 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1066)
!1070 = !DILocation(line: 123, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 123, column: 11)
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
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1085 = !{!1080, !1086, !1087}
!1086 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1081, file: !2, line: 65, type: !4)
!1087 = !DILocalVariable(name: "multiplier", scope: !1081, file: !2, line: 67, type: !100)
!1088 = !DILocation(line: 0, scope: !1081, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 129, column: 16, scope: !1071)
!1090 = !DILocation(line: 69, column: 11, scope: !1081, inlinedAt: !1089)
!1091 = !DILocation(line: 69, column: 3, scope: !1081, inlinedAt: !1089)
!1092 = !DILocation(line: 77, column: 7, scope: !1093, inlinedAt: !1089)
!1093 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 70, column: 5)
!1094 = !DILocation(line: 80, column: 7, scope: !1093, inlinedAt: !1089)
!1095 = !DILocation(line: 83, column: 7, scope: !1093, inlinedAt: !1089)
!1096 = !DILocation(line: 88, column: 28, scope: !1081, inlinedAt: !1089)
!1097 = !DILocation(line: 0, scope: !1058, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 88, column: 8, scope: !1081, inlinedAt: !1089)
!1099 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1098)
!1100 = !DILocation(line: 123, column: 11, scope: !1024)
!1101 = !DILocation(line: 131, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 130, column: 9)
!1103 = !DILocation(line: 133, column: 9, scope: !1102)
!1104 = !DILocation(line: 122, column: 14, scope: !1024)
!1105 = !DILocation(line: 135, column: 42, scope: !1024)
!1106 = !DILocation(line: 0, scope: !1058, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 135, column: 17, scope: !1024)
!1108 = !DILocation(line: 60, column: 21, scope: !1068, inlinedAt: !1107)
!1109 = !DILocation(line: 136, column: 5, scope: !1025)
!1110 = !DILocation(line: 117, column: 35, scope: !1025)
!1111 = distinct !{!1111, !1047, !1112, !905}
!1112 = !DILocation(line: 136, column: 5, scope: !1022)
!1113 = !DILocation(line: 139, column: 5, scope: !1049)
!1114 = !DILocation(line: 141, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 141, column: 7)
!1116 = !DILocation(line: 141, column: 7, scope: !1011)
!1117 = !DILocation(line: 142, column: 5, scope: !1115)
!1118 = !DILocation(line: 144, column: 3, scope: !1011)
!1119 = !DISubprogram(name: "bindtextdomain", scope: !843, file: !843, line: 86, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!244, !78, !78}
!1122 = !DISubprogram(name: "textdomain", scope: !843, file: !843, line: 82, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1123 = !DISubprogram(name: "atexit", scope: !987, file: !987, line: 602, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!100, !366}
!1126 = !DISubprogram(name: "__errno_location", scope: !1127, file: !1127, line: 37, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1127 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!390}
!1130 = distinct !DISubprogram(name: "cl_strtod", scope: !700, file: !700, line: 59, type: !1131, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !1134)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1019, !78, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1014)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1142, !1143}
!1135 = !DILocalVariable(name: "nptr", arg: 1, scope: !1130, file: !700, line: 59, type: !78)
!1136 = !DILocalVariable(name: "endptr", arg: 2, scope: !1130, file: !700, line: 59, type: !1133)
!1137 = !DILocalVariable(name: "end", scope: !1130, file: !700, line: 61, type: !244)
!1138 = !DILocalVariable(name: "d", scope: !1130, file: !700, line: 62, type: !1019)
!1139 = !DILocalVariable(name: "strtod_errno", scope: !1140, file: !700, line: 65, type: !100)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !700, line: 64, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1130, file: !700, line: 63, column: 7)
!1142 = !DILocalVariable(name: "c_end", scope: !1140, file: !700, line: 66, type: !244)
!1143 = !DILocalVariable(name: "c", scope: !1140, file: !700, line: 67, type: !1019)
!1144 = !DILocation(line: 0, scope: !1130)
!1145 = !DILocation(line: 61, column: 3, scope: !1130)
!1146 = !DILocation(line: 62, column: 14, scope: !1130)
!1147 = !DILocation(line: 63, column: 8, scope: !1141)
!1148 = !DILocation(line: 63, column: 7, scope: !1141)
!1149 = !DILocation(line: 63, column: 7, scope: !1130)
!1150 = !DILocation(line: 65, column: 26, scope: !1140)
!1151 = !DILocation(line: 0, scope: !1140)
!1152 = !DILocation(line: 66, column: 7, scope: !1140)
!1153 = !DILocation(line: 67, column: 18, scope: !1140)
!1154 = !DILocation(line: 68, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1140, file: !700, line: 68, column: 11)
!1156 = !DILocation(line: 68, column: 15, scope: !1155)
!1157 = !DILocation(line: 68, column: 11, scope: !1140)
!1158 = !DILocation(line: 71, column: 15, scope: !1155)
!1159 = !DILocation(line: 72, column: 5, scope: !1141)
!1160 = !DILocation(line: 72, column: 5, scope: !1140)
!1161 = !DILocation(line: 73, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1130, file: !700, line: 73, column: 7)
!1163 = !DILocation(line: 73, column: 7, scope: !1130)
!1164 = !DILocation(line: 74, column: 13, scope: !1162)
!1165 = !DILocation(line: 74, column: 5, scope: !1162)
!1166 = !DILocation(line: 76, column: 1, scope: !1130)
!1167 = !DILocation(line: 75, column: 3, scope: !1130)
!1168 = !DISubprogram(name: "strtod", scope: !987, file: !987, line: 118, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1019, !852, !1133}
!1171 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !305, file: !305, line: 50, type: !812, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1172)
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "file", arg: 1, scope: !1171, file: !305, line: 50, type: !78)
!1174 = !DILocation(line: 0, scope: !1171)
!1175 = !DILocation(line: 52, column: 13, scope: !1171)
!1176 = !DILocation(line: 53, column: 1, scope: !1171)
!1177 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !305, file: !305, line: 87, type: !1178, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !223}
!1180 = !{!1181}
!1181 = !DILocalVariable(name: "ignore", arg: 1, scope: !1177, file: !305, line: 87, type: !223)
!1182 = !DILocation(line: 0, scope: !1177)
!1183 = !DILocation(line: 89, column: 16, scope: !1177)
!1184 = !{!1185, !1185, i64 0}
!1185 = !{!"_Bool", !804, i64 0}
!1186 = !DILocation(line: 90, column: 1, scope: !1177)
!1187 = distinct !DISubprogram(name: "close_stdout", scope: !305, file: !305, line: 116, type: !367, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1188)
!1188 = !{!1189}
!1189 = !DILocalVariable(name: "write_error", scope: !1190, file: !305, line: 121, type: !78)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !305, line: 120, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !305, line: 118, column: 7)
!1192 = !DILocation(line: 118, column: 21, scope: !1191)
!1193 = !DILocation(line: 118, column: 7, scope: !1191)
!1194 = !DILocation(line: 118, column: 29, scope: !1191)
!1195 = !DILocation(line: 119, column: 7, scope: !1191)
!1196 = !DILocation(line: 119, column: 12, scope: !1191)
!1197 = !{i8 0, i8 2}
!1198 = !DILocation(line: 119, column: 25, scope: !1191)
!1199 = !DILocation(line: 119, column: 28, scope: !1191)
!1200 = !DILocation(line: 119, column: 34, scope: !1191)
!1201 = !DILocation(line: 118, column: 7, scope: !1187)
!1202 = !DILocation(line: 121, column: 33, scope: !1190)
!1203 = !DILocation(line: 0, scope: !1190)
!1204 = !DILocation(line: 122, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1190, file: !305, line: 122, column: 11)
!1206 = !DILocation(line: 0, scope: !1205)
!1207 = !DILocation(line: 122, column: 11, scope: !1190)
!1208 = !DILocation(line: 123, column: 9, scope: !1205)
!1209 = !DILocation(line: 126, column: 9, scope: !1205)
!1210 = !DILocation(line: 128, column: 14, scope: !1190)
!1211 = !DILocation(line: 128, column: 7, scope: !1190)
!1212 = !DILocation(line: 133, column: 42, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1187, file: !305, line: 133, column: 7)
!1214 = !DILocation(line: 133, column: 28, scope: !1213)
!1215 = !DILocation(line: 133, column: 50, scope: !1213)
!1216 = !DILocation(line: 133, column: 7, scope: !1187)
!1217 = !DILocation(line: 134, column: 12, scope: !1213)
!1218 = !DILocation(line: 134, column: 5, scope: !1213)
!1219 = !DILocation(line: 135, column: 1, scope: !1187)
!1220 = !DISubprogram(name: "_exit", scope: !1221, file: !1221, line: 624, type: !792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1221 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1222 = distinct !DISubprogram(name: "verror", scope: !320, file: !320, line: 251, type: !1223, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !100, !100, !78, !330}
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DILocalVariable(name: "status", arg: 1, scope: !1222, file: !320, line: 251, type: !100)
!1227 = !DILocalVariable(name: "errnum", arg: 2, scope: !1222, file: !320, line: 251, type: !100)
!1228 = !DILocalVariable(name: "message", arg: 3, scope: !1222, file: !320, line: 251, type: !78)
!1229 = !DILocalVariable(name: "args", arg: 4, scope: !1222, file: !320, line: 251, type: !330)
!1230 = !DILocation(line: 0, scope: !1222)
!1231 = !DILocation(line: 261, column: 3, scope: !1222)
!1232 = !DILocation(line: 265, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1222, file: !320, line: 265, column: 7)
!1234 = !DILocation(line: 265, column: 7, scope: !1222)
!1235 = !DILocation(line: 266, column: 5, scope: !1233)
!1236 = !DILocation(line: 272, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !320, line: 268, column: 5)
!1238 = !DILocation(line: 276, column: 3, scope: !1222)
!1239 = !DILocation(line: 282, column: 1, scope: !1222)
!1240 = distinct !DISubprogram(name: "flush_stdout", scope: !320, file: !320, line: 163, type: !367, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1241)
!1241 = !{!1242}
!1242 = !DILocalVariable(name: "stdout_fd", scope: !1240, file: !320, line: 166, type: !100)
!1243 = !DILocation(line: 0, scope: !1240)
!1244 = !DILocalVariable(name: "fd", arg: 1, scope: !1245, file: !320, line: 145, type: !100)
!1245 = distinct !DISubprogram(name: "is_open", scope: !320, file: !320, line: 145, type: !1246, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!100, !100}
!1248 = !{!1244}
!1249 = !DILocation(line: 0, scope: !1245, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 182, column: 25, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !320, line: 182, column: 7)
!1252 = !DILocation(line: 157, column: 15, scope: !1245, inlinedAt: !1250)
!1253 = !DILocation(line: 157, column: 12, scope: !1245, inlinedAt: !1250)
!1254 = !DILocation(line: 182, column: 7, scope: !1240)
!1255 = !DILocation(line: 184, column: 5, scope: !1251)
!1256 = !DILocation(line: 185, column: 1, scope: !1240)
!1257 = distinct !DISubprogram(name: "error_tail", scope: !320, file: !320, line: 219, type: !1223, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1258)
!1258 = !{!1259, !1260, !1261, !1262}
!1259 = !DILocalVariable(name: "status", arg: 1, scope: !1257, file: !320, line: 219, type: !100)
!1260 = !DILocalVariable(name: "errnum", arg: 2, scope: !1257, file: !320, line: 219, type: !100)
!1261 = !DILocalVariable(name: "message", arg: 3, scope: !1257, file: !320, line: 219, type: !78)
!1262 = !DILocalVariable(name: "args", arg: 4, scope: !1257, file: !320, line: 219, type: !330)
!1263 = !DILocation(line: 0, scope: !1257)
!1264 = !DILocation(line: 229, column: 13, scope: !1257)
!1265 = !DILocalVariable(name: "__stream", arg: 1, scope: !1266, file: !848, line: 132, type: !1269)
!1266 = distinct !DISubprogram(name: "vfprintf", scope: !848, file: !848, line: 132, type: !1267, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1304)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!100, !1269, !852, !330}
!1269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1272, file: !240, line: 51, baseType: !100, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1272, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1272, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1272, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1272, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1272, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1272, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1272, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1272, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1272, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1272, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1272, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1272, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1272, file: !240, line: 70, baseType: !1288, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1272, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1272, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1272, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1272, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1272, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1272, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1272, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1272, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1272, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1272, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1272, file: !240, line: 93, baseType: !1288, size: 64, offset: 1344)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1272, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1272, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1272, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1272, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!1304 = !{!1265, !1305, !1306}
!1305 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1266, file: !848, line: 133, type: !852)
!1306 = !DILocalVariable(name: "__ap", arg: 3, scope: !1266, file: !848, line: 133, type: !330)
!1307 = !DILocation(line: 0, scope: !1266, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 229, column: 3, scope: !1257)
!1309 = !DILocation(line: 135, column: 10, scope: !1266, inlinedAt: !1308)
!1310 = !DILocation(line: 232, column: 3, scope: !1257)
!1311 = !DILocation(line: 233, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1257, file: !320, line: 233, column: 7)
!1313 = !DILocation(line: 233, column: 7, scope: !1257)
!1314 = !DILocalVariable(name: "errnum", arg: 1, scope: !1315, file: !320, line: 188, type: !100)
!1315 = distinct !DISubprogram(name: "print_errno_message", scope: !320, file: !320, line: 188, type: !792, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1316)
!1316 = !{!1314, !1317, !1318}
!1317 = !DILocalVariable(name: "s", scope: !1315, file: !320, line: 190, type: !78)
!1318 = !DILocalVariable(name: "errbuf", scope: !1315, file: !320, line: 193, type: !1319)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 1024)
!1322 = !DILocation(line: 0, scope: !1315, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 234, column: 5, scope: !1312)
!1324 = !DILocation(line: 193, column: 3, scope: !1315, inlinedAt: !1323)
!1325 = !DILocation(line: 193, column: 8, scope: !1315, inlinedAt: !1323)
!1326 = !DILocation(line: 195, column: 7, scope: !1315, inlinedAt: !1323)
!1327 = !DILocation(line: 207, column: 9, scope: !1328, inlinedAt: !1323)
!1328 = distinct !DILexicalBlock(scope: !1315, file: !320, line: 207, column: 7)
!1329 = !DILocation(line: 207, column: 7, scope: !1315, inlinedAt: !1323)
!1330 = !DILocation(line: 208, column: 9, scope: !1328, inlinedAt: !1323)
!1331 = !DILocation(line: 208, column: 5, scope: !1328, inlinedAt: !1323)
!1332 = !DILocation(line: 214, column: 3, scope: !1315, inlinedAt: !1323)
!1333 = !DILocation(line: 216, column: 1, scope: !1315, inlinedAt: !1323)
!1334 = !DILocation(line: 234, column: 5, scope: !1312)
!1335 = !DILocation(line: 238, column: 3, scope: !1257)
!1336 = !DILocalVariable(name: "__c", arg: 1, scope: !1337, file: !1338, line: 101, type: !100)
!1337 = distinct !DISubprogram(name: "putc_unlocked", scope: !1338, file: !1338, line: 101, type: !1339, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1341)
!1338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!100, !100, !1270}
!1341 = !{!1336, !1342}
!1342 = !DILocalVariable(name: "__stream", arg: 2, scope: !1337, file: !1338, line: 101, type: !1270)
!1343 = !DILocation(line: 0, scope: !1337, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 238, column: 3, scope: !1257)
!1345 = !DILocation(line: 103, column: 10, scope: !1337, inlinedAt: !1344)
!1346 = !{!1347, !803, i64 40}
!1347 = !{!"_IO_FILE", !859, i64 0, !803, i64 8, !803, i64 16, !803, i64 24, !803, i64 32, !803, i64 40, !803, i64 48, !803, i64 56, !803, i64 64, !803, i64 72, !803, i64 80, !803, i64 88, !803, i64 96, !803, i64 104, !859, i64 112, !859, i64 116, !1348, i64 120, !900, i64 128, !804, i64 130, !804, i64 131, !803, i64 136, !1348, i64 144, !803, i64 152, !803, i64 160, !803, i64 168, !803, i64 176, !1348, i64 184, !859, i64 192, !804, i64 196}
!1348 = !{!"long", !804, i64 0}
!1349 = !{!1347, !803, i64 48}
!1350 = !{!"branch_weights", i32 2000, i32 1}
!1351 = !DILocation(line: 240, column: 3, scope: !1257)
!1352 = !DILocation(line: 241, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1257, file: !320, line: 241, column: 7)
!1354 = !DILocation(line: 241, column: 7, scope: !1257)
!1355 = !DILocation(line: 242, column: 5, scope: !1353)
!1356 = !DILocation(line: 243, column: 1, scope: !1257)
!1357 = !DISubprogram(name: "__vfprintf_chk", scope: !848, file: !848, line: 96, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!100, !1269, !100, !852, !330}
!1360 = !DISubprogram(name: "strerror_r", scope: !979, file: !979, line: 444, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!244, !100, !244, !102}
!1363 = !DISubprogram(name: "__overflow", scope: !983, file: !983, line: 886, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!100, !1270, !100}
!1366 = !DISubprogram(name: "fflush_unlocked", scope: !983, file: !983, line: 239, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!100, !1270}
!1369 = !DISubprogram(name: "fcntl", scope: !1370, file: !1370, line: 149, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1370 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!100, !100, !100, null}
!1373 = distinct !DISubprogram(name: "error", scope: !320, file: !320, line: 285, type: !1374, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !100, !100, !78, null}
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DILocalVariable(name: "status", arg: 1, scope: !1373, file: !320, line: 285, type: !100)
!1378 = !DILocalVariable(name: "errnum", arg: 2, scope: !1373, file: !320, line: 285, type: !100)
!1379 = !DILocalVariable(name: "message", arg: 3, scope: !1373, file: !320, line: 285, type: !78)
!1380 = !DILocalVariable(name: "ap", scope: !1373, file: !320, line: 287, type: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !983, line: 52, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1383, line: 14, baseType: !1384)
!1383 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !334, baseType: !1385)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !30)
!1386 = !DILocation(line: 0, scope: !1373)
!1387 = !DILocation(line: 287, column: 3, scope: !1373)
!1388 = !DILocation(line: 287, column: 11, scope: !1373)
!1389 = !DILocation(line: 288, column: 3, scope: !1373)
!1390 = !DILocation(line: 289, column: 3, scope: !1373)
!1391 = !DILocation(line: 290, column: 3, scope: !1373)
!1392 = !DILocation(line: 291, column: 1, scope: !1373)
!1393 = !DILocation(line: 0, scope: !327)
!1394 = !DILocation(line: 302, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !327, file: !320, line: 302, column: 7)
!1396 = !DILocation(line: 302, column: 7, scope: !327)
!1397 = !DILocation(line: 307, column: 11, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !320, line: 307, column: 11)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !320, line: 303, column: 5)
!1400 = !DILocation(line: 307, column: 27, scope: !1398)
!1401 = !DILocation(line: 308, column: 11, scope: !1398)
!1402 = !DILocation(line: 308, column: 28, scope: !1398)
!1403 = !DILocation(line: 308, column: 25, scope: !1398)
!1404 = !DILocation(line: 309, column: 15, scope: !1398)
!1405 = !DILocation(line: 309, column: 33, scope: !1398)
!1406 = !DILocation(line: 310, column: 19, scope: !1398)
!1407 = !DILocation(line: 311, column: 22, scope: !1398)
!1408 = !DILocation(line: 311, column: 56, scope: !1398)
!1409 = !DILocation(line: 307, column: 11, scope: !1399)
!1410 = !DILocation(line: 316, column: 21, scope: !1399)
!1411 = !DILocation(line: 317, column: 23, scope: !1399)
!1412 = !DILocation(line: 318, column: 5, scope: !1399)
!1413 = !DILocation(line: 327, column: 3, scope: !327)
!1414 = !DILocation(line: 331, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !327, file: !320, line: 331, column: 7)
!1416 = !DILocation(line: 331, column: 7, scope: !327)
!1417 = !DILocation(line: 332, column: 5, scope: !1415)
!1418 = !DILocation(line: 338, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !320, line: 334, column: 5)
!1420 = !DILocation(line: 346, column: 3, scope: !327)
!1421 = !DILocation(line: 350, column: 3, scope: !327)
!1422 = !DILocation(line: 356, column: 1, scope: !327)
!1423 = distinct !DISubprogram(name: "error_at_line", scope: !320, file: !320, line: 359, type: !1424, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !100, !100, !78, !84, !78, null}
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432}
!1427 = !DILocalVariable(name: "status", arg: 1, scope: !1423, file: !320, line: 359, type: !100)
!1428 = !DILocalVariable(name: "errnum", arg: 2, scope: !1423, file: !320, line: 359, type: !100)
!1429 = !DILocalVariable(name: "file_name", arg: 3, scope: !1423, file: !320, line: 359, type: !78)
!1430 = !DILocalVariable(name: "line_number", arg: 4, scope: !1423, file: !320, line: 360, type: !84)
!1431 = !DILocalVariable(name: "message", arg: 5, scope: !1423, file: !320, line: 360, type: !78)
!1432 = !DILocalVariable(name: "ap", scope: !1423, file: !320, line: 362, type: !1381)
!1433 = !DILocation(line: 0, scope: !1423)
!1434 = !DILocation(line: 362, column: 3, scope: !1423)
!1435 = !DILocation(line: 362, column: 11, scope: !1423)
!1436 = !DILocation(line: 363, column: 3, scope: !1423)
!1437 = !DILocation(line: 364, column: 3, scope: !1423)
!1438 = !DILocation(line: 366, column: 3, scope: !1423)
!1439 = !DILocation(line: 367, column: 1, scope: !1423)
!1440 = distinct !DISubprogram(name: "getprogname", scope: !702, file: !702, line: 54, type: !1441, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !846)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!78}
!1443 = !DILocation(line: 58, column: 10, scope: !1440)
!1444 = !DILocation(line: 58, column: 3, scope: !1440)
!1445 = distinct !DISubprogram(name: "parse_long_options", scope: !371, file: !371, line: 45, type: !1446, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1449)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !100, !1014, !78, !78, !78, !1448, null}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1460}
!1450 = !DILocalVariable(name: "argc", arg: 1, scope: !1445, file: !371, line: 45, type: !100)
!1451 = !DILocalVariable(name: "argv", arg: 2, scope: !1445, file: !371, line: 46, type: !1014)
!1452 = !DILocalVariable(name: "command_name", arg: 3, scope: !1445, file: !371, line: 47, type: !78)
!1453 = !DILocalVariable(name: "package", arg: 4, scope: !1445, file: !371, line: 48, type: !78)
!1454 = !DILocalVariable(name: "version", arg: 5, scope: !1445, file: !371, line: 49, type: !78)
!1455 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1445, file: !371, line: 50, type: !1448)
!1456 = !DILocalVariable(name: "saved_opterr", scope: !1445, file: !371, line: 53, type: !100)
!1457 = !DILocalVariable(name: "c", scope: !1458, file: !371, line: 60, type: !100)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !371, line: 59, column: 5)
!1459 = distinct !DILexicalBlock(scope: !1445, file: !371, line: 58, column: 7)
!1460 = !DILocalVariable(name: "authors", scope: !1461, file: !371, line: 71, type: !1465)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !371, line: 70, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !371, line: 64, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !371, line: 62, column: 9)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !371, line: 61, column: 11)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !983, line: 52, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1383, line: 14, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1468, baseType: !1469)
!1468 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 192, elements: !30)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1470, file: !1468, line: 71, baseType: !84, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1470, file: !1468, line: 71, baseType: !84, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1470, file: !1468, line: 71, baseType: !99, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1470, file: !1468, line: 71, baseType: !99, size: 64, offset: 128)
!1476 = !DILocation(line: 0, scope: !1445)
!1477 = !DILocation(line: 53, column: 22, scope: !1445)
!1478 = !DILocation(line: 56, column: 10, scope: !1445)
!1479 = !DILocation(line: 58, column: 12, scope: !1459)
!1480 = !DILocation(line: 58, column: 7, scope: !1445)
!1481 = !DILocation(line: 60, column: 15, scope: !1458)
!1482 = !DILocation(line: 0, scope: !1458)
!1483 = !DILocation(line: 61, column: 11, scope: !1458)
!1484 = !DILocation(line: 66, column: 15, scope: !1462)
!1485 = !DILocation(line: 67, column: 15, scope: !1462)
!1486 = !DILocation(line: 71, column: 17, scope: !1461)
!1487 = !DILocation(line: 71, column: 25, scope: !1461)
!1488 = !DILocation(line: 72, column: 17, scope: !1461)
!1489 = !DILocation(line: 73, column: 33, scope: !1461)
!1490 = !DILocation(line: 73, column: 17, scope: !1461)
!1491 = !DILocation(line: 74, column: 17, scope: !1461)
!1492 = !DILocation(line: 85, column: 10, scope: !1445)
!1493 = !DILocation(line: 89, column: 10, scope: !1445)
!1494 = !DILocation(line: 90, column: 1, scope: !1445)
!1495 = !DISubprogram(name: "getopt_long", scope: !385, file: !385, line: 66, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!100, !100, !1498, !78, !1500, !390}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1501 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !371, file: !371, line: 98, type: !1502, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !100, !1014, !78, !78, !78, !223, !1448, null}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1505 = !DILocalVariable(name: "argc", arg: 1, scope: !1501, file: !371, line: 98, type: !100)
!1506 = !DILocalVariable(name: "argv", arg: 2, scope: !1501, file: !371, line: 99, type: !1014)
!1507 = !DILocalVariable(name: "command_name", arg: 3, scope: !1501, file: !371, line: 100, type: !78)
!1508 = !DILocalVariable(name: "package", arg: 4, scope: !1501, file: !371, line: 101, type: !78)
!1509 = !DILocalVariable(name: "version", arg: 5, scope: !1501, file: !371, line: 102, type: !78)
!1510 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1501, file: !371, line: 103, type: !223)
!1511 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1501, file: !371, line: 104, type: !1448)
!1512 = !DILocalVariable(name: "saved_opterr", scope: !1501, file: !371, line: 107, type: !100)
!1513 = !DILocalVariable(name: "optstring", scope: !1501, file: !371, line: 112, type: !78)
!1514 = !DILocalVariable(name: "c", scope: !1501, file: !371, line: 114, type: !100)
!1515 = !DILocalVariable(name: "authors", scope: !1516, file: !371, line: 125, type: !1465)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !371, line: 124, column: 11)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !371, line: 118, column: 9)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !371, line: 116, column: 5)
!1519 = distinct !DILexicalBlock(scope: !1501, file: !371, line: 115, column: 7)
!1520 = !DILocation(line: 0, scope: !1501)
!1521 = !DILocation(line: 107, column: 22, scope: !1501)
!1522 = !DILocation(line: 110, column: 10, scope: !1501)
!1523 = !DILocation(line: 112, column: 27, scope: !1501)
!1524 = !DILocation(line: 114, column: 11, scope: !1501)
!1525 = !DILocation(line: 115, column: 7, scope: !1501)
!1526 = !DILocation(line: 125, column: 13, scope: !1516)
!1527 = !DILocation(line: 125, column: 21, scope: !1516)
!1528 = !DILocation(line: 126, column: 13, scope: !1516)
!1529 = !DILocation(line: 127, column: 29, scope: !1516)
!1530 = !DILocation(line: 127, column: 13, scope: !1516)
!1531 = !DILocation(line: 128, column: 13, scope: !1516)
!1532 = !DILocation(line: 132, column: 26, scope: !1517)
!1533 = !DILocation(line: 133, column: 11, scope: !1517)
!1534 = !DILocation(line: 0, scope: !1517)
!1535 = !DILocation(line: 138, column: 10, scope: !1501)
!1536 = !DILocation(line: 139, column: 1, scope: !1501)
!1537 = distinct !DISubprogram(name: "set_program_name", scope: !395, file: !395, line: 37, type: !812, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "argv0", arg: 1, scope: !1537, file: !395, line: 37, type: !78)
!1540 = !DILocalVariable(name: "slash", scope: !1537, file: !395, line: 44, type: !78)
!1541 = !DILocalVariable(name: "base", scope: !1537, file: !395, line: 45, type: !78)
!1542 = !DILocation(line: 0, scope: !1537)
!1543 = !DILocation(line: 44, column: 23, scope: !1537)
!1544 = !DILocation(line: 45, column: 22, scope: !1537)
!1545 = !DILocation(line: 46, column: 17, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1537, file: !395, line: 46, column: 7)
!1547 = !DILocation(line: 46, column: 9, scope: !1546)
!1548 = !DILocation(line: 46, column: 25, scope: !1546)
!1549 = !DILocation(line: 46, column: 40, scope: !1546)
!1550 = !DILocalVariable(name: "__s1", arg: 1, scope: !1551, file: !871, line: 974, type: !1009)
!1551 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1552, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!223, !1009, !1009, !102}
!1554 = !{!1550, !1555, !1556}
!1555 = !DILocalVariable(name: "__s2", arg: 2, scope: !1551, file: !871, line: 974, type: !1009)
!1556 = !DILocalVariable(name: "__n", arg: 3, scope: !1551, file: !871, line: 974, type: !102)
!1557 = !DILocation(line: 0, scope: !1551, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 46, column: 28, scope: !1546)
!1559 = !DILocation(line: 976, column: 11, scope: !1551, inlinedAt: !1558)
!1560 = !DILocation(line: 976, column: 10, scope: !1551, inlinedAt: !1558)
!1561 = !DILocation(line: 46, column: 7, scope: !1537)
!1562 = !DILocation(line: 49, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !395, line: 49, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1546, file: !395, line: 47, column: 5)
!1565 = !DILocation(line: 49, column: 36, scope: !1563)
!1566 = !DILocation(line: 49, column: 11, scope: !1564)
!1567 = !DILocation(line: 65, column: 16, scope: !1537)
!1568 = !DILocation(line: 71, column: 27, scope: !1537)
!1569 = !DILocation(line: 74, column: 33, scope: !1537)
!1570 = !DILocation(line: 76, column: 1, scope: !1537)
!1571 = !DISubprogram(name: "strrchr", scope: !979, file: !979, line: 273, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1572 = !DILocation(line: 0, scope: !404)
!1573 = !DILocation(line: 40, column: 29, scope: !404)
!1574 = !DILocation(line: 41, column: 19, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !404, file: !405, line: 41, column: 7)
!1576 = !DILocation(line: 41, column: 7, scope: !404)
!1577 = !DILocation(line: 47, column: 3, scope: !404)
!1578 = !DILocation(line: 48, column: 3, scope: !404)
!1579 = !DILocation(line: 48, column: 13, scope: !404)
!1580 = !DILocalVariable(name: "ps", arg: 1, scope: !1581, file: !1582, line: 1135, type: !1585)
!1581 = distinct !DISubprogram(name: "mbszero", scope: !1582, file: !1582, line: 1135, type: !1583, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1586)
!1582 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1586 = !{!1580}
!1587 = !DILocation(line: 0, scope: !1581, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 48, column: 18, scope: !404)
!1589 = !DILocalVariable(name: "__dest", arg: 1, scope: !1590, file: !1591, line: 57, type: !99)
!1590 = distinct !DISubprogram(name: "memset", scope: !1591, file: !1591, line: 57, type: !1592, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1594)
!1591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!99, !99, !100, !102}
!1594 = !{!1589, !1595, !1596}
!1595 = !DILocalVariable(name: "__ch", arg: 2, scope: !1590, file: !1591, line: 57, type: !100)
!1596 = !DILocalVariable(name: "__len", arg: 3, scope: !1590, file: !1591, line: 57, type: !102)
!1597 = !DILocation(line: 0, scope: !1590, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 1137, column: 3, scope: !1581, inlinedAt: !1588)
!1599 = !DILocation(line: 59, column: 10, scope: !1590, inlinedAt: !1598)
!1600 = !DILocation(line: 49, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !404, file: !405, line: 49, column: 7)
!1602 = !DILocation(line: 49, column: 39, scope: !1601)
!1603 = !DILocation(line: 49, column: 44, scope: !1601)
!1604 = !DILocation(line: 54, column: 1, scope: !404)
!1605 = !DISubprogram(name: "mbrtoc32", scope: !416, file: !416, line: 57, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!102, !1608, !852, !102, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1585)
!1611 = distinct !DISubprogram(name: "clone_quoting_options", scope: !435, file: !435, line: 113, type: !1612, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1615)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1614, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1615 = !{!1616, !1617, !1618}
!1616 = !DILocalVariable(name: "o", arg: 1, scope: !1611, file: !435, line: 113, type: !1614)
!1617 = !DILocalVariable(name: "saved_errno", scope: !1611, file: !435, line: 115, type: !100)
!1618 = !DILocalVariable(name: "p", scope: !1611, file: !435, line: 116, type: !1614)
!1619 = !DILocation(line: 0, scope: !1611)
!1620 = !DILocation(line: 115, column: 21, scope: !1611)
!1621 = !DILocation(line: 116, column: 40, scope: !1611)
!1622 = !DILocation(line: 116, column: 31, scope: !1611)
!1623 = !DILocation(line: 118, column: 9, scope: !1611)
!1624 = !DILocation(line: 119, column: 3, scope: !1611)
!1625 = distinct !DISubprogram(name: "get_quoting_style", scope: !435, file: !435, line: 124, type: !1626, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1630)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!458, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "o", arg: 1, scope: !1625, file: !435, line: 124, type: !1628)
!1632 = !DILocation(line: 0, scope: !1625)
!1633 = !DILocation(line: 126, column: 11, scope: !1625)
!1634 = !DILocation(line: 126, column: 46, scope: !1625)
!1635 = !{!1636, !804, i64 0}
!1636 = !{!"quoting_options", !804, i64 0, !859, i64 4, !804, i64 8, !803, i64 40, !803, i64 48}
!1637 = !DILocation(line: 126, column: 3, scope: !1625)
!1638 = distinct !DISubprogram(name: "set_quoting_style", scope: !435, file: !435, line: 132, type: !1639, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !1614, !458}
!1641 = !{!1642, !1643}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1638, file: !435, line: 132, type: !1614)
!1643 = !DILocalVariable(name: "s", arg: 2, scope: !1638, file: !435, line: 132, type: !458)
!1644 = !DILocation(line: 0, scope: !1638)
!1645 = !DILocation(line: 134, column: 4, scope: !1638)
!1646 = !DILocation(line: 134, column: 45, scope: !1638)
!1647 = !DILocation(line: 135, column: 1, scope: !1638)
!1648 = distinct !DISubprogram(name: "set_char_quoting", scope: !435, file: !435, line: 143, type: !1649, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!100, !1614, !4, !100}
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1658, !1659}
!1652 = !DILocalVariable(name: "o", arg: 1, scope: !1648, file: !435, line: 143, type: !1614)
!1653 = !DILocalVariable(name: "c", arg: 2, scope: !1648, file: !435, line: 143, type: !4)
!1654 = !DILocalVariable(name: "i", arg: 3, scope: !1648, file: !435, line: 143, type: !100)
!1655 = !DILocalVariable(name: "uc", scope: !1648, file: !435, line: 145, type: !105)
!1656 = !DILocalVariable(name: "p", scope: !1648, file: !435, line: 146, type: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1658 = !DILocalVariable(name: "shift", scope: !1648, file: !435, line: 148, type: !100)
!1659 = !DILocalVariable(name: "r", scope: !1648, file: !435, line: 149, type: !84)
!1660 = !DILocation(line: 0, scope: !1648)
!1661 = !DILocation(line: 147, column: 6, scope: !1648)
!1662 = !DILocation(line: 147, column: 41, scope: !1648)
!1663 = !DILocation(line: 147, column: 62, scope: !1648)
!1664 = !DILocation(line: 147, column: 57, scope: !1648)
!1665 = !DILocation(line: 148, column: 15, scope: !1648)
!1666 = !DILocation(line: 149, column: 21, scope: !1648)
!1667 = !DILocation(line: 149, column: 24, scope: !1648)
!1668 = !DILocation(line: 149, column: 34, scope: !1648)
!1669 = !DILocation(line: 150, column: 19, scope: !1648)
!1670 = !DILocation(line: 150, column: 24, scope: !1648)
!1671 = !DILocation(line: 150, column: 6, scope: !1648)
!1672 = !DILocation(line: 151, column: 3, scope: !1648)
!1673 = distinct !DISubprogram(name: "set_quoting_flags", scope: !435, file: !435, line: 159, type: !1674, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!100, !1614, !100}
!1676 = !{!1677, !1678, !1679}
!1677 = !DILocalVariable(name: "o", arg: 1, scope: !1673, file: !435, line: 159, type: !1614)
!1678 = !DILocalVariable(name: "i", arg: 2, scope: !1673, file: !435, line: 159, type: !100)
!1679 = !DILocalVariable(name: "r", scope: !1673, file: !435, line: 163, type: !100)
!1680 = !DILocation(line: 0, scope: !1673)
!1681 = !DILocation(line: 161, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !435, line: 161, column: 7)
!1683 = !DILocation(line: 161, column: 7, scope: !1673)
!1684 = !DILocation(line: 163, column: 14, scope: !1673)
!1685 = !{!1636, !859, i64 4}
!1686 = !DILocation(line: 164, column: 12, scope: !1673)
!1687 = !DILocation(line: 165, column: 3, scope: !1673)
!1688 = distinct !DISubprogram(name: "set_custom_quoting", scope: !435, file: !435, line: 169, type: !1689, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1614, !78, !78}
!1691 = !{!1692, !1693, !1694}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1688, file: !435, line: 169, type: !1614)
!1693 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1688, file: !435, line: 170, type: !78)
!1694 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1688, file: !435, line: 170, type: !78)
!1695 = !DILocation(line: 0, scope: !1688)
!1696 = !DILocation(line: 172, column: 8, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !435, line: 172, column: 7)
!1698 = !DILocation(line: 172, column: 7, scope: !1688)
!1699 = !DILocation(line: 174, column: 12, scope: !1688)
!1700 = !DILocation(line: 175, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1688, file: !435, line: 175, column: 7)
!1702 = !DILocation(line: 175, column: 19, scope: !1701)
!1703 = !DILocation(line: 176, column: 5, scope: !1701)
!1704 = !DILocation(line: 177, column: 6, scope: !1688)
!1705 = !DILocation(line: 177, column: 17, scope: !1688)
!1706 = !{!1636, !803, i64 40}
!1707 = !DILocation(line: 178, column: 6, scope: !1688)
!1708 = !DILocation(line: 178, column: 18, scope: !1688)
!1709 = !{!1636, !803, i64 48}
!1710 = !DILocation(line: 179, column: 1, scope: !1688)
!1711 = !DISubprogram(name: "abort", scope: !987, file: !987, line: 598, type: !367, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !846)
!1712 = distinct !DISubprogram(name: "quotearg_buffer", scope: !435, file: !435, line: 774, type: !1713, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!102, !244, !102, !78, !102, !1628}
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1716 = !DILocalVariable(name: "buffer", arg: 1, scope: !1712, file: !435, line: 774, type: !244)
!1717 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1712, file: !435, line: 774, type: !102)
!1718 = !DILocalVariable(name: "arg", arg: 3, scope: !1712, file: !435, line: 775, type: !78)
!1719 = !DILocalVariable(name: "argsize", arg: 4, scope: !1712, file: !435, line: 775, type: !102)
!1720 = !DILocalVariable(name: "o", arg: 5, scope: !1712, file: !435, line: 776, type: !1628)
!1721 = !DILocalVariable(name: "p", scope: !1712, file: !435, line: 778, type: !1628)
!1722 = !DILocalVariable(name: "saved_errno", scope: !1712, file: !435, line: 779, type: !100)
!1723 = !DILocalVariable(name: "r", scope: !1712, file: !435, line: 780, type: !102)
!1724 = !DILocation(line: 0, scope: !1712)
!1725 = !DILocation(line: 778, column: 37, scope: !1712)
!1726 = !DILocation(line: 779, column: 21, scope: !1712)
!1727 = !DILocation(line: 781, column: 43, scope: !1712)
!1728 = !DILocation(line: 781, column: 53, scope: !1712)
!1729 = !DILocation(line: 781, column: 63, scope: !1712)
!1730 = !DILocation(line: 782, column: 43, scope: !1712)
!1731 = !DILocation(line: 782, column: 58, scope: !1712)
!1732 = !DILocation(line: 780, column: 14, scope: !1712)
!1733 = !DILocation(line: 783, column: 9, scope: !1712)
!1734 = !DILocation(line: 784, column: 3, scope: !1712)
!1735 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !435, file: !435, line: 251, type: !1736, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!102, !244, !102, !78, !102, !458, !100, !1738, !78, !78}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1765, !1767, !1770, !1771, !1772, !1773, !1776, !1777, !1780, !1784, !1785, !1793, !1796, !1797, !1799, !1800, !1801, !1802}
!1741 = !DILocalVariable(name: "buffer", arg: 1, scope: !1735, file: !435, line: 251, type: !244)
!1742 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1735, file: !435, line: 251, type: !102)
!1743 = !DILocalVariable(name: "arg", arg: 3, scope: !1735, file: !435, line: 252, type: !78)
!1744 = !DILocalVariable(name: "argsize", arg: 4, scope: !1735, file: !435, line: 252, type: !102)
!1745 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1735, file: !435, line: 253, type: !458)
!1746 = !DILocalVariable(name: "flags", arg: 6, scope: !1735, file: !435, line: 253, type: !100)
!1747 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1735, file: !435, line: 254, type: !1738)
!1748 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1735, file: !435, line: 255, type: !78)
!1749 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1735, file: !435, line: 256, type: !78)
!1750 = !DILocalVariable(name: "unibyte_locale", scope: !1735, file: !435, line: 258, type: !223)
!1751 = !DILocalVariable(name: "len", scope: !1735, file: !435, line: 260, type: !102)
!1752 = !DILocalVariable(name: "orig_buffersize", scope: !1735, file: !435, line: 261, type: !102)
!1753 = !DILocalVariable(name: "quote_string", scope: !1735, file: !435, line: 262, type: !78)
!1754 = !DILocalVariable(name: "quote_string_len", scope: !1735, file: !435, line: 263, type: !102)
!1755 = !DILocalVariable(name: "backslash_escapes", scope: !1735, file: !435, line: 264, type: !223)
!1756 = !DILocalVariable(name: "elide_outer_quotes", scope: !1735, file: !435, line: 265, type: !223)
!1757 = !DILocalVariable(name: "encountered_single_quote", scope: !1735, file: !435, line: 266, type: !223)
!1758 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1735, file: !435, line: 267, type: !223)
!1759 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1735, file: !435, line: 309, type: !223)
!1760 = !DILocalVariable(name: "lq", scope: !1761, file: !435, line: 361, type: !78)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !435, line: 361, column: 11)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !435, line: 360, column: 13)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !435, line: 333, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 312, column: 5)
!1765 = !DILocalVariable(name: "i", scope: !1766, file: !435, line: 395, type: !102)
!1766 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 395, column: 3)
!1767 = !DILocalVariable(name: "is_right_quote", scope: !1768, file: !435, line: 397, type: !223)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !435, line: 396, column: 5)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !435, line: 395, column: 3)
!1770 = !DILocalVariable(name: "escaping", scope: !1768, file: !435, line: 398, type: !223)
!1771 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1768, file: !435, line: 399, type: !223)
!1772 = !DILocalVariable(name: "c", scope: !1768, file: !435, line: 417, type: !105)
!1773 = !DILocalVariable(name: "m", scope: !1774, file: !435, line: 598, type: !102)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 596, column: 11)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 419, column: 9)
!1776 = !DILocalVariable(name: "printable", scope: !1774, file: !435, line: 600, type: !223)
!1777 = !DILocalVariable(name: "mbs", scope: !1778, file: !435, line: 609, type: !519)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !435, line: 608, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !435, line: 602, column: 17)
!1780 = !DILocalVariable(name: "w", scope: !1781, file: !435, line: 618, type: !415)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !435, line: 617, column: 19)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !435, line: 616, column: 17)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !435, line: 616, column: 17)
!1784 = !DILocalVariable(name: "bytes", scope: !1781, file: !435, line: 619, type: !102)
!1785 = !DILocalVariable(name: "j", scope: !1786, file: !435, line: 648, type: !102)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !435, line: 648, column: 29)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !435, line: 647, column: 27)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !435, line: 645, column: 29)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !435, line: 636, column: 23)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !435, line: 628, column: 30)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !435, line: 623, column: 30)
!1792 = distinct !DILexicalBlock(scope: !1781, file: !435, line: 621, column: 25)
!1793 = !DILocalVariable(name: "ilim", scope: !1794, file: !435, line: 674, type: !102)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !435, line: 671, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1774, file: !435, line: 670, column: 17)
!1796 = !DILabel(scope: !1735, name: "process_input", file: !435, line: 308)
!1797 = !DILabel(scope: !1798, name: "c_and_shell_escape", file: !435, line: 502)
!1798 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 478, column: 9)
!1799 = !DILabel(scope: !1798, name: "c_escape", file: !435, line: 507)
!1800 = !DILabel(scope: !1768, name: "store_escape", file: !435, line: 709)
!1801 = !DILabel(scope: !1768, name: "store_c", file: !435, line: 712)
!1802 = !DILabel(scope: !1735, name: "force_outer_quoting_style", file: !435, line: 753)
!1803 = !DILocation(line: 0, scope: !1735)
!1804 = !DILocation(line: 258, column: 25, scope: !1735)
!1805 = !DILocation(line: 258, column: 36, scope: !1735)
!1806 = !DILocation(line: 265, column: 8, scope: !1735)
!1807 = !DILocation(line: 267, column: 3, scope: !1735)
!1808 = !DILocation(line: 261, column: 10, scope: !1735)
!1809 = !DILocation(line: 262, column: 15, scope: !1735)
!1810 = !DILocation(line: 263, column: 10, scope: !1735)
!1811 = !DILocation(line: 264, column: 8, scope: !1735)
!1812 = !DILocation(line: 266, column: 8, scope: !1735)
!1813 = !DILocation(line: 267, column: 8, scope: !1735)
!1814 = !DILocation(line: 308, column: 2, scope: !1735)
!1815 = !DILocation(line: 311, column: 3, scope: !1735)
!1816 = !DILocation(line: 318, column: 11, scope: !1764)
!1817 = !DILocation(line: 318, column: 12, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1764, file: !435, line: 318, column: 11)
!1819 = !DILocation(line: 319, column: 9, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !435, line: 319, column: 9)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !435, line: 319, column: 9)
!1822 = !DILocation(line: 319, column: 9, scope: !1821)
!1823 = !DILocation(line: 0, scope: !510, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 357, column: 26, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !435, line: 335, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1763, file: !435, line: 334, column: 13)
!1827 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1824)
!1828 = !DILocation(line: 201, column: 19, scope: !1829, inlinedAt: !1824)
!1829 = distinct !DILexicalBlock(scope: !510, file: !435, line: 201, column: 7)
!1830 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1824)
!1831 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1824)
!1832 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1824)
!1833 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1824)
!1834 = !DILocalVariable(name: "ps", arg: 1, scope: !1835, file: !1582, line: 1135, type: !1838)
!1835 = distinct !DISubprogram(name: "mbszero", scope: !1582, file: !1582, line: 1135, type: !1836, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1839)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1839 = !{!1834}
!1840 = !DILocation(line: 0, scope: !1835, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1824)
!1842 = !DILocalVariable(name: "__dest", arg: 1, scope: !1843, file: !1591, line: 57, type: !99)
!1843 = distinct !DISubprogram(name: "memset", scope: !1591, file: !1591, line: 57, type: !1592, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1844)
!1844 = !{!1842, !1845, !1846}
!1845 = !DILocalVariable(name: "__ch", arg: 2, scope: !1843, file: !1591, line: 57, type: !100)
!1846 = !DILocalVariable(name: "__len", arg: 3, scope: !1843, file: !1591, line: 57, type: !102)
!1847 = !DILocation(line: 0, scope: !1843, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !1841)
!1849 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !1848)
!1850 = !DILocation(line: 231, column: 7, scope: !1851, inlinedAt: !1824)
!1851 = distinct !DILexicalBlock(scope: !510, file: !435, line: 231, column: 7)
!1852 = !DILocation(line: 231, column: 40, scope: !1851, inlinedAt: !1824)
!1853 = !DILocation(line: 231, column: 45, scope: !1851, inlinedAt: !1824)
!1854 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1824)
!1855 = !DILocation(line: 0, scope: !510, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 358, column: 27, scope: !1825)
!1857 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1856)
!1858 = !DILocation(line: 201, column: 19, scope: !1829, inlinedAt: !1856)
!1859 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1856)
!1860 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1856)
!1861 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1856)
!1862 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1856)
!1863 = !DILocation(line: 0, scope: !1835, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1856)
!1865 = !DILocation(line: 0, scope: !1843, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !1864)
!1867 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !1866)
!1868 = !DILocation(line: 231, column: 7, scope: !1851, inlinedAt: !1856)
!1869 = !DILocation(line: 231, column: 40, scope: !1851, inlinedAt: !1856)
!1870 = !DILocation(line: 231, column: 45, scope: !1851, inlinedAt: !1856)
!1871 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1856)
!1872 = !DILocation(line: 360, column: 14, scope: !1762)
!1873 = !DILocation(line: 360, column: 13, scope: !1763)
!1874 = !DILocation(line: 0, scope: !1761)
!1875 = !DILocation(line: 361, column: 45, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1761, file: !435, line: 361, column: 11)
!1877 = !DILocation(line: 361, column: 11, scope: !1761)
!1878 = !DILocation(line: 362, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !435, line: 362, column: 13)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !435, line: 362, column: 13)
!1881 = !DILocation(line: 362, column: 13, scope: !1880)
!1882 = !DILocation(line: 361, column: 52, scope: !1876)
!1883 = distinct !{!1883, !1877, !1884, !905}
!1884 = !DILocation(line: 362, column: 13, scope: !1761)
!1885 = !DILocation(line: 260, column: 10, scope: !1735)
!1886 = !DILocation(line: 365, column: 28, scope: !1763)
!1887 = !DILocation(line: 367, column: 7, scope: !1764)
!1888 = !DILocation(line: 370, column: 7, scope: !1764)
!1889 = !DILocation(line: 373, column: 7, scope: !1764)
!1890 = !DILocation(line: 376, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1764, file: !435, line: 376, column: 11)
!1892 = !DILocation(line: 376, column: 11, scope: !1764)
!1893 = !DILocation(line: 381, column: 12, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1764, file: !435, line: 381, column: 11)
!1895 = !DILocation(line: 381, column: 11, scope: !1764)
!1896 = !DILocation(line: 382, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !435, line: 382, column: 9)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !435, line: 382, column: 9)
!1899 = !DILocation(line: 382, column: 9, scope: !1898)
!1900 = !DILocation(line: 389, column: 7, scope: !1764)
!1901 = !DILocation(line: 392, column: 7, scope: !1764)
!1902 = !DILocation(line: 0, scope: !1766)
!1903 = !DILocation(line: 395, column: 8, scope: !1766)
!1904 = !DILocation(line: 309, column: 8, scope: !1735)
!1905 = !DILocation(line: 395, scope: !1766)
!1906 = !DILocation(line: 395, column: 34, scope: !1769)
!1907 = !DILocation(line: 395, column: 26, scope: !1769)
!1908 = !DILocation(line: 395, column: 48, scope: !1769)
!1909 = !DILocation(line: 395, column: 55, scope: !1769)
!1910 = !DILocation(line: 395, column: 3, scope: !1766)
!1911 = !DILocation(line: 395, column: 67, scope: !1769)
!1912 = !DILocation(line: 0, scope: !1768)
!1913 = !DILocation(line: 402, column: 11, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 401, column: 11)
!1915 = !DILocation(line: 404, column: 17, scope: !1914)
!1916 = !DILocation(line: 405, column: 39, scope: !1914)
!1917 = !DILocation(line: 409, column: 32, scope: !1914)
!1918 = !DILocation(line: 405, column: 19, scope: !1914)
!1919 = !DILocation(line: 405, column: 15, scope: !1914)
!1920 = !DILocation(line: 410, column: 11, scope: !1914)
!1921 = !DILocation(line: 410, column: 25, scope: !1914)
!1922 = !DILocalVariable(name: "__s1", arg: 1, scope: !1923, file: !871, line: 974, type: !1009)
!1923 = distinct !DISubprogram(name: "memeq", scope: !871, file: !871, line: 974, type: !1552, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1924)
!1924 = !{!1922, !1925, !1926}
!1925 = !DILocalVariable(name: "__s2", arg: 2, scope: !1923, file: !871, line: 974, type: !1009)
!1926 = !DILocalVariable(name: "__n", arg: 3, scope: !1923, file: !871, line: 974, type: !102)
!1927 = !DILocation(line: 0, scope: !1923, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 410, column: 14, scope: !1914)
!1929 = !DILocation(line: 976, column: 11, scope: !1923, inlinedAt: !1928)
!1930 = !DILocation(line: 976, column: 10, scope: !1923, inlinedAt: !1928)
!1931 = !DILocation(line: 401, column: 11, scope: !1768)
!1932 = !DILocation(line: 417, column: 25, scope: !1768)
!1933 = !DILocation(line: 418, column: 7, scope: !1768)
!1934 = !DILocation(line: 421, column: 15, scope: !1775)
!1935 = !DILocation(line: 423, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !435, line: 423, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !435, line: 422, column: 13)
!1938 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 421, column: 15)
!1939 = !DILocation(line: 423, column: 15, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !435, line: 423, column: 15)
!1941 = !DILocation(line: 423, column: 15, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !435, line: 423, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !435, line: 423, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !435, line: 423, column: 15)
!1945 = !DILocation(line: 423, column: 15, scope: !1943)
!1946 = !DILocation(line: 423, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !435, line: 423, column: 15)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !435, line: 423, column: 15)
!1949 = !DILocation(line: 423, column: 15, scope: !1948)
!1950 = !DILocation(line: 423, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !435, line: 423, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !435, line: 423, column: 15)
!1953 = !DILocation(line: 423, column: 15, scope: !1952)
!1954 = !DILocation(line: 423, column: 15, scope: !1944)
!1955 = !DILocation(line: 423, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !435, line: 423, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1936, file: !435, line: 423, column: 15)
!1958 = !DILocation(line: 423, column: 15, scope: !1957)
!1959 = !DILocation(line: 431, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1937, file: !435, line: 430, column: 19)
!1961 = !DILocation(line: 431, column: 24, scope: !1960)
!1962 = !DILocation(line: 431, column: 28, scope: !1960)
!1963 = !DILocation(line: 431, column: 38, scope: !1960)
!1964 = !DILocation(line: 431, column: 48, scope: !1960)
!1965 = !DILocation(line: 431, column: 59, scope: !1960)
!1966 = !DILocation(line: 433, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !435, line: 433, column: 19)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !435, line: 433, column: 19)
!1969 = distinct !DILexicalBlock(scope: !1960, file: !435, line: 432, column: 17)
!1970 = !DILocation(line: 433, column: 19, scope: !1968)
!1971 = !DILocation(line: 434, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !435, line: 434, column: 19)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !435, line: 434, column: 19)
!1974 = !DILocation(line: 434, column: 19, scope: !1973)
!1975 = !DILocation(line: 435, column: 17, scope: !1969)
!1976 = !DILocation(line: 442, column: 20, scope: !1938)
!1977 = !DILocation(line: 447, column: 11, scope: !1775)
!1978 = !DILocation(line: 450, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 448, column: 13)
!1980 = !DILocation(line: 456, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1979, file: !435, line: 455, column: 19)
!1982 = !DILocation(line: 456, column: 24, scope: !1981)
!1983 = !DILocation(line: 456, column: 28, scope: !1981)
!1984 = !DILocation(line: 456, column: 38, scope: !1981)
!1985 = !DILocation(line: 456, column: 47, scope: !1981)
!1986 = !DILocation(line: 456, column: 41, scope: !1981)
!1987 = !DILocation(line: 456, column: 52, scope: !1981)
!1988 = !DILocation(line: 455, column: 19, scope: !1979)
!1989 = !DILocation(line: 457, column: 25, scope: !1981)
!1990 = !DILocation(line: 457, column: 17, scope: !1981)
!1991 = !DILocation(line: 464, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1981, file: !435, line: 458, column: 19)
!1993 = !DILocation(line: 468, column: 21, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !435, line: 468, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !435, line: 468, column: 21)
!1996 = !DILocation(line: 468, column: 21, scope: !1995)
!1997 = !DILocation(line: 469, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !435, line: 469, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !435, line: 469, column: 21)
!2000 = !DILocation(line: 469, column: 21, scope: !1999)
!2001 = !DILocation(line: 470, column: 21, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !435, line: 470, column: 21)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !435, line: 470, column: 21)
!2004 = !DILocation(line: 470, column: 21, scope: !2003)
!2005 = !DILocation(line: 471, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !435, line: 471, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1992, file: !435, line: 471, column: 21)
!2008 = !DILocation(line: 471, column: 21, scope: !2007)
!2009 = !DILocation(line: 472, column: 21, scope: !1992)
!2010 = !DILocation(line: 482, column: 33, scope: !1798)
!2011 = !DILocation(line: 483, column: 33, scope: !1798)
!2012 = !DILocation(line: 485, column: 33, scope: !1798)
!2013 = !DILocation(line: 486, column: 33, scope: !1798)
!2014 = !DILocation(line: 487, column: 33, scope: !1798)
!2015 = !DILocation(line: 490, column: 17, scope: !1798)
!2016 = !DILocation(line: 492, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !435, line: 491, column: 15)
!2018 = distinct !DILexicalBlock(scope: !1798, file: !435, line: 490, column: 17)
!2019 = !DILocation(line: 499, column: 35, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1798, file: !435, line: 499, column: 17)
!2021 = !DILocation(line: 499, column: 57, scope: !2020)
!2022 = !DILocation(line: 0, scope: !1798)
!2023 = !DILocation(line: 502, column: 11, scope: !1798)
!2024 = !DILocation(line: 504, column: 17, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1798, file: !435, line: 503, column: 17)
!2026 = !DILocation(line: 507, column: 11, scope: !1798)
!2027 = !DILocation(line: 508, column: 17, scope: !1798)
!2028 = !DILocation(line: 517, column: 15, scope: !1775)
!2029 = !DILocation(line: 517, column: 40, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 517, column: 15)
!2031 = !DILocation(line: 517, column: 47, scope: !2030)
!2032 = !DILocation(line: 517, column: 18, scope: !2030)
!2033 = !DILocation(line: 521, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 521, column: 15)
!2035 = !DILocation(line: 521, column: 15, scope: !1775)
!2036 = !DILocation(line: 525, column: 11, scope: !1775)
!2037 = !DILocation(line: 537, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 536, column: 15)
!2039 = !DILocation(line: 544, column: 15, scope: !1775)
!2040 = !DILocation(line: 546, column: 19, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !435, line: 545, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1775, file: !435, line: 544, column: 15)
!2043 = !DILocation(line: 549, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !435, line: 549, column: 19)
!2045 = !DILocation(line: 549, column: 30, scope: !2044)
!2046 = !DILocation(line: 558, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !435, line: 558, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2041, file: !435, line: 558, column: 15)
!2049 = !DILocation(line: 558, column: 15, scope: !2048)
!2050 = !DILocation(line: 559, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !435, line: 559, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2041, file: !435, line: 559, column: 15)
!2053 = !DILocation(line: 559, column: 15, scope: !2052)
!2054 = !DILocation(line: 560, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !435, line: 560, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2041, file: !435, line: 560, column: 15)
!2057 = !DILocation(line: 560, column: 15, scope: !2056)
!2058 = !DILocation(line: 562, column: 13, scope: !2041)
!2059 = !DILocation(line: 602, column: 17, scope: !1774)
!2060 = !DILocation(line: 0, scope: !1774)
!2061 = !DILocation(line: 605, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1779, file: !435, line: 603, column: 15)
!2063 = !DILocation(line: 605, column: 27, scope: !2062)
!2064 = !DILocation(line: 668, column: 40, scope: !1774)
!2065 = !DILocation(line: 670, column: 23, scope: !1795)
!2066 = !DILocation(line: 609, column: 17, scope: !1778)
!2067 = !DILocation(line: 609, column: 27, scope: !1778)
!2068 = !DILocation(line: 0, scope: !1835, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 609, column: 32, scope: !1778)
!2070 = !DILocation(line: 0, scope: !1843, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !2069)
!2072 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !2071)
!2073 = !DILocation(line: 613, column: 29, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1778, file: !435, line: 613, column: 21)
!2075 = !DILocation(line: 613, column: 21, scope: !1778)
!2076 = !DILocation(line: 614, column: 29, scope: !2074)
!2077 = !DILocation(line: 614, column: 19, scope: !2074)
!2078 = !DILocation(line: 618, column: 21, scope: !1781)
!2079 = !DILocation(line: 620, column: 54, scope: !1781)
!2080 = !DILocation(line: 0, scope: !1781)
!2081 = !DILocation(line: 619, column: 36, scope: !1781)
!2082 = !DILocation(line: 621, column: 25, scope: !1781)
!2083 = !DILocation(line: 631, column: 38, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1790, file: !435, line: 629, column: 23)
!2085 = !DILocation(line: 631, column: 48, scope: !2084)
!2086 = !DILocation(line: 665, column: 19, scope: !1782)
!2087 = !DILocation(line: 666, column: 15, scope: !1779)
!2088 = !DILocation(line: 626, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1791, file: !435, line: 624, column: 23)
!2090 = !DILocation(line: 631, column: 51, scope: !2084)
!2091 = !DILocation(line: 631, column: 25, scope: !2084)
!2092 = !DILocation(line: 632, column: 28, scope: !2084)
!2093 = !DILocation(line: 631, column: 34, scope: !2084)
!2094 = distinct !{!2094, !2091, !2092, !905}
!2095 = !DILocation(line: 646, column: 29, scope: !1788)
!2096 = !DILocation(line: 0, scope: !1786)
!2097 = !DILocation(line: 649, column: 49, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1786, file: !435, line: 648, column: 29)
!2099 = !DILocation(line: 649, column: 39, scope: !2098)
!2100 = !DILocation(line: 649, column: 31, scope: !2098)
!2101 = !DILocation(line: 648, column: 60, scope: !2098)
!2102 = !DILocation(line: 648, column: 50, scope: !2098)
!2103 = !DILocation(line: 648, column: 29, scope: !1786)
!2104 = distinct !{!2104, !2103, !2105, !905}
!2105 = !DILocation(line: 654, column: 33, scope: !1786)
!2106 = !DILocation(line: 657, column: 43, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1789, file: !435, line: 657, column: 29)
!2108 = !DILocalVariable(name: "wc", arg: 1, scope: !2109, file: !2110, line: 865, type: !2113)
!2109 = distinct !DISubprogram(name: "c32isprint", scope: !2110, file: !2110, line: 865, type: !2111, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2115)
!2110 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!100, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2114, line: 20, baseType: !84)
!2114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2115 = !{!2108}
!2116 = !DILocation(line: 0, scope: !2109, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 657, column: 31, scope: !2107)
!2118 = !DILocation(line: 871, column: 10, scope: !2109, inlinedAt: !2117)
!2119 = !DILocation(line: 657, column: 31, scope: !2107)
!2120 = !DILocation(line: 657, column: 29, scope: !1789)
!2121 = !DILocation(line: 664, column: 23, scope: !1781)
!2122 = !DILocation(line: 670, column: 19, scope: !1795)
!2123 = !DILocation(line: 670, column: 45, scope: !1795)
!2124 = !DILocation(line: 674, column: 33, scope: !1794)
!2125 = !DILocation(line: 0, scope: !1794)
!2126 = !DILocation(line: 676, column: 17, scope: !1794)
!2127 = !DILocation(line: 398, column: 12, scope: !1768)
!2128 = !DILocation(line: 678, column: 43, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !435, line: 678, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !435, line: 677, column: 19)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !435, line: 676, column: 17)
!2132 = distinct !DILexicalBlock(scope: !1794, file: !435, line: 676, column: 17)
!2133 = !DILocation(line: 680, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 680, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !435, line: 679, column: 23)
!2136 = !DILocation(line: 680, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !435, line: 680, column: 25)
!2138 = !DILocation(line: 680, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !435, line: 680, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !435, line: 680, column: 25)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !435, line: 680, column: 25)
!2142 = !DILocation(line: 680, column: 25, scope: !2140)
!2143 = !DILocation(line: 680, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !435, line: 680, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !435, line: 680, column: 25)
!2146 = !DILocation(line: 680, column: 25, scope: !2145)
!2147 = !DILocation(line: 680, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !435, line: 680, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2141, file: !435, line: 680, column: 25)
!2150 = !DILocation(line: 680, column: 25, scope: !2149)
!2151 = !DILocation(line: 680, column: 25, scope: !2141)
!2152 = !DILocation(line: 680, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !435, line: 680, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2134, file: !435, line: 680, column: 25)
!2155 = !DILocation(line: 680, column: 25, scope: !2154)
!2156 = !DILocation(line: 681, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !435, line: 681, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 681, column: 25)
!2159 = !DILocation(line: 681, column: 25, scope: !2158)
!2160 = !DILocation(line: 682, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !435, line: 682, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2135, file: !435, line: 682, column: 25)
!2163 = !DILocation(line: 682, column: 25, scope: !2162)
!2164 = !DILocation(line: 683, column: 38, scope: !2135)
!2165 = !DILocation(line: 683, column: 33, scope: !2135)
!2166 = !DILocation(line: 684, column: 23, scope: !2135)
!2167 = !DILocation(line: 685, column: 30, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2129, file: !435, line: 685, column: 30)
!2169 = !DILocation(line: 685, column: 30, scope: !2129)
!2170 = !DILocation(line: 687, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !435, line: 687, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !435, line: 687, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2168, file: !435, line: 686, column: 23)
!2174 = !DILocation(line: 687, column: 25, scope: !2172)
!2175 = !DILocation(line: 689, column: 23, scope: !2173)
!2176 = !DILocation(line: 690, column: 35, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2130, file: !435, line: 690, column: 25)
!2178 = !DILocation(line: 690, column: 30, scope: !2177)
!2179 = !DILocation(line: 690, column: 25, scope: !2130)
!2180 = !DILocation(line: 692, column: 21, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !435, line: 692, column: 21)
!2182 = distinct !DILexicalBlock(scope: !2130, file: !435, line: 692, column: 21)
!2183 = !DILocation(line: 692, column: 21, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !435, line: 692, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !435, line: 692, column: 21)
!2186 = distinct !DILexicalBlock(scope: !2181, file: !435, line: 692, column: 21)
!2187 = !DILocation(line: 692, column: 21, scope: !2185)
!2188 = !DILocation(line: 692, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !435, line: 692, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !435, line: 692, column: 21)
!2191 = !DILocation(line: 692, column: 21, scope: !2190)
!2192 = !DILocation(line: 692, column: 21, scope: !2186)
!2193 = !DILocation(line: 0, scope: !2130)
!2194 = !DILocation(line: 693, column: 21, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !435, line: 693, column: 21)
!2196 = distinct !DILexicalBlock(scope: !2130, file: !435, line: 693, column: 21)
!2197 = !DILocation(line: 693, column: 21, scope: !2196)
!2198 = !DILocation(line: 694, column: 25, scope: !2130)
!2199 = !DILocation(line: 676, column: 17, scope: !2131)
!2200 = distinct !{!2200, !2201, !2202}
!2201 = !DILocation(line: 676, column: 17, scope: !2132)
!2202 = !DILocation(line: 695, column: 19, scope: !2132)
!2203 = !DILocation(line: 409, column: 30, scope: !1914)
!2204 = !DILocation(line: 702, column: 34, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 702, column: 11)
!2206 = !DILocation(line: 704, column: 14, scope: !2205)
!2207 = !DILocation(line: 705, column: 14, scope: !2205)
!2208 = !DILocation(line: 705, column: 35, scope: !2205)
!2209 = !DILocation(line: 705, column: 17, scope: !2205)
!2210 = !DILocation(line: 705, column: 47, scope: !2205)
!2211 = !DILocation(line: 705, column: 65, scope: !2205)
!2212 = !DILocation(line: 706, column: 11, scope: !2205)
!2213 = !DILocation(line: 702, column: 11, scope: !1768)
!2214 = !DILocation(line: 395, column: 15, scope: !1766)
!2215 = !DILocation(line: 709, column: 5, scope: !1768)
!2216 = !DILocation(line: 710, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 710, column: 7)
!2218 = !DILocation(line: 710, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !435, line: 710, column: 7)
!2220 = !DILocation(line: 710, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !435, line: 710, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !435, line: 710, column: 7)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !435, line: 710, column: 7)
!2224 = !DILocation(line: 710, column: 7, scope: !2222)
!2225 = !DILocation(line: 710, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !435, line: 710, column: 7)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !435, line: 710, column: 7)
!2228 = !DILocation(line: 710, column: 7, scope: !2227)
!2229 = !DILocation(line: 710, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !435, line: 710, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !435, line: 710, column: 7)
!2232 = !DILocation(line: 710, column: 7, scope: !2231)
!2233 = !DILocation(line: 710, column: 7, scope: !2223)
!2234 = !DILocation(line: 710, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !435, line: 710, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2217, file: !435, line: 710, column: 7)
!2237 = !DILocation(line: 710, column: 7, scope: !2236)
!2238 = !DILocation(line: 712, column: 5, scope: !1768)
!2239 = !DILocation(line: 713, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !435, line: 713, column: 7)
!2241 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 713, column: 7)
!2242 = !DILocation(line: 417, column: 21, scope: !1768)
!2243 = !DILocation(line: 713, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !435, line: 713, column: 7)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !435, line: 713, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !435, line: 713, column: 7)
!2247 = !DILocation(line: 713, column: 7, scope: !2245)
!2248 = !DILocation(line: 713, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !435, line: 713, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !435, line: 713, column: 7)
!2251 = !DILocation(line: 713, column: 7, scope: !2250)
!2252 = !DILocation(line: 713, column: 7, scope: !2246)
!2253 = !DILocation(line: 714, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !435, line: 714, column: 7)
!2255 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 714, column: 7)
!2256 = !DILocation(line: 714, column: 7, scope: !2255)
!2257 = !DILocation(line: 716, column: 13, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1768, file: !435, line: 716, column: 11)
!2259 = !DILocation(line: 716, column: 11, scope: !1768)
!2260 = !DILocation(line: 718, column: 5, scope: !1769)
!2261 = !DILocation(line: 395, column: 82, scope: !1769)
!2262 = !DILocation(line: 395, column: 3, scope: !1769)
!2263 = distinct !{!2263, !1910, !2264, !905}
!2264 = !DILocation(line: 718, column: 5, scope: !1766)
!2265 = !DILocation(line: 720, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 720, column: 7)
!2267 = !DILocation(line: 720, column: 16, scope: !2266)
!2268 = !DILocation(line: 728, column: 51, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 728, column: 7)
!2270 = !DILocation(line: 731, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !435, line: 731, column: 11)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !435, line: 730, column: 5)
!2273 = !DILocation(line: 731, column: 11, scope: !2272)
!2274 = !DILocation(line: 732, column: 16, scope: !2271)
!2275 = !DILocation(line: 732, column: 9, scope: !2271)
!2276 = !DILocation(line: 736, column: 18, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !435, line: 736, column: 16)
!2278 = !DILocation(line: 736, column: 29, scope: !2277)
!2279 = !DILocation(line: 745, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 745, column: 7)
!2281 = !DILocation(line: 745, column: 20, scope: !2280)
!2282 = !DILocation(line: 746, column: 12, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !435, line: 746, column: 5)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !435, line: 746, column: 5)
!2285 = !DILocation(line: 746, column: 5, scope: !2284)
!2286 = !DILocation(line: 747, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !435, line: 747, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !435, line: 747, column: 7)
!2289 = !DILocation(line: 747, column: 7, scope: !2288)
!2290 = !DILocation(line: 746, column: 39, scope: !2283)
!2291 = distinct !{!2291, !2285, !2292, !905}
!2292 = !DILocation(line: 747, column: 7, scope: !2284)
!2293 = !DILocation(line: 749, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 749, column: 7)
!2295 = !DILocation(line: 749, column: 7, scope: !1735)
!2296 = !DILocation(line: 750, column: 5, scope: !2294)
!2297 = !DILocation(line: 750, column: 17, scope: !2294)
!2298 = !DILocation(line: 753, column: 2, scope: !1735)
!2299 = !DILocation(line: 756, column: 51, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1735, file: !435, line: 756, column: 7)
!2301 = !DILocation(line: 756, column: 21, scope: !2300)
!2302 = !DILocation(line: 760, column: 42, scope: !1735)
!2303 = !DILocation(line: 758, column: 10, scope: !1735)
!2304 = !DILocation(line: 758, column: 3, scope: !1735)
!2305 = !DILocation(line: 762, column: 1, scope: !1735)
!2306 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !987, file: !987, line: 98, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!102}
!2309 = !DISubprogram(name: "strlen", scope: !979, file: !979, line: 407, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!104, !78}
!2312 = !DISubprogram(name: "iswprint", scope: !2313, file: !2313, line: 120, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!2313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2314 = distinct !DISubprogram(name: "quotearg_alloc", scope: !435, file: !435, line: 788, type: !2315, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!244, !78, !102, !1628}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !435, line: 788, type: !78)
!2319 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !435, line: 788, type: !102)
!2320 = !DILocalVariable(name: "o", arg: 3, scope: !2314, file: !435, line: 789, type: !1628)
!2321 = !DILocation(line: 0, scope: !2314)
!2322 = !DILocalVariable(name: "arg", arg: 1, scope: !2323, file: !435, line: 801, type: !78)
!2323 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !435, file: !435, line: 801, type: !2324, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!244, !78, !102, !717, !1628}
!2326 = !{!2322, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334}
!2327 = !DILocalVariable(name: "argsize", arg: 2, scope: !2323, file: !435, line: 801, type: !102)
!2328 = !DILocalVariable(name: "size", arg: 3, scope: !2323, file: !435, line: 801, type: !717)
!2329 = !DILocalVariable(name: "o", arg: 4, scope: !2323, file: !435, line: 802, type: !1628)
!2330 = !DILocalVariable(name: "p", scope: !2323, file: !435, line: 804, type: !1628)
!2331 = !DILocalVariable(name: "saved_errno", scope: !2323, file: !435, line: 805, type: !100)
!2332 = !DILocalVariable(name: "flags", scope: !2323, file: !435, line: 807, type: !100)
!2333 = !DILocalVariable(name: "bufsize", scope: !2323, file: !435, line: 808, type: !102)
!2334 = !DILocalVariable(name: "buf", scope: !2323, file: !435, line: 812, type: !244)
!2335 = !DILocation(line: 0, scope: !2323, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 791, column: 10, scope: !2314)
!2337 = !DILocation(line: 804, column: 37, scope: !2323, inlinedAt: !2336)
!2338 = !DILocation(line: 805, column: 21, scope: !2323, inlinedAt: !2336)
!2339 = !DILocation(line: 807, column: 18, scope: !2323, inlinedAt: !2336)
!2340 = !DILocation(line: 807, column: 24, scope: !2323, inlinedAt: !2336)
!2341 = !DILocation(line: 808, column: 72, scope: !2323, inlinedAt: !2336)
!2342 = !DILocation(line: 809, column: 56, scope: !2323, inlinedAt: !2336)
!2343 = !DILocation(line: 810, column: 49, scope: !2323, inlinedAt: !2336)
!2344 = !DILocation(line: 811, column: 49, scope: !2323, inlinedAt: !2336)
!2345 = !DILocation(line: 808, column: 20, scope: !2323, inlinedAt: !2336)
!2346 = !DILocation(line: 811, column: 62, scope: !2323, inlinedAt: !2336)
!2347 = !DILocation(line: 812, column: 15, scope: !2323, inlinedAt: !2336)
!2348 = !DILocation(line: 813, column: 60, scope: !2323, inlinedAt: !2336)
!2349 = !DILocation(line: 815, column: 32, scope: !2323, inlinedAt: !2336)
!2350 = !DILocation(line: 815, column: 47, scope: !2323, inlinedAt: !2336)
!2351 = !DILocation(line: 813, column: 3, scope: !2323, inlinedAt: !2336)
!2352 = !DILocation(line: 816, column: 9, scope: !2323, inlinedAt: !2336)
!2353 = !DILocation(line: 791, column: 3, scope: !2314)
!2354 = !DILocation(line: 0, scope: !2323)
!2355 = !DILocation(line: 804, column: 37, scope: !2323)
!2356 = !DILocation(line: 805, column: 21, scope: !2323)
!2357 = !DILocation(line: 807, column: 18, scope: !2323)
!2358 = !DILocation(line: 807, column: 27, scope: !2323)
!2359 = !DILocation(line: 807, column: 24, scope: !2323)
!2360 = !DILocation(line: 808, column: 72, scope: !2323)
!2361 = !DILocation(line: 809, column: 56, scope: !2323)
!2362 = !DILocation(line: 810, column: 49, scope: !2323)
!2363 = !DILocation(line: 811, column: 49, scope: !2323)
!2364 = !DILocation(line: 808, column: 20, scope: !2323)
!2365 = !DILocation(line: 811, column: 62, scope: !2323)
!2366 = !DILocation(line: 812, column: 15, scope: !2323)
!2367 = !DILocation(line: 813, column: 60, scope: !2323)
!2368 = !DILocation(line: 815, column: 32, scope: !2323)
!2369 = !DILocation(line: 815, column: 47, scope: !2323)
!2370 = !DILocation(line: 813, column: 3, scope: !2323)
!2371 = !DILocation(line: 816, column: 9, scope: !2323)
!2372 = !DILocation(line: 817, column: 7, scope: !2323)
!2373 = !DILocation(line: 818, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2323, file: !435, line: 817, column: 7)
!2375 = !{!1348, !1348, i64 0}
!2376 = !DILocation(line: 818, column: 5, scope: !2374)
!2377 = !DILocation(line: 819, column: 3, scope: !2323)
!2378 = distinct !DISubprogram(name: "quotearg_free", scope: !435, file: !435, line: 837, type: !367, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2379)
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "sv", scope: !2378, file: !435, line: 839, type: !533)
!2381 = !DILocalVariable(name: "i", scope: !2382, file: !435, line: 840, type: !100)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !435, line: 840, column: 3)
!2383 = !DILocation(line: 839, column: 24, scope: !2378)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 0, scope: !2382)
!2386 = !DILocation(line: 840, column: 21, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !435, line: 840, column: 3)
!2388 = !DILocation(line: 840, column: 3, scope: !2382)
!2389 = !DILocation(line: 842, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2378, file: !435, line: 842, column: 7)
!2391 = !{!2392, !803, i64 8}
!2392 = !{!"slotvec", !1348, i64 0, !803, i64 8}
!2393 = !DILocation(line: 842, column: 17, scope: !2390)
!2394 = !DILocation(line: 842, column: 7, scope: !2378)
!2395 = !DILocation(line: 841, column: 17, scope: !2387)
!2396 = !DILocation(line: 841, column: 5, scope: !2387)
!2397 = !DILocation(line: 840, column: 32, scope: !2387)
!2398 = distinct !{!2398, !2388, !2399, !905}
!2399 = !DILocation(line: 841, column: 20, scope: !2382)
!2400 = !DILocation(line: 844, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2390, file: !435, line: 843, column: 5)
!2402 = !DILocation(line: 845, column: 21, scope: !2401)
!2403 = !{!2392, !1348, i64 0}
!2404 = !DILocation(line: 846, column: 20, scope: !2401)
!2405 = !DILocation(line: 847, column: 5, scope: !2401)
!2406 = !DILocation(line: 848, column: 10, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2378, file: !435, line: 848, column: 7)
!2408 = !DILocation(line: 848, column: 7, scope: !2378)
!2409 = !DILocation(line: 850, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !435, line: 849, column: 5)
!2411 = !DILocation(line: 851, column: 15, scope: !2410)
!2412 = !DILocation(line: 852, column: 5, scope: !2410)
!2413 = !DILocation(line: 853, column: 10, scope: !2378)
!2414 = !DILocation(line: 854, column: 1, scope: !2378)
!2415 = !DISubprogram(name: "free", scope: !1582, file: !1582, line: 786, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !99}
!2418 = distinct !DISubprogram(name: "quotearg_n", scope: !435, file: !435, line: 919, type: !976, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2419)
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !435, line: 919, type: !100)
!2421 = !DILocalVariable(name: "arg", arg: 2, scope: !2418, file: !435, line: 919, type: !78)
!2422 = !DILocation(line: 0, scope: !2418)
!2423 = !DILocation(line: 921, column: 10, scope: !2418)
!2424 = !DILocation(line: 921, column: 3, scope: !2418)
!2425 = distinct !DISubprogram(name: "quotearg_n_options", scope: !435, file: !435, line: 866, type: !2426, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!244, !100, !78, !102, !1628}
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2439, !2440, !2442, !2443, !2444}
!2429 = !DILocalVariable(name: "n", arg: 1, scope: !2425, file: !435, line: 866, type: !100)
!2430 = !DILocalVariable(name: "arg", arg: 2, scope: !2425, file: !435, line: 866, type: !78)
!2431 = !DILocalVariable(name: "argsize", arg: 3, scope: !2425, file: !435, line: 866, type: !102)
!2432 = !DILocalVariable(name: "options", arg: 4, scope: !2425, file: !435, line: 867, type: !1628)
!2433 = !DILocalVariable(name: "saved_errno", scope: !2425, file: !435, line: 869, type: !100)
!2434 = !DILocalVariable(name: "sv", scope: !2425, file: !435, line: 871, type: !533)
!2435 = !DILocalVariable(name: "nslots_max", scope: !2425, file: !435, line: 873, type: !100)
!2436 = !DILocalVariable(name: "preallocated", scope: !2437, file: !435, line: 879, type: !223)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !435, line: 878, column: 5)
!2438 = distinct !DILexicalBlock(scope: !2425, file: !435, line: 877, column: 7)
!2439 = !DILocalVariable(name: "new_nslots", scope: !2437, file: !435, line: 880, type: !730)
!2440 = !DILocalVariable(name: "size", scope: !2441, file: !435, line: 891, type: !102)
!2441 = distinct !DILexicalBlock(scope: !2425, file: !435, line: 890, column: 3)
!2442 = !DILocalVariable(name: "val", scope: !2441, file: !435, line: 892, type: !244)
!2443 = !DILocalVariable(name: "flags", scope: !2441, file: !435, line: 894, type: !100)
!2444 = !DILocalVariable(name: "qsize", scope: !2441, file: !435, line: 895, type: !102)
!2445 = !DILocation(line: 0, scope: !2425)
!2446 = !DILocation(line: 869, column: 21, scope: !2425)
!2447 = !DILocation(line: 871, column: 24, scope: !2425)
!2448 = !DILocation(line: 874, column: 17, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2425, file: !435, line: 874, column: 7)
!2450 = !DILocation(line: 875, column: 5, scope: !2449)
!2451 = !DILocation(line: 877, column: 7, scope: !2438)
!2452 = !DILocation(line: 877, column: 14, scope: !2438)
!2453 = !DILocation(line: 877, column: 7, scope: !2425)
!2454 = !DILocation(line: 879, column: 31, scope: !2437)
!2455 = !DILocation(line: 0, scope: !2437)
!2456 = !DILocation(line: 880, column: 7, scope: !2437)
!2457 = !DILocation(line: 880, column: 26, scope: !2437)
!2458 = !DILocation(line: 880, column: 13, scope: !2437)
!2459 = !DILocation(line: 882, column: 31, scope: !2437)
!2460 = !DILocation(line: 883, column: 33, scope: !2437)
!2461 = !DILocation(line: 883, column: 42, scope: !2437)
!2462 = !DILocation(line: 883, column: 31, scope: !2437)
!2463 = !DILocation(line: 882, column: 22, scope: !2437)
!2464 = !DILocation(line: 882, column: 15, scope: !2437)
!2465 = !DILocation(line: 884, column: 11, scope: !2437)
!2466 = !DILocation(line: 885, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2437, file: !435, line: 884, column: 11)
!2468 = !{i64 0, i64 8, !2375, i64 8, i64 8, !802}
!2469 = !DILocation(line: 885, column: 9, scope: !2467)
!2470 = !DILocation(line: 886, column: 20, scope: !2437)
!2471 = !DILocation(line: 886, column: 18, scope: !2437)
!2472 = !DILocation(line: 886, column: 32, scope: !2437)
!2473 = !DILocation(line: 886, column: 43, scope: !2437)
!2474 = !DILocation(line: 886, column: 53, scope: !2437)
!2475 = !DILocation(line: 0, scope: !1843, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 886, column: 7, scope: !2437)
!2477 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !2476)
!2478 = !DILocation(line: 887, column: 16, scope: !2437)
!2479 = !DILocation(line: 887, column: 14, scope: !2437)
!2480 = !DILocation(line: 888, column: 5, scope: !2438)
!2481 = !DILocation(line: 888, column: 5, scope: !2437)
!2482 = !DILocation(line: 891, column: 19, scope: !2441)
!2483 = !DILocation(line: 891, column: 25, scope: !2441)
!2484 = !DILocation(line: 0, scope: !2441)
!2485 = !DILocation(line: 892, column: 23, scope: !2441)
!2486 = !DILocation(line: 894, column: 26, scope: !2441)
!2487 = !DILocation(line: 894, column: 32, scope: !2441)
!2488 = !DILocation(line: 896, column: 55, scope: !2441)
!2489 = !DILocation(line: 897, column: 55, scope: !2441)
!2490 = !DILocation(line: 898, column: 55, scope: !2441)
!2491 = !DILocation(line: 899, column: 55, scope: !2441)
!2492 = !DILocation(line: 895, column: 20, scope: !2441)
!2493 = !DILocation(line: 901, column: 14, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2441, file: !435, line: 901, column: 9)
!2495 = !DILocation(line: 901, column: 9, scope: !2441)
!2496 = !DILocation(line: 903, column: 35, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !435, line: 902, column: 7)
!2498 = !DILocation(line: 903, column: 20, scope: !2497)
!2499 = !DILocation(line: 904, column: 17, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !435, line: 904, column: 13)
!2501 = !DILocation(line: 904, column: 13, scope: !2497)
!2502 = !DILocation(line: 905, column: 11, scope: !2500)
!2503 = !DILocation(line: 906, column: 27, scope: !2497)
!2504 = !DILocation(line: 906, column: 19, scope: !2497)
!2505 = !DILocation(line: 907, column: 69, scope: !2497)
!2506 = !DILocation(line: 909, column: 44, scope: !2497)
!2507 = !DILocation(line: 910, column: 44, scope: !2497)
!2508 = !DILocation(line: 907, column: 9, scope: !2497)
!2509 = !DILocation(line: 911, column: 7, scope: !2497)
!2510 = !DILocation(line: 913, column: 11, scope: !2441)
!2511 = !DILocation(line: 914, column: 5, scope: !2441)
!2512 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !435, file: !435, line: 925, type: !2513, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!244, !100, !78, !102}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "n", arg: 1, scope: !2512, file: !435, line: 925, type: !100)
!2517 = !DILocalVariable(name: "arg", arg: 2, scope: !2512, file: !435, line: 925, type: !78)
!2518 = !DILocalVariable(name: "argsize", arg: 3, scope: !2512, file: !435, line: 925, type: !102)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 927, column: 10, scope: !2512)
!2521 = !DILocation(line: 927, column: 3, scope: !2512)
!2522 = distinct !DISubprogram(name: "quotearg", scope: !435, file: !435, line: 931, type: !989, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2523)
!2523 = !{!2524}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !435, line: 931, type: !78)
!2525 = !DILocation(line: 0, scope: !2522)
!2526 = !DILocation(line: 0, scope: !2418, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 933, column: 10, scope: !2522)
!2528 = !DILocation(line: 921, column: 10, scope: !2418, inlinedAt: !2527)
!2529 = !DILocation(line: 933, column: 3, scope: !2522)
!2530 = distinct !DISubprogram(name: "quotearg_mem", scope: !435, file: !435, line: 937, type: !2531, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!244, !78, !102}
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "arg", arg: 1, scope: !2530, file: !435, line: 937, type: !78)
!2535 = !DILocalVariable(name: "argsize", arg: 2, scope: !2530, file: !435, line: 937, type: !102)
!2536 = !DILocation(line: 0, scope: !2530)
!2537 = !DILocation(line: 0, scope: !2512, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 939, column: 10, scope: !2530)
!2539 = !DILocation(line: 927, column: 10, scope: !2512, inlinedAt: !2538)
!2540 = !DILocation(line: 939, column: 3, scope: !2530)
!2541 = distinct !DISubprogram(name: "quotearg_n_style", scope: !435, file: !435, line: 943, type: !2542, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!244, !100, !458, !78}
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2541, file: !435, line: 943, type: !100)
!2546 = !DILocalVariable(name: "s", arg: 2, scope: !2541, file: !435, line: 943, type: !458)
!2547 = !DILocalVariable(name: "arg", arg: 3, scope: !2541, file: !435, line: 943, type: !78)
!2548 = !DILocalVariable(name: "o", scope: !2541, file: !435, line: 945, type: !1629)
!2549 = !DILocation(line: 0, scope: !2541)
!2550 = !DILocation(line: 945, column: 3, scope: !2541)
!2551 = !DILocation(line: 945, column: 32, scope: !2541)
!2552 = !{!2553}
!2553 = distinct !{!2553, !2554, !"quoting_options_from_style: argument 0"}
!2554 = distinct !{!2554, !"quoting_options_from_style"}
!2555 = !DILocation(line: 945, column: 36, scope: !2541)
!2556 = !DILocalVariable(name: "style", arg: 1, scope: !2557, file: !435, line: 183, type: !458)
!2557 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !435, file: !435, line: 183, type: !2558, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!485, !458}
!2560 = !{!2556, !2561}
!2561 = !DILocalVariable(name: "o", scope: !2557, file: !435, line: 185, type: !485)
!2562 = !DILocation(line: 0, scope: !2557, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 945, column: 36, scope: !2541)
!2564 = !DILocation(line: 185, column: 26, scope: !2557, inlinedAt: !2563)
!2565 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2563)
!2566 = distinct !DILexicalBlock(scope: !2557, file: !435, line: 186, column: 7)
!2567 = !DILocation(line: 186, column: 7, scope: !2557, inlinedAt: !2563)
!2568 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2563)
!2569 = !DILocation(line: 188, column: 11, scope: !2557, inlinedAt: !2563)
!2570 = !DILocation(line: 946, column: 10, scope: !2541)
!2571 = !DILocation(line: 947, column: 1, scope: !2541)
!2572 = !DILocation(line: 946, column: 3, scope: !2541)
!2573 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !435, file: !435, line: 950, type: !2574, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!244, !100, !458, !78, !102}
!2576 = !{!2577, !2578, !2579, !2580, !2581}
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2573, file: !435, line: 950, type: !100)
!2578 = !DILocalVariable(name: "s", arg: 2, scope: !2573, file: !435, line: 950, type: !458)
!2579 = !DILocalVariable(name: "arg", arg: 3, scope: !2573, file: !435, line: 951, type: !78)
!2580 = !DILocalVariable(name: "argsize", arg: 4, scope: !2573, file: !435, line: 951, type: !102)
!2581 = !DILocalVariable(name: "o", scope: !2573, file: !435, line: 953, type: !1629)
!2582 = !DILocation(line: 0, scope: !2573)
!2583 = !DILocation(line: 953, column: 3, scope: !2573)
!2584 = !DILocation(line: 953, column: 32, scope: !2573)
!2585 = !{!2586}
!2586 = distinct !{!2586, !2587, !"quoting_options_from_style: argument 0"}
!2587 = distinct !{!2587, !"quoting_options_from_style"}
!2588 = !DILocation(line: 953, column: 36, scope: !2573)
!2589 = !DILocation(line: 0, scope: !2557, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 953, column: 36, scope: !2573)
!2591 = !DILocation(line: 185, column: 26, scope: !2557, inlinedAt: !2590)
!2592 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2590)
!2593 = !DILocation(line: 186, column: 7, scope: !2557, inlinedAt: !2590)
!2594 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2590)
!2595 = !DILocation(line: 188, column: 11, scope: !2557, inlinedAt: !2590)
!2596 = !DILocation(line: 954, column: 10, scope: !2573)
!2597 = !DILocation(line: 955, column: 1, scope: !2573)
!2598 = !DILocation(line: 954, column: 3, scope: !2573)
!2599 = distinct !DISubprogram(name: "quotearg_style", scope: !435, file: !435, line: 958, type: !2600, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!244, !458, !78}
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "s", arg: 1, scope: !2599, file: !435, line: 958, type: !458)
!2604 = !DILocalVariable(name: "arg", arg: 2, scope: !2599, file: !435, line: 958, type: !78)
!2605 = !DILocation(line: 0, scope: !2599)
!2606 = !DILocation(line: 0, scope: !2541, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 960, column: 10, scope: !2599)
!2608 = !DILocation(line: 945, column: 3, scope: !2541, inlinedAt: !2607)
!2609 = !DILocation(line: 945, column: 32, scope: !2541, inlinedAt: !2607)
!2610 = !{!2611}
!2611 = distinct !{!2611, !2612, !"quoting_options_from_style: argument 0"}
!2612 = distinct !{!2612, !"quoting_options_from_style"}
!2613 = !DILocation(line: 945, column: 36, scope: !2541, inlinedAt: !2607)
!2614 = !DILocation(line: 0, scope: !2557, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 945, column: 36, scope: !2541, inlinedAt: !2607)
!2616 = !DILocation(line: 185, column: 26, scope: !2557, inlinedAt: !2615)
!2617 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2615)
!2618 = !DILocation(line: 186, column: 7, scope: !2557, inlinedAt: !2615)
!2619 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2615)
!2620 = !DILocation(line: 188, column: 11, scope: !2557, inlinedAt: !2615)
!2621 = !DILocation(line: 946, column: 10, scope: !2541, inlinedAt: !2607)
!2622 = !DILocation(line: 947, column: 1, scope: !2541, inlinedAt: !2607)
!2623 = !DILocation(line: 960, column: 3, scope: !2599)
!2624 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !435, file: !435, line: 964, type: !2625, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!244, !458, !78, !102}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "s", arg: 1, scope: !2624, file: !435, line: 964, type: !458)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !435, line: 964, type: !78)
!2630 = !DILocalVariable(name: "argsize", arg: 3, scope: !2624, file: !435, line: 964, type: !102)
!2631 = !DILocation(line: 0, scope: !2624)
!2632 = !DILocation(line: 0, scope: !2573, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 966, column: 10, scope: !2624)
!2634 = !DILocation(line: 953, column: 3, scope: !2573, inlinedAt: !2633)
!2635 = !DILocation(line: 953, column: 32, scope: !2573, inlinedAt: !2633)
!2636 = !{!2637}
!2637 = distinct !{!2637, !2638, !"quoting_options_from_style: argument 0"}
!2638 = distinct !{!2638, !"quoting_options_from_style"}
!2639 = !DILocation(line: 953, column: 36, scope: !2573, inlinedAt: !2633)
!2640 = !DILocation(line: 0, scope: !2557, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 953, column: 36, scope: !2573, inlinedAt: !2633)
!2642 = !DILocation(line: 185, column: 26, scope: !2557, inlinedAt: !2641)
!2643 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2641)
!2644 = !DILocation(line: 186, column: 7, scope: !2557, inlinedAt: !2641)
!2645 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2641)
!2646 = !DILocation(line: 188, column: 11, scope: !2557, inlinedAt: !2641)
!2647 = !DILocation(line: 954, column: 10, scope: !2573, inlinedAt: !2633)
!2648 = !DILocation(line: 955, column: 1, scope: !2573, inlinedAt: !2633)
!2649 = !DILocation(line: 966, column: 3, scope: !2624)
!2650 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !435, file: !435, line: 970, type: !2651, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!244, !78, !102, !4}
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !435, line: 970, type: !78)
!2655 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !435, line: 970, type: !102)
!2656 = !DILocalVariable(name: "ch", arg: 3, scope: !2650, file: !435, line: 970, type: !4)
!2657 = !DILocalVariable(name: "options", scope: !2650, file: !435, line: 972, type: !485)
!2658 = !DILocation(line: 0, scope: !2650)
!2659 = !DILocation(line: 972, column: 3, scope: !2650)
!2660 = !DILocation(line: 972, column: 26, scope: !2650)
!2661 = !DILocation(line: 973, column: 13, scope: !2650)
!2662 = !{i64 0, i64 4, !867, i64 4, i64 4, !858, i64 8, i64 32, !867, i64 40, i64 8, !802, i64 48, i64 8, !802}
!2663 = !DILocation(line: 0, scope: !1648, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 974, column: 3, scope: !2650)
!2665 = !DILocation(line: 147, column: 41, scope: !1648, inlinedAt: !2664)
!2666 = !DILocation(line: 147, column: 62, scope: !1648, inlinedAt: !2664)
!2667 = !DILocation(line: 147, column: 57, scope: !1648, inlinedAt: !2664)
!2668 = !DILocation(line: 148, column: 15, scope: !1648, inlinedAt: !2664)
!2669 = !DILocation(line: 149, column: 21, scope: !1648, inlinedAt: !2664)
!2670 = !DILocation(line: 149, column: 24, scope: !1648, inlinedAt: !2664)
!2671 = !DILocation(line: 150, column: 19, scope: !1648, inlinedAt: !2664)
!2672 = !DILocation(line: 150, column: 24, scope: !1648, inlinedAt: !2664)
!2673 = !DILocation(line: 150, column: 6, scope: !1648, inlinedAt: !2664)
!2674 = !DILocation(line: 975, column: 10, scope: !2650)
!2675 = !DILocation(line: 976, column: 1, scope: !2650)
!2676 = !DILocation(line: 975, column: 3, scope: !2650)
!2677 = distinct !DISubprogram(name: "quotearg_char", scope: !435, file: !435, line: 979, type: !2678, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!244, !78, !4}
!2680 = !{!2681, !2682}
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !435, line: 979, type: !78)
!2682 = !DILocalVariable(name: "ch", arg: 2, scope: !2677, file: !435, line: 979, type: !4)
!2683 = !DILocation(line: 0, scope: !2677)
!2684 = !DILocation(line: 0, scope: !2650, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 981, column: 10, scope: !2677)
!2686 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2685)
!2687 = !DILocation(line: 972, column: 26, scope: !2650, inlinedAt: !2685)
!2688 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2685)
!2689 = !DILocation(line: 0, scope: !1648, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2685)
!2691 = !DILocation(line: 147, column: 41, scope: !1648, inlinedAt: !2690)
!2692 = !DILocation(line: 147, column: 62, scope: !1648, inlinedAt: !2690)
!2693 = !DILocation(line: 147, column: 57, scope: !1648, inlinedAt: !2690)
!2694 = !DILocation(line: 148, column: 15, scope: !1648, inlinedAt: !2690)
!2695 = !DILocation(line: 149, column: 21, scope: !1648, inlinedAt: !2690)
!2696 = !DILocation(line: 149, column: 24, scope: !1648, inlinedAt: !2690)
!2697 = !DILocation(line: 150, column: 19, scope: !1648, inlinedAt: !2690)
!2698 = !DILocation(line: 150, column: 24, scope: !1648, inlinedAt: !2690)
!2699 = !DILocation(line: 150, column: 6, scope: !1648, inlinedAt: !2690)
!2700 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2685)
!2701 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2685)
!2702 = !DILocation(line: 981, column: 3, scope: !2677)
!2703 = distinct !DISubprogram(name: "quotearg_colon", scope: !435, file: !435, line: 985, type: !989, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2704)
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !435, line: 985, type: !78)
!2706 = !DILocation(line: 0, scope: !2703)
!2707 = !DILocation(line: 0, scope: !2677, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 987, column: 10, scope: !2703)
!2709 = !DILocation(line: 0, scope: !2650, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 981, column: 10, scope: !2677, inlinedAt: !2708)
!2711 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2710)
!2712 = !DILocation(line: 972, column: 26, scope: !2650, inlinedAt: !2710)
!2713 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2710)
!2714 = !DILocation(line: 0, scope: !1648, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2710)
!2716 = !DILocation(line: 147, column: 57, scope: !1648, inlinedAt: !2715)
!2717 = !DILocation(line: 149, column: 21, scope: !1648, inlinedAt: !2715)
!2718 = !DILocation(line: 150, column: 6, scope: !1648, inlinedAt: !2715)
!2719 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2710)
!2720 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2710)
!2721 = !DILocation(line: 987, column: 3, scope: !2703)
!2722 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !435, file: !435, line: 991, type: !2531, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2723)
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !435, line: 991, type: !78)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2722, file: !435, line: 991, type: !102)
!2726 = !DILocation(line: 0, scope: !2722)
!2727 = !DILocation(line: 0, scope: !2650, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 993, column: 10, scope: !2722)
!2729 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2728)
!2730 = !DILocation(line: 972, column: 26, scope: !2650, inlinedAt: !2728)
!2731 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2728)
!2732 = !DILocation(line: 0, scope: !1648, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2728)
!2734 = !DILocation(line: 147, column: 57, scope: !1648, inlinedAt: !2733)
!2735 = !DILocation(line: 149, column: 21, scope: !1648, inlinedAt: !2733)
!2736 = !DILocation(line: 150, column: 6, scope: !1648, inlinedAt: !2733)
!2737 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2728)
!2738 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2728)
!2739 = !DILocation(line: 993, column: 3, scope: !2722)
!2740 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !435, file: !435, line: 997, type: !2542, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2741)
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !435, line: 997, type: !100)
!2743 = !DILocalVariable(name: "s", arg: 2, scope: !2740, file: !435, line: 997, type: !458)
!2744 = !DILocalVariable(name: "arg", arg: 3, scope: !2740, file: !435, line: 997, type: !78)
!2745 = !DILocalVariable(name: "options", scope: !2740, file: !435, line: 999, type: !485)
!2746 = !DILocation(line: 185, column: 26, scope: !2557, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1000, column: 13, scope: !2740)
!2748 = !DILocation(line: 0, scope: !2740)
!2749 = !DILocation(line: 999, column: 3, scope: !2740)
!2750 = !DILocation(line: 999, column: 26, scope: !2740)
!2751 = !DILocation(line: 0, scope: !2557, inlinedAt: !2747)
!2752 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2747)
!2753 = !DILocation(line: 186, column: 7, scope: !2557, inlinedAt: !2747)
!2754 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2747)
!2755 = !{!2756}
!2756 = distinct !{!2756, !2757, !"quoting_options_from_style: argument 0"}
!2757 = distinct !{!2757, !"quoting_options_from_style"}
!2758 = !DILocation(line: 1000, column: 13, scope: !2740)
!2759 = !DILocation(line: 0, scope: !1648, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1001, column: 3, scope: !2740)
!2761 = !DILocation(line: 147, column: 57, scope: !1648, inlinedAt: !2760)
!2762 = !DILocation(line: 149, column: 21, scope: !1648, inlinedAt: !2760)
!2763 = !DILocation(line: 150, column: 6, scope: !1648, inlinedAt: !2760)
!2764 = !DILocation(line: 1002, column: 10, scope: !2740)
!2765 = !DILocation(line: 1003, column: 1, scope: !2740)
!2766 = !DILocation(line: 1002, column: 3, scope: !2740)
!2767 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !435, file: !435, line: 1006, type: !2768, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!244, !100, !78, !78, !78}
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !435, line: 1006, type: !100)
!2772 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2767, file: !435, line: 1006, type: !78)
!2773 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2767, file: !435, line: 1007, type: !78)
!2774 = !DILocalVariable(name: "arg", arg: 4, scope: !2767, file: !435, line: 1007, type: !78)
!2775 = !DILocation(line: 0, scope: !2767)
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2777, file: !435, line: 1014, type: !100)
!2777 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !435, file: !435, line: 1014, type: !2778, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!244, !100, !78, !78, !78, !102}
!2780 = !{!2776, !2781, !2782, !2783, !2784, !2785}
!2781 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2777, file: !435, line: 1014, type: !78)
!2782 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2777, file: !435, line: 1015, type: !78)
!2783 = !DILocalVariable(name: "arg", arg: 4, scope: !2777, file: !435, line: 1016, type: !78)
!2784 = !DILocalVariable(name: "argsize", arg: 5, scope: !2777, file: !435, line: 1016, type: !102)
!2785 = !DILocalVariable(name: "o", scope: !2777, file: !435, line: 1018, type: !485)
!2786 = !DILocation(line: 0, scope: !2777, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1009, column: 10, scope: !2767)
!2788 = !DILocation(line: 1018, column: 3, scope: !2777, inlinedAt: !2787)
!2789 = !DILocation(line: 1018, column: 26, scope: !2777, inlinedAt: !2787)
!2790 = !DILocation(line: 1018, column: 30, scope: !2777, inlinedAt: !2787)
!2791 = !DILocation(line: 0, scope: !1688, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1019, column: 3, scope: !2777, inlinedAt: !2787)
!2793 = !DILocation(line: 174, column: 12, scope: !1688, inlinedAt: !2792)
!2794 = !DILocation(line: 175, column: 8, scope: !1701, inlinedAt: !2792)
!2795 = !DILocation(line: 175, column: 19, scope: !1701, inlinedAt: !2792)
!2796 = !DILocation(line: 176, column: 5, scope: !1701, inlinedAt: !2792)
!2797 = !DILocation(line: 177, column: 6, scope: !1688, inlinedAt: !2792)
!2798 = !DILocation(line: 177, column: 17, scope: !1688, inlinedAt: !2792)
!2799 = !DILocation(line: 178, column: 6, scope: !1688, inlinedAt: !2792)
!2800 = !DILocation(line: 178, column: 18, scope: !1688, inlinedAt: !2792)
!2801 = !DILocation(line: 1020, column: 10, scope: !2777, inlinedAt: !2787)
!2802 = !DILocation(line: 1021, column: 1, scope: !2777, inlinedAt: !2787)
!2803 = !DILocation(line: 1009, column: 3, scope: !2767)
!2804 = !DILocation(line: 0, scope: !2777)
!2805 = !DILocation(line: 1018, column: 3, scope: !2777)
!2806 = !DILocation(line: 1018, column: 26, scope: !2777)
!2807 = !DILocation(line: 1018, column: 30, scope: !2777)
!2808 = !DILocation(line: 0, scope: !1688, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1019, column: 3, scope: !2777)
!2810 = !DILocation(line: 174, column: 12, scope: !1688, inlinedAt: !2809)
!2811 = !DILocation(line: 175, column: 8, scope: !1701, inlinedAt: !2809)
!2812 = !DILocation(line: 175, column: 19, scope: !1701, inlinedAt: !2809)
!2813 = !DILocation(line: 176, column: 5, scope: !1701, inlinedAt: !2809)
!2814 = !DILocation(line: 177, column: 6, scope: !1688, inlinedAt: !2809)
!2815 = !DILocation(line: 177, column: 17, scope: !1688, inlinedAt: !2809)
!2816 = !DILocation(line: 178, column: 6, scope: !1688, inlinedAt: !2809)
!2817 = !DILocation(line: 178, column: 18, scope: !1688, inlinedAt: !2809)
!2818 = !DILocation(line: 1020, column: 10, scope: !2777)
!2819 = !DILocation(line: 1021, column: 1, scope: !2777)
!2820 = !DILocation(line: 1020, column: 3, scope: !2777)
!2821 = distinct !DISubprogram(name: "quotearg_custom", scope: !435, file: !435, line: 1024, type: !2822, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!244, !78, !78, !78}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2821, file: !435, line: 1024, type: !78)
!2826 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2821, file: !435, line: 1024, type: !78)
!2827 = !DILocalVariable(name: "arg", arg: 3, scope: !2821, file: !435, line: 1025, type: !78)
!2828 = !DILocation(line: 0, scope: !2821)
!2829 = !DILocation(line: 0, scope: !2767, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1027, column: 10, scope: !2821)
!2831 = !DILocation(line: 0, scope: !2777, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1009, column: 10, scope: !2767, inlinedAt: !2830)
!2833 = !DILocation(line: 1018, column: 3, scope: !2777, inlinedAt: !2832)
!2834 = !DILocation(line: 1018, column: 26, scope: !2777, inlinedAt: !2832)
!2835 = !DILocation(line: 1018, column: 30, scope: !2777, inlinedAt: !2832)
!2836 = !DILocation(line: 0, scope: !1688, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1019, column: 3, scope: !2777, inlinedAt: !2832)
!2838 = !DILocation(line: 174, column: 12, scope: !1688, inlinedAt: !2837)
!2839 = !DILocation(line: 175, column: 8, scope: !1701, inlinedAt: !2837)
!2840 = !DILocation(line: 175, column: 19, scope: !1701, inlinedAt: !2837)
!2841 = !DILocation(line: 176, column: 5, scope: !1701, inlinedAt: !2837)
!2842 = !DILocation(line: 177, column: 6, scope: !1688, inlinedAt: !2837)
!2843 = !DILocation(line: 177, column: 17, scope: !1688, inlinedAt: !2837)
!2844 = !DILocation(line: 178, column: 6, scope: !1688, inlinedAt: !2837)
!2845 = !DILocation(line: 178, column: 18, scope: !1688, inlinedAt: !2837)
!2846 = !DILocation(line: 1020, column: 10, scope: !2777, inlinedAt: !2832)
!2847 = !DILocation(line: 1021, column: 1, scope: !2777, inlinedAt: !2832)
!2848 = !DILocation(line: 1027, column: 3, scope: !2821)
!2849 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !435, file: !435, line: 1031, type: !2850, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!244, !78, !78, !78, !102}
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2849, file: !435, line: 1031, type: !78)
!2854 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2849, file: !435, line: 1031, type: !78)
!2855 = !DILocalVariable(name: "arg", arg: 3, scope: !2849, file: !435, line: 1032, type: !78)
!2856 = !DILocalVariable(name: "argsize", arg: 4, scope: !2849, file: !435, line: 1032, type: !102)
!2857 = !DILocation(line: 0, scope: !2849)
!2858 = !DILocation(line: 0, scope: !2777, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1034, column: 10, scope: !2849)
!2860 = !DILocation(line: 1018, column: 3, scope: !2777, inlinedAt: !2859)
!2861 = !DILocation(line: 1018, column: 26, scope: !2777, inlinedAt: !2859)
!2862 = !DILocation(line: 1018, column: 30, scope: !2777, inlinedAt: !2859)
!2863 = !DILocation(line: 0, scope: !1688, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1019, column: 3, scope: !2777, inlinedAt: !2859)
!2865 = !DILocation(line: 174, column: 12, scope: !1688, inlinedAt: !2864)
!2866 = !DILocation(line: 175, column: 8, scope: !1701, inlinedAt: !2864)
!2867 = !DILocation(line: 175, column: 19, scope: !1701, inlinedAt: !2864)
!2868 = !DILocation(line: 176, column: 5, scope: !1701, inlinedAt: !2864)
!2869 = !DILocation(line: 177, column: 6, scope: !1688, inlinedAt: !2864)
!2870 = !DILocation(line: 177, column: 17, scope: !1688, inlinedAt: !2864)
!2871 = !DILocation(line: 178, column: 6, scope: !1688, inlinedAt: !2864)
!2872 = !DILocation(line: 178, column: 18, scope: !1688, inlinedAt: !2864)
!2873 = !DILocation(line: 1020, column: 10, scope: !2777, inlinedAt: !2859)
!2874 = !DILocation(line: 1021, column: 1, scope: !2777, inlinedAt: !2859)
!2875 = !DILocation(line: 1034, column: 3, scope: !2849)
!2876 = distinct !DISubprogram(name: "quote_n_mem", scope: !435, file: !435, line: 1049, type: !2877, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!78, !100, !78, !102}
!2879 = !{!2880, !2881, !2882}
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !435, line: 1049, type: !100)
!2881 = !DILocalVariable(name: "arg", arg: 2, scope: !2876, file: !435, line: 1049, type: !78)
!2882 = !DILocalVariable(name: "argsize", arg: 3, scope: !2876, file: !435, line: 1049, type: !102)
!2883 = !DILocation(line: 0, scope: !2876)
!2884 = !DILocation(line: 1051, column: 10, scope: !2876)
!2885 = !DILocation(line: 1051, column: 3, scope: !2876)
!2886 = distinct !DISubprogram(name: "quote_mem", scope: !435, file: !435, line: 1055, type: !2887, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!78, !78, !102}
!2889 = !{!2890, !2891}
!2890 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !435, line: 1055, type: !78)
!2891 = !DILocalVariable(name: "argsize", arg: 2, scope: !2886, file: !435, line: 1055, type: !102)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 0, scope: !2876, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 1057, column: 10, scope: !2886)
!2895 = !DILocation(line: 1051, column: 10, scope: !2876, inlinedAt: !2894)
!2896 = !DILocation(line: 1057, column: 3, scope: !2886)
!2897 = distinct !DISubprogram(name: "quote_n", scope: !435, file: !435, line: 1061, type: !2898, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!78, !100, !78}
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !435, line: 1061, type: !100)
!2902 = !DILocalVariable(name: "arg", arg: 2, scope: !2897, file: !435, line: 1061, type: !78)
!2903 = !DILocation(line: 0, scope: !2897)
!2904 = !DILocation(line: 0, scope: !2876, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1063, column: 10, scope: !2897)
!2906 = !DILocation(line: 1051, column: 10, scope: !2876, inlinedAt: !2905)
!2907 = !DILocation(line: 1063, column: 3, scope: !2897)
!2908 = distinct !DISubprogram(name: "quote", scope: !435, file: !435, line: 1067, type: !2909, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!78, !78}
!2911 = !{!2912}
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !435, line: 1067, type: !78)
!2913 = !DILocation(line: 0, scope: !2908)
!2914 = !DILocation(line: 0, scope: !2897, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 1069, column: 10, scope: !2908)
!2916 = !DILocation(line: 0, scope: !2876, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1063, column: 10, scope: !2897, inlinedAt: !2915)
!2918 = !DILocation(line: 1051, column: 10, scope: !2876, inlinedAt: !2917)
!2919 = !DILocation(line: 1069, column: 3, scope: !2908)
!2920 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 61, type: !2921, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2958)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2923, !78, !78, !78, !2957, !102}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2925)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2925, file: !240, line: 51, baseType: !100, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2925, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2925, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2925, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2925, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2925, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2925, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2925, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2925, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2925, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2925, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2925, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2925, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2925, file: !240, line: 70, baseType: !2941, size: 64, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2925, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2925, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2925, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2925, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2925, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2925, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2925, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2925, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2925, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2925, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2925, file: !240, line: 93, baseType: !2941, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2925, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2925, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2925, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2925, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964}
!2959 = !DILocalVariable(name: "stream", arg: 1, scope: !2920, file: !548, line: 61, type: !2923)
!2960 = !DILocalVariable(name: "command_name", arg: 2, scope: !2920, file: !548, line: 62, type: !78)
!2961 = !DILocalVariable(name: "package", arg: 3, scope: !2920, file: !548, line: 62, type: !78)
!2962 = !DILocalVariable(name: "version", arg: 4, scope: !2920, file: !548, line: 63, type: !78)
!2963 = !DILocalVariable(name: "authors", arg: 5, scope: !2920, file: !548, line: 64, type: !2957)
!2964 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2920, file: !548, line: 64, type: !102)
!2965 = !DILocation(line: 0, scope: !2920)
!2966 = !DILocation(line: 66, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2920, file: !548, line: 66, column: 7)
!2968 = !DILocation(line: 66, column: 7, scope: !2920)
!2969 = !DILocation(line: 67, column: 5, scope: !2967)
!2970 = !DILocation(line: 69, column: 5, scope: !2967)
!2971 = !DILocation(line: 83, column: 3, scope: !2920)
!2972 = !DILocation(line: 85, column: 3, scope: !2920)
!2973 = !DILocation(line: 88, column: 3, scope: !2920)
!2974 = !DILocation(line: 95, column: 3, scope: !2920)
!2975 = !DILocation(line: 97, column: 3, scope: !2920)
!2976 = !DILocation(line: 105, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2920, file: !548, line: 98, column: 5)
!2978 = !DILocation(line: 106, column: 7, scope: !2977)
!2979 = !DILocation(line: 109, column: 7, scope: !2977)
!2980 = !DILocation(line: 110, column: 7, scope: !2977)
!2981 = !DILocation(line: 113, column: 7, scope: !2977)
!2982 = !DILocation(line: 115, column: 7, scope: !2977)
!2983 = !DILocation(line: 120, column: 7, scope: !2977)
!2984 = !DILocation(line: 122, column: 7, scope: !2977)
!2985 = !DILocation(line: 127, column: 7, scope: !2977)
!2986 = !DILocation(line: 129, column: 7, scope: !2977)
!2987 = !DILocation(line: 134, column: 7, scope: !2977)
!2988 = !DILocation(line: 137, column: 7, scope: !2977)
!2989 = !DILocation(line: 142, column: 7, scope: !2977)
!2990 = !DILocation(line: 145, column: 7, scope: !2977)
!2991 = !DILocation(line: 150, column: 7, scope: !2977)
!2992 = !DILocation(line: 154, column: 7, scope: !2977)
!2993 = !DILocation(line: 159, column: 7, scope: !2977)
!2994 = !DILocation(line: 163, column: 7, scope: !2977)
!2995 = !DILocation(line: 170, column: 7, scope: !2977)
!2996 = !DILocation(line: 174, column: 7, scope: !2977)
!2997 = !DILocation(line: 176, column: 1, scope: !2920)
!2998 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 183, type: !2999, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2923, !78, !78, !78, !2957}
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007}
!3002 = !DILocalVariable(name: "stream", arg: 1, scope: !2998, file: !548, line: 183, type: !2923)
!3003 = !DILocalVariable(name: "command_name", arg: 2, scope: !2998, file: !548, line: 184, type: !78)
!3004 = !DILocalVariable(name: "package", arg: 3, scope: !2998, file: !548, line: 184, type: !78)
!3005 = !DILocalVariable(name: "version", arg: 4, scope: !2998, file: !548, line: 185, type: !78)
!3006 = !DILocalVariable(name: "authors", arg: 5, scope: !2998, file: !548, line: 185, type: !2957)
!3007 = !DILocalVariable(name: "n_authors", scope: !2998, file: !548, line: 187, type: !102)
!3008 = !DILocation(line: 0, scope: !2998)
!3009 = !DILocation(line: 189, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2998, file: !548, line: 189, column: 3)
!3011 = !DILocation(line: 189, scope: !3010)
!3012 = !DILocation(line: 189, column: 23, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !548, line: 189, column: 3)
!3014 = !DILocation(line: 189, column: 3, scope: !3010)
!3015 = !DILocation(line: 189, column: 52, scope: !3013)
!3016 = distinct !{!3016, !3014, !3017, !905}
!3017 = !DILocation(line: 190, column: 5, scope: !3010)
!3018 = !DILocation(line: 191, column: 3, scope: !2998)
!3019 = !DILocation(line: 192, column: 1, scope: !2998)
!3020 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 199, type: !3021, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3031)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2923, !78, !78, !78, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3025)
!3025 = !{!3026, !3028, !3029, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3024, file: !3027, line: 192, baseType: !84, size: 32)
!3027 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3024, file: !3027, line: 192, baseType: !84, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3024, file: !3027, line: 192, baseType: !99, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3024, file: !3027, line: 192, baseType: !99, size: 64, offset: 128)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3038}
!3032 = !DILocalVariable(name: "stream", arg: 1, scope: !3020, file: !548, line: 199, type: !2923)
!3033 = !DILocalVariable(name: "command_name", arg: 2, scope: !3020, file: !548, line: 200, type: !78)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !3020, file: !548, line: 200, type: !78)
!3035 = !DILocalVariable(name: "version", arg: 4, scope: !3020, file: !548, line: 201, type: !78)
!3036 = !DILocalVariable(name: "authors", arg: 5, scope: !3020, file: !548, line: 201, type: !3023)
!3037 = !DILocalVariable(name: "n_authors", scope: !3020, file: !548, line: 203, type: !102)
!3038 = !DILocalVariable(name: "authtab", scope: !3020, file: !548, line: 204, type: !3039)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !35)
!3040 = !DILocation(line: 0, scope: !3020)
!3041 = !DILocation(line: 204, column: 3, scope: !3020)
!3042 = !DILocation(line: 204, column: 15, scope: !3020)
!3043 = !DILocation(line: 208, column: 35, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !548, line: 206, column: 3)
!3045 = distinct !DILexicalBlock(scope: !3020, file: !548, line: 206, column: 3)
!3046 = !DILocation(line: 208, column: 33, scope: !3044)
!3047 = !DILocation(line: 208, column: 67, scope: !3044)
!3048 = !DILocation(line: 206, column: 3, scope: !3045)
!3049 = !DILocation(line: 208, column: 14, scope: !3044)
!3050 = !DILocation(line: 0, scope: !3045)
!3051 = !DILocation(line: 211, column: 3, scope: !3020)
!3052 = !DILocation(line: 213, column: 1, scope: !3020)
!3053 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 230, type: !3054, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !2923, !78, !78, !78, null}
!3056 = !{!3057, !3058, !3059, !3060, !3061}
!3057 = !DILocalVariable(name: "stream", arg: 1, scope: !3053, file: !548, line: 230, type: !2923)
!3058 = !DILocalVariable(name: "command_name", arg: 2, scope: !3053, file: !548, line: 231, type: !78)
!3059 = !DILocalVariable(name: "package", arg: 3, scope: !3053, file: !548, line: 231, type: !78)
!3060 = !DILocalVariable(name: "version", arg: 4, scope: !3053, file: !548, line: 232, type: !78)
!3061 = !DILocalVariable(name: "authors", scope: !3053, file: !548, line: 234, type: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !983, line: 52, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1383, line: 14, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3027, baseType: !3065)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3024, size: 192, elements: !30)
!3066 = !DILocation(line: 0, scope: !3053)
!3067 = !DILocation(line: 234, column: 3, scope: !3053)
!3068 = !DILocation(line: 234, column: 11, scope: !3053)
!3069 = !DILocation(line: 235, column: 3, scope: !3053)
!3070 = !DILocation(line: 236, column: 3, scope: !3053)
!3071 = !DILocation(line: 237, column: 3, scope: !3053)
!3072 = !DILocation(line: 238, column: 1, scope: !3053)
!3073 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 241, type: !367, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !846)
!3074 = !DILocation(line: 243, column: 3, scope: !3073)
!3075 = !DILocation(line: 248, column: 3, scope: !3073)
!3076 = !DILocation(line: 254, column: 3, scope: !3073)
!3077 = !DILocation(line: 259, column: 3, scope: !3073)
!3078 = !DILocation(line: 261, column: 1, scope: !3073)
!3079 = distinct !DISubprogram(name: "xnrealloc", scope: !3080, file: !3080, line: 147, type: !3081, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3083)
!3080 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!99, !99, !102, !102}
!3083 = !{!3084, !3085, !3086}
!3084 = !DILocalVariable(name: "p", arg: 1, scope: !3079, file: !3080, line: 147, type: !99)
!3085 = !DILocalVariable(name: "n", arg: 2, scope: !3079, file: !3080, line: 147, type: !102)
!3086 = !DILocalVariable(name: "s", arg: 3, scope: !3079, file: !3080, line: 147, type: !102)
!3087 = !DILocation(line: 0, scope: !3079)
!3088 = !DILocalVariable(name: "p", arg: 1, scope: !3089, file: !711, line: 83, type: !99)
!3089 = distinct !DISubprogram(name: "xreallocarray", scope: !711, file: !711, line: 83, type: !3081, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3090)
!3090 = !{!3088, !3091, !3092}
!3091 = !DILocalVariable(name: "n", arg: 2, scope: !3089, file: !711, line: 83, type: !102)
!3092 = !DILocalVariable(name: "s", arg: 3, scope: !3089, file: !711, line: 83, type: !102)
!3093 = !DILocation(line: 0, scope: !3089, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 149, column: 10, scope: !3079)
!3095 = !DILocation(line: 85, column: 25, scope: !3089, inlinedAt: !3094)
!3096 = !DILocalVariable(name: "p", arg: 1, scope: !3097, file: !711, line: 37, type: !99)
!3097 = distinct !DISubprogram(name: "check_nonnull", scope: !711, file: !711, line: 37, type: !3098, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!99, !99}
!3100 = !{!3096}
!3101 = !DILocation(line: 0, scope: !3097, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 85, column: 10, scope: !3089, inlinedAt: !3094)
!3103 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3102)
!3104 = distinct !DILexicalBlock(scope: !3097, file: !711, line: 39, column: 7)
!3105 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3102)
!3106 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3102)
!3107 = !DILocation(line: 149, column: 3, scope: !3079)
!3108 = !DILocation(line: 0, scope: !3089)
!3109 = !DILocation(line: 85, column: 25, scope: !3089)
!3110 = !DILocation(line: 0, scope: !3097, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 85, column: 10, scope: !3089)
!3112 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3111)
!3113 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3111)
!3114 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3111)
!3115 = !DILocation(line: 85, column: 3, scope: !3089)
!3116 = distinct !DISubprogram(name: "xmalloc", scope: !711, file: !711, line: 47, type: !3117, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!99, !102}
!3119 = !{!3120}
!3120 = !DILocalVariable(name: "s", arg: 1, scope: !3116, file: !711, line: 47, type: !102)
!3121 = !DILocation(line: 0, scope: !3116)
!3122 = !DILocation(line: 49, column: 25, scope: !3116)
!3123 = !DILocation(line: 0, scope: !3097, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 49, column: 10, scope: !3116)
!3125 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3124)
!3126 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3124)
!3127 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3124)
!3128 = !DILocation(line: 49, column: 3, scope: !3116)
!3129 = !DISubprogram(name: "malloc", scope: !987, file: !987, line: 540, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3130 = distinct !DISubprogram(name: "ximalloc", scope: !711, file: !711, line: 53, type: !3131, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!99, !730}
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "s", arg: 1, scope: !3130, file: !711, line: 53, type: !730)
!3135 = !DILocation(line: 0, scope: !3130)
!3136 = !DILocalVariable(name: "s", arg: 1, scope: !3137, file: !3138, line: 55, type: !730)
!3137 = distinct !DISubprogram(name: "imalloc", scope: !3138, file: !3138, line: 55, type: !3131, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3139)
!3138 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3139 = !{!3136}
!3140 = !DILocation(line: 0, scope: !3137, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 55, column: 25, scope: !3130)
!3142 = !DILocation(line: 57, column: 26, scope: !3137, inlinedAt: !3141)
!3143 = !DILocation(line: 0, scope: !3097, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 55, column: 10, scope: !3130)
!3145 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3144)
!3146 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3144)
!3147 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3144)
!3148 = !DILocation(line: 55, column: 3, scope: !3130)
!3149 = distinct !DISubprogram(name: "xcharalloc", scope: !711, file: !711, line: 59, type: !3150, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!244, !102}
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3149, file: !711, line: 59, type: !102)
!3154 = !DILocation(line: 0, scope: !3149)
!3155 = !DILocation(line: 0, scope: !3116, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 61, column: 10, scope: !3149)
!3157 = !DILocation(line: 49, column: 25, scope: !3116, inlinedAt: !3156)
!3158 = !DILocation(line: 0, scope: !3097, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 49, column: 10, scope: !3116, inlinedAt: !3156)
!3160 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3159)
!3161 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3159)
!3162 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3159)
!3163 = !DILocation(line: 61, column: 3, scope: !3149)
!3164 = distinct !DISubprogram(name: "xrealloc", scope: !711, file: !711, line: 68, type: !3165, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!99, !99, !102}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "p", arg: 1, scope: !3164, file: !711, line: 68, type: !99)
!3169 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !711, line: 68, type: !102)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocalVariable(name: "ptr", arg: 1, scope: !3172, file: !3173, line: 2057, type: !99)
!3172 = distinct !DISubprogram(name: "rpl_realloc", scope: !3173, file: !3173, line: 2057, type: !3165, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3174)
!3173 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3174 = !{!3171, !3175}
!3175 = !DILocalVariable(name: "size", arg: 2, scope: !3172, file: !3173, line: 2057, type: !102)
!3176 = !DILocation(line: 0, scope: !3172, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 70, column: 25, scope: !3164)
!3178 = !DILocation(line: 2059, column: 24, scope: !3172, inlinedAt: !3177)
!3179 = !DILocation(line: 2059, column: 10, scope: !3172, inlinedAt: !3177)
!3180 = !DILocation(line: 0, scope: !3097, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 70, column: 10, scope: !3164)
!3182 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3181)
!3183 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3181)
!3184 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3181)
!3185 = !DILocation(line: 70, column: 3, scope: !3164)
!3186 = !DISubprogram(name: "realloc", scope: !987, file: !987, line: 551, type: !3165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3187 = distinct !DISubprogram(name: "xirealloc", scope: !711, file: !711, line: 74, type: !3188, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!99, !99, !730}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "p", arg: 1, scope: !3187, file: !711, line: 74, type: !99)
!3192 = !DILocalVariable(name: "s", arg: 2, scope: !3187, file: !711, line: 74, type: !730)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3195, file: !3138, line: 66, type: !99)
!3195 = distinct !DISubprogram(name: "irealloc", scope: !3138, file: !3138, line: 66, type: !3188, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3196)
!3196 = !{!3194, !3197}
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3195, file: !3138, line: 66, type: !730)
!3198 = !DILocation(line: 0, scope: !3195, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 76, column: 25, scope: !3187)
!3200 = !DILocation(line: 0, scope: !3172, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 68, column: 26, scope: !3195, inlinedAt: !3199)
!3202 = !DILocation(line: 2059, column: 24, scope: !3172, inlinedAt: !3201)
!3203 = !DILocation(line: 2059, column: 10, scope: !3172, inlinedAt: !3201)
!3204 = !DILocation(line: 0, scope: !3097, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 76, column: 10, scope: !3187)
!3206 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3205)
!3207 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3205)
!3208 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3205)
!3209 = !DILocation(line: 76, column: 3, scope: !3187)
!3210 = distinct !DISubprogram(name: "xireallocarray", scope: !711, file: !711, line: 89, type: !3211, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!99, !99, !730, !730}
!3213 = !{!3214, !3215, !3216}
!3214 = !DILocalVariable(name: "p", arg: 1, scope: !3210, file: !711, line: 89, type: !99)
!3215 = !DILocalVariable(name: "n", arg: 2, scope: !3210, file: !711, line: 89, type: !730)
!3216 = !DILocalVariable(name: "s", arg: 3, scope: !3210, file: !711, line: 89, type: !730)
!3217 = !DILocation(line: 0, scope: !3210)
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3219, file: !3138, line: 98, type: !99)
!3219 = distinct !DISubprogram(name: "ireallocarray", scope: !3138, file: !3138, line: 98, type: !3211, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3220)
!3220 = !{!3218, !3221, !3222}
!3221 = !DILocalVariable(name: "n", arg: 2, scope: !3219, file: !3138, line: 98, type: !730)
!3222 = !DILocalVariable(name: "s", arg: 3, scope: !3219, file: !3138, line: 98, type: !730)
!3223 = !DILocation(line: 0, scope: !3219, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 91, column: 25, scope: !3210)
!3225 = !DILocation(line: 101, column: 13, scope: !3219, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !3097, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 91, column: 10, scope: !3210)
!3228 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3227)
!3231 = !DILocation(line: 91, column: 3, scope: !3210)
!3232 = distinct !DISubprogram(name: "xnmalloc", scope: !711, file: !711, line: 98, type: !3233, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!99, !102, !102}
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !711, line: 98, type: !102)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3232, file: !711, line: 98, type: !102)
!3238 = !DILocation(line: 0, scope: !3232)
!3239 = !DILocation(line: 0, scope: !3089, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 100, column: 10, scope: !3232)
!3241 = !DILocation(line: 85, column: 25, scope: !3089, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !3097, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 85, column: 10, scope: !3089, inlinedAt: !3240)
!3244 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3243)
!3247 = !DILocation(line: 100, column: 3, scope: !3232)
!3248 = distinct !DISubprogram(name: "xinmalloc", scope: !711, file: !711, line: 104, type: !3249, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!99, !730, !730}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !711, line: 104, type: !730)
!3253 = !DILocalVariable(name: "s", arg: 2, scope: !3248, file: !711, line: 104, type: !730)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 0, scope: !3210, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 106, column: 10, scope: !3248)
!3257 = !DILocation(line: 0, scope: !3219, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 91, column: 25, scope: !3210, inlinedAt: !3256)
!3259 = !DILocation(line: 101, column: 13, scope: !3219, inlinedAt: !3258)
!3260 = !DILocation(line: 0, scope: !3097, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 91, column: 10, scope: !3210, inlinedAt: !3256)
!3262 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3261)
!3263 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3261)
!3264 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3261)
!3265 = !DILocation(line: 106, column: 3, scope: !3248)
!3266 = distinct !DISubprogram(name: "x2realloc", scope: !711, file: !711, line: 116, type: !3267, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!99, !99, !717}
!3269 = !{!3270, !3271}
!3270 = !DILocalVariable(name: "p", arg: 1, scope: !3266, file: !711, line: 116, type: !99)
!3271 = !DILocalVariable(name: "ps", arg: 2, scope: !3266, file: !711, line: 116, type: !717)
!3272 = !DILocation(line: 0, scope: !3266)
!3273 = !DILocation(line: 0, scope: !714, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 118, column: 10, scope: !3266)
!3275 = !DILocation(line: 178, column: 14, scope: !714, inlinedAt: !3274)
!3276 = !DILocation(line: 180, column: 9, scope: !3277, inlinedAt: !3274)
!3277 = distinct !DILexicalBlock(scope: !714, file: !711, line: 180, column: 7)
!3278 = !DILocation(line: 180, column: 7, scope: !714, inlinedAt: !3274)
!3279 = !DILocation(line: 182, column: 13, scope: !3280, inlinedAt: !3274)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !711, line: 182, column: 11)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !711, line: 181, column: 5)
!3282 = !DILocation(line: 182, column: 11, scope: !3281, inlinedAt: !3274)
!3283 = !DILocation(line: 197, column: 11, scope: !3284, inlinedAt: !3274)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !711, line: 197, column: 11)
!3285 = distinct !DILexicalBlock(scope: !3277, file: !711, line: 195, column: 5)
!3286 = !DILocation(line: 197, column: 11, scope: !3285, inlinedAt: !3274)
!3287 = !DILocation(line: 198, column: 9, scope: !3284, inlinedAt: !3274)
!3288 = !DILocation(line: 0, scope: !3089, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 201, column: 7, scope: !714, inlinedAt: !3274)
!3290 = !DILocation(line: 85, column: 25, scope: !3089, inlinedAt: !3289)
!3291 = !DILocation(line: 0, scope: !3097, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 85, column: 10, scope: !3089, inlinedAt: !3289)
!3293 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3292)
!3294 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3292)
!3295 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3292)
!3296 = !DILocation(line: 202, column: 7, scope: !714, inlinedAt: !3274)
!3297 = !DILocation(line: 118, column: 3, scope: !3266)
!3298 = !DILocation(line: 0, scope: !714)
!3299 = !DILocation(line: 178, column: 14, scope: !714)
!3300 = !DILocation(line: 180, column: 9, scope: !3277)
!3301 = !DILocation(line: 180, column: 7, scope: !714)
!3302 = !DILocation(line: 182, column: 13, scope: !3280)
!3303 = !DILocation(line: 182, column: 11, scope: !3281)
!3304 = !DILocation(line: 190, column: 30, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3280, file: !711, line: 183, column: 9)
!3306 = !DILocation(line: 191, column: 16, scope: !3305)
!3307 = !DILocation(line: 191, column: 13, scope: !3305)
!3308 = !DILocation(line: 192, column: 9, scope: !3305)
!3309 = !DILocation(line: 197, column: 11, scope: !3284)
!3310 = !DILocation(line: 197, column: 11, scope: !3285)
!3311 = !DILocation(line: 198, column: 9, scope: !3284)
!3312 = !DILocation(line: 0, scope: !3089, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 201, column: 7, scope: !714)
!3314 = !DILocation(line: 85, column: 25, scope: !3089, inlinedAt: !3313)
!3315 = !DILocation(line: 0, scope: !3097, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 85, column: 10, scope: !3089, inlinedAt: !3313)
!3317 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3316)
!3318 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3316)
!3319 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3316)
!3320 = !DILocation(line: 202, column: 7, scope: !714)
!3321 = !DILocation(line: 203, column: 3, scope: !714)
!3322 = !DILocation(line: 0, scope: !726)
!3323 = !DILocation(line: 230, column: 14, scope: !726)
!3324 = !DILocation(line: 238, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !726, file: !711, line: 238, column: 7)
!3326 = !DILocation(line: 238, column: 7, scope: !726)
!3327 = !DILocation(line: 240, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !726, file: !711, line: 240, column: 7)
!3329 = !DILocation(line: 240, column: 18, scope: !3328)
!3330 = !DILocation(line: 253, column: 8, scope: !726)
!3331 = !DILocation(line: 258, column: 27, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !711, line: 257, column: 5)
!3333 = distinct !DILexicalBlock(scope: !726, file: !711, line: 256, column: 7)
!3334 = !DILocation(line: 259, column: 50, scope: !3332)
!3335 = !DILocation(line: 259, column: 32, scope: !3332)
!3336 = !DILocation(line: 260, column: 5, scope: !3332)
!3337 = !DILocation(line: 262, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !726, file: !711, line: 262, column: 7)
!3339 = !DILocation(line: 262, column: 7, scope: !726)
!3340 = !DILocation(line: 263, column: 9, scope: !3338)
!3341 = !DILocation(line: 263, column: 5, scope: !3338)
!3342 = !DILocation(line: 264, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !726, file: !711, line: 264, column: 7)
!3344 = !DILocation(line: 264, column: 14, scope: !3343)
!3345 = !DILocation(line: 265, column: 7, scope: !3343)
!3346 = !DILocation(line: 265, column: 11, scope: !3343)
!3347 = !DILocation(line: 266, column: 11, scope: !3343)
!3348 = !DILocation(line: 267, column: 14, scope: !3343)
!3349 = !DILocation(line: 264, column: 7, scope: !726)
!3350 = !DILocation(line: 268, column: 5, scope: !3343)
!3351 = !DILocation(line: 0, scope: !3164, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 269, column: 8, scope: !726)
!3353 = !DILocation(line: 0, scope: !3172, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 70, column: 25, scope: !3164, inlinedAt: !3352)
!3355 = !DILocation(line: 2059, column: 24, scope: !3172, inlinedAt: !3354)
!3356 = !DILocation(line: 2059, column: 10, scope: !3172, inlinedAt: !3354)
!3357 = !DILocation(line: 0, scope: !3097, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 70, column: 10, scope: !3164, inlinedAt: !3352)
!3359 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3358)
!3362 = !DILocation(line: 270, column: 7, scope: !726)
!3363 = !DILocation(line: 271, column: 3, scope: !726)
!3364 = distinct !DISubprogram(name: "xzalloc", scope: !711, file: !711, line: 279, type: !3117, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3365)
!3365 = !{!3366}
!3366 = !DILocalVariable(name: "s", arg: 1, scope: !3364, file: !711, line: 279, type: !102)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !711, line: 294, type: !102)
!3369 = distinct !DISubprogram(name: "xcalloc", scope: !711, file: !711, line: 294, type: !3233, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3370)
!3370 = !{!3368, !3371}
!3371 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !711, line: 294, type: !102)
!3372 = !DILocation(line: 0, scope: !3369, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 281, column: 10, scope: !3364)
!3374 = !DILocation(line: 296, column: 25, scope: !3369, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3097, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 296, column: 10, scope: !3369, inlinedAt: !3373)
!3377 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3376)
!3380 = !DILocation(line: 281, column: 3, scope: !3364)
!3381 = !DISubprogram(name: "calloc", scope: !987, file: !987, line: 543, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3382 = !DILocation(line: 0, scope: !3369)
!3383 = !DILocation(line: 296, column: 25, scope: !3369)
!3384 = !DILocation(line: 0, scope: !3097, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 296, column: 10, scope: !3369)
!3386 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3385)
!3389 = !DILocation(line: 296, column: 3, scope: !3369)
!3390 = distinct !DISubprogram(name: "xizalloc", scope: !711, file: !711, line: 285, type: !3131, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3391)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3390, file: !711, line: 285, type: !730)
!3393 = !DILocation(line: 0, scope: !3390)
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !711, line: 300, type: !730)
!3395 = distinct !DISubprogram(name: "xicalloc", scope: !711, file: !711, line: 300, type: !3249, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3396)
!3396 = !{!3394, !3397}
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3395, file: !711, line: 300, type: !730)
!3398 = !DILocation(line: 0, scope: !3395, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 287, column: 10, scope: !3390)
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !3138, line: 77, type: !730)
!3401 = distinct !DISubprogram(name: "icalloc", scope: !3138, file: !3138, line: 77, type: !3249, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3402)
!3402 = !{!3400, !3403}
!3403 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !3138, line: 77, type: !730)
!3404 = !DILocation(line: 0, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 302, column: 25, scope: !3395, inlinedAt: !3399)
!3406 = !DILocation(line: 91, column: 10, scope: !3401, inlinedAt: !3405)
!3407 = !DILocation(line: 0, scope: !3097, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 302, column: 10, scope: !3395, inlinedAt: !3399)
!3409 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3408)
!3410 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3408)
!3411 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3408)
!3412 = !DILocation(line: 287, column: 3, scope: !3390)
!3413 = !DILocation(line: 0, scope: !3395)
!3414 = !DILocation(line: 0, scope: !3401, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 302, column: 25, scope: !3395)
!3416 = !DILocation(line: 91, column: 10, scope: !3401, inlinedAt: !3415)
!3417 = !DILocation(line: 0, scope: !3097, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 302, column: 10, scope: !3395)
!3419 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3418)
!3420 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3418)
!3421 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3418)
!3422 = !DILocation(line: 302, column: 3, scope: !3395)
!3423 = distinct !DISubprogram(name: "xmemdup", scope: !711, file: !711, line: 310, type: !3424, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!99, !1009, !102}
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "p", arg: 1, scope: !3423, file: !711, line: 310, type: !1009)
!3428 = !DILocalVariable(name: "s", arg: 2, scope: !3423, file: !711, line: 310, type: !102)
!3429 = !DILocation(line: 0, scope: !3423)
!3430 = !DILocation(line: 0, scope: !3116, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 312, column: 18, scope: !3423)
!3432 = !DILocation(line: 49, column: 25, scope: !3116, inlinedAt: !3431)
!3433 = !DILocation(line: 0, scope: !3097, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 49, column: 10, scope: !3116, inlinedAt: !3431)
!3435 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3434)
!3436 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3434)
!3437 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3434)
!3438 = !DILocalVariable(name: "__dest", arg: 1, scope: !3439, file: !1591, line: 26, type: !3442)
!3439 = distinct !DISubprogram(name: "memcpy", scope: !1591, file: !1591, line: 26, type: !3440, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3443)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!99, !3442, !1008, !102}
!3442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3443 = !{!3438, !3444, !3445}
!3444 = !DILocalVariable(name: "__src", arg: 2, scope: !3439, file: !1591, line: 26, type: !1008)
!3445 = !DILocalVariable(name: "__len", arg: 3, scope: !3439, file: !1591, line: 26, type: !102)
!3446 = !DILocation(line: 0, scope: !3439, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 312, column: 10, scope: !3423)
!3448 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3447)
!3449 = !DILocation(line: 312, column: 3, scope: !3423)
!3450 = distinct !DISubprogram(name: "ximemdup", scope: !711, file: !711, line: 316, type: !3451, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!99, !1009, !730}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3450, file: !711, line: 316, type: !1009)
!3455 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !711, line: 316, type: !730)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 0, scope: !3130, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 318, column: 18, scope: !3450)
!3459 = !DILocation(line: 0, scope: !3137, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 55, column: 25, scope: !3130, inlinedAt: !3458)
!3461 = !DILocation(line: 57, column: 26, scope: !3137, inlinedAt: !3460)
!3462 = !DILocation(line: 0, scope: !3097, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 55, column: 10, scope: !3130, inlinedAt: !3458)
!3464 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3463)
!3465 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3463)
!3466 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3463)
!3467 = !DILocation(line: 0, scope: !3439, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 318, column: 10, scope: !3450)
!3469 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3468)
!3470 = !DILocation(line: 318, column: 3, scope: !3450)
!3471 = distinct !DISubprogram(name: "ximemdup0", scope: !711, file: !711, line: 325, type: !3472, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!244, !1009, !730}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "p", arg: 1, scope: !3471, file: !711, line: 325, type: !1009)
!3476 = !DILocalVariable(name: "s", arg: 2, scope: !3471, file: !711, line: 325, type: !730)
!3477 = !DILocalVariable(name: "result", scope: !3471, file: !711, line: 327, type: !244)
!3478 = !DILocation(line: 0, scope: !3471)
!3479 = !DILocation(line: 327, column: 30, scope: !3471)
!3480 = !DILocation(line: 0, scope: !3130, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 327, column: 18, scope: !3471)
!3482 = !DILocation(line: 0, scope: !3137, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 55, column: 25, scope: !3130, inlinedAt: !3481)
!3484 = !DILocation(line: 57, column: 26, scope: !3137, inlinedAt: !3483)
!3485 = !DILocation(line: 0, scope: !3097, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 55, column: 10, scope: !3130, inlinedAt: !3481)
!3487 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3486)
!3488 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3486)
!3489 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3486)
!3490 = !DILocation(line: 328, column: 3, scope: !3471)
!3491 = !DILocation(line: 328, column: 13, scope: !3471)
!3492 = !DILocation(line: 0, scope: !3439, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 329, column: 10, scope: !3471)
!3494 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3493)
!3495 = !DILocation(line: 329, column: 3, scope: !3471)
!3496 = distinct !DISubprogram(name: "xstrdup", scope: !711, file: !711, line: 335, type: !989, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "string", arg: 1, scope: !3496, file: !711, line: 335, type: !78)
!3499 = !DILocation(line: 0, scope: !3496)
!3500 = !DILocation(line: 337, column: 27, scope: !3496)
!3501 = !DILocation(line: 337, column: 43, scope: !3496)
!3502 = !DILocation(line: 0, scope: !3423, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 337, column: 10, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3116, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 312, column: 18, scope: !3423, inlinedAt: !3503)
!3506 = !DILocation(line: 49, column: 25, scope: !3116, inlinedAt: !3505)
!3507 = !DILocation(line: 0, scope: !3097, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 49, column: 10, scope: !3116, inlinedAt: !3505)
!3509 = !DILocation(line: 39, column: 8, scope: !3104, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3097, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3104, inlinedAt: !3508)
!3512 = !DILocation(line: 0, scope: !3439, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 312, column: 10, scope: !3423, inlinedAt: !3503)
!3514 = !DILocation(line: 29, column: 10, scope: !3439, inlinedAt: !3513)
!3515 = !DILocation(line: 337, column: 3, scope: !3496)
!3516 = distinct !DISubprogram(name: "xalloc_die", scope: !644, file: !644, line: 32, type: !367, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "__errstatus", scope: !3519, file: !644, line: 34, type: !670)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !644, line: 34, column: 3)
!3520 = !DILocation(line: 34, column: 3, scope: !3519)
!3521 = !DILocation(line: 0, scope: !3519)
!3522 = !DILocation(line: 40, column: 3, scope: !3516)
!3523 = distinct !DISubprogram(name: "xnanosleep", scope: !747, file: !747, line: 40, type: !3524, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!100, !1019}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "seconds", arg: 1, scope: !3523, file: !747, line: 40, type: !1019)
!3528 = !DILocalVariable(name: "ts_sleep", scope: !3523, file: !747, line: 53, type: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3530, line: 11, size: 128, elements: !3531)
!3530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3531 = !{!3532, !3533}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3529, file: !3530, line: 16, baseType: !751, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3529, file: !3530, line: 21, baseType: !3534, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !264, line: 197, baseType: !265)
!3535 = !DILocation(line: 0, scope: !3523)
!3536 = !DILocation(line: 43, column: 35, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3523, file: !747, line: 43, column: 7)
!3538 = !DILocation(line: 43, column: 7, scope: !3523)
!3539 = !DILocation(line: 46, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !747, line: 44, column: 5)
!3541 = !DILocation(line: 47, column: 14, scope: !3540)
!3542 = !DILocation(line: 47, column: 20, scope: !3540)
!3543 = distinct !{!3543, !3544, !3545, !905}
!3544 = !DILocation(line: 45, column: 7, scope: !3540)
!3545 = !DILocation(line: 47, column: 28, scope: !3540)
!3546 = !DILocation(line: 53, column: 3, scope: !3523)
!3547 = !DILocation(line: 53, column: 19, scope: !3523)
!3548 = !DILocation(line: 53, column: 30, scope: !3523)
!3549 = !DILocation(line: 68, column: 13, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !747, line: 56, column: 5)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !747, line: 55, column: 3)
!3552 = distinct !DILexicalBlock(scope: !3523, file: !747, line: 55, column: 3)
!3553 = !DILocation(line: 69, column: 11, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !747, line: 69, column: 11)
!3555 = !DILocation(line: 69, column: 44, scope: !3554)
!3556 = !DILocation(line: 69, column: 11, scope: !3550)
!3557 = !DILocation(line: 71, column: 11, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3550, file: !747, line: 71, column: 11)
!3559 = !DILocation(line: 71, column: 26, scope: !3558)
!3560 = distinct !{!3560, !3561, !3562}
!3561 = !DILocation(line: 55, column: 3, scope: !3552)
!3562 = !DILocation(line: 73, column: 5, scope: !3552)
!3563 = !DILocation(line: 76, column: 1, scope: !3523)
!3564 = !DISubprogram(name: "pause", scope: !1221, file: !1221, line: 489, type: !3565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!100}
!3567 = distinct !DISubprogram(name: "c_strtod", scope: !652, file: !652, line: 102, type: !3568, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!1019, !78, !1014}
!3570 = !{!3571, !3572, !3573, !3574}
!3571 = !DILocalVariable(name: "nptr", arg: 1, scope: !3567, file: !652, line: 102, type: !78)
!3572 = !DILocalVariable(name: "endptr", arg: 2, scope: !3567, file: !652, line: 102, type: !1014)
!3573 = !DILocalVariable(name: "r", scope: !3567, file: !652, line: 104, type: !1019)
!3574 = !DILocalVariable(name: "locale", scope: !3567, file: !652, line: 108, type: !654)
!3575 = !DILocation(line: 0, scope: !3567)
!3576 = !DILocation(line: 65, column: 8, scope: !3577, inlinedAt: !3581)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !652, line: 65, column: 7)
!3578 = distinct !DISubprogram(name: "c_locale", scope: !652, file: !652, line: 63, type: !3579, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !846)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!654}
!3581 = distinct !DILocation(line: 108, column: 21, scope: !3567)
!3582 = !DILocation(line: 65, column: 7, scope: !3578, inlinedAt: !3581)
!3583 = !DILocation(line: 66, column: 22, scope: !3577, inlinedAt: !3581)
!3584 = !DILocation(line: 66, column: 20, scope: !3577, inlinedAt: !3581)
!3585 = !DILocation(line: 66, column: 5, scope: !3577, inlinedAt: !3581)
!3586 = !DILocation(line: 67, column: 10, scope: !3578, inlinedAt: !3581)
!3587 = !DILocation(line: 109, column: 8, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3567, file: !652, line: 109, column: 7)
!3589 = !DILocation(line: 109, column: 7, scope: !3567)
!3590 = !DILocation(line: 111, column: 11, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !652, line: 111, column: 11)
!3592 = distinct !DILexicalBlock(scope: !3588, file: !652, line: 110, column: 5)
!3593 = !DILocation(line: 111, column: 11, scope: !3592)
!3594 = !DILocation(line: 112, column: 17, scope: !3591)
!3595 = !DILocation(line: 112, column: 9, scope: !3591)
!3596 = !DILocation(line: 118, column: 7, scope: !3567)
!3597 = !DILocation(line: 342, column: 3, scope: !3567)
!3598 = !DILocation(line: 343, column: 1, scope: !3567)
!3599 = !DISubprogram(name: "newlocale", scope: !975, file: !975, line: 141, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!654, !100, !78, !654}
!3602 = !DISubprogram(name: "strtod_l", scope: !987, file: !987, line: 296, type: !3603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!1019, !852, !1133, !654}
!3605 = distinct !DISubprogram(name: "close_stream", scope: !753, file: !753, line: 55, type: !3606, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3642)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!100, !3608}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3610, file: !240, line: 51, baseType: !100, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3610, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3610, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3610, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3610, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3610, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3610, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3610, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3610, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3610, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3610, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3610, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3610, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3610, file: !240, line: 70, baseType: !3626, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3610, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3610, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3610, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3610, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3610, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3610, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3610, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3610, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3610, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3610, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3610, file: !240, line: 93, baseType: !3626, size: 64, offset: 1344)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3610, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3610, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3610, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3610, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3642 = !{!3643, !3644, !3646, !3647}
!3643 = !DILocalVariable(name: "stream", arg: 1, scope: !3605, file: !753, line: 55, type: !3608)
!3644 = !DILocalVariable(name: "some_pending", scope: !3605, file: !753, line: 57, type: !3645)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!3646 = !DILocalVariable(name: "prev_fail", scope: !3605, file: !753, line: 58, type: !3645)
!3647 = !DILocalVariable(name: "fclose_fail", scope: !3605, file: !753, line: 59, type: !3645)
!3648 = !DILocation(line: 0, scope: !3605)
!3649 = !DILocation(line: 57, column: 30, scope: !3605)
!3650 = !DILocalVariable(name: "__stream", arg: 1, scope: !3651, file: !1338, line: 135, type: !3608)
!3651 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !3606, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3652)
!3652 = !{!3650}
!3653 = !DILocation(line: 0, scope: !3651, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 58, column: 27, scope: !3605)
!3655 = !DILocation(line: 137, column: 10, scope: !3651, inlinedAt: !3654)
!3656 = !{!1347, !859, i64 0}
!3657 = !DILocation(line: 58, column: 43, scope: !3605)
!3658 = !DILocation(line: 59, column: 29, scope: !3605)
!3659 = !DILocation(line: 59, column: 45, scope: !3605)
!3660 = !DILocation(line: 69, column: 17, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3605, file: !753, line: 69, column: 7)
!3662 = !DILocation(line: 57, column: 50, scope: !3605)
!3663 = !DILocation(line: 69, column: 33, scope: !3661)
!3664 = !DILocation(line: 69, column: 53, scope: !3661)
!3665 = !DILocation(line: 69, column: 59, scope: !3661)
!3666 = !DILocation(line: 69, column: 7, scope: !3605)
!3667 = !DILocation(line: 71, column: 11, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3661, file: !753, line: 70, column: 5)
!3669 = !DILocation(line: 72, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3668, file: !753, line: 71, column: 11)
!3671 = !DILocation(line: 72, column: 15, scope: !3670)
!3672 = !DILocation(line: 77, column: 1, scope: !3605)
!3673 = !DISubprogram(name: "__fpending", scope: !3674, file: !3674, line: 75, type: !3675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3674 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!102, !3608}
!3677 = distinct !DISubprogram(name: "dtotimespec", scope: !755, file: !755, line: 30, type: !3678, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3684)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!3680, !1019}
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3530, line: 11, size: 128, elements: !3681)
!3681 = !{!3682, !3683}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3680, file: !3530, line: 16, baseType: !751, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3680, file: !3530, line: 21, baseType: !3534, size: 64, offset: 64)
!3684 = !{!3685, !3686, !3690, !3691}
!3685 = !DILocalVariable(name: "sec", arg: 1, scope: !3677, file: !755, line: 30, type: !1019)
!3686 = !DILocalVariable(name: "s", scope: !3687, file: !755, line: 38, type: !749)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !755, line: 37, column: 5)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !755, line: 34, column: 12)
!3689 = distinct !DILexicalBlock(scope: !3677, file: !755, line: 32, column: 7)
!3690 = !DILocalVariable(name: "frac", scope: !3687, file: !755, line: 39, type: !1019)
!3691 = !DILocalVariable(name: "ns", scope: !3687, file: !755, line: 40, type: !265)
!3692 = !DILocation(line: 0, scope: !3677)
!3693 = !DILocation(line: 32, column: 32, scope: !3689)
!3694 = !DILocation(line: 32, column: 7, scope: !3677)
!3695 = !DILocation(line: 34, column: 19, scope: !3688)
!3696 = !DILocation(line: 34, column: 12, scope: !3689)
!3697 = !DILocation(line: 38, column: 18, scope: !3687)
!3698 = !DILocation(line: 0, scope: !3687)
!3699 = !DILocation(line: 39, column: 42, scope: !3687)
!3700 = !DILocation(line: 39, column: 40, scope: !3687)
!3701 = !DILocation(line: 39, column: 33, scope: !3687)
!3702 = !DILocation(line: 40, column: 17, scope: !3687)
!3703 = !DILocation(line: 41, column: 13, scope: !3687)
!3704 = !DILocation(line: 41, column: 16, scope: !3687)
!3705 = !DILocation(line: 41, column: 10, scope: !3687)
!3706 = !DILocation(line: 42, column: 15, scope: !3687)
!3707 = !DILocation(line: 42, column: 9, scope: !3687)
!3708 = !DILocation(line: 43, column: 10, scope: !3687)
!3709 = !DILocation(line: 45, column: 14, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3687, file: !755, line: 45, column: 11)
!3711 = !DILocation(line: 45, column: 11, scope: !3687)
!3712 = !DILocalVariable(name: "s", arg: 1, scope: !3713, file: !758, line: 56, type: !749)
!3713 = distinct !DISubprogram(name: "make_timespec", scope: !758, file: !758, line: 56, type: !3714, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!3680, !749, !265}
!3716 = !{!3712, !3717}
!3717 = !DILocalVariable(name: "ns", arg: 2, scope: !3713, file: !758, line: 56, type: !265)
!3718 = !DILocation(line: 0, scope: !3713, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 51, column: 14, scope: !3687)
!3720 = !DILocation(line: 58, column: 3, scope: !3713, inlinedAt: !3719)
!3721 = !DILocation(line: 53, column: 1, scope: !3677)
!3722 = distinct !DISubprogram(name: "rpl_fclose", scope: !762, file: !762, line: 58, type: !3723, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3759)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!100, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !240, line: 51, baseType: !100, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3727, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3727, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3727, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3727, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3727, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3727, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3727, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3727, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3727, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3727, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3727, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3727, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3727, file: !240, line: 70, baseType: !3743, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3727, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3727, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3727, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3727, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3727, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3727, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3727, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3727, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3727, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3727, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3727, file: !240, line: 93, baseType: !3743, size: 64, offset: 1344)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3727, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3727, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3727, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3727, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DILocalVariable(name: "fp", arg: 1, scope: !3722, file: !762, line: 58, type: !3725)
!3761 = !DILocalVariable(name: "saved_errno", scope: !3722, file: !762, line: 60, type: !100)
!3762 = !DILocalVariable(name: "fd", scope: !3722, file: !762, line: 63, type: !100)
!3763 = !DILocalVariable(name: "result", scope: !3722, file: !762, line: 74, type: !100)
!3764 = !DILocation(line: 0, scope: !3722)
!3765 = !DILocation(line: 63, column: 12, scope: !3722)
!3766 = !DILocation(line: 64, column: 10, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3722, file: !762, line: 64, column: 7)
!3768 = !DILocation(line: 64, column: 7, scope: !3722)
!3769 = !DILocation(line: 65, column: 12, scope: !3767)
!3770 = !DILocation(line: 65, column: 5, scope: !3767)
!3771 = !DILocation(line: 70, column: 9, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3722, file: !762, line: 70, column: 7)
!3773 = !DILocation(line: 70, column: 23, scope: !3772)
!3774 = !DILocation(line: 70, column: 33, scope: !3772)
!3775 = !DILocation(line: 70, column: 26, scope: !3772)
!3776 = !DILocation(line: 70, column: 59, scope: !3772)
!3777 = !DILocation(line: 71, column: 7, scope: !3772)
!3778 = !DILocation(line: 71, column: 10, scope: !3772)
!3779 = !DILocation(line: 70, column: 7, scope: !3722)
!3780 = !DILocation(line: 100, column: 12, scope: !3722)
!3781 = !DILocation(line: 105, column: 7, scope: !3722)
!3782 = !DILocation(line: 72, column: 19, scope: !3772)
!3783 = !DILocation(line: 105, column: 19, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3722, file: !762, line: 105, column: 7)
!3785 = !DILocation(line: 107, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !762, line: 106, column: 5)
!3787 = !DILocation(line: 109, column: 5, scope: !3786)
!3788 = !DILocation(line: 112, column: 1, scope: !3722)
!3789 = !DISubprogram(name: "fileno", scope: !983, file: !983, line: 809, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3790 = !DISubprogram(name: "fclose", scope: !983, file: !983, line: 178, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3791 = !DISubprogram(name: "__freading", scope: !3674, file: !3674, line: 51, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3792 = !DISubprogram(name: "lseek", scope: !1221, file: !1221, line: 339, type: !3793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!263, !100, !263, !100}
!3795 = distinct !DISubprogram(name: "rpl_fflush", scope: !764, file: !764, line: 130, type: !3796, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3832)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!100, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3800, file: !240, line: 51, baseType: !100, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3800, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3800, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3800, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3800, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3800, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3800, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3800, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3800, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3800, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3800, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3800, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3800, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3800, file: !240, line: 70, baseType: !3816, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3800, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3800, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3800, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3800, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3800, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3800, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3800, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3800, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3800, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3800, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3800, file: !240, line: 93, baseType: !3816, size: 64, offset: 1344)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3800, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3800, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3800, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3800, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "stream", arg: 1, scope: !3795, file: !764, line: 130, type: !3798)
!3834 = !DILocation(line: 0, scope: !3795)
!3835 = !DILocation(line: 151, column: 14, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3795, file: !764, line: 151, column: 7)
!3837 = !DILocation(line: 151, column: 22, scope: !3836)
!3838 = !DILocation(line: 151, column: 27, scope: !3836)
!3839 = !DILocation(line: 151, column: 7, scope: !3795)
!3840 = !DILocation(line: 152, column: 12, scope: !3836)
!3841 = !DILocation(line: 152, column: 5, scope: !3836)
!3842 = !DILocalVariable(name: "fp", arg: 1, scope: !3843, file: !764, line: 42, type: !3798)
!3843 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !764, file: !764, line: 42, type: !3844, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3798}
!3846 = !{!3842}
!3847 = !DILocation(line: 0, scope: !3843, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 157, column: 3, scope: !3795)
!3849 = !DILocation(line: 44, column: 12, scope: !3850, inlinedAt: !3848)
!3850 = distinct !DILexicalBlock(scope: !3843, file: !764, line: 44, column: 7)
!3851 = !DILocation(line: 44, column: 19, scope: !3850, inlinedAt: !3848)
!3852 = !DILocation(line: 44, column: 7, scope: !3843, inlinedAt: !3848)
!3853 = !DILocation(line: 46, column: 5, scope: !3850, inlinedAt: !3848)
!3854 = !DILocation(line: 159, column: 10, scope: !3795)
!3855 = !DILocation(line: 159, column: 3, scope: !3795)
!3856 = !DILocation(line: 236, column: 1, scope: !3795)
!3857 = !DISubprogram(name: "fflush", scope: !983, file: !983, line: 230, type: !3796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3858 = distinct !DISubprogram(name: "rpl_fseeko", scope: !766, file: !766, line: 28, type: !3859, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !3896)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!100, !3861, !3895, !100}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3863, file: !240, line: 51, baseType: !100, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3863, file: !240, line: 54, baseType: !244, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3863, file: !240, line: 55, baseType: !244, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3863, file: !240, line: 56, baseType: !244, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3863, file: !240, line: 57, baseType: !244, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3863, file: !240, line: 58, baseType: !244, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3863, file: !240, line: 59, baseType: !244, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3863, file: !240, line: 60, baseType: !244, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3863, file: !240, line: 61, baseType: !244, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3863, file: !240, line: 64, baseType: !244, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3863, file: !240, line: 65, baseType: !244, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3863, file: !240, line: 66, baseType: !244, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3863, file: !240, line: 68, baseType: !256, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3863, file: !240, line: 70, baseType: !3879, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3863, file: !240, line: 72, baseType: !100, size: 32, offset: 896)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3863, file: !240, line: 73, baseType: !100, size: 32, offset: 928)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3863, file: !240, line: 74, baseType: !263, size: 64, offset: 960)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3863, file: !240, line: 77, baseType: !101, size: 16, offset: 1024)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3863, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3863, file: !240, line: 79, baseType: !29, size: 8, offset: 1048)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3863, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3863, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3863, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3863, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3863, file: !240, line: 93, baseType: !3879, size: 64, offset: 1344)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3863, file: !240, line: 94, baseType: !99, size: 64, offset: 1408)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3863, file: !240, line: 95, baseType: !102, size: 64, offset: 1472)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3863, file: !240, line: 96, baseType: !100, size: 32, offset: 1536)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3863, file: !240, line: 98, baseType: !286, size: 160, offset: 1568)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !983, line: 63, baseType: !263)
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DILocalVariable(name: "fp", arg: 1, scope: !3858, file: !766, line: 28, type: !3861)
!3898 = !DILocalVariable(name: "offset", arg: 2, scope: !3858, file: !766, line: 28, type: !3895)
!3899 = !DILocalVariable(name: "whence", arg: 3, scope: !3858, file: !766, line: 28, type: !100)
!3900 = !DILocalVariable(name: "pos", scope: !3901, file: !766, line: 123, type: !3895)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !766, line: 119, column: 5)
!3902 = distinct !DILexicalBlock(scope: !3858, file: !766, line: 55, column: 7)
!3903 = !DILocation(line: 0, scope: !3858)
!3904 = !DILocation(line: 55, column: 12, scope: !3902)
!3905 = !{!1347, !803, i64 16}
!3906 = !DILocation(line: 55, column: 33, scope: !3902)
!3907 = !{!1347, !803, i64 8}
!3908 = !DILocation(line: 55, column: 25, scope: !3902)
!3909 = !DILocation(line: 56, column: 7, scope: !3902)
!3910 = !DILocation(line: 56, column: 15, scope: !3902)
!3911 = !DILocation(line: 56, column: 37, scope: !3902)
!3912 = !{!1347, !803, i64 32}
!3913 = !DILocation(line: 56, column: 29, scope: !3902)
!3914 = !DILocation(line: 57, column: 7, scope: !3902)
!3915 = !DILocation(line: 57, column: 15, scope: !3902)
!3916 = !{!1347, !803, i64 72}
!3917 = !DILocation(line: 57, column: 29, scope: !3902)
!3918 = !DILocation(line: 55, column: 7, scope: !3858)
!3919 = !DILocation(line: 123, column: 26, scope: !3901)
!3920 = !DILocation(line: 123, column: 19, scope: !3901)
!3921 = !DILocation(line: 0, scope: !3901)
!3922 = !DILocation(line: 124, column: 15, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3901, file: !766, line: 124, column: 11)
!3924 = !DILocation(line: 124, column: 11, scope: !3901)
!3925 = !DILocation(line: 135, column: 19, scope: !3901)
!3926 = !DILocation(line: 136, column: 12, scope: !3901)
!3927 = !DILocation(line: 136, column: 20, scope: !3901)
!3928 = !{!1347, !1348, i64 144}
!3929 = !DILocation(line: 167, column: 7, scope: !3901)
!3930 = !DILocation(line: 169, column: 10, scope: !3858)
!3931 = !DILocation(line: 169, column: 3, scope: !3858)
!3932 = !DILocation(line: 170, column: 1, scope: !3858)
!3933 = !DISubprogram(name: "fseeko", scope: !983, file: !983, line: 736, type: !3934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!100, !3861, !263, !100}
!3936 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !680, file: !680, line: 100, type: !3937, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3940)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!102, !1609, !78, !102, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3940 = !{!3941, !3942, !3943, !3944, !3945}
!3941 = !DILocalVariable(name: "pwc", arg: 1, scope: !3936, file: !680, line: 100, type: !1609)
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3936, file: !680, line: 100, type: !78)
!3943 = !DILocalVariable(name: "n", arg: 3, scope: !3936, file: !680, line: 100, type: !102)
!3944 = !DILocalVariable(name: "ps", arg: 4, scope: !3936, file: !680, line: 100, type: !3939)
!3945 = !DILocalVariable(name: "ret", scope: !3936, file: !680, line: 130, type: !102)
!3946 = !DILocation(line: 0, scope: !3936)
!3947 = !DILocation(line: 105, column: 9, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3936, file: !680, line: 105, column: 7)
!3949 = !DILocation(line: 105, column: 7, scope: !3936)
!3950 = !DILocation(line: 117, column: 10, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3936, file: !680, line: 117, column: 7)
!3952 = !DILocation(line: 117, column: 7, scope: !3936)
!3953 = !DILocation(line: 130, column: 16, scope: !3936)
!3954 = !DILocation(line: 135, column: 11, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3936, file: !680, line: 135, column: 7)
!3956 = !DILocation(line: 135, column: 25, scope: !3955)
!3957 = !DILocation(line: 135, column: 30, scope: !3955)
!3958 = !DILocation(line: 135, column: 7, scope: !3936)
!3959 = !DILocalVariable(name: "ps", arg: 1, scope: !3960, file: !1582, line: 1135, type: !3939)
!3960 = distinct !DISubprogram(name: "mbszero", scope: !1582, file: !1582, line: 1135, type: !3961, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !3939}
!3963 = !{!3959}
!3964 = !DILocation(line: 0, scope: !3960, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 137, column: 5, scope: !3955)
!3966 = !DILocalVariable(name: "__dest", arg: 1, scope: !3967, file: !1591, line: 57, type: !99)
!3967 = distinct !DISubprogram(name: "memset", scope: !1591, file: !1591, line: 57, type: !1592, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3968)
!3968 = !{!3966, !3969, !3970}
!3969 = !DILocalVariable(name: "__ch", arg: 2, scope: !3967, file: !1591, line: 57, type: !100)
!3970 = !DILocalVariable(name: "__len", arg: 3, scope: !3967, file: !1591, line: 57, type: !102)
!3971 = !DILocation(line: 0, scope: !3967, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1137, column: 3, scope: !3960, inlinedAt: !3965)
!3973 = !DILocation(line: 59, column: 10, scope: !3967, inlinedAt: !3972)
!3974 = !DILocation(line: 137, column: 5, scope: !3955)
!3975 = !DILocation(line: 138, column: 11, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3936, file: !680, line: 138, column: 7)
!3977 = !DILocation(line: 138, column: 7, scope: !3936)
!3978 = !DILocation(line: 139, column: 5, scope: !3976)
!3979 = !DILocation(line: 143, column: 26, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3936, file: !680, line: 143, column: 7)
!3981 = !DILocation(line: 143, column: 41, scope: !3980)
!3982 = !DILocation(line: 143, column: 7, scope: !3936)
!3983 = !DILocation(line: 145, column: 15, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !680, line: 145, column: 11)
!3985 = distinct !DILexicalBlock(scope: !3980, file: !680, line: 144, column: 5)
!3986 = !DILocation(line: 145, column: 11, scope: !3985)
!3987 = !DILocation(line: 146, column: 32, scope: !3984)
!3988 = !DILocation(line: 146, column: 16, scope: !3984)
!3989 = !DILocation(line: 146, column: 14, scope: !3984)
!3990 = !DILocation(line: 146, column: 9, scope: !3984)
!3991 = !DILocation(line: 286, column: 1, scope: !3936)
!3992 = !DISubprogram(name: "mbsinit", scope: !3993, file: !3993, line: 293, type: !3994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!3993 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!100, !3996}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!3998 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !768, file: !768, line: 42, type: !3999, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !4008)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!100, !4001, !4007}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4003)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3530, line: 11, size: 128, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4003, file: !3530, line: 16, baseType: !751, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4003, file: !3530, line: 21, baseType: !3534, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4008 = !{!4009, !4010, !4011, !4014, !4015, !4016}
!4009 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3998, file: !768, line: 42, type: !4001)
!4010 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3998, file: !768, line: 43, type: !4007)
!4011 = !DILocalVariable(name: "limit", scope: !4012, file: !768, line: 61, type: !4013)
!4012 = distinct !DILexicalBlock(scope: !3998, file: !768, line: 58, column: 3)
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!4014 = !DILocalVariable(name: "seconds", scope: !4012, file: !768, line: 62, type: !749)
!4015 = !DILocalVariable(name: "intermediate", scope: !4012, file: !768, line: 63, type: !4003)
!4016 = !DILocalVariable(name: "result", scope: !4017, file: !768, line: 68, type: !100)
!4017 = distinct !DILexicalBlock(scope: !4012, file: !768, line: 66, column: 7)
!4018 = !DILocation(line: 0, scope: !3998)
!4019 = !DILocation(line: 52, column: 24, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3998, file: !768, line: 52, column: 7)
!4021 = !{!4022, !1348, i64 8}
!4022 = !{!"timespec", !1348, i64 0, !1348, i64 8}
!4023 = !DILocation(line: 52, column: 36, scope: !4020)
!4024 = !DILocation(line: 54, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4020, file: !768, line: 53, column: 5)
!4026 = !DILocation(line: 54, column: 13, scope: !4025)
!4027 = !DILocation(line: 55, column: 7, scope: !4025)
!4028 = !DILocation(line: 0, scope: !4012)
!4029 = !DILocation(line: 62, column: 39, scope: !4012)
!4030 = !{!4022, !1348, i64 0}
!4031 = !DILocation(line: 63, column: 5, scope: !4012)
!4032 = !DILocation(line: 63, column: 21, scope: !4012)
!4033 = !DILocation(line: 63, column: 36, scope: !4012)
!4034 = !{i64 0, i64 8, !2375, i64 8, i64 8, !2375}
!4035 = !DILocation(line: 65, column: 18, scope: !4012)
!4036 = !DILocation(line: 65, column: 5, scope: !4012)
!4037 = !DILocation(line: 67, column: 29, scope: !4017)
!4038 = !DILocation(line: 68, column: 22, scope: !4017)
!4039 = !DILocation(line: 0, scope: !4017)
!4040 = !DILocation(line: 69, column: 17, scope: !4017)
!4041 = !DILocation(line: 70, column: 13, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4017, file: !768, line: 70, column: 13)
!4043 = !DILocation(line: 70, column: 13, scope: !4017)
!4044 = !DILocation(line: 72, column: 17, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !768, line: 72, column: 17)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !768, line: 71, column: 11)
!4047 = !DILocation(line: 72, column: 17, scope: !4046)
!4048 = !DILocation(line: 73, column: 39, scope: !4045)
!4049 = !DILocation(line: 73, column: 15, scope: !4045)
!4050 = !DILocation(line: 76, column: 30, scope: !4017)
!4051 = distinct !{!4051, !4036, !4052, !905}
!4052 = !DILocation(line: 77, column: 7, scope: !4012)
!4053 = !DILocation(line: 78, column: 25, scope: !4012)
!4054 = !DILocation(line: 79, column: 12, scope: !4012)
!4055 = !DILocation(line: 79, column: 5, scope: !4012)
!4056 = !DILocation(line: 80, column: 3, scope: !3998)
!4057 = !DILocation(line: 81, column: 1, scope: !3998)
!4058 = !DISubprogram(name: "nanosleep", scope: !4059, file: !4059, line: 272, type: !3999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !846)
!4059 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!4060 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !774, file: !774, line: 27, type: !3081, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4061)
!4061 = !{!4062, !4063, !4064, !4065}
!4062 = !DILocalVariable(name: "ptr", arg: 1, scope: !4060, file: !774, line: 27, type: !99)
!4063 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4060, file: !774, line: 27, type: !102)
!4064 = !DILocalVariable(name: "size", arg: 3, scope: !4060, file: !774, line: 27, type: !102)
!4065 = !DILocalVariable(name: "nbytes", scope: !4060, file: !774, line: 29, type: !102)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 30, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4060, file: !774, line: 30, column: 7)
!4069 = !DILocalVariable(name: "ptr", arg: 1, scope: !4070, file: !3173, line: 2057, type: !99)
!4070 = distinct !DISubprogram(name: "rpl_realloc", scope: !3173, file: !3173, line: 2057, type: !3165, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4071)
!4071 = !{!4069, !4072}
!4072 = !DILocalVariable(name: "size", arg: 2, scope: !4070, file: !3173, line: 2057, type: !102)
!4073 = !DILocation(line: 0, scope: !4070, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 37, column: 10, scope: !4060)
!4075 = !DILocation(line: 2059, column: 24, scope: !4070, inlinedAt: !4074)
!4076 = !DILocation(line: 2059, column: 10, scope: !4070, inlinedAt: !4074)
!4077 = !DILocation(line: 37, column: 3, scope: !4060)
!4078 = !DILocation(line: 32, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4068, file: !774, line: 31, column: 5)
!4080 = !DILocation(line: 32, column: 13, scope: !4079)
!4081 = !DILocation(line: 33, column: 7, scope: !4079)
!4082 = !DILocation(line: 38, column: 1, scope: !4060)
!4083 = distinct !DISubprogram(name: "hard_locale", scope: !698, file: !698, line: 28, type: !4084, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!223, !100}
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "category", arg: 1, scope: !4083, file: !698, line: 28, type: !100)
!4088 = !DILocalVariable(name: "locale", scope: !4083, file: !698, line: 30, type: !4089)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4090)
!4090 = !{!4091}
!4091 = !DISubrange(count: 257)
!4092 = !DILocation(line: 0, scope: !4083)
!4093 = !DILocation(line: 30, column: 3, scope: !4083)
!4094 = !DILocation(line: 30, column: 8, scope: !4083)
!4095 = !DILocation(line: 32, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4083, file: !698, line: 32, column: 7)
!4097 = !DILocation(line: 32, column: 7, scope: !4083)
!4098 = !DILocalVariable(name: "__s1", arg: 1, scope: !4099, file: !871, line: 1359, type: !78)
!4099 = distinct !DISubprogram(name: "streq", scope: !871, file: !871, line: 1359, type: !872, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4100)
!4100 = !{!4098, !4101}
!4101 = !DILocalVariable(name: "__s2", arg: 2, scope: !4099, file: !871, line: 1359, type: !78)
!4102 = !DILocation(line: 0, scope: !4099, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 35, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4083, file: !698, line: 35, column: 7)
!4105 = !DILocation(line: 1361, column: 11, scope: !4099, inlinedAt: !4103)
!4106 = !DILocation(line: 35, column: 29, scope: !4104)
!4107 = !DILocation(line: 0, scope: !4099, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 35, column: 32, scope: !4104)
!4109 = !DILocation(line: 1361, column: 11, scope: !4099, inlinedAt: !4108)
!4110 = !DILocation(line: 1361, column: 10, scope: !4099, inlinedAt: !4108)
!4111 = !DILocation(line: 35, column: 7, scope: !4083)
!4112 = !DILocation(line: 46, column: 3, scope: !4083)
!4113 = !DILocation(line: 47, column: 1, scope: !4083)
!4114 = distinct !DISubprogram(name: "setlocale_null_r", scope: !781, file: !781, line: 154, type: !4115, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!100, !100, !244, !102}
!4117 = !{!4118, !4119, !4120}
!4118 = !DILocalVariable(name: "category", arg: 1, scope: !4114, file: !781, line: 154, type: !100)
!4119 = !DILocalVariable(name: "buf", arg: 2, scope: !4114, file: !781, line: 154, type: !244)
!4120 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4114, file: !781, line: 154, type: !102)
!4121 = !DILocation(line: 0, scope: !4114)
!4122 = !DILocation(line: 159, column: 10, scope: !4114)
!4123 = !DILocation(line: 159, column: 3, scope: !4114)
!4124 = distinct !DISubprogram(name: "setlocale_null", scope: !781, file: !781, line: 186, type: !4125, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!78, !100}
!4127 = !{!4128}
!4128 = !DILocalVariable(name: "category", arg: 1, scope: !4124, file: !781, line: 186, type: !100)
!4129 = !DILocation(line: 0, scope: !4124)
!4130 = !DILocation(line: 189, column: 10, scope: !4124)
!4131 = !DILocation(line: 189, column: 3, scope: !4124)
!4132 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !783, file: !783, line: 35, type: !4125, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4133)
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "category", arg: 1, scope: !4132, file: !783, line: 35, type: !100)
!4135 = !DILocalVariable(name: "result", scope: !4132, file: !783, line: 37, type: !78)
!4136 = !DILocation(line: 0, scope: !4132)
!4137 = !DILocation(line: 37, column: 24, scope: !4132)
!4138 = !DILocation(line: 62, column: 3, scope: !4132)
!4139 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !783, file: !783, line: 66, type: !4115, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4140)
!4140 = !{!4141, !4142, !4143, !4144, !4145}
!4141 = !DILocalVariable(name: "category", arg: 1, scope: !4139, file: !783, line: 66, type: !100)
!4142 = !DILocalVariable(name: "buf", arg: 2, scope: !4139, file: !783, line: 66, type: !244)
!4143 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4139, file: !783, line: 66, type: !102)
!4144 = !DILocalVariable(name: "result", scope: !4139, file: !783, line: 111, type: !78)
!4145 = !DILocalVariable(name: "length", scope: !4146, file: !783, line: 125, type: !102)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !783, line: 124, column: 5)
!4147 = distinct !DILexicalBlock(scope: !4139, file: !783, line: 113, column: 7)
!4148 = !DILocation(line: 0, scope: !4139)
!4149 = !DILocation(line: 0, scope: !4132, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 111, column: 24, scope: !4139)
!4151 = !DILocation(line: 37, column: 24, scope: !4132, inlinedAt: !4150)
!4152 = !DILocation(line: 113, column: 14, scope: !4147)
!4153 = !DILocation(line: 113, column: 7, scope: !4139)
!4154 = !DILocation(line: 116, column: 19, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !783, line: 116, column: 11)
!4156 = distinct !DILexicalBlock(scope: !4147, file: !783, line: 114, column: 5)
!4157 = !DILocation(line: 116, column: 11, scope: !4156)
!4158 = !DILocation(line: 120, column: 16, scope: !4155)
!4159 = !DILocation(line: 120, column: 9, scope: !4155)
!4160 = !DILocation(line: 125, column: 23, scope: !4146)
!4161 = !DILocation(line: 0, scope: !4146)
!4162 = !DILocation(line: 126, column: 18, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4146, file: !783, line: 126, column: 11)
!4164 = !DILocation(line: 126, column: 11, scope: !4146)
!4165 = !DILocation(line: 128, column: 39, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4163, file: !783, line: 127, column: 9)
!4167 = !DILocalVariable(name: "__dest", arg: 1, scope: !4168, file: !1591, line: 26, type: !3442)
!4168 = distinct !DISubprogram(name: "memcpy", scope: !1591, file: !1591, line: 26, type: !3440, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4169)
!4169 = !{!4167, !4170, !4171}
!4170 = !DILocalVariable(name: "__src", arg: 2, scope: !4168, file: !1591, line: 26, type: !1008)
!4171 = !DILocalVariable(name: "__len", arg: 3, scope: !4168, file: !1591, line: 26, type: !102)
!4172 = !DILocation(line: 0, scope: !4168, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 128, column: 11, scope: !4166)
!4174 = !DILocation(line: 29, column: 10, scope: !4168, inlinedAt: !4173)
!4175 = !DILocation(line: 129, column: 11, scope: !4166)
!4176 = !DILocation(line: 133, column: 23, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !783, line: 133, column: 15)
!4178 = distinct !DILexicalBlock(scope: !4163, file: !783, line: 132, column: 9)
!4179 = !DILocation(line: 133, column: 15, scope: !4178)
!4180 = !DILocation(line: 138, column: 44, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4177, file: !783, line: 134, column: 13)
!4182 = !DILocation(line: 0, scope: !4168, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 138, column: 15, scope: !4181)
!4184 = !DILocation(line: 29, column: 10, scope: !4168, inlinedAt: !4183)
!4185 = !DILocation(line: 139, column: 15, scope: !4181)
!4186 = !DILocation(line: 139, column: 32, scope: !4181)
!4187 = !DILocation(line: 140, column: 13, scope: !4181)
!4188 = !DILocation(line: 0, scope: !4147)
!4189 = !DILocation(line: 145, column: 1, scope: !4139)
