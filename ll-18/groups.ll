; ModuleID = 'src/groups.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"groups\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@longopts = internal constant [3 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !47
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !84
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !89
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1, !dbg !94
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1, !dbg !99
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1, !dbg !109
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1, !dbg !111
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1, !dbg !116
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !121
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !201
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !206
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !208
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !213
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !250
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !252
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !254
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !256
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !261
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !263
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !268
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !270
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !272
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !274
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !285
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !287
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !292
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !297
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !302
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !307
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !309
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !311
@.str.21 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1, !dbg !323
@.str.1.22 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1, !dbg !329
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1, !dbg !334
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !339
@.str.4.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1, !dbg !341
@.str.25 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !343
@Version = dso_local local_unnamed_addr global ptr @.str.25, align 8, !dbg !346
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !350
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !363
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !355
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !357
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !359
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !361
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !365
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !371
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !407
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !373
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !397
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !399
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !401
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !403
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !405
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !409
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !411
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !416
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !421
@.str.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !427
@.str.1.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !429
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !431
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !462
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !465
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !467
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !472
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !474
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !476
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !478
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !480
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !482
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !484
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.59, ptr @.str.1.60, ptr @.str.2.61, ptr @.str.3.62, ptr @.str.4.63, ptr @.str.5.64, ptr @.str.6.65, ptr @.str.7.66, ptr @.str.8.67, ptr @.str.9.68, ptr null], align 8, !dbg !486
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !511
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !525
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !563
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !570
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !527
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !572
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !515
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !532
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !534
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !536
@.str.13.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !538
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !540
@.str.77 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !578
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !581
@.str.2.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !583
@.str.3.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !585
@.str.4.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !587
@.str.5.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !589
@.str.6.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !594
@.str.7.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !596
@.str.8.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !598
@.str.9.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !603
@.str.10.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !608
@.str.11.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !613
@.str.12.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !618
@.str.13.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !620
@.str.14.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !625
@.str.15.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !630
@.str.16.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !635
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !640
@.str.18.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !642
@.str.19.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !644
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !646
@.str.21.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !648
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !650
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !652
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !657
@exit_failure = dso_local global i32 1, align 4, !dbg !665
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !671
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !674
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !676
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !678
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !681
@.str.135 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !696
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !699

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !823 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !827, metadata !DIExpression()), !dbg !828
  %2 = icmp eq i32 %0, 0, !dbg !829
  br i1 %2, label %8, label %3, !dbg !831

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !832, !tbaa !834
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !832
  %6 = load ptr, ptr @program_name, align 8, !dbg !832, !tbaa !834
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !832
  br label %31, !dbg !832

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !838
  %10 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !834
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !838
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !840
  %13 = load ptr, ptr @stdout, align 8, !dbg !840, !tbaa !834
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !840
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !841
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !841
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !842
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !842
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !843, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata !862, metadata !856, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr poison, metadata !855, metadata !DIExpression()), !dbg !860
  tail call void @emit_bug_reporting_address() #37, !dbg !863
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !864
  call void @llvm.dbg.value(metadata ptr %17, metadata !858, metadata !DIExpression()), !dbg !860
  %18 = icmp eq ptr %17, null, !dbg !865
  br i1 %18, label %26, label %19, !dbg !867

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #38, !dbg !868
  %21 = icmp eq i32 %20, 0, !dbg !868
  br i1 %21, label %26, label %22, !dbg !869

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !870
  %24 = load ptr, ptr @stdout, align 8, !dbg !870, !tbaa !834
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !870
  br label %26, !dbg !872

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !860
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !873
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #37, !dbg !873
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !874
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #37, !dbg !874
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !875
  unreachable, !dbg !875
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !876 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !880 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !886 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !889 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !123 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !127, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !892
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !893, !tbaa !894
  %3 = icmp eq i32 %2, -1, !dbg !896
  br i1 %3, label %4, label %16, !dbg !897

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #37, !dbg !898
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !129, metadata !DIExpression()), !dbg !899
  %6 = icmp eq ptr %5, null, !dbg !900
  br i1 %6, label %14, label %7, !dbg !901

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !902, !tbaa !903
  %9 = icmp eq i8 %8, 0, !dbg !902
  br i1 %9, label %14, label %10, !dbg !904

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !911, metadata !DIExpression()), !dbg !912
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #38, !dbg !914
  %12 = icmp eq i32 %11, 0, !dbg !915
  %13 = zext i1 %12 to i32, !dbg !904
  br label %14, !dbg !904

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !916, !tbaa !894
  br label %16, !dbg !917

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !918
  %18 = icmp eq i32 %17, 0, !dbg !918
  br i1 %18, label %22, label %19, !dbg !920

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !834
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !921
  br label %121, !dbg !923

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !132, metadata !DIExpression()), !dbg !892
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #38, !dbg !924
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !925
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !892
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !892
  %26 = icmp eq ptr %25, null, !dbg !927
  br i1 %26, label %53, label %27, !dbg !928

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !929
  br i1 %28, label %53, label %29, !dbg !930

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !931
  %30 = icmp ult ptr %24, %25, !dbg !932
  br i1 %30, label %31, label %53, !dbg !933

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !892
  %33 = load ptr, ptr %32, align 8, !tbaa !834
  br label %34, !dbg !933

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !931
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !934
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !931
  %38 = load i8, ptr %35, align 1, !dbg !934, !tbaa !903
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !934
  %41 = load i16, ptr %40, align 2, !dbg !934, !tbaa !935
  %42 = freeze i16 %41, !dbg !937
  %43 = lshr i16 %42, 13, !dbg !937
  %44 = and i16 %43, 1, !dbg !937
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !938
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !931
  %47 = icmp ult ptr %37, %25, !dbg !932
  %48 = icmp ult i64 %46, 2, !dbg !939
  %49 = select i1 %47, i1 %48, i1 false, !dbg !939
  br i1 %49, label %34, label %50, !dbg !933, !llvm.loop !940

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !938
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !942
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !944
  br label %53, !dbg !944

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !892
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !135, metadata !DIExpression()), !dbg !892
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.20) #38, !dbg !945
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !141, metadata !DIExpression()), !dbg !892
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !946
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !142, metadata !DIExpression()), !dbg !892
  br label %58, !dbg !947

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !892
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !142, metadata !DIExpression()), !dbg !892
  %61 = load i8, ptr %59, align 1, !dbg !948, !tbaa !903
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !949

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !950
  %64 = load i8, ptr %63, align 1, !dbg !953, !tbaa !903
  %65 = icmp ne i8 %64, 45, !dbg !954
  %66 = select i1 %65, i1 %60, i1 false, !dbg !955
  br label %67, !dbg !955

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !956
  %70 = load ptr, ptr %69, align 8, !dbg !956, !tbaa !834
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !956
  %73 = load i16, ptr %72, align 2, !dbg !956, !tbaa !935
  %74 = and i16 %73, 8192, !dbg !956
  %75 = icmp eq i16 %74, 0, !dbg !956
  br i1 %75, label %89, label %76, !dbg !958

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !959
  br i1 %77, label %91, label %78, !dbg !962

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !963
  %80 = load i8, ptr %79, align 1, !dbg !963, !tbaa !903
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !963
  %83 = load i16, ptr %82, align 2, !dbg !963, !tbaa !935
  %84 = and i16 %83, 8192, !dbg !963
  %85 = icmp eq i16 %84, 0, !dbg !963
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !964
  br i1 %88, label %89, label %91, !dbg !964

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !965
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !142, metadata !DIExpression()), !dbg !892
  br label %58, !dbg !947, !llvm.loop !966

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !892
  %92 = ptrtoint ptr %24 to i64, !dbg !968
  %93 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !834
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata !862, metadata !911, metadata !DIExpression()), !dbg !987
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !892
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !989
  %96 = icmp eq i32 %95, 0, !dbg !989
  br i1 %96, label %100, label %97, !dbg !991

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #38, !dbg !992
  %99 = icmp eq i32 %98, 0, !dbg !992
  br i1 %99, label %100, label %103, !dbg !993

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !994
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !994
  br label %106, !dbg !996

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !997
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !997
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !834
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %107), !dbg !999
  %109 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !834
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %109), !dbg !1000
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1001
  %112 = sub i64 %111, %92, !dbg !1001
  %113 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !834
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1001
  %115 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !834
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %115), !dbg !1002
  %117 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !834
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %117), !dbg !1003
  %119 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !834
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1004
  br label %121, !dbg !1005

121:                                              ; preds = %106, %19
  ret void, !dbg !1005
}

; Function Attrs: nounwind
declare !dbg !1006 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1010 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1014 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1016 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1019 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1022 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1025 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1028 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1034 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1035 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1041 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1046, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1047, metadata !DIExpression()), !dbg !1078
  %3 = load ptr, ptr %1, align 8, !dbg !1079, !tbaa !834
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1080
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !1081
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !1082
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !1083
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1084
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1048, metadata !DIExpression()), !dbg !1078
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -2, label %9
    i32 -3, label %10
  ], !dbg !1086

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #41, !dbg !1087
  unreachable, !dbg !1087

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !834
  %12 = load ptr, ptr @Version, align 8, !dbg !1090, !tbaa !834
  %13 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !1090
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #37, !dbg !1090
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef null) #37, !dbg !1090
  tail call void @exit(i32 noundef 0) #39, !dbg !1090
  unreachable, !dbg !1090

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #41, !dbg !1091
  unreachable, !dbg !1091

16:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1049, metadata !DIExpression()), !dbg !1078
  %17 = load i32, ptr @optind, align 4, !dbg !1092, !tbaa !894
  %18 = icmp eq i32 %17, %0, !dbg !1093
  br i1 %18, label %21, label %19, !dbg !1094

19:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  %20 = icmp slt i32 %17, %0, !dbg !1095
  br i1 %20, label %.preheader, label %117, !dbg !1096

.preheader:                                       ; preds = %19
  br label %58, !dbg !1096

21:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1050, metadata !DIExpression()), !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1055, metadata !DIExpression()), !dbg !1097
  %22 = tail call ptr @__errno_location() #40, !dbg !1098
  store i32 0, ptr %22, align 4, !dbg !1099, !tbaa !894
  %23 = tail call i32 @getuid() #37, !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !1056, metadata !DIExpression()), !dbg !1097
  %24 = icmp eq i32 %23, -1, !dbg !1101
  br i1 %24, label %25, label %30, !dbg !1103

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 4, !dbg !1104, !tbaa !894
  %27 = icmp eq i32 %26, 0, !dbg !1104
  br i1 %27, label %30, label %28, !dbg !1105

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !1106
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %26, ptr noundef %29) #37, !dbg !1106
  unreachable, !dbg !1106

30:                                               ; preds = %25, %21
  store i32 0, ptr %22, align 4, !dbg !1107, !tbaa !894
  %31 = tail call i32 @getegid() #37, !dbg !1108
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1057, metadata !DIExpression()), !dbg !1097
  %32 = icmp eq i32 %31, -1, !dbg !1109
  br i1 %32, label %33, label %38, !dbg !1111

33:                                               ; preds = %30
  %34 = load i32, ptr %22, align 4, !dbg !1112, !tbaa !894
  %35 = icmp eq i32 %34, 0, !dbg !1112
  br i1 %35, label %38, label %36, !dbg !1113

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1114
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %34, ptr noundef %37) #37, !dbg !1114
  unreachable, !dbg !1114

38:                                               ; preds = %33, %30
  store i32 0, ptr %22, align 4, !dbg !1115, !tbaa !894
  %39 = tail call i32 @getgid() #37, !dbg !1116
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1058, metadata !DIExpression()), !dbg !1097
  %40 = icmp eq i32 %39, -1, !dbg !1117
  br i1 %40, label %41, label %46, !dbg !1119

41:                                               ; preds = %38
  %42 = load i32, ptr %22, align 4, !dbg !1120, !tbaa !894
  %43 = icmp eq i32 %42, 0, !dbg !1120
  br i1 %43, label %46, label %44, !dbg !1121

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1122
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %45) #37, !dbg !1122
  unreachable, !dbg !1122

46:                                               ; preds = %41, %38
  %47 = tail call i1 @print_group_list(ptr noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef true, i8 noundef 32) #37, !dbg !1123
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1131
  %48 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !834
  %49 = getelementptr inbounds %struct._IO_FILE, ptr %48, i64 0, i32 5, !dbg !1133
  %50 = load ptr, ptr %49, align 8, !dbg !1133, !tbaa !1134
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %48, i64 0, i32 6, !dbg !1133
  %52 = load ptr, ptr %51, align 8, !dbg !1133, !tbaa !1137
  %53 = icmp ult ptr %50, %52, !dbg !1133
  br i1 %53, label %56, label %54, !dbg !1133, !prof !1138

54:                                               ; preds = %46
  %55 = tail call i32 @__overflow(ptr noundef nonnull %48, i32 noundef 10) #37, !dbg !1133
  br label %117, !dbg !1133

56:                                               ; preds = %46
  %57 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1133
  store ptr %57, ptr %49, align 8, !dbg !1133, !tbaa !1134
  store i8 10, ptr %50, align 1, !dbg !1133, !tbaa !903
  br label %117, !dbg !1133

58:                                               ; preds = %.preheader, %112
  %59 = phi i32 [ %115, %112 ], [ %17, %.preheader ]
  %60 = phi i1 [ %113, %112 ], [ true, %.preheader ]
  %61 = sext i32 %59 to i64, !dbg !1139
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61, !dbg !1139
  %63 = load ptr, ptr %62, align 8, !dbg !1139, !tbaa !834
  %64 = tail call ptr @getpwnam(ptr noundef %63), !dbg !1140
  tail call void @llvm.dbg.value(metadata ptr %64, metadata !1059, metadata !DIExpression()), !dbg !1141
  %65 = icmp eq ptr %64, null, !dbg !1142
  br i1 %65, label %66, label %73, !dbg !1144

66:                                               ; preds = %58
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1145
  %68 = load i32, ptr @optind, align 4, !dbg !1145, !tbaa !894
  %69 = sext i32 %68 to i64, !dbg !1145
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1145
  %71 = load ptr, ptr %70, align 8, !dbg !1145, !tbaa !834
  %72 = tail call ptr @quote(ptr noundef %71) #37, !dbg !1145
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %72) #37, !dbg !1145
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1078
  br label %112, !dbg !1147

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, ptr %64, i64 0, i32 2, !dbg !1148
  %75 = load i32, ptr %74, align 8, !dbg !1148, !tbaa !1149
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !1075, metadata !DIExpression()), !dbg !1141
  %76 = getelementptr inbounds %struct.passwd, ptr %64, i64 0, i32 3, !dbg !1151
  %77 = load i32, ptr %76, align 4, !dbg !1151, !tbaa !1152
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !1076, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !1077, metadata !DIExpression()), !dbg !1141
  %78 = load i32, ptr @optind, align 4, !dbg !1153, !tbaa !894
  %79 = sext i32 %78 to i64, !dbg !1153
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !1153
  %81 = load ptr, ptr %80, align 8, !dbg !1153, !tbaa !834
  %82 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef %81) #37, !dbg !1153
  %83 = load i32, ptr @optind, align 4, !dbg !1154, !tbaa !894
  %84 = sext i32 %83 to i64, !dbg !1156
  %85 = getelementptr inbounds ptr, ptr %1, i64 %84, !dbg !1156
  %86 = load ptr, ptr %85, align 8, !dbg !1156, !tbaa !834
  %87 = tail call i1 @print_group_list(ptr noundef %86, i32 noundef %75, i32 noundef %77, i32 noundef %77, i1 noundef true, i8 noundef 32) #37, !dbg !1157
  %88 = select i1 %87, i1 %60, i1 false, !dbg !1158
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1159
  %89 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !834
  %90 = getelementptr inbounds %struct._IO_FILE, ptr %89, i64 0, i32 5, !dbg !1161
  %91 = load ptr, ptr %90, align 8, !dbg !1161, !tbaa !1134
  %92 = getelementptr inbounds %struct._IO_FILE, ptr %89, i64 0, i32 6, !dbg !1161
  %93 = load ptr, ptr %92, align 8, !dbg !1161, !tbaa !1137
  %94 = icmp ult ptr %91, %93, !dbg !1161
  br i1 %94, label %97, label %95, !dbg !1161, !prof !1138

95:                                               ; preds = %73
  %96 = tail call i32 @__overflow(ptr noundef nonnull %89, i32 noundef 10) #37, !dbg !1161
  br label %99, !dbg !1161

97:                                               ; preds = %73
  %98 = getelementptr inbounds i8, ptr %91, i64 1, !dbg !1161
  store ptr %98, ptr %90, align 8, !dbg !1161, !tbaa !1134
  store i8 10, ptr %91, align 1, !dbg !1161, !tbaa !903
  br label %99, !dbg !1161

99:                                               ; preds = %95, %97
  %100 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !834
  tail call void @llvm.dbg.value(metadata ptr %100, metadata !1164, metadata !DIExpression()), !dbg !1169
  %101 = load i32, ptr %100, align 8, !dbg !1171, !tbaa !1172
  %102 = and i32 %101, 32, !dbg !1162
  %103 = icmp eq i32 %102, 0, !dbg !1162
  br i1 %103, label %112, label %104, !dbg !1173

104:                                              ; preds = %99
  %.lcssa = phi ptr [ %100, %99 ], !dbg !1162
  %105 = tail call ptr @__errno_location() #40, !dbg !1174
  %106 = load i32, ptr %105, align 4, !dbg !1174, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %106, metadata !1177, metadata !DIExpression()), !dbg !1179
  %107 = tail call i32 @fflush_unlocked(ptr noundef nonnull %.lcssa) #37, !dbg !1180
  %108 = load ptr, ptr @stdout, align 8, !dbg !1181, !tbaa !834
  %109 = tail call i32 @fpurge(ptr noundef %108) #37, !dbg !1182
  %110 = load ptr, ptr @stdout, align 8, !dbg !1183, !tbaa !834
  tail call void @clearerr_unlocked(ptr noundef %110) #37, !dbg !1183
  %111 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !1184
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %106, ptr noundef %111) #37, !dbg !1184
  unreachable, !dbg !1184

112:                                              ; preds = %99, %66
  %113 = phi i1 [ false, %66 ], [ %88, %99 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  %114 = load i32, ptr @optind, align 4, !dbg !1185, !tbaa !894
  %115 = add nsw i32 %114, 1, !dbg !1185
  store i32 %115, ptr @optind, align 4, !dbg !1185, !tbaa !894
  %116 = icmp slt i32 %115, %0, !dbg !1095
  br i1 %116, label %58, label %.loopexit, !dbg !1096, !llvm.loop !1186

.loopexit:                                        ; preds = %112
  %.lcssa1 = phi i1 [ %113, %112 ]
  br label %117, !dbg !1188

117:                                              ; preds = %.loopexit, %19, %56, %54
  %118 = phi i1 [ %47, %54 ], [ %47, %56 ], [ true, %19 ], [ %.lcssa1, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  %119 = xor i1 %118, true, !dbg !1188
  %120 = zext i1 %119 to i32, !dbg !1188
  ret i32 %120, !dbg !1189
}

; Function Attrs: nounwind
declare !dbg !1190 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1193 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1194 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1197 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1203 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1207 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1211 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1214 i32 @getgid() local_unnamed_addr #2

declare !dbg !1215 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1218 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1221 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1222 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #10 !dbg !1225 {
  %7 = alloca ptr, align 8, !DIAssignID !1252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1247, metadata !DIExpression(), metadata !1252, metadata ptr %7, metadata !DIExpression()), !dbg !1253
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1229, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1230, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1231, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1232, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1233, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1234, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1235, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1236, metadata !DIExpression()), !dbg !1254
  %8 = icmp eq ptr %0, null, !dbg !1255
  br i1 %8, label %12, label %9, !dbg !1257

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #37, !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1236, metadata !DIExpression()), !dbg !1254
  %11 = icmp ne ptr %10, null, !dbg !1260
  br label %12, !dbg !1262

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1254
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1236, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %2, metadata !1263, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1286
  br i1 %4, label %17, label %15, !dbg !1289

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !1290
  br label %26, !dbg !1289

17:                                               ; preds = %12
  %18 = tail call ptr @getgrgid(i32 noundef %2) #37, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %18, metadata !1269, metadata !DIExpression()), !dbg !1286
  %19 = icmp eq ptr %18, null, !dbg !1293
  br i1 %19, label %20, label %23, !dbg !1294

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %21, metadata !1279, metadata !DIExpression()), !dbg !1296
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #37, !dbg !1297
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %22, i64 noundef %21) #37, !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1286
  br label %26, !dbg !1298

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %18, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1286
  %24 = load ptr, ptr %18, align 8, !dbg !1299, !tbaa !1300
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %24) #37, !dbg !1299
  br label %31, !dbg !1299

26:                                               ; preds = %20, %15
  %27 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !1290
  %28 = xor i1 %4, true, !dbg !1290
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1286
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %27) #37, !dbg !1290
  %30 = select i1 %28, i1 %13, i1 false, !dbg !1302
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i1 [ %30, %26 ], [ %13, %23 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  %33 = icmp eq i32 %3, %2, !dbg !1303
  br i1 %33, label %63, label %34, !dbg !1305

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8 %5, metadata !1306, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1309
  %35 = load ptr, ptr @stdout, align 8, !dbg !1312, !tbaa !834
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 5, !dbg !1312
  %37 = load ptr, ptr %36, align 8, !dbg !1312, !tbaa !1134
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 6, !dbg !1312
  %39 = load ptr, ptr %38, align 8, !dbg !1312, !tbaa !1137
  %40 = icmp ult ptr %37, %39, !dbg !1312
  br i1 %40, label %44, label %41, !dbg !1312, !prof !1138

41:                                               ; preds = %34
  %42 = zext i8 %5 to i32, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %42, metadata !1306, metadata !DIExpression()), !dbg !1309
  %43 = tail call i32 @__overflow(ptr noundef nonnull %35, i32 noundef %42) #37, !dbg !1312
  br label %46, !dbg !1312

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1312
  store ptr %45, ptr %36, align 8, !dbg !1312, !tbaa !1134
  store i8 %5, ptr %37, align 1, !dbg !1312, !tbaa !903
  br label %46, !dbg !1312

46:                                               ; preds = %41, %44
  call void @llvm.dbg.value(metadata i32 %3, metadata !1263, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1314
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1314
  br i1 %4, label %49, label %47, !dbg !1317

47:                                               ; preds = %46
  %48 = zext i32 %3 to i64, !dbg !1318
  br label %58, !dbg !1317

49:                                               ; preds = %46
  %50 = tail call ptr @getgrgid(i32 noundef %3) #37, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %50, metadata !1269, metadata !DIExpression()), !dbg !1314
  %51 = icmp eq ptr %50, null, !dbg !1320
  br i1 %51, label %52, label %55, !dbg !1321

52:                                               ; preds = %49
  %53 = zext i32 %3 to i64, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %53, metadata !1279, metadata !DIExpression()), !dbg !1323
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #37, !dbg !1324
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %54, i64 noundef %53) #37, !dbg !1324
  call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1314
  br label %58, !dbg !1325

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !1269, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1314
  %56 = load ptr, ptr %50, align 8, !dbg !1326, !tbaa !1300
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %56) #37, !dbg !1326
  br label %63, !dbg !1326

58:                                               ; preds = %52, %47
  %59 = phi i64 [ %48, %47 ], [ %53, %52 ], !dbg !1318
  %60 = xor i1 %4, true, !dbg !1318
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1314
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %59) #37, !dbg !1318
  %62 = select i1 %60, i1 %32, i1 false, !dbg !1327
  br label %63

63:                                               ; preds = %58, %55, %31
  %64 = phi i1 [ %32, %31 ], [ %62, %58 ], [ %32, %55 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37, !dbg !1328
  %65 = icmp eq ptr %14, null, !dbg !1329
  br i1 %65, label %69, label %66, !dbg !1329

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.passwd, ptr %14, i64 0, i32 3, !dbg !1330
  %68 = load i32, ptr %67, align 4, !dbg !1330, !tbaa !1152
  br label %69, !dbg !1329

69:                                               ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %3, %63 ], !dbg !1329
  %71 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %7) #37, !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1249, metadata !DIExpression()), !dbg !1253
  %72 = icmp sgt i32 %71, -1, !dbg !1332
  br i1 %72, label %73, label %79, !dbg !1334

73:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1250, metadata !DIExpression()), !dbg !1335
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  %74 = icmp eq i32 %71, 0, !dbg !1336
  br i1 %74, label %87, label %75, !dbg !1338

75:                                               ; preds = %73
  %76 = zext i8 %5 to i32
  %77 = xor i1 %4, true
  %78 = zext nneg i32 %71 to i64, !dbg !1336
  br label %90, !dbg !1338

79:                                               ; preds = %69
  %80 = tail call ptr @__errno_location() #40, !dbg !1339
  %81 = load i32, ptr %80, align 4, !dbg !1339, !tbaa !894
  br i1 %8, label %85, label %82, !dbg !1342

82:                                               ; preds = %79
  %83 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !1343
  %84 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !1343
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %83, ptr noundef %84) #37, !dbg !1343
  br label %135, !dbg !1345

85:                                               ; preds = %79
  %86 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1346
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %86) #37, !dbg !1346
  br label %135

.loopexit:                                        ; preds = %131
  %.lcssa = phi i1 [ %132, %131 ]
  br label %87, !dbg !1348

87:                                               ; preds = %.loopexit, %73
  %88 = phi i1 [ %64, %73 ], [ %.lcssa, %.loopexit ]
  %89 = load ptr, ptr %7, align 8, !dbg !1348, !tbaa !834
  call void @free(ptr noundef %89) #37, !dbg !1349
  br label %135, !dbg !1350

90:                                               ; preds = %75, %131
  %91 = phi i64 [ 0, %75 ], [ %133, %131 ]
  %92 = phi i1 [ %64, %75 ], [ %132, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1250, metadata !DIExpression()), !dbg !1335
  %93 = load ptr, ptr %7, align 8, !dbg !1351, !tbaa !834
  %94 = getelementptr inbounds i32, ptr %93, i64 %91, !dbg !1351
  %95 = load i32, ptr %94, align 4, !dbg !1351, !tbaa !894
  %96 = icmp eq i32 %95, %2, !dbg !1353
  %97 = icmp eq i32 %95, %3
  %98 = or i1 %96, %97, !dbg !1354
  br i1 %98, label %131, label %99, !dbg !1354

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1306, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1355
  %100 = load ptr, ptr @stdout, align 8, !dbg !1358, !tbaa !834
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1358
  %102 = load ptr, ptr %101, align 8, !dbg !1358, !tbaa !1134
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1358
  %104 = load ptr, ptr %103, align 8, !dbg !1358, !tbaa !1137
  %105 = icmp ult ptr %102, %104, !dbg !1358
  br i1 %105, label %108, label %106, !dbg !1358, !prof !1138

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %76, metadata !1306, metadata !DIExpression()), !dbg !1355
  %107 = call i32 @__overflow(ptr noundef nonnull %100, i32 noundef %76) #37, !dbg !1358
  br label %110, !dbg !1358

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1358
  store ptr %109, ptr %101, align 8, !dbg !1358, !tbaa !1134
  store i8 %5, ptr %102, align 1, !dbg !1358, !tbaa !903
  br label %110, !dbg !1358

110:                                              ; preds = %106, %108
  %111 = load ptr, ptr %7, align 8, !dbg !1359, !tbaa !834
  %112 = getelementptr inbounds i32, ptr %111, i64 %91, !dbg !1359
  %113 = load i32, ptr %112, align 4, !dbg !1359, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %113, metadata !1263, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1361
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1361
  br i1 %4, label %116, label %114, !dbg !1363

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1364
  br label %125, !dbg !1363

116:                                              ; preds = %110
  %117 = call ptr @getgrgid(i32 noundef %113) #37, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %117, metadata !1269, metadata !DIExpression()), !dbg !1361
  %118 = icmp eq ptr %117, null, !dbg !1366
  br i1 %118, label %119, label %122, !dbg !1367

119:                                              ; preds = %116
  %120 = zext i32 %113 to i64, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %120, metadata !1279, metadata !DIExpression()), !dbg !1369
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #37, !dbg !1370
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %121, i64 noundef %120) #37, !dbg !1370
  call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1361
  br label %125, !dbg !1371

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %117, metadata !1269, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1361
  %123 = load ptr, ptr %117, align 8, !dbg !1372, !tbaa !1300
  %124 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %123) #37, !dbg !1372
  br label %128, !dbg !1372

125:                                              ; preds = %119, %114
  %126 = phi i64 [ %115, %114 ], [ %120, %119 ], !dbg !1364
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1361
  %127 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %126) #37, !dbg !1364
  br label %128

128:                                              ; preds = %122, %125
  %129 = phi i1 [ %77, %125 ], [ true, %122 ]
  %130 = select i1 %129, i1 %92, i1 false, !dbg !1373
  br label %131, !dbg !1373

131:                                              ; preds = %128, %90
  %132 = phi i1 [ %92, %90 ], [ %130, %128 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  %133 = add nuw nsw i64 %91, 1, !dbg !1374
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !1250, metadata !DIExpression()), !dbg !1335
  %134 = icmp eq i64 %133, %78, !dbg !1336
  br i1 %134, label %.loopexit, label %90, !dbg !1338, !llvm.loop !1375

135:                                              ; preds = %82, %85, %87
  %136 = phi i1 [ %88, %87 ], [ false, %85 ], [ false, %82 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37, !dbg !1350
  ret i1 %136, !dbg !1377
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

declare !dbg !1378 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1381 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1384 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #10 !dbg !1264 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1387
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1387
  br i1 %1, label %5, label %3, !dbg !1388

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1389
  br label %14, !dbg !1388

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #37, !dbg !1390
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1269, metadata !DIExpression()), !dbg !1387
  %7 = icmp eq ptr %6, null, !dbg !1391
  br i1 %7, label %8, label %11, !dbg !1392

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1393
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1279, metadata !DIExpression()), !dbg !1394
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #37, !dbg !1395
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #37, !dbg !1395
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1387
  br label %14, !dbg !1396

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1269, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1387
  %12 = load ptr, ptr %6, align 8, !dbg !1397, !tbaa !1300
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #37, !dbg !1397
  br label %18, !dbg !1397

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1389
  %16 = xor i1 %1, true, !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1387
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %15) #37, !dbg !1389
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1398
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1399 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1401, metadata !DIExpression()), !dbg !1402
  store ptr %0, ptr @file_name, align 8, !dbg !1403, !tbaa !834
  ret void, !dbg !1404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1405 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1411, !tbaa !1412
  ret void, !dbg !1414
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1415 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1420, !tbaa !834
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1421
  %3 = icmp eq i32 %2, 0, !dbg !1422
  br i1 %3, label %22, label %4, !dbg !1423

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1424, !tbaa !1412, !range !1425, !noundef !862
  %6 = icmp eq i8 %5, 0, !dbg !1424
  br i1 %6, label %11, label %7, !dbg !1426

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1427
  %9 = load i32, ptr %8, align 4, !dbg !1427, !tbaa !894
  %10 = icmp eq i32 %9, 32, !dbg !1428
  br i1 %10, label %22, label %11, !dbg !1429

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #37, !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1417, metadata !DIExpression()), !dbg !1431
  %13 = load ptr, ptr @file_name, align 8, !dbg !1432, !tbaa !834
  %14 = icmp eq ptr %13, null, !dbg !1432
  %15 = tail call ptr @__errno_location() #40, !dbg !1434
  %16 = load i32, ptr %15, align 4, !dbg !1434, !tbaa !894
  br i1 %14, label %19, label %17, !dbg !1435

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1436
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #37, !dbg !1436
  br label %20, !dbg !1436

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #37, !dbg !1437
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1438, !tbaa !894
  tail call void @_exit(i32 noundef %21) #39, !dbg !1439
  unreachable, !dbg !1439

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1440, !tbaa !834
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1442
  %25 = icmp eq i32 %24, 0, !dbg !1443
  br i1 %25, label %28, label %26, !dbg !1444

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1445, !tbaa !894
  tail call void @_exit(i32 noundef %27) #39, !dbg !1446
  unreachable, !dbg !1446

28:                                               ; preds = %22
  ret void, !dbg !1447
}

; Function Attrs: noreturn
declare !dbg !1448 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1449 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1453, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1455, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1456, metadata !DIExpression(DW_OP_deref)), !dbg !1457
  tail call fastcc void @flush_stdout(), !dbg !1458
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1459, !tbaa !834
  %7 = icmp eq ptr %6, null, !dbg !1459
  br i1 %7, label %9, label %8, !dbg !1461

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1462
  br label %13, !dbg !1462

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1463, !tbaa !834
  %11 = tail call ptr @getprogname() #38, !dbg !1463
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %11) #37, !dbg !1463
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1465, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1465
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1465
  ret void, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1468 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 1, metadata !1472, metadata !DIExpression()), !dbg !1475
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1478
  %2 = icmp slt i32 %1, 0, !dbg !1479
  br i1 %2, label %6, label %3, !dbg !1480

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1481, !tbaa !834
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1481
  br label %6, !dbg !1481

6:                                                ; preds = %3, %0
  ret void, !dbg !1482
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1483 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1489
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1485, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1486, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1487, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1488, metadata !DIExpression(DW_OP_deref)), !dbg !1490
  %7 = load ptr, ptr @stderr, align 8, !dbg !1491, !tbaa !834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1492, !noalias !1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %7, metadata !1532, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr poison, metadata !1534, metadata !DIExpression(DW_OP_deref)), !dbg !1541
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1492
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1492, !noalias !1536
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1542, !tbaa !894
  %10 = add i32 %9, 1, !dbg !1542
  store i32 %10, ptr @error_message_count, align 4, !dbg !1542, !tbaa !894
  %11 = icmp eq i32 %1, 0, !dbg !1543
  br i1 %11, label %21, label %12, !dbg !1545

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1546, metadata !DIExpression(), metadata !1489, metadata ptr %5, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1556
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %13, metadata !1550, metadata !DIExpression()), !dbg !1554
  %14 = icmp eq ptr %13, null, !dbg !1558
  br i1 %14, label %15, label %17, !dbg !1560

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #37, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %16, metadata !1550, metadata !DIExpression()), !dbg !1554
  br label %17, !dbg !1562

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1554
  call void @llvm.dbg.value(metadata ptr %18, metadata !1550, metadata !DIExpression()), !dbg !1554
  %19 = load ptr, ptr @stderr, align 8, !dbg !1563, !tbaa !834
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %18) #37, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1564
  br label %21, !dbg !1565

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1566, !tbaa !834
  call void @llvm.dbg.value(metadata i32 10, metadata !1567, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata ptr %22, metadata !1572, metadata !DIExpression()), !dbg !1573
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1575
  %24 = load ptr, ptr %23, align 8, !dbg !1575, !tbaa !1134
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1575
  %26 = load ptr, ptr %25, align 8, !dbg !1575, !tbaa !1137
  %27 = icmp ult ptr %24, %26, !dbg !1575
  br i1 %27, label %30, label %28, !dbg !1575, !prof !1138

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1575
  br label %32, !dbg !1575

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1575
  store ptr %31, ptr %23, align 8, !dbg !1575, !tbaa !1134
  store i8 10, ptr %24, align 1, !dbg !1575, !tbaa !903
  br label %32, !dbg !1575

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1576, !tbaa !834
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1576
  %35 = icmp eq i32 %0, 0, !dbg !1577
  br i1 %35, label %37, label %36, !dbg !1579

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1580
  unreachable, !dbg !1580

37:                                               ; preds = %32
  ret void, !dbg !1581
}

declare !dbg !1582 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1585 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1588 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1592 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1600
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1599, metadata !DIExpression(), metadata !1600, metadata ptr %4, metadata !DIExpression()), !dbg !1601
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1596, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1597, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1602
  call void @llvm.va_start(ptr nonnull %4), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1604, !tbaa.struct !1466
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1604
  call void @llvm.va_end(ptr nonnull %4), !dbg !1605
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1606
  ret void, !dbg !1606
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !375 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !391, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !392, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !393, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !394, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !395, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !396, metadata !DIExpression(DW_OP_deref)), !dbg !1607
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1608, !tbaa !894
  %9 = icmp eq i32 %8, 0, !dbg !1608
  br i1 %9, label %24, label %10, !dbg !1610

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1611, !tbaa !894
  %12 = icmp eq i32 %11, %3, !dbg !1614
  br i1 %12, label %13, label %23, !dbg !1615

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1616, !tbaa !834
  %15 = icmp eq ptr %14, %2, !dbg !1617
  br i1 %15, label %37, label %16, !dbg !1618

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1619
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1620
  br i1 %19, label %20, label %23, !dbg !1620

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1621
  %22 = icmp eq i32 %21, 0, !dbg !1622
  br i1 %22, label %37, label %23, !dbg !1623

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1624, !tbaa !834
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1625, !tbaa !894
  br label %24, !dbg !1626

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1627
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1628, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !1628
  br i1 %26, label %28, label %27, !dbg !1630

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1631
  br label %32, !dbg !1631

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1632, !tbaa !834
  %30 = tail call ptr @getprogname() #38, !dbg !1632
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %30) #37, !dbg !1632
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1634, !tbaa !834
  %34 = icmp eq ptr %2, null, !dbg !1634
  %35 = select i1 %34, ptr @.str.3.39, ptr @.str.2.40, !dbg !1634
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1634
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1635, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1635
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1635
  br label %37, !dbg !1636

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1637 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1646, metadata !DIExpression(), metadata !1647, metadata ptr %6, metadata !DIExpression()), !dbg !1648
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1641, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1643, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1644, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1645, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1649
  call void @llvm.va_start(ptr nonnull %6), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1651, !tbaa.struct !1466
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1651
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1651
  call void @llvm.va_end(ptr nonnull %6), !dbg !1652
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1653
  ret void, !dbg !1653
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1692, metadata !DIExpression()), !dbg !1693
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !1694
  ret i32 0, !dbg !1695
}

; Function Attrs: nounwind
declare !dbg !1696 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1700 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1703, !tbaa !834
  ret ptr %1, !dbg !1704
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1705 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1707, metadata !DIExpression()), !dbg !1710
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1711
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1710
  %3 = icmp eq ptr %2, null, !dbg !1712
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1712
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1712
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1709, metadata !DIExpression()), !dbg !1710
  %6 = ptrtoint ptr %5 to i64, !dbg !1713
  %7 = ptrtoint ptr %0 to i64, !dbg !1713
  %8 = sub i64 %6, %7, !dbg !1713
  %9 = icmp sgt i64 %8, 6, !dbg !1715
  br i1 %9, label %10, label %19, !dbg !1716

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %11, metadata !1718, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1723, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 7, metadata !1724, metadata !DIExpression()), !dbg !1725
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.55, i64 7), !dbg !1727
  %13 = icmp eq i32 %12, 0, !dbg !1728
  br i1 %13, label %14, label %19, !dbg !1729

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1707, metadata !DIExpression()), !dbg !1710
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.56, i64 noundef 3) #38, !dbg !1730
  %16 = icmp eq i32 %15, 0, !dbg !1733
  %17 = select i1 %16, i64 3, i64 0, !dbg !1734
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1734
  br label %19, !dbg !1734

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1709, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1707, metadata !DIExpression()), !dbg !1710
  store ptr %20, ptr @program_name, align 8, !dbg !1735, !tbaa !834
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1736, !tbaa !834
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1737, !tbaa !834
  ret void, !dbg !1738
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1739 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !433 {
  %3 = alloca i32, align 4, !DIAssignID !1740
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !1740, metadata ptr %3, metadata !DIExpression()), !dbg !1741
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !448, metadata !DIExpression(), metadata !1742, metadata ptr %4, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !441, metadata !DIExpression()), !dbg !1741
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1743
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !442, metadata !DIExpression()), !dbg !1741
  %6 = icmp eq ptr %5, %0, !dbg !1744
  br i1 %6, label %7, label %14, !dbg !1746

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1747
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %4, metadata !1749, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata ptr %4, metadata !1758, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 8, metadata !1765, metadata !DIExpression()), !dbg !1766
  store i64 0, ptr %4, align 8, !dbg !1768
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1769
  %9 = icmp eq i64 %8, 2, !dbg !1771
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1772
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1773
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1741
  ret ptr %15, !dbg !1773
}

; Function Attrs: nounwind
declare !dbg !1774 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1780 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1788
  %2 = tail call ptr @__errno_location() #40, !dbg !1789
  %3 = load i32, ptr %2, align 4, !dbg !1789, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1786, metadata !DIExpression()), !dbg !1788
  %4 = icmp eq ptr %0, null, !dbg !1790
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1790
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1787, metadata !DIExpression()), !dbg !1788
  store i32 %3, ptr %2, align 4, !dbg !1792, !tbaa !894
  ret ptr %6, !dbg !1793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %2 = icmp eq ptr %0, null, !dbg !1802
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1802
  %4 = load i32, ptr %3, align 8, !dbg !1803, !tbaa !1804
  ret i32 %4, !dbg !1806
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1812, metadata !DIExpression()), !dbg !1813
  %3 = icmp eq ptr %0, null, !dbg !1814
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1814
  store i32 %1, ptr %4, align 8, !dbg !1815, !tbaa !1804
  ret void, !dbg !1816
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1817 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1821, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1822, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1823, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1824, metadata !DIExpression()), !dbg !1829
  %4 = icmp eq ptr %0, null, !dbg !1830
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1830
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1831
  %7 = lshr i8 %1, 5, !dbg !1832
  %8 = zext nneg i8 %7 to i64, !dbg !1832
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1833
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1825, metadata !DIExpression()), !dbg !1829
  %10 = and i8 %1, 31, !dbg !1834
  %11 = zext nneg i8 %10 to i32, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1827, metadata !DIExpression()), !dbg !1829
  %12 = load i32, ptr %9, align 4, !dbg !1835, !tbaa !894
  %13 = lshr i32 %12, %11, !dbg !1836
  %14 = and i32 %13, 1, !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1828, metadata !DIExpression()), !dbg !1829
  %15 = xor i32 %13, %2, !dbg !1838
  %16 = and i32 %15, 1, !dbg !1838
  %17 = shl nuw i32 %16, %11, !dbg !1839
  %18 = xor i32 %17, %12, !dbg !1840
  store i32 %18, ptr %9, align 4, !dbg !1840, !tbaa !894
  ret i32 %14, !dbg !1841
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1842 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1846, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1847, metadata !DIExpression()), !dbg !1849
  %3 = icmp eq ptr %0, null, !dbg !1850
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1852
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1846, metadata !DIExpression()), !dbg !1849
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1853
  %6 = load i32, ptr %5, align 4, !dbg !1853, !tbaa !1854
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i32 %1, ptr %5, align 4, !dbg !1855, !tbaa !1854
  ret i32 %6, !dbg !1856
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1857 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1861, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1862, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1863, metadata !DIExpression()), !dbg !1864
  %4 = icmp eq ptr %0, null, !dbg !1865
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1867
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !1864
  store i32 10, ptr %5, align 8, !dbg !1868, !tbaa !1804
  %6 = icmp ne ptr %1, null, !dbg !1869
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1871
  br i1 %8, label %10, label %9, !dbg !1871

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1872
  unreachable, !dbg !1872

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1873
  store ptr %1, ptr %11, align 8, !dbg !1874, !tbaa !1875
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1876
  store ptr %2, ptr %12, align 8, !dbg !1877, !tbaa !1878
  ret void, !dbg !1879
}

; Function Attrs: noreturn nounwind
declare !dbg !1880 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1885, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1886, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1887, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1888, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1889, metadata !DIExpression()), !dbg !1893
  %6 = icmp eq ptr %4, null, !dbg !1894
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1890, metadata !DIExpression()), !dbg !1893
  %8 = tail call ptr @__errno_location() #40, !dbg !1895
  %9 = load i32, ptr %8, align 4, !dbg !1895, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1891, metadata !DIExpression()), !dbg !1893
  %10 = load i32, ptr %7, align 8, !dbg !1896, !tbaa !1804
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1897
  %12 = load i32, ptr %11, align 4, !dbg !1897, !tbaa !1854
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1898
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1899
  %15 = load ptr, ptr %14, align 8, !dbg !1899, !tbaa !1875
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1900
  %17 = load ptr, ptr %16, align 8, !dbg !1900, !tbaa !1878
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1892, metadata !DIExpression()), !dbg !1893
  store i32 %9, ptr %8, align 4, !dbg !1902, !tbaa !894
  ret i64 %18, !dbg !1903
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1904 {
  %10 = alloca i32, align 4, !DIAssignID !1972
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1973
  %12 = alloca i32, align 4, !DIAssignID !1974
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1975
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1976
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1950, metadata !DIExpression(), metadata !1976, metadata ptr %14, metadata !DIExpression()), !dbg !1977
  %15 = alloca i32, align 4, !DIAssignID !1978
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1953, metadata !DIExpression(), metadata !1978, metadata ptr %15, metadata !DIExpression()), !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1912, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1913, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1914, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1915, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1916, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1917, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1918, metadata !DIExpression()), !dbg !1980
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1981
  %17 = icmp eq i64 %16, 1, !dbg !1982
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1922, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1923, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1925, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !1980
  %18 = and i32 %5, 2, !dbg !1983
  %19 = icmp ne i32 %18, 0, !dbg !1983
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1983

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1984
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1985
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1986
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1923, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1922, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1913, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1918, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1917, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1914, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1928), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1980
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
  ], !dbg !1988

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1914, metadata !DIExpression()), !dbg !1980
  br label %101, !dbg !1989

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1914, metadata !DIExpression()), !dbg !1980
  br i1 %36, label %101, label %42, !dbg !1989

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1990
  br i1 %43, label %101, label %44, !dbg !1994

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1990, !tbaa !903
  br label %101, !dbg !1990

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !549, metadata !DIExpression(), metadata !1974, metadata ptr %12, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !1975, metadata ptr %13, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr @.str.11.69, metadata !546, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %28, metadata !547, metadata !DIExpression()), !dbg !1995
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.11.69, i32 noundef 5) #37, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %46, metadata !548, metadata !DIExpression()), !dbg !1995
  %47 = icmp eq ptr %46, @.str.11.69, !dbg !2000
  br i1 %47, label %48, label %57, !dbg !2002

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2003
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %13, metadata !2005, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %13, metadata !2013, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i64 8, metadata !2017, metadata !DIExpression()), !dbg !2018
  store i64 0, ptr %13, align 8, !dbg !2020
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2021
  %50 = icmp eq i64 %49, 3, !dbg !2023
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2024
  %54 = icmp eq i32 %28, 9, !dbg !2024
  %55 = select i1 %54, ptr @.str.10.71, ptr @.str.12.72, !dbg !2024
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2024
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2025
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1995
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1917, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.assign(metadata i1 undef, metadata !549, metadata !DIExpression(), metadata !1972, metadata ptr %10, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !1973, metadata ptr %11, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr @.str.12.72, metadata !546, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %28, metadata !547, metadata !DIExpression()), !dbg !2026
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.12.72, i32 noundef 5) #37, !dbg !2028
  call void @llvm.dbg.value(metadata ptr %59, metadata !548, metadata !DIExpression()), !dbg !2026
  %60 = icmp eq ptr %59, @.str.12.72, !dbg !2029
  br i1 %60, label %61, label %70, !dbg !2030

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2031
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2032
  call void @llvm.dbg.value(metadata ptr %11, metadata !2005, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata ptr %11, metadata !2013, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 8, metadata !2017, metadata !DIExpression()), !dbg !2035
  store i64 0, ptr %11, align 8, !dbg !2037
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2038
  %63 = icmp eq i64 %62, 3, !dbg !2039
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2040
  %67 = icmp eq i32 %28, 9, !dbg !2040
  %68 = select i1 %67, ptr @.str.10.71, ptr @.str.12.72, !dbg !2040
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2041
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2041
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1918, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1917, metadata !DIExpression()), !dbg !1980
  br i1 %36, label %88, label %73, !dbg !2042

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1930, metadata !DIExpression()), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1920, metadata !DIExpression()), !dbg !1980
  %74 = load i8, ptr %71, align 1, !dbg !2044, !tbaa !903
  %75 = icmp eq i8 %74, 0, !dbg !2046
  br i1 %75, label %88, label %.preheader11, !dbg !2046

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2046

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1930, metadata !DIExpression()), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1920, metadata !DIExpression()), !dbg !1980
  %80 = icmp ult i64 %79, %39, !dbg !2047
  br i1 %80, label %81, label %83, !dbg !2050

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2047
  store i8 %77, ptr %82, align 1, !dbg !2047, !tbaa !903
  br label %83, !dbg !2047

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1920, metadata !DIExpression()), !dbg !1980
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1930, metadata !DIExpression()), !dbg !2043
  %86 = load i8, ptr %85, align 1, !dbg !2044, !tbaa !903
  %87 = icmp eq i8 %86, 0, !dbg !2046
  br i1 %87, label %.loopexit12, label %76, !dbg !2046, !llvm.loop !2052

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2050
  br label %88, !dbg !2054

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1922, metadata !DIExpression()), !dbg !1980
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1923, metadata !DIExpression()), !dbg !1980
  br label %101, !dbg !2056

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1925, metadata !DIExpression()), !dbg !1980
  br label %101, !dbg !2057

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1914, metadata !DIExpression()), !dbg !1980
  br label %101, !dbg !2058

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  br i1 %36, label %101, label %95, !dbg !2059

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1914, metadata !DIExpression()), !dbg !1980
  br i1 %36, label %101, label %95, !dbg !2058

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2060
  br i1 %97, label %101, label %98, !dbg !2064

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2060, !tbaa !903
  br label %101, !dbg !2060

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1925, metadata !DIExpression()), !dbg !1980
  br label %101, !dbg !2065

100:                                              ; preds = %27
  call void @abort() #39, !dbg !2066
  unreachable, !dbg !2066

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2055
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.71, %42 ], [ @.str.10.71, %44 ], [ @.str.10.71, %41 ], [ %33, %27 ], [ @.str.12.72, %95 ], [ @.str.12.72, %98 ], [ @.str.12.72, %94 ], [ @.str.10.71, %40 ], [ @.str.12.72, %91 ], [ @.str.12.72, %92 ], [ @.str.12.72, %93 ], !dbg !1980
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1980
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1924, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1923, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1922, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1918, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1917, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1914, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1935, metadata !DIExpression()), !dbg !2067
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
  br label %121, !dbg !2068

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2055
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1984
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2069
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1913, metadata !DIExpression()), !dbg !1980
  %130 = icmp eq i64 %122, -1, !dbg !2070
  br i1 %130, label %131, label %135, !dbg !2071

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2072
  %133 = load i8, ptr %132, align 1, !dbg !2072, !tbaa !903
  %134 = icmp eq i8 %133, 0, !dbg !2073
  br i1 %134, label %573, label %137, !dbg !2074

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2075
  br i1 %136, label %573, label %137, !dbg !2074

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !2076
  br i1 %113, label %138, label %151, !dbg !2077

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2079
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2080
  br i1 %140, label %141, label %143, !dbg !2080

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1913, metadata !DIExpression()), !dbg !1980
  br label %143, !dbg !2082

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1913, metadata !DIExpression()), !dbg !1980
  %145 = icmp ugt i64 %139, %144, !dbg !2083
  br i1 %145, label %151, label %146, !dbg !2084

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %147, metadata !2086, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr %106, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %107, metadata !2090, metadata !DIExpression()), !dbg !2091
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2093
  %149 = icmp eq i32 %148, 0, !dbg !2094
  %150 = and i1 %149, %109, !dbg !2095
  br i1 %150, label %.loopexit7, label %151, !dbg !2095

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1913, metadata !DIExpression()), !dbg !1980
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2096
  %155 = load i8, ptr %154, align 1, !dbg !2096, !tbaa !903
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1942, metadata !DIExpression()), !dbg !2076
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
  ], !dbg !2097

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2098

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2099

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1940, metadata !DIExpression()), !dbg !2076
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2103
  br i1 %159, label %176, label %160, !dbg !2103

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2105
  br i1 %161, label %162, label %164, !dbg !2109

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2105
  store i8 39, ptr %163, align 1, !dbg !2105, !tbaa !903
  br label %164, !dbg !2105

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1920, metadata !DIExpression()), !dbg !1980
  %166 = icmp ult i64 %165, %129, !dbg !2110
  br i1 %166, label %167, label %169, !dbg !2113

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2110
  store i8 36, ptr %168, align 1, !dbg !2110, !tbaa !903
  br label %169, !dbg !2110

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1920, metadata !DIExpression()), !dbg !1980
  %171 = icmp ult i64 %170, %129, !dbg !2114
  br i1 %171, label %172, label %174, !dbg !2117

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2114
  store i8 39, ptr %173, align 1, !dbg !2114, !tbaa !903
  br label %174, !dbg !2114

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %176, !dbg !2118

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1980
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1920, metadata !DIExpression()), !dbg !1980
  %179 = icmp ult i64 %177, %129, !dbg !2119
  br i1 %179, label %180, label %182, !dbg !2122

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2119
  store i8 92, ptr %181, align 1, !dbg !2119, !tbaa !903
  br label %182, !dbg !2119

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1920, metadata !DIExpression()), !dbg !1980
  br i1 %110, label %184, label %476, !dbg !2123

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2125
  %186 = icmp ult i64 %185, %152, !dbg !2126
  br i1 %186, label %187, label %433, !dbg !2127

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2128
  %189 = load i8, ptr %188, align 1, !dbg !2128, !tbaa !903
  %190 = add i8 %189, -48, !dbg !2129
  %191 = icmp ult i8 %190, 10, !dbg !2129
  br i1 %191, label %192, label %433, !dbg !2129

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2130
  br i1 %193, label %194, label %196, !dbg !2134

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2130
  store i8 48, ptr %195, align 1, !dbg !2130, !tbaa !903
  br label %196, !dbg !2130

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1920, metadata !DIExpression()), !dbg !1980
  %198 = icmp ult i64 %197, %129, !dbg !2135
  br i1 %198, label %199, label %201, !dbg !2138

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2135
  store i8 48, ptr %200, align 1, !dbg !2135, !tbaa !903
  br label %201, !dbg !2135

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2138
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1920, metadata !DIExpression()), !dbg !1980
  br label %433, !dbg !2139

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2140

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2141

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2142

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2144

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2146
  %209 = icmp ult i64 %208, %152, !dbg !2147
  br i1 %209, label %210, label %433, !dbg !2148

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2149
  %212 = load i8, ptr %211, align 1, !dbg !2149, !tbaa !903
  %213 = icmp eq i8 %212, 63, !dbg !2150
  br i1 %213, label %214, label %433, !dbg !2151

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2152
  %216 = load i8, ptr %215, align 1, !dbg !2152, !tbaa !903
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
  ], !dbg !2153

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2154

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1935, metadata !DIExpression()), !dbg !2067
  %219 = icmp ult i64 %123, %129, !dbg !2156
  br i1 %219, label %220, label %222, !dbg !2159

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2156
  store i8 63, ptr %221, align 1, !dbg !2156, !tbaa !903
  br label %222, !dbg !2156

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1920, metadata !DIExpression()), !dbg !1980
  %224 = icmp ult i64 %223, %129, !dbg !2160
  br i1 %224, label %225, label %227, !dbg !2163

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2160
  store i8 34, ptr %226, align 1, !dbg !2160, !tbaa !903
  br label %227, !dbg !2160

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2163
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1920, metadata !DIExpression()), !dbg !1980
  %229 = icmp ult i64 %228, %129, !dbg !2164
  br i1 %229, label %230, label %232, !dbg !2167

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2164
  store i8 34, ptr %231, align 1, !dbg !2164, !tbaa !903
  br label %232, !dbg !2164

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1920, metadata !DIExpression()), !dbg !1980
  %234 = icmp ult i64 %233, %129, !dbg !2168
  br i1 %234, label %235, label %237, !dbg !2171

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2168
  store i8 63, ptr %236, align 1, !dbg !2168, !tbaa !903
  br label %237, !dbg !2168

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1920, metadata !DIExpression()), !dbg !1980
  br label %433, !dbg !2172

239:                                              ; preds = %151
  br label %249, !dbg !2173

240:                                              ; preds = %151
  br label %249, !dbg !2174

241:                                              ; preds = %151
  br label %247, !dbg !2175

242:                                              ; preds = %151
  br label %247, !dbg !2176

243:                                              ; preds = %151
  br label %249, !dbg !2177

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2178

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2179

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2182

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2184
  call void @llvm.dbg.label(metadata !1943), !dbg !2185
  br i1 %118, label %.loopexit8, label %249, !dbg !2186

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2184
  call void @llvm.dbg.label(metadata !1946), !dbg !2188
  br i1 %108, label %487, label %444, !dbg !2189

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2190

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2191, !tbaa !903
  %254 = icmp eq i8 %253, 0, !dbg !2193
  br i1 %254, label %255, label %433, !dbg !2194

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2195
  br i1 %256, label %257, label %433, !dbg !2197

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2076
  br label %258, !dbg !2198

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2076
  br i1 %115, label %260, label %433, !dbg !2199

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2201

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2076
  br i1 %115, label %262, label %433, !dbg !2202

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2203

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2206
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2208
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2208
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1921, metadata !DIExpression()), !dbg !1980
  %269 = icmp ult i64 %123, %268, !dbg !2209
  br i1 %269, label %270, label %272, !dbg !2212

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2209
  store i8 39, ptr %271, align 1, !dbg !2209, !tbaa !903
  br label %272, !dbg !2209

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1920, metadata !DIExpression()), !dbg !1980
  %274 = icmp ult i64 %273, %268, !dbg !2213
  br i1 %274, label %275, label %277, !dbg !2216

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2213
  store i8 92, ptr %276, align 1, !dbg !2213, !tbaa !903
  br label %277, !dbg !2213

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1920, metadata !DIExpression()), !dbg !1980
  %279 = icmp ult i64 %278, %268, !dbg !2217
  br i1 %279, label %280, label %282, !dbg !2220

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2217
  store i8 39, ptr %281, align 1, !dbg !2217, !tbaa !903
  br label %282, !dbg !2217

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %433, !dbg !2221

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2222

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()), !dbg !2223
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2224
  %287 = load ptr, ptr %286, align 8, !dbg !2224, !tbaa !834
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2224
  %290 = load i16, ptr %289, align 2, !dbg !2224, !tbaa !935
  %291 = and i16 %290, 16384, !dbg !2224
  %292 = icmp ne i16 %291, 0, !dbg !2226
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1949, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2223
  br label %334, !dbg !2227

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2228
  call void @llvm.dbg.value(metadata ptr %14, metadata !2005, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %14, metadata !2013, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i64 8, metadata !2017, metadata !DIExpression()), !dbg !2231
  store i64 0, ptr %14, align 8, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1947, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1949, metadata !DIExpression()), !dbg !2223
  %294 = icmp eq i64 %152, -1, !dbg !2234
  br i1 %294, label %295, label %297, !dbg !2236

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1913, metadata !DIExpression()), !dbg !1980
  br label %297, !dbg !2238

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1913, metadata !DIExpression()), !dbg !1980
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2239
  %299 = sub i64 %298, %128, !dbg !2240
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1957, metadata !DIExpression()), !dbg !1979
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2242

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1947, metadata !DIExpression()), !dbg !2223
  %302 = icmp ult i64 %128, %298, !dbg !2243
  br i1 %302, label %.preheader5, label %329, !dbg !2245

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2246

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !2223
  br label %329, !dbg !2247

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1947, metadata !DIExpression()), !dbg !2223
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2249
  %308 = load i8, ptr %307, align 1, !dbg !2249, !tbaa !903
  %309 = icmp eq i8 %308, 0, !dbg !2245
  br i1 %309, label %.loopexit6, label %310, !dbg !2246

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1947, metadata !DIExpression()), !dbg !2223
  %312 = add i64 %311, %128, !dbg !2251
  %313 = icmp eq i64 %311, %299, !dbg !2243
  br i1 %313, label %.loopexit6, label %304, !dbg !2245, !llvm.loop !2252

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1958, metadata !DIExpression()), !dbg !2253
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2254
  %317 = and i1 %316, %109, !dbg !2254
  br i1 %317, label %.preheader3, label %325, !dbg !2254

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2255

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1958, metadata !DIExpression()), !dbg !2253
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2256
  %321 = load i8, ptr %320, align 1, !dbg !2256, !tbaa !903
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2258

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1958, metadata !DIExpression()), !dbg !2253
  %324 = icmp eq i64 %323, %300, !dbg !2260
  br i1 %324, label %.loopexit4, label %318, !dbg !2255, !llvm.loop !2261

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2263

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2263, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %326, metadata !2265, metadata !DIExpression()), !dbg !2273
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !2275
  %328 = icmp ne i32 %327, 0, !dbg !2276
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1949, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1947, metadata !DIExpression()), !dbg !2223
  br label %329, !dbg !2277

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2278

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1949, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1947, metadata !DIExpression()), !dbg !2223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2279
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1949, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1947, metadata !DIExpression()), !dbg !2223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2279
  call void @llvm.dbg.label(metadata !1971), !dbg !2280
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2281
  br label %624, !dbg !2281

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2076
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2283
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1949, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1947, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1913, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1941, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2076
  %338 = icmp ult i64 %336, 2, !dbg !2284
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2285
  br i1 %340, label %433, label %341, !dbg !2285

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1966, metadata !DIExpression()), !dbg !2287
  br label %343, !dbg !2288

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1980
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2067
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1920, metadata !DIExpression()), !dbg !1980
  br i1 %339, label %394, label %350, !dbg !2289

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2294

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1940, metadata !DIExpression()), !dbg !2076
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2297
  br i1 %352, label %369, label %353, !dbg !2297

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2299
  br i1 %354, label %355, label %357, !dbg !2303

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2299
  store i8 39, ptr %356, align 1, !dbg !2299, !tbaa !903
  br label %357, !dbg !2299

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1920, metadata !DIExpression()), !dbg !1980
  %359 = icmp ult i64 %358, %129, !dbg !2304
  br i1 %359, label %360, label %362, !dbg !2307

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2304
  store i8 36, ptr %361, align 1, !dbg !2304, !tbaa !903
  br label %362, !dbg !2304

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1920, metadata !DIExpression()), !dbg !1980
  %364 = icmp ult i64 %363, %129, !dbg !2308
  br i1 %364, label %365, label %367, !dbg !2311

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2308
  store i8 39, ptr %366, align 1, !dbg !2308, !tbaa !903
  br label %367, !dbg !2308

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %369, !dbg !2312

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1980
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1920, metadata !DIExpression()), !dbg !1980
  %372 = icmp ult i64 %370, %129, !dbg !2313
  br i1 %372, label %373, label %375, !dbg !2316

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2313
  store i8 92, ptr %374, align 1, !dbg !2313, !tbaa !903
  br label %375, !dbg !2313

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2316
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1920, metadata !DIExpression()), !dbg !1980
  %377 = icmp ult i64 %376, %129, !dbg !2317
  br i1 %377, label %378, label %382, !dbg !2320

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2317
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2317
  store i8 %380, ptr %381, align 1, !dbg !2317, !tbaa !903
  br label %382, !dbg !2317

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1920, metadata !DIExpression()), !dbg !1980
  %384 = icmp ult i64 %383, %129, !dbg !2321
  br i1 %384, label %385, label %390, !dbg !2324

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2321
  %388 = or disjoint i8 %387, 48, !dbg !2321
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2321
  store i8 %388, ptr %389, align 1, !dbg !2321, !tbaa !903
  br label %390, !dbg !2321

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1920, metadata !DIExpression()), !dbg !1980
  %392 = and i8 %349, 7, !dbg !2325
  %393 = or disjoint i8 %392, 48, !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1942, metadata !DIExpression()), !dbg !2076
  br label %401, !dbg !2327

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2328

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2329
  br i1 %396, label %397, label %399, !dbg !2334

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2329
  store i8 92, ptr %398, align 1, !dbg !2329, !tbaa !903
  br label %399, !dbg !2329

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !2076
  br label %401, !dbg !2335

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1980
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1920, metadata !DIExpression()), !dbg !1980
  %407 = add i64 %346, 1, !dbg !2336
  %408 = icmp ugt i64 %342, %407, !dbg !2338
  br i1 %408, label %409, label %.loopexit2, !dbg !2339

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2340
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2340
  br i1 %411, label %423, label %412, !dbg !2340

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2343
  br i1 %413, label %414, label %416, !dbg !2347

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2343
  store i8 39, ptr %415, align 1, !dbg !2343, !tbaa !903
  br label %416, !dbg !2343

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1920, metadata !DIExpression()), !dbg !1980
  %418 = icmp ult i64 %417, %129, !dbg !2348
  br i1 %418, label %419, label %421, !dbg !2351

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2348
  store i8 39, ptr %420, align 1, !dbg !2348, !tbaa !903
  br label %421, !dbg !2348

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %423, !dbg !2352

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2353
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1920, metadata !DIExpression()), !dbg !1980
  %426 = icmp ult i64 %424, %129, !dbg !2354
  br i1 %426, label %427, label %429, !dbg !2357

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2354
  store i8 %406, ptr %428, align 1, !dbg !2354, !tbaa !903
  br label %429, !dbg !2354

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1935, metadata !DIExpression()), !dbg !2067
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2358
  %432 = load i8, ptr %431, align 1, !dbg !2358, !tbaa !903
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1942, metadata !DIExpression()), !dbg !2076
  br label %343, !dbg !2359, !llvm.loop !2360

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2363
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1980
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1984
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2067
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2076
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1913, metadata !DIExpression()), !dbg !1980
  br i1 %111, label %455, label %444, !dbg !2364

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
  br i1 %120, label %456, label %476, !dbg !2366

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2367

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
  %467 = lshr i8 %458, 5, !dbg !2368
  %468 = zext nneg i8 %467 to i64, !dbg !2368
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2369
  %470 = load i32, ptr %469, align 4, !dbg !2369, !tbaa !894
  %471 = and i8 %458, 31, !dbg !2370
  %472 = zext nneg i8 %471 to i32, !dbg !2370
  %473 = shl nuw i32 1, %472, !dbg !2371
  %474 = and i32 %470, %473, !dbg !2371
  %475 = icmp eq i32 %474, 0, !dbg !2371
  br i1 %475, label %476, label %487, !dbg !2372

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
  br i1 %153, label %487, label %523, !dbg !2373

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2363
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1980
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1984
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2374
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2076
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1913, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1969), !dbg !2375
  br i1 %109, label %.loopexit8, label %497, !dbg !2376

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1940, metadata !DIExpression()), !dbg !2076
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2378
  br i1 %498, label %515, label %499, !dbg !2378

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2380
  br i1 %500, label %501, label %503, !dbg !2384

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2380
  store i8 39, ptr %502, align 1, !dbg !2380, !tbaa !903
  br label %503, !dbg !2380

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1920, metadata !DIExpression()), !dbg !1980
  %505 = icmp ult i64 %504, %496, !dbg !2385
  br i1 %505, label %506, label %508, !dbg !2388

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2385
  store i8 36, ptr %507, align 1, !dbg !2385, !tbaa !903
  br label %508, !dbg !2385

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1920, metadata !DIExpression()), !dbg !1980
  %510 = icmp ult i64 %509, %496, !dbg !2389
  br i1 %510, label %511, label %513, !dbg !2392

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2389
  store i8 39, ptr %512, align 1, !dbg !2389, !tbaa !903
  br label %513, !dbg !2389

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %515, !dbg !2393

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2076
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1920, metadata !DIExpression()), !dbg !1980
  %518 = icmp ult i64 %516, %496, !dbg !2394
  br i1 %518, label %519, label %521, !dbg !2397

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2394
  store i8 92, ptr %520, align 1, !dbg !2394, !tbaa !903
  br label %521, !dbg !2394

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1913, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1970), !dbg !2398
  br label %547, !dbg !2399

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1980
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2076
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2067
  br label %523, !dbg !2399

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2363
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1980
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1984
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2374
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2402
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1942, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1940, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1913, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.label(metadata !1970), !dbg !2398
  %534 = xor i1 %528, true, !dbg !2399
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2399
  br i1 %535, label %547, label %536, !dbg !2399

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2403
  br i1 %537, label %538, label %540, !dbg !2407

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2403
  store i8 39, ptr %539, align 1, !dbg !2403, !tbaa !903
  br label %540, !dbg !2403

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2407
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1920, metadata !DIExpression()), !dbg !1980
  %542 = icmp ult i64 %541, %533, !dbg !2408
  br i1 %542, label %543, label %545, !dbg !2411

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2408
  store i8 39, ptr %544, align 1, !dbg !2408, !tbaa !903
  br label %545, !dbg !2408

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1980
  br label %547, !dbg !2412

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2076
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1920, metadata !DIExpression()), !dbg !1980
  %557 = icmp ult i64 %555, %548, !dbg !2413
  br i1 %557, label %558, label %560, !dbg !2416

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2413
  store i8 %549, ptr %559, align 1, !dbg !2413, !tbaa !903
  br label %560, !dbg !2413

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2416
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1920, metadata !DIExpression()), !dbg !1980
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2417
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1980
  br label %563, !dbg !2418

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2363
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1980
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1984
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2374
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1935, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1913, metadata !DIExpression()), !dbg !1980
  %572 = add i64 %570, 1, !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1935, metadata !DIExpression()), !dbg !2067
  br label %121, !dbg !2420, !llvm.loop !2421

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2055
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1984
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1911, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1921, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1920, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1913, metadata !DIExpression()), !dbg !1980
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2423
  %575 = xor i1 %109, true, !dbg !2425
  %576 = or i1 %574, %575, !dbg !2425
  %577 = or i1 %576, %110, !dbg !2425
  br i1 %577, label %578, label %.loopexit13, !dbg !2425

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2426
  %580 = xor i1 %.lcssa38, true, !dbg !2426
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2426
  br i1 %581, label %589, label %582, !dbg !2426

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2428

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1984
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2430
  br label %638, !dbg !2432

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2433
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2435
  br i1 %588, label %27, label %589, !dbg !2435

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1980
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2055
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2436
  %592 = or i1 %591, %590, !dbg !2438
  br i1 %592, label %608, label %593, !dbg !2438

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1922, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1920, metadata !DIExpression()), !dbg !1980
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2439, !tbaa !903
  %595 = icmp eq i8 %594, 0, !dbg !2442
  br i1 %595, label %608, label %.preheader, !dbg !2442

.preheader:                                       ; preds = %593
  br label %596, !dbg !2442

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1922, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1920, metadata !DIExpression()), !dbg !1980
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2443
  br i1 %600, label %601, label %603, !dbg !2446

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2443
  store i8 %597, ptr %602, align 1, !dbg !2443, !tbaa !903
  br label %603, !dbg !2443

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1920, metadata !DIExpression()), !dbg !1980
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1922, metadata !DIExpression()), !dbg !1980
  %606 = load i8, ptr %605, align 1, !dbg !2439, !tbaa !903
  %607 = icmp eq i8 %606, 0, !dbg !2442
  br i1 %607, label %.loopexit, label %596, !dbg !2442, !llvm.loop !2448

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2446
  br label %608, !dbg !2450

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1920, metadata !DIExpression()), !dbg !1980
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2450
  br i1 %610, label %611, label %638, !dbg !2452

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2453
  store i8 0, ptr %612, align 1, !dbg !2454, !tbaa !903
  br label %638, !dbg !2453

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1971), !dbg !2280
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2455
  br i1 %614, label %624, label %630, !dbg !2281

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2076
  br label %615, !dbg !2455

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2455

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2455

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1971), !dbg !2280
  %622 = icmp eq i32 %616, 2, !dbg !2455
  %623 = select i1 %619, i32 4, i32 2, !dbg !2281
  br i1 %622, label %624, label %630, !dbg !2281

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2281

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2082
  br label %630, !dbg !2456

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1914, metadata !DIExpression()), !dbg !1980
  %636 = and i32 %5, -3, !dbg !2456
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2457
  br label %638, !dbg !2458

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2459
}

; Function Attrs: nounwind
declare !dbg !2460 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2463 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2466 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2468 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2472, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %0, metadata !2476, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata ptr null, metadata !2482, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata ptr %2, metadata !2483, metadata !DIExpression()), !dbg !2489
  %4 = icmp eq ptr %2, null, !dbg !2491
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %5, metadata !2484, metadata !DIExpression()), !dbg !2489
  %6 = tail call ptr @__errno_location() #40, !dbg !2492
  %7 = load i32, ptr %6, align 4, !dbg !2492, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2485, metadata !DIExpression()), !dbg !2489
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2493
  %9 = load i32, ptr %8, align 4, !dbg !2493, !tbaa !1854
  %10 = or i32 %9, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %10, metadata !2486, metadata !DIExpression()), !dbg !2489
  %11 = load i32, ptr %5, align 8, !dbg !2495, !tbaa !1804
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2496
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2497
  %14 = load ptr, ptr %13, align 8, !dbg !2497, !tbaa !1875
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2498
  %16 = load ptr, ptr %15, align 8, !dbg !2498, !tbaa !1878
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2499
  %18 = add i64 %17, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %18, metadata !2487, metadata !DIExpression()), !dbg !2489
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2501
  call void @llvm.dbg.value(metadata ptr %19, metadata !2488, metadata !DIExpression()), !dbg !2489
  %20 = load i32, ptr %5, align 8, !dbg !2502, !tbaa !1804
  %21 = load ptr, ptr %13, align 8, !dbg !2503, !tbaa !1875
  %22 = load ptr, ptr %15, align 8, !dbg !2504, !tbaa !1878
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2505
  store i32 %7, ptr %6, align 4, !dbg !2506, !tbaa !894
  ret ptr %19, !dbg !2507
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2477 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2476, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2482, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2483, metadata !DIExpression()), !dbg !2508
  %5 = icmp eq ptr %3, null, !dbg !2509
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2509
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2484, metadata !DIExpression()), !dbg !2508
  %7 = tail call ptr @__errno_location() #40, !dbg !2510
  %8 = load i32, ptr %7, align 4, !dbg !2510, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2485, metadata !DIExpression()), !dbg !2508
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2511
  %10 = load i32, ptr %9, align 4, !dbg !2511, !tbaa !1854
  %11 = icmp eq ptr %2, null, !dbg !2512
  %12 = zext i1 %11 to i32, !dbg !2512
  %13 = or i32 %10, %12, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2486, metadata !DIExpression()), !dbg !2508
  %14 = load i32, ptr %6, align 8, !dbg !2514, !tbaa !1804
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2515
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2516
  %17 = load ptr, ptr %16, align 8, !dbg !2516, !tbaa !1875
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2517
  %19 = load ptr, ptr %18, align 8, !dbg !2517, !tbaa !1878
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2518
  %21 = add i64 %20, 1, !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2487, metadata !DIExpression()), !dbg !2508
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2520
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2488, metadata !DIExpression()), !dbg !2508
  %23 = load i32, ptr %6, align 8, !dbg !2521, !tbaa !1804
  %24 = load ptr, ptr %16, align 8, !dbg !2522, !tbaa !1875
  %25 = load ptr, ptr %18, align 8, !dbg !2523, !tbaa !1878
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2524
  store i32 %8, ptr %7, align 4, !dbg !2525, !tbaa !894
  br i1 %11, label %28, label %27, !dbg !2526

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2527, !tbaa !2529
  br label %28, !dbg !2530

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2531
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2532 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2537, !tbaa !834
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2535, metadata !DIExpression()), !dbg !2539
  %2 = load i32, ptr @nslots, align 4, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2535, metadata !DIExpression()), !dbg !2539
  %3 = icmp sgt i32 %2, 1, !dbg !2540
  br i1 %3, label %4, label %6, !dbg !2542

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2540
  br label %10, !dbg !2542

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2543

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2543
  %8 = load ptr, ptr %7, align 8, !dbg !2543, !tbaa !2545
  %9 = icmp eq ptr %8, @slot0, !dbg !2547
  br i1 %9, label %17, label %16, !dbg !2548

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2535, metadata !DIExpression()), !dbg !2539
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2549
  %13 = load ptr, ptr %12, align 8, !dbg !2549, !tbaa !2545
  tail call void @free(ptr noundef %13) #37, !dbg !2550
  %14 = add nuw nsw i64 %11, 1, !dbg !2551
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2535, metadata !DIExpression()), !dbg !2539
  %15 = icmp eq i64 %14, %5, !dbg !2540
  br i1 %15, label %.loopexit, label %10, !dbg !2542, !llvm.loop !2552

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2554
  store i64 256, ptr @slotvec0, align 8, !dbg !2556, !tbaa !2557
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2558, !tbaa !2545
  br label %17, !dbg !2559

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2560
  br i1 %18, label %20, label %19, !dbg !2562

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2563
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2565, !tbaa !834
  br label %20, !dbg !2566

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2567, !tbaa !894
  ret void, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2569 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2573
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2572, metadata !DIExpression()), !dbg !2573
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2574
  ret ptr %3, !dbg !2575
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2576 {
  %5 = alloca i64, align 8, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2590, metadata !DIExpression(), metadata !2596, metadata ptr %5, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2582, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2583, metadata !DIExpression()), !dbg !2598
  %6 = tail call ptr @__errno_location() #40, !dbg !2599
  %7 = load i32, ptr %6, align 4, !dbg !2599, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2584, metadata !DIExpression()), !dbg !2598
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2600, !tbaa !834
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2585, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2586, metadata !DIExpression()), !dbg !2598
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2601
  br i1 %9, label %10, label %11, !dbg !2601

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2603
  unreachable, !dbg !2603

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2604, !tbaa !894
  %13 = icmp sgt i32 %12, %0, !dbg !2605
  br i1 %13, label %32, label %14, !dbg !2606

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2607
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2587, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2608
  %16 = sext i32 %12 to i64, !dbg !2609
  store i64 %16, ptr %5, align 8, !dbg !2610, !tbaa !2529, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2590, metadata !DIExpression(), metadata !2611, metadata ptr %5, metadata !DIExpression()), !dbg !2597
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2612
  %18 = add nuw nsw i32 %0, 1, !dbg !2613
  %19 = sub i32 %18, %12, !dbg !2614
  %20 = sext i32 %19 to i64, !dbg !2615
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2616
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2585, metadata !DIExpression()), !dbg !2598
  store ptr %21, ptr @slotvec, align 8, !dbg !2617, !tbaa !834
  br i1 %15, label %22, label %23, !dbg !2618

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2619, !tbaa.struct !2621
  br label %23, !dbg !2622

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2623, !tbaa !894
  %25 = sext i32 %24 to i64, !dbg !2624
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2624
  %27 = load i64, ptr %5, align 8, !dbg !2625, !tbaa !2529
  %28 = sub nsw i64 %27, %25, !dbg !2626
  %29 = shl i64 %28, 4, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %26, metadata !2013, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 %29, metadata !2017, metadata !DIExpression()), !dbg !2628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2630
  %30 = load i64, ptr %5, align 8, !dbg !2631, !tbaa !2529
  %31 = trunc i64 %30 to i32, !dbg !2631
  store i32 %31, ptr @nslots, align 4, !dbg !2632, !tbaa !894
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2633
  br label %32, !dbg !2634

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2598
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2585, metadata !DIExpression()), !dbg !2598
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2635
  %36 = load i64, ptr %35, align 8, !dbg !2636, !tbaa !2557
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2591, metadata !DIExpression()), !dbg !2637
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2638
  %38 = load ptr, ptr %37, align 8, !dbg !2638, !tbaa !2545
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2593, metadata !DIExpression()), !dbg !2637
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2639
  %40 = load i32, ptr %39, align 4, !dbg !2639, !tbaa !1854
  %41 = or i32 %40, 1, !dbg !2640
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2594, metadata !DIExpression()), !dbg !2637
  %42 = load i32, ptr %3, align 8, !dbg !2641, !tbaa !1804
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2642
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2643
  %45 = load ptr, ptr %44, align 8, !dbg !2643, !tbaa !1875
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2644
  %47 = load ptr, ptr %46, align 8, !dbg !2644, !tbaa !1878
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2645
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2595, metadata !DIExpression()), !dbg !2637
  %49 = icmp ugt i64 %36, %48, !dbg !2646
  br i1 %49, label %60, label %50, !dbg !2648

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2649
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2591, metadata !DIExpression()), !dbg !2637
  store i64 %51, ptr %35, align 8, !dbg !2651, !tbaa !2557
  %52 = icmp eq ptr %38, @slot0, !dbg !2652
  br i1 %52, label %54, label %53, !dbg !2654

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2655
  br label %54, !dbg !2655

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2656
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2593, metadata !DIExpression()), !dbg !2637
  store ptr %55, ptr %37, align 8, !dbg !2657, !tbaa !2545
  %56 = load i32, ptr %3, align 8, !dbg !2658, !tbaa !1804
  %57 = load ptr, ptr %44, align 8, !dbg !2659, !tbaa !1875
  %58 = load ptr, ptr %46, align 8, !dbg !2660, !tbaa !1878
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2661
  br label %60, !dbg !2662

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2637
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2593, metadata !DIExpression()), !dbg !2637
  store i32 %7, ptr %6, align 4, !dbg !2663, !tbaa !894
  ret ptr %61, !dbg !2664
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2665 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2669, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2670, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2671, metadata !DIExpression()), !dbg !2672
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2673
  ret ptr %4, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %0, metadata !2572, metadata !DIExpression()), !dbg !2679
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2681
  ret ptr %2, !dbg !2682
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2687, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 0, metadata !2669, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %1, metadata !2671, metadata !DIExpression()), !dbg !2690
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2692
  ret ptr %3, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2694 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2702
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2701, metadata !DIExpression(), metadata !2702, metadata ptr %4, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2699, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %1, metadata !2709, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2717, !alias.scope !2705, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i8 0, metadata !2701, metadata !DIExpression(), metadata !2718, metadata ptr %4, metadata !DIExpression()), !dbg !2703
  %5 = icmp eq i32 %1, 10, !dbg !2719
  br i1 %5, label %6, label %7, !dbg !2721

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2722, !noalias !2705
  unreachable, !dbg !2722

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2723, !tbaa !1804, !alias.scope !2705, !DIAssignID !2724
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2724, metadata ptr %4, metadata !DIExpression()), !dbg !2703
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2725
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2726
  ret ptr %8, !dbg !2727
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2728 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2736, metadata !DIExpression(), metadata !2737, metadata ptr %5, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2732, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2733, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2734, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2735, metadata !DIExpression()), !dbg !2738
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %1, metadata !2709, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2714, metadata !DIExpression()), !dbg !2746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2746, !alias.scope !2740, !DIAssignID !2747
  call void @llvm.dbg.assign(metadata i8 0, metadata !2736, metadata !DIExpression(), metadata !2747, metadata ptr %5, metadata !DIExpression()), !dbg !2738
  %6 = icmp eq i32 %1, 10, !dbg !2748
  br i1 %6, label %7, label %8, !dbg !2749

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2750, !noalias !2740
  unreachable, !dbg !2750

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2751, !tbaa !1804, !alias.scope !2740, !DIAssignID !2752
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2752, metadata ptr %5, metadata !DIExpression()), !dbg !2738
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2753
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2754
  ret ptr %9, !dbg !2755
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2756 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2762
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2701, metadata !DIExpression(), metadata !2762, metadata ptr %3, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %0, metadata !2699, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %1, metadata !2700, metadata !DIExpression()), !dbg !2764
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2714, metadata !DIExpression()), !dbg !2773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2773, !alias.scope !2767, !DIAssignID !2774
  call void @llvm.dbg.assign(metadata i8 0, metadata !2701, metadata !DIExpression(), metadata !2774, metadata ptr %3, metadata !DIExpression()), !dbg !2764
  %4 = icmp eq i32 %0, 10, !dbg !2775
  br i1 %4, label %5, label %6, !dbg !2776

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2777, !noalias !2767
  unreachable, !dbg !2777

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2778, !tbaa !1804, !alias.scope !2767, !DIAssignID !2779
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2779, metadata ptr %3, metadata !DIExpression()), !dbg !2764
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2780
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2781
  ret ptr %7, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2783 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2790
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2791
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2788, metadata !DIExpression()), !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2736, metadata !DIExpression(), metadata !2790, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %1, metadata !2734, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %2, metadata !2735, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795), !dbg !2798
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2714, metadata !DIExpression()), !dbg !2801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2801, !alias.scope !2795, !DIAssignID !2802
  call void @llvm.dbg.assign(metadata i8 0, metadata !2736, metadata !DIExpression(), metadata !2802, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  %5 = icmp eq i32 %0, 10, !dbg !2803
  br i1 %5, label %6, label %7, !dbg !2804

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2805, !noalias !2795
  unreachable, !dbg !2805

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2806, !tbaa !1804, !alias.scope !2795, !DIAssignID !2807
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2736, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2807, metadata ptr %4, metadata !DIExpression()), !dbg !2792
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2808
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2809
  ret ptr %8, !dbg !2810
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2811 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2819, metadata ptr %4, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2816, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2822, !tbaa.struct !2823, !DIAssignID !2824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2824, metadata ptr %4, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1821, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1822, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1823, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1824, metadata !DIExpression()), !dbg !2825
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2827
  %6 = lshr i8 %2, 5, !dbg !2828
  %7 = zext nneg i8 %6 to i64, !dbg !2828
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2829
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1825, metadata !DIExpression()), !dbg !2825
  %9 = and i8 %2, 31, !dbg !2830
  %10 = zext nneg i8 %9 to i32, !dbg !2830
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1827, metadata !DIExpression()), !dbg !2825
  %11 = load i32, ptr %8, align 4, !dbg !2831, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1828, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2825
  %13 = and i32 %12, 1, !dbg !2833
  %14 = xor i32 %13, 1, !dbg !2833
  %15 = shl nuw i32 %14, %10, !dbg !2834
  %16 = xor i32 %15, %11, !dbg !2835
  store i32 %16, ptr %8, align 4, !dbg !2835, !tbaa !894
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2837
  ret ptr %17, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2839 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2845
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2845, metadata ptr %3, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 -1, metadata !2816, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 %1, metadata !2817, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2850, !tbaa.struct !2823, !DIAssignID !2851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2851, metadata ptr %3, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %3, metadata !1821, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %1, metadata !1822, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 1, metadata !1823, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8 %1, metadata !1824, metadata !DIExpression()), !dbg !2852
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2854
  %5 = lshr i8 %1, 5, !dbg !2855
  %6 = zext nneg i8 %5 to i64, !dbg !2855
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2856
  call void @llvm.dbg.value(metadata ptr %7, metadata !1825, metadata !DIExpression()), !dbg !2852
  %8 = and i8 %1, 31, !dbg !2857
  %9 = zext nneg i8 %8 to i32, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %9, metadata !1827, metadata !DIExpression()), !dbg !2852
  %10 = load i32, ptr %7, align 4, !dbg !2858, !tbaa !894
  %11 = lshr i32 %10, %9, !dbg !2859
  call void @llvm.dbg.value(metadata i32 %11, metadata !1828, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2852
  %12 = and i32 %11, 1, !dbg !2860
  %13 = xor i32 %12, 1, !dbg !2860
  %14 = shl nuw i32 %13, %9, !dbg !2861
  %15 = xor i32 %14, %10, !dbg !2862
  store i32 %15, ptr %7, align 4, !dbg !2862, !tbaa !894
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2864
  ret ptr %16, !dbg !2865
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2866 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2869
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 58, metadata !2844, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2869, metadata ptr %2, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 -1, metadata !2816, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 58, metadata !2817, metadata !DIExpression()), !dbg !2873
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2876, !tbaa.struct !2823, !DIAssignID !2877
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2877, metadata ptr %2, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata ptr %2, metadata !1821, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 58, metadata !1822, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 1, metadata !1823, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2878
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %3, metadata !1825, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 26, metadata !1827, metadata !DIExpression()), !dbg !2878
  %4 = load i32, ptr %3, align 4, !dbg !2881, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %4, metadata !1828, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2878
  %5 = or i32 %4, 67108864, !dbg !2882
  store i32 %5, ptr %3, align 4, !dbg !2882, !tbaa !894
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2883
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2884
  ret ptr %6, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2886 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2890
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2890, metadata ptr %3, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2816, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 58, metadata !2817, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2895, !tbaa.struct !2823, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2818, metadata !DIExpression(), metadata !2896, metadata ptr %3, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %3, metadata !1821, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8 58, metadata !1822, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 1, metadata !1823, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2897
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %4, metadata !1825, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 26, metadata !1827, metadata !DIExpression()), !dbg !2897
  %5 = load i32, ptr %4, align 4, !dbg !2900, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %5, metadata !1828, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2897
  %6 = or i32 %5, 67108864, !dbg !2901
  store i32 %6, ptr %4, align 4, !dbg !2901, !tbaa !894
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2902
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2903
  ret ptr %7, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2905 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2910, metadata !DIExpression(), metadata !2911, metadata ptr %4, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2714, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2913
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2908, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %1, metadata !2709, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2916
  %5 = icmp eq i32 %1, 10, !dbg !2917
  br i1 %5, label %6, label %7, !dbg !2918

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2919, !noalias !2920
  unreachable, !dbg !2919

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2916
  store i32 %1, ptr %4, align 8, !dbg !2923, !tbaa.struct !2823, !DIAssignID !2924
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2923
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2910, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2924, metadata ptr %4, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2910, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2925, metadata ptr %8, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1821, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1822, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1823, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2926
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1825, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1827, metadata !DIExpression()), !dbg !2926
  %10 = load i32, ptr %9, align 4, !dbg !2929, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1828, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2926
  %11 = or i32 %10, 67108864, !dbg !2930
  store i32 %11, ptr %9, align 4, !dbg !2930, !tbaa !894, !DIAssignID !2931
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2910, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2931, metadata ptr %9, metadata !DIExpression()), !dbg !2912
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2932
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2933
  ret ptr %12, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2935 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2943
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2940, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !2943, metadata ptr %5, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %0, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %1, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 -1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2958, !tbaa.struct !2823, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !2959, metadata ptr %5, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2960, metadata ptr undef, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %1, metadata !1862, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %2, metadata !1863, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !2961
  store i32 10, ptr %5, align 8, !dbg !2963, !tbaa !1804, !DIAssignID !2964
  call void @llvm.dbg.assign(metadata i32 10, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2964, metadata ptr %5, metadata !DIExpression()), !dbg !2955
  %6 = icmp ne ptr %1, null, !dbg !2965
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2966
  br i1 %8, label %10, label %9, !dbg !2966

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2967
  unreachable, !dbg !2967

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2968
  store ptr %1, ptr %11, align 8, !dbg !2969, !tbaa !1875, !DIAssignID !2970
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2970, metadata ptr %11, metadata !DIExpression()), !dbg !2955
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2971
  store ptr %2, ptr %12, align 8, !dbg !2972, !tbaa !1878, !DIAssignID !2973
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2973, metadata ptr %12, metadata !DIExpression()), !dbg !2955
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2974
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2975
  ret ptr %13, !dbg !2976
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2946 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !2977, metadata ptr %6, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2950, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2951, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2953, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2954, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2980, !tbaa.struct !2823, !DIAssignID !2981
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !2981, metadata ptr %6, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2982, metadata ptr undef, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %6, metadata !1861, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %1, metadata !1862, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %2, metadata !1863, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %6, metadata !1861, metadata !DIExpression()), !dbg !2983
  store i32 10, ptr %6, align 8, !dbg !2985, !tbaa !1804, !DIAssignID !2986
  call void @llvm.dbg.assign(metadata i32 10, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2986, metadata ptr %6, metadata !DIExpression()), !dbg !2978
  %7 = icmp ne ptr %1, null, !dbg !2987
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2988
  br i1 %9, label %11, label %10, !dbg !2988

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2989
  unreachable, !dbg !2989

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2990
  store ptr %1, ptr %12, align 8, !dbg !2991, !tbaa !1875, !DIAssignID !2992
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2992, metadata ptr %12, metadata !DIExpression()), !dbg !2978
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2993
  store ptr %2, ptr %13, align 8, !dbg !2994, !tbaa !1878, !DIAssignID !2995
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2995, metadata ptr %13, metadata !DIExpression()), !dbg !2978
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2996
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2997
  ret ptr %14, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2999 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3006
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3003, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3004, metadata !DIExpression()), !dbg !3007
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !2941, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2942, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !3006, metadata ptr %4, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 0, metadata !2950, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %1, metadata !2952, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %2, metadata !2953, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 -1, metadata !2954, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3013, !tbaa.struct !2823, !DIAssignID !3014
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !3014, metadata ptr %4, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3015, metadata ptr undef, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %4, metadata !1861, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %0, metadata !1862, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %1, metadata !1863, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %4, metadata !1861, metadata !DIExpression()), !dbg !3016
  store i32 10, ptr %4, align 8, !dbg !3018, !tbaa !1804, !DIAssignID !3019
  call void @llvm.dbg.assign(metadata i32 10, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3019, metadata ptr %4, metadata !DIExpression()), !dbg !3010
  %5 = icmp ne ptr %0, null, !dbg !3020
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3021
  br i1 %7, label %9, label %8, !dbg !3021

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3022
  unreachable, !dbg !3022

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3023
  store ptr %0, ptr %10, align 8, !dbg !3024, !tbaa !1875, !DIAssignID !3025
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3025, metadata ptr %10, metadata !DIExpression()), !dbg !3010
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3026
  store ptr %1, ptr %11, align 8, !dbg !3027, !tbaa !1878, !DIAssignID !3028
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3028, metadata ptr %11, metadata !DIExpression()), !dbg !3010
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3029
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3030
  ret ptr %12, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3032 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3040
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3037, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3038, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !3040, metadata ptr %5, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2950, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %1, metadata !2952, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %2, metadata !2953, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %3, metadata !2954, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3045, !tbaa.struct !2823, !DIAssignID !3046
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(), metadata !3046, metadata ptr %5, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3047, metadata ptr undef, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %0, metadata !1862, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %1, metadata !1863, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !3048
  store i32 10, ptr %5, align 8, !dbg !3050, !tbaa !1804, !DIAssignID !3051
  call void @llvm.dbg.assign(metadata i32 10, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3051, metadata ptr %5, metadata !DIExpression()), !dbg !3042
  %6 = icmp ne ptr %0, null, !dbg !3052
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3053
  br i1 %8, label %10, label %9, !dbg !3053

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3054
  unreachable, !dbg !3054

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3055
  store ptr %0, ptr %11, align 8, !dbg !3056, !tbaa !1875, !DIAssignID !3057
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3057, metadata ptr %11, metadata !DIExpression()), !dbg !3042
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3058
  store ptr %1, ptr %12, align 8, !dbg !3059, !tbaa !1878, !DIAssignID !3060
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2945, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3060, metadata ptr %12, metadata !DIExpression()), !dbg !3042
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3061
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3062
  ret ptr %13, !dbg !3063
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3064 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3068, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3069, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3070, metadata !DIExpression()), !dbg !3071
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3072
  ret ptr %4, !dbg !3073
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3074 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 0, metadata !3068, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3081
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3083
  ret ptr %3, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3085 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i32 %0, metadata !3068, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %1, metadata !3069, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 -1, metadata !3070, metadata !DIExpression()), !dbg !3092
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3094
  ret ptr %3, !dbg !3095
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3096 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !3068, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 -1, metadata !3070, metadata !DIExpression()), !dbg !3104
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3106
  ret ptr %2, !dbg !3107
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3147, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3148, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3149, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3150, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3151, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3152, metadata !DIExpression()), !dbg !3153
  %7 = icmp eq ptr %1, null, !dbg !3154
  br i1 %7, label %10, label %8, !dbg !3156

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3157
  br label %12, !dbg !3157

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %2, ptr noundef %3) #37, !dbg !3158
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.3.80, i32 noundef 5) #37, !dbg !3159
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3159
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3160
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.5.82, i32 noundef 5) #37, !dbg !3161
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.83) #37, !dbg !3161
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3162
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
  ], !dbg !3163

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.7.84, i32 noundef 5) #37, !dbg !3164
  %21 = load ptr, ptr %4, align 8, !dbg !3164, !tbaa !834
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3164
  br label %147, !dbg !3166

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.8.85, i32 noundef 5) #37, !dbg !3167
  %25 = load ptr, ptr %4, align 8, !dbg !3167, !tbaa !834
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3167
  %27 = load ptr, ptr %26, align 8, !dbg !3167, !tbaa !834
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3167
  br label %147, !dbg !3168

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.9.86, i32 noundef 5) #37, !dbg !3169
  %31 = load ptr, ptr %4, align 8, !dbg !3169, !tbaa !834
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3169
  %33 = load ptr, ptr %32, align 8, !dbg !3169, !tbaa !834
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3169
  %35 = load ptr, ptr %34, align 8, !dbg !3169, !tbaa !834
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3169
  br label %147, !dbg !3170

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.10.87, i32 noundef 5) #37, !dbg !3171
  %39 = load ptr, ptr %4, align 8, !dbg !3171, !tbaa !834
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3171
  %41 = load ptr, ptr %40, align 8, !dbg !3171, !tbaa !834
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3171
  %43 = load ptr, ptr %42, align 8, !dbg !3171, !tbaa !834
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3171
  %45 = load ptr, ptr %44, align 8, !dbg !3171, !tbaa !834
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3171
  br label %147, !dbg !3172

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.11.88, i32 noundef 5) #37, !dbg !3173
  %49 = load ptr, ptr %4, align 8, !dbg !3173, !tbaa !834
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3173
  %51 = load ptr, ptr %50, align 8, !dbg !3173, !tbaa !834
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3173
  %53 = load ptr, ptr %52, align 8, !dbg !3173, !tbaa !834
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3173
  %55 = load ptr, ptr %54, align 8, !dbg !3173, !tbaa !834
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3173
  %57 = load ptr, ptr %56, align 8, !dbg !3173, !tbaa !834
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3173
  br label %147, !dbg !3174

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.12.89, i32 noundef 5) #37, !dbg !3175
  %61 = load ptr, ptr %4, align 8, !dbg !3175, !tbaa !834
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3175
  %63 = load ptr, ptr %62, align 8, !dbg !3175, !tbaa !834
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3175
  %65 = load ptr, ptr %64, align 8, !dbg !3175, !tbaa !834
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3175
  %67 = load ptr, ptr %66, align 8, !dbg !3175, !tbaa !834
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3175
  %69 = load ptr, ptr %68, align 8, !dbg !3175, !tbaa !834
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3175
  %71 = load ptr, ptr %70, align 8, !dbg !3175, !tbaa !834
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3175
  br label %147, !dbg !3176

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.13.90, i32 noundef 5) #37, !dbg !3177
  %75 = load ptr, ptr %4, align 8, !dbg !3177, !tbaa !834
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3177
  %77 = load ptr, ptr %76, align 8, !dbg !3177, !tbaa !834
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3177
  %79 = load ptr, ptr %78, align 8, !dbg !3177, !tbaa !834
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3177
  %81 = load ptr, ptr %80, align 8, !dbg !3177, !tbaa !834
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3177
  %83 = load ptr, ptr %82, align 8, !dbg !3177, !tbaa !834
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3177
  %85 = load ptr, ptr %84, align 8, !dbg !3177, !tbaa !834
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3177
  %87 = load ptr, ptr %86, align 8, !dbg !3177, !tbaa !834
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3177
  br label %147, !dbg !3178

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.14.91, i32 noundef 5) #37, !dbg !3179
  %91 = load ptr, ptr %4, align 8, !dbg !3179, !tbaa !834
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3179
  %93 = load ptr, ptr %92, align 8, !dbg !3179, !tbaa !834
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3179
  %95 = load ptr, ptr %94, align 8, !dbg !3179, !tbaa !834
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3179
  %97 = load ptr, ptr %96, align 8, !dbg !3179, !tbaa !834
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3179
  %99 = load ptr, ptr %98, align 8, !dbg !3179, !tbaa !834
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3179
  %101 = load ptr, ptr %100, align 8, !dbg !3179, !tbaa !834
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3179
  %103 = load ptr, ptr %102, align 8, !dbg !3179, !tbaa !834
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3179
  %105 = load ptr, ptr %104, align 8, !dbg !3179, !tbaa !834
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3179
  br label %147, !dbg !3180

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.15.92, i32 noundef 5) #37, !dbg !3181
  %109 = load ptr, ptr %4, align 8, !dbg !3181, !tbaa !834
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3181
  %111 = load ptr, ptr %110, align 8, !dbg !3181, !tbaa !834
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3181
  %113 = load ptr, ptr %112, align 8, !dbg !3181, !tbaa !834
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3181
  %115 = load ptr, ptr %114, align 8, !dbg !3181, !tbaa !834
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3181
  %117 = load ptr, ptr %116, align 8, !dbg !3181, !tbaa !834
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3181
  %119 = load ptr, ptr %118, align 8, !dbg !3181, !tbaa !834
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3181
  %121 = load ptr, ptr %120, align 8, !dbg !3181, !tbaa !834
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3181
  %123 = load ptr, ptr %122, align 8, !dbg !3181, !tbaa !834
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3181
  %125 = load ptr, ptr %124, align 8, !dbg !3181, !tbaa !834
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3181
  br label %147, !dbg !3182

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.16.93, i32 noundef 5) #37, !dbg !3183
  %129 = load ptr, ptr %4, align 8, !dbg !3183, !tbaa !834
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3183
  %131 = load ptr, ptr %130, align 8, !dbg !3183, !tbaa !834
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3183
  %133 = load ptr, ptr %132, align 8, !dbg !3183, !tbaa !834
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3183
  %135 = load ptr, ptr %134, align 8, !dbg !3183, !tbaa !834
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3183
  %137 = load ptr, ptr %136, align 8, !dbg !3183, !tbaa !834
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3183
  %139 = load ptr, ptr %138, align 8, !dbg !3183, !tbaa !834
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3183
  %141 = load ptr, ptr %140, align 8, !dbg !3183, !tbaa !834
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3183
  %143 = load ptr, ptr %142, align 8, !dbg !3183, !tbaa !834
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3183
  %145 = load ptr, ptr %144, align 8, !dbg !3183, !tbaa !834
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3183
  br label %147, !dbg !3184

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3185
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3186 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3190, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3191, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3192, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3193, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3194, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3195, metadata !DIExpression()), !dbg !3196
  br label %6, !dbg !3197

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3195, metadata !DIExpression()), !dbg !3196
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3200
  %9 = load ptr, ptr %8, align 8, !dbg !3200, !tbaa !834
  %10 = icmp eq ptr %9, null, !dbg !3202
  %11 = add i64 %7, 1, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3195, metadata !DIExpression()), !dbg !3196
  br i1 %10, label %12, label %6, !dbg !3202, !llvm.loop !3204

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3199
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3206
  ret void, !dbg !3207
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3208 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3228, metadata !DIExpression(), metadata !3230, metadata ptr %6, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3223, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3224, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3225, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3231
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3227, metadata !DIExpression()), !dbg !3231
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3227, metadata !DIExpression()), !dbg !3231
  %10 = icmp sgt i32 %9, -1, !dbg !3233
  br i1 %10, label %18, label %11, !dbg !3233

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3233
  store i32 %12, ptr %7, align 8, !dbg !3233
  %13 = icmp ult i32 %9, -7, !dbg !3233
  br i1 %13, label %14, label %18, !dbg !3233

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3233
  %16 = sext i32 %9 to i64, !dbg !3233
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3233
  br label %22, !dbg !3233

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3233
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3233
  store ptr %21, ptr %4, align 8, !dbg !3233
  br label %22, !dbg !3233

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3233
  %25 = load ptr, ptr %24, align 8, !dbg !3233
  store ptr %25, ptr %6, align 8, !dbg !3236, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !3237
  br i1 %26, label %197, label %27, !dbg !3238

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3227, metadata !DIExpression()), !dbg !3231
  %28 = icmp sgt i32 %23, -1, !dbg !3233
  br i1 %28, label %36, label %29, !dbg !3233

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3233
  store i32 %30, ptr %7, align 8, !dbg !3233
  %31 = icmp ult i32 %23, -7, !dbg !3233
  br i1 %31, label %32, label %36, !dbg !3233

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3233
  %34 = sext i32 %23 to i64, !dbg !3233
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3233
  br label %40, !dbg !3233

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3233
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3233
  store ptr %39, ptr %4, align 8, !dbg !3233
  br label %40, !dbg !3233

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3233
  %43 = load ptr, ptr %42, align 8, !dbg !3233
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3239
  store ptr %43, ptr %44, align 8, !dbg !3236, !tbaa !834
  %45 = icmp eq ptr %43, null, !dbg !3237
  br i1 %45, label %197, label %46, !dbg !3238

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3227, metadata !DIExpression()), !dbg !3231
  %47 = icmp sgt i32 %41, -1, !dbg !3233
  br i1 %47, label %55, label %48, !dbg !3233

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3233
  store i32 %49, ptr %7, align 8, !dbg !3233
  %50 = icmp ult i32 %41, -7, !dbg !3233
  br i1 %50, label %51, label %55, !dbg !3233

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3233
  %53 = sext i32 %41 to i64, !dbg !3233
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3233
  br label %59, !dbg !3233

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3233
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3233
  store ptr %58, ptr %4, align 8, !dbg !3233
  br label %59, !dbg !3233

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3233
  %62 = load ptr, ptr %61, align 8, !dbg !3233
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3239
  store ptr %62, ptr %63, align 8, !dbg !3236, !tbaa !834
  %64 = icmp eq ptr %62, null, !dbg !3237
  br i1 %64, label %197, label %65, !dbg !3238

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3227, metadata !DIExpression()), !dbg !3231
  %66 = icmp sgt i32 %60, -1, !dbg !3233
  br i1 %66, label %74, label %67, !dbg !3233

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3233
  store i32 %68, ptr %7, align 8, !dbg !3233
  %69 = icmp ult i32 %60, -7, !dbg !3233
  br i1 %69, label %70, label %74, !dbg !3233

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3233
  %72 = sext i32 %60 to i64, !dbg !3233
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3233
  br label %78, !dbg !3233

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3233
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3233
  store ptr %77, ptr %4, align 8, !dbg !3233
  br label %78, !dbg !3233

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3233
  %81 = load ptr, ptr %80, align 8, !dbg !3233
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3239
  store ptr %81, ptr %82, align 8, !dbg !3236, !tbaa !834
  %83 = icmp eq ptr %81, null, !dbg !3237
  br i1 %83, label %197, label %84, !dbg !3238

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3227, metadata !DIExpression()), !dbg !3231
  %85 = icmp sgt i32 %79, -1, !dbg !3233
  br i1 %85, label %93, label %86, !dbg !3233

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3233
  store i32 %87, ptr %7, align 8, !dbg !3233
  %88 = icmp ult i32 %79, -7, !dbg !3233
  br i1 %88, label %89, label %93, !dbg !3233

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3233
  %91 = sext i32 %79 to i64, !dbg !3233
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3233
  br label %97, !dbg !3233

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3233
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3233
  store ptr %96, ptr %4, align 8, !dbg !3233
  br label %97, !dbg !3233

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3233
  %100 = load ptr, ptr %99, align 8, !dbg !3233
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3239
  store ptr %100, ptr %101, align 8, !dbg !3236, !tbaa !834
  %102 = icmp eq ptr %100, null, !dbg !3237
  br i1 %102, label %197, label %103, !dbg !3238

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3227, metadata !DIExpression()), !dbg !3231
  %104 = icmp sgt i32 %98, -1, !dbg !3233
  br i1 %104, label %112, label %105, !dbg !3233

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3233
  store i32 %106, ptr %7, align 8, !dbg !3233
  %107 = icmp ult i32 %98, -7, !dbg !3233
  br i1 %107, label %108, label %112, !dbg !3233

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3233
  %110 = sext i32 %98 to i64, !dbg !3233
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3233
  br label %116, !dbg !3233

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3233
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3233
  store ptr %115, ptr %4, align 8, !dbg !3233
  br label %116, !dbg !3233

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3233
  %119 = load ptr, ptr %118, align 8, !dbg !3233
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3239
  store ptr %119, ptr %120, align 8, !dbg !3236, !tbaa !834
  %121 = icmp eq ptr %119, null, !dbg !3237
  br i1 %121, label %197, label %122, !dbg !3238

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3227, metadata !DIExpression()), !dbg !3231
  %123 = icmp sgt i32 %117, -1, !dbg !3233
  br i1 %123, label %131, label %124, !dbg !3233

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3233
  store i32 %125, ptr %7, align 8, !dbg !3233
  %126 = icmp ult i32 %117, -7, !dbg !3233
  br i1 %126, label %127, label %131, !dbg !3233

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3233
  %129 = sext i32 %117 to i64, !dbg !3233
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3233
  br label %135, !dbg !3233

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3233
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3233
  store ptr %134, ptr %4, align 8, !dbg !3233
  br label %135, !dbg !3233

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3233
  %138 = load ptr, ptr %137, align 8, !dbg !3233
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3239
  store ptr %138, ptr %139, align 8, !dbg !3236, !tbaa !834
  %140 = icmp eq ptr %138, null, !dbg !3237
  br i1 %140, label %197, label %141, !dbg !3238

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3227, metadata !DIExpression()), !dbg !3231
  %142 = icmp sgt i32 %136, -1, !dbg !3233
  br i1 %142, label %150, label %143, !dbg !3233

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3233
  store i32 %144, ptr %7, align 8, !dbg !3233
  %145 = icmp ult i32 %136, -7, !dbg !3233
  br i1 %145, label %146, label %150, !dbg !3233

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3233
  %148 = sext i32 %136 to i64, !dbg !3233
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3233
  br label %154, !dbg !3233

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3233
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3233
  store ptr %153, ptr %4, align 8, !dbg !3233
  br label %154, !dbg !3233

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3233
  %157 = load ptr, ptr %156, align 8, !dbg !3233
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3239
  store ptr %157, ptr %158, align 8, !dbg !3236, !tbaa !834
  %159 = icmp eq ptr %157, null, !dbg !3237
  br i1 %159, label %197, label %160, !dbg !3238

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3227, metadata !DIExpression()), !dbg !3231
  %161 = icmp sgt i32 %155, -1, !dbg !3233
  br i1 %161, label %169, label %162, !dbg !3233

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3233
  store i32 %163, ptr %7, align 8, !dbg !3233
  %164 = icmp ult i32 %155, -7, !dbg !3233
  br i1 %164, label %165, label %169, !dbg !3233

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3233
  %167 = sext i32 %155 to i64, !dbg !3233
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3233
  br label %173, !dbg !3233

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3233
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3233
  store ptr %172, ptr %4, align 8, !dbg !3233
  br label %173, !dbg !3233

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3233
  %176 = load ptr, ptr %175, align 8, !dbg !3233
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3239
  store ptr %176, ptr %177, align 8, !dbg !3236, !tbaa !834
  %178 = icmp eq ptr %176, null, !dbg !3237
  br i1 %178, label %197, label %179, !dbg !3238

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3227, metadata !DIExpression()), !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3227, metadata !DIExpression()), !dbg !3231
  %180 = icmp sgt i32 %174, -1, !dbg !3233
  br i1 %180, label %188, label %181, !dbg !3233

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3233
  store i32 %182, ptr %7, align 8, !dbg !3233
  %183 = icmp ult i32 %174, -7, !dbg !3233
  br i1 %183, label %184, label %188, !dbg !3233

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3233
  %186 = sext i32 %174 to i64, !dbg !3233
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3233
  br label %191, !dbg !3233

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3233
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3233
  store ptr %190, ptr %4, align 8, !dbg !3233
  br label %191, !dbg !3233

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3233
  %193 = load ptr, ptr %192, align 8, !dbg !3233
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3239
  store ptr %193, ptr %194, align 8, !dbg !3236, !tbaa !834
  %195 = icmp eq ptr %193, null, !dbg !3237
  %196 = select i1 %195, i64 9, i64 10, !dbg !3238
  br label %197, !dbg !3238

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3240
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3241
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3242
  ret void, !dbg !3242
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3243 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3251, metadata !DIExpression(), metadata !3252, metadata ptr %5, metadata !DIExpression()), !dbg !3253
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3247, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3248, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3249, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3254
  call void @llvm.va_start(ptr nonnull %5), !dbg !3255
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3256, !tbaa.struct !1466
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3256
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3256
  call void @llvm.va_end(ptr nonnull %5), !dbg !3257
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3258
  ret void, !dbg !3258
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3259 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3260, !tbaa !834
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %1), !dbg !3260
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.17.98, i32 noundef 5) #37, !dbg !3261
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.99) #37, !dbg !3261
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.19.100, i32 noundef 5) #37, !dbg !3262
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.101, ptr noundef nonnull @.str.21.102) #37, !dbg !3262
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3263
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3263
  ret void, !dbg !3264
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3265 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3279
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3281
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3287
  %5 = icmp eq ptr %4, null, !dbg !3289
  br i1 %5, label %6, label %7, !dbg !3291

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3292
  unreachable, !dbg !3292

7:                                                ; preds = %3
  ret ptr %4, !dbg !3293
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3277, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3294
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3296
  %5 = icmp eq ptr %4, null, !dbg !3298
  br i1 %5, label %6, label %7, !dbg !3299

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3300
  unreachable, !dbg !3300

7:                                                ; preds = %3
  ret ptr %4, !dbg !3301
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3302 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3307
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3309
  %3 = icmp eq ptr %2, null, !dbg !3311
  br i1 %3, label %4, label %5, !dbg !3312

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3313
  unreachable, !dbg !3313

5:                                                ; preds = %1
  ret ptr %2, !dbg !3314
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3315 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3316 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %0, metadata !3322, metadata !DIExpression()), !dbg !3326
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3329
  %3 = icmp eq ptr %2, null, !dbg !3331
  br i1 %3, label %4, label %5, !dbg !3332

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3333
  unreachable, !dbg !3333

5:                                                ; preds = %1
  ret ptr %2, !dbg !3334
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3335 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3341
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3344
  %3 = icmp eq ptr %2, null, !dbg !3346
  br i1 %3, label %4, label %5, !dbg !3347

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3348
  unreachable, !dbg !3348

5:                                                ; preds = %1
  ret ptr %2, !dbg !3349
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3354, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3362
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3364
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3365
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3366
  %5 = icmp eq ptr %4, null, !dbg !3368
  br i1 %5, label %6, label %7, !dbg !3369

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3370
  unreachable, !dbg !3370

7:                                                ; preds = %2
  ret ptr %4, !dbg !3371
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3372 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3373 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %1, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %1, metadata !3361, metadata !DIExpression()), !dbg !3386
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3388
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3389
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3390
  %5 = icmp eq ptr %4, null, !dbg !3392
  br i1 %5, label %6, label %7, !dbg !3393

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3394
  unreachable, !dbg !3394

7:                                                ; preds = %2
  ret ptr %4, !dbg !3395
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %2, metadata !3408, metadata !DIExpression()), !dbg !3409
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3412
  %5 = icmp eq ptr %4, null, !dbg !3414
  br i1 %5, label %6, label %7, !dbg !3415

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3416
  unreachable, !dbg !3416

7:                                                ; preds = %3
  ret ptr %4, !dbg !3417
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3422, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr null, metadata !3274, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3425
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3428
  %4 = icmp eq ptr %3, null, !dbg !3430
  br i1 %4, label %5, label %6, !dbg !3431

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3432
  unreachable, !dbg !3432

6:                                                ; preds = %2
  ret ptr %3, !dbg !3433
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3438, metadata !DIExpression()), !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr null, metadata !3400, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %0, metadata !3401, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata ptr null, metadata !3404, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %0, metadata !3407, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3408, metadata !DIExpression()), !dbg !3443
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3445
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3446
  %4 = icmp eq ptr %3, null, !dbg !3448
  br i1 %4, label %5, label %6, !dbg !3449

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3450
  unreachable, !dbg !3450

6:                                                ; preds = %2
  ret ptr %3, !dbg !3451
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3456, metadata !DIExpression()), !dbg !3458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 1, metadata !729, metadata !DIExpression()), !dbg !3459
  %3 = load i64, ptr %1, align 8, !dbg !3461, !tbaa !2529
  call void @llvm.dbg.value(metadata i64 %3, metadata !730, metadata !DIExpression()), !dbg !3459
  %4 = icmp eq ptr %0, null, !dbg !3462
  br i1 %4, label %5, label %8, !dbg !3464

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3465
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3468
  br label %15, !dbg !3468

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3469
  %10 = add nuw i64 %9, 1, !dbg !3469
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3469
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3469
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %13, metadata !730, metadata !DIExpression()), !dbg !3459
  br i1 %12, label %14, label %15, !dbg !3472

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3473
  unreachable, !dbg !3473

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3459
  call void @llvm.dbg.value(metadata i64 %16, metadata !730, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %16, metadata !3277, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 1, metadata !3278, metadata !DIExpression()), !dbg !3474
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %17, metadata !3282, metadata !DIExpression()), !dbg !3477
  %18 = icmp eq ptr %17, null, !dbg !3479
  br i1 %18, label %19, label %20, !dbg !3480

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3481
  unreachable, !dbg !3481

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !727, metadata !DIExpression()), !dbg !3459
  store i64 %16, ptr %1, align 8, !dbg !3482, !tbaa !2529
  ret ptr %17, !dbg !3483
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !722 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !729, metadata !DIExpression()), !dbg !3484
  %4 = load i64, ptr %1, align 8, !dbg !3485, !tbaa !2529
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !730, metadata !DIExpression()), !dbg !3484
  %5 = icmp eq ptr %0, null, !dbg !3486
  br i1 %5, label %6, label %13, !dbg !3487

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3488
  br i1 %7, label %8, label %20, !dbg !3489

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !730, metadata !DIExpression()), !dbg !3484
  %10 = icmp ugt i64 %2, 128, !dbg !3492
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !730, metadata !DIExpression()), !dbg !3484
  br label %20, !dbg !3494

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3495
  %15 = add nuw i64 %14, 1, !dbg !3495
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3495
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3495
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !730, metadata !DIExpression()), !dbg !3484
  br i1 %17, label %19, label %20, !dbg !3496

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3497
  unreachable, !dbg !3497

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !730, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %0, metadata !3274, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %21, metadata !3277, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3498
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %22, metadata !3282, metadata !DIExpression()), !dbg !3501
  %23 = icmp eq ptr %22, null, !dbg !3503
  br i1 %23, label %24, label %25, !dbg !3504

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3505
  unreachable, !dbg !3505

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !727, metadata !DIExpression()), !dbg !3484
  store i64 %21, ptr %1, align 8, !dbg !3506, !tbaa !2529
  ret ptr %22, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !743, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !744, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !745, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !746, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !747, metadata !DIExpression()), !dbg !3508
  %6 = load i64, ptr %1, align 8, !dbg !3509, !tbaa !2529
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !748, metadata !DIExpression()), !dbg !3508
  %7 = ashr i64 %6, 1, !dbg !3510
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3510
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3510
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !749, metadata !DIExpression()), !dbg !3508
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3512
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !749, metadata !DIExpression()), !dbg !3508
  %12 = icmp sgt i64 %3, -1, !dbg !3513
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3515
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !749, metadata !DIExpression()), !dbg !3508
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3516
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3516
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !750, metadata !DIExpression()), !dbg !3508
  %18 = icmp slt i64 %17, 128, !dbg !3516
  %19 = select i1 %18, i64 128, i64 0, !dbg !3516
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !751, metadata !DIExpression()), !dbg !3508
  %21 = icmp eq i64 %20, 0, !dbg !3517
  br i1 %21, label %28, label %22, !dbg !3519

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !749, metadata !DIExpression()), !dbg !3508
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !750, metadata !DIExpression()), !dbg !3508
  br label %28, !dbg !3523

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3508
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !750, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !749, metadata !DIExpression()), !dbg !3508
  %31 = icmp eq ptr %0, null, !dbg !3524
  br i1 %31, label %32, label %33, !dbg !3526

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3527, !tbaa !2529
  br label %33, !dbg !3528

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3529
  %35 = icmp slt i64 %34, %2, !dbg !3531
  br i1 %35, label %36, label %48, !dbg !3532

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3533
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3533
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !749, metadata !DIExpression()), !dbg !3508
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3534
  br i1 %42, label %47, label %43, !dbg !3534

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3535
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3535
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !750, metadata !DIExpression()), !dbg !3508
  br i1 %45, label %47, label %48, !dbg !3536

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3537
  unreachable, !dbg !3537

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3508
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !750, metadata !DIExpression()), !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !749, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata ptr %0, metadata !3354, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %50, metadata !3355, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %50, metadata !3361, metadata !DIExpression()), !dbg !3540
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3542
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %52, metadata !3282, metadata !DIExpression()), !dbg !3544
  %53 = icmp eq ptr %52, null, !dbg !3546
  br i1 %53, label %54, label %55, !dbg !3547

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3548
  unreachable, !dbg !3548

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !743, metadata !DIExpression()), !dbg !3508
  store i64 %49, ptr %1, align 8, !dbg !3549, !tbaa !2529
  ret ptr %52, !dbg !3550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3551 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %0, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 1, metadata !3558, metadata !DIExpression()), !dbg !3559
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3561
  call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3562
  %3 = icmp eq ptr %2, null, !dbg !3564
  br i1 %3, label %4, label %5, !dbg !3565

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3566
  unreachable, !dbg !3566

5:                                                ; preds = %1
  ret ptr %2, !dbg !3567
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3568 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3556 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3555, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3569
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3571
  %4 = icmp eq ptr %3, null, !dbg !3573
  br i1 %4, label %5, label %6, !dbg !3574

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3575
  unreachable, !dbg !3575

6:                                                ; preds = %2
  ret ptr %3, !dbg !3576
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3577 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %0, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 1, metadata !3584, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %0, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 1, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %0, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 1, metadata !3590, metadata !DIExpression()), !dbg !3591
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %2, metadata !3282, metadata !DIExpression()), !dbg !3594
  %3 = icmp eq ptr %2, null, !dbg !3596
  br i1 %3, label %4, label %5, !dbg !3597

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3598
  unreachable, !dbg !3598

5:                                                ; preds = %1
  ret ptr %2, !dbg !3599
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3581, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3584, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %0, metadata !3587, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %0, metadata !3587, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3601
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3603
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3604
  %4 = icmp eq ptr %3, null, !dbg !3606
  br i1 %4, label %5, label %6, !dbg !3607

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3608
  unreachable, !dbg !3608

6:                                                ; preds = %2
  ret ptr %3, !dbg !3609
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3614, metadata !DIExpression()), !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3615, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3617
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3619
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3620
  %4 = icmp eq ptr %3, null, !dbg !3622
  br i1 %4, label %5, label %6, !dbg !3623

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3624
  unreachable, !dbg !3624

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3625, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3633
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3635
  ret ptr %3, !dbg !3636
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3637 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3646
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3648
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3649
  %4 = icmp eq ptr %3, null, !dbg !3651
  br i1 %4, label %5, label %6, !dbg !3652

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3653
  unreachable, !dbg !3653

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3625, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3656
  ret ptr %3, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3658 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3662, metadata !DIExpression()), !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3663, metadata !DIExpression()), !dbg !3665
  %3 = add nsw i64 %1, 1, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %3, metadata !3322, metadata !DIExpression()), !dbg !3669
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3671
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3672
  %5 = icmp eq ptr %4, null, !dbg !3674
  br i1 %5, label %6, label %7, !dbg !3675

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3676
  unreachable, !dbg !3676

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3664, metadata !DIExpression()), !dbg !3665
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3677
  store i8 0, ptr %8, align 1, !dbg !3678, !tbaa !903
  call void @llvm.dbg.value(metadata ptr %4, metadata !3625, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3681
  ret ptr %4, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3686
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3687
  %3 = add i64 %2, 1, !dbg !3688
  call void @llvm.dbg.value(metadata ptr %0, metadata !3614, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %3, metadata !3615, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %3, metadata !3306, metadata !DIExpression()), !dbg !3691
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3693
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3694
  %5 = icmp eq ptr %4, null, !dbg !3696
  br i1 %5, label %6, label %7, !dbg !3697

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3698
  unreachable, !dbg !3698

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3625, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %3, metadata !3632, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3701
  ret ptr %4, !dbg !3702
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3703 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3708, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3705, metadata !DIExpression()), !dbg !3709
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.113, ptr noundef nonnull @.str.2.114, i32 noundef 5) #37, !dbg !3708
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef %2) #37, !dbg !3708
  %3 = icmp eq i32 %1, 0, !dbg !3708
  tail call void @llvm.assume(i1 %3), !dbg !3708
  tail call void @abort() #39, !dbg !3710
  unreachable, !dbg !3710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3714, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3715, metadata !DIExpression()), !dbg !3717
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #37, !dbg !3718
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3716, metadata !DIExpression()), !dbg !3717
  %5 = icmp eq i32 %4, -1, !dbg !3719
  br i1 %5, label %6, label %11, !dbg !3721

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3722
  %8 = load i32, ptr %7, align 4, !dbg !3722, !tbaa !894
  %9 = icmp eq i32 %8, 12, !dbg !3723
  br i1 %9, label %10, label %11, !dbg !3724

10:                                               ; preds = %6
  tail call void @xalloc_die() #39, !dbg !3725
  unreachable, !dbg !3725

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3726
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3770
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3766, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3775
  %3 = load i32, ptr %0, align 8, !dbg !3777, !tbaa !1172
  %4 = and i32 %3, 32, !dbg !3778
  %5 = icmp eq i32 %4, 0, !dbg !3778
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3768, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3779
  %7 = icmp eq i32 %6, 0, !dbg !3780
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3769, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  br i1 %5, label %8, label %18, !dbg !3781

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3783
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3766, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3784
  %11 = xor i1 %7, true, !dbg !3784
  %12 = sext i1 %11 to i32, !dbg !3784
  br i1 %10, label %21, label %13, !dbg !3784

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3785
  %15 = load i32, ptr %14, align 4, !dbg !3785, !tbaa !894
  %16 = icmp ne i32 %15, 9, !dbg !3786
  %17 = sext i1 %16 to i32, !dbg !3787
  br label %21, !dbg !3787

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3788

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3790
  store i32 0, ptr %20, align 4, !dbg !3792, !tbaa !894
  br label %21, !dbg !3790

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3770
  ret i32 %22, !dbg !3793
}

; Function Attrs: nounwind
declare !dbg !3794 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3797 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3835, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3839
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3837, metadata !DIExpression()), !dbg !3839
  %3 = icmp slt i32 %2, 0, !dbg !3841
  br i1 %3, label %4, label %6, !dbg !3843

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3844
  br label %24, !dbg !3845

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3846
  %8 = icmp eq i32 %7, 0, !dbg !3846
  br i1 %8, label %13, label %9, !dbg !3848

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3849
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3850
  %12 = icmp eq i64 %11, -1, !dbg !3851
  br i1 %12, label %16, label %13, !dbg !3852

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3853
  %15 = icmp eq i32 %14, 0, !dbg !3853
  br i1 %15, label %16, label %18, !dbg !3854

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()), !dbg !3839
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3838, metadata !DIExpression()), !dbg !3839
  br label %24, !dbg !3856

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3857
  %20 = load i32, ptr %19, align 4, !dbg !3857, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3836, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()), !dbg !3839
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3838, metadata !DIExpression()), !dbg !3839
  %22 = icmp eq i32 %20, 0, !dbg !3858
  br i1 %22, label %24, label %23, !dbg !3856

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3860, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3838, metadata !DIExpression()), !dbg !3839
  br label %24, !dbg !3862

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3839
  ret i32 %25, !dbg !3863
}

; Function Attrs: nofree nounwind
declare !dbg !3864 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3865 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3866 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3867 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3909
  %2 = icmp eq ptr %0, null, !dbg !3910
  br i1 %2, label %6, label %3, !dbg !3912

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3913
  %5 = icmp eq i32 %4, 0, !dbg !3913
  br i1 %5, label %6, label %8, !dbg !3914

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3915
  br label %16, !dbg !3916

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !3922
  %9 = load i32, ptr %0, align 8, !dbg !3924, !tbaa !1172
  %10 = and i32 %9, 256, !dbg !3926
  %11 = icmp eq i32 %10, 0, !dbg !3926
  br i1 %11, label %14, label %12, !dbg !3927

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3928
  br label %14, !dbg !3928

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3929
  br label %16, !dbg !3930

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3909
  ret i32 %17, !dbg !3931
}

; Function Attrs: nofree nounwind
declare !dbg !3932 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3972, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3973, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3974, metadata !DIExpression()), !dbg !3978
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3979
  %5 = load ptr, ptr %4, align 8, !dbg !3979, !tbaa !3980
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3981
  %7 = load ptr, ptr %6, align 8, !dbg !3981, !tbaa !3982
  %8 = icmp eq ptr %5, %7, !dbg !3983
  br i1 %8, label %9, label %27, !dbg !3984

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3985
  %11 = load ptr, ptr %10, align 8, !dbg !3985, !tbaa !1134
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3986
  %13 = load ptr, ptr %12, align 8, !dbg !3986, !tbaa !3987
  %14 = icmp eq ptr %11, %13, !dbg !3988
  br i1 %14, label %15, label %27, !dbg !3989

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3990
  %17 = load ptr, ptr %16, align 8, !dbg !3990, !tbaa !3991
  %18 = icmp eq ptr %17, null, !dbg !3992
  br i1 %18, label %19, label %27, !dbg !3993

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3994
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3975, metadata !DIExpression()), !dbg !3996
  %22 = icmp eq i64 %21, -1, !dbg !3997
  br i1 %22, label %29, label %23, !dbg !3999

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4000, !tbaa !1172
  %25 = and i32 %24, -17, !dbg !4000
  store i32 %25, ptr %0, align 8, !dbg !4000, !tbaa !1172
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4001
  store i64 %21, ptr %26, align 8, !dbg !4002, !tbaa !4003
  br label %29, !dbg !4004

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4005
  br label %29, !dbg !4006

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3978
  ret i32 %30, !dbg !4007
}

; Function Attrs: nofree nounwind
declare !dbg !4008 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4011 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4017, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4018, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4019, metadata !DIExpression()), !dbg !4021
  %5 = icmp eq ptr %1, null, !dbg !4022
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4024
  %7 = select i1 %5, ptr @.str.128, ptr %1, !dbg !4024
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4024
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4018, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4017, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4016, metadata !DIExpression()), !dbg !4021
  %9 = icmp eq ptr %3, null, !dbg !4025
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4027
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4019, metadata !DIExpression()), !dbg !4021
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4020, metadata !DIExpression()), !dbg !4021
  %12 = icmp ult i64 %11, -3, !dbg !4029
  br i1 %12, label %13, label %17, !dbg !4031

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4032
  %15 = icmp eq i32 %14, 0, !dbg !4032
  br i1 %15, label %16, label %29, !dbg !4033

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4034, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %10, metadata !4041, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 8, metadata !4045, metadata !DIExpression()), !dbg !4046
  store i64 0, ptr %10, align 1, !dbg !4048
  br label %29, !dbg !4049

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4050
  br i1 %18, label %19, label %20, !dbg !4052

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4053
  unreachable, !dbg !4053

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4054

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4056
  br i1 %23, label %29, label %24, !dbg !4057

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4058
  br i1 %25, label %29, label %26, !dbg !4061

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4062, !tbaa !903
  %28 = zext i8 %27 to i32, !dbg !4063
  store i32 %28, ptr %6, align 4, !dbg !4064, !tbaa !894
  br label %29, !dbg !4065

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4021
  ret i64 %30, !dbg !4066
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4067 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !769 {
  %4 = alloca i32, align 4, !DIAssignID !4073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !781, metadata !DIExpression(), metadata !4073, metadata ptr %4, metadata !DIExpression()), !dbg !4074
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !780, metadata !DIExpression()), !dbg !4075
  %5 = icmp eq ptr %0, null, !dbg !4076
  br i1 %5, label %37, label %6, !dbg !4077

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !4078
  store i32 10, ptr %4, align 4, !dbg !4079, !tbaa !894, !DIAssignID !4080
  call void @llvm.dbg.assign(metadata i32 10, metadata !781, metadata !DIExpression(), metadata !4080, metadata ptr %4, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr null, metadata !4081, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 10, metadata !4086, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 40, metadata !4092, metadata !DIExpression()), !dbg !4093
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4095
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !784, metadata !DIExpression()), !dbg !4074
  %8 = icmp eq ptr %7, null, !dbg !4096
  br i1 %8, label %35, label %.preheader, !dbg !4098

.preheader:                                       ; preds = %6
  br label %9, !dbg !4099

9:                                                ; preds = %.preheader, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %.preheader ], !dbg !4100
  %11 = phi ptr [ %28, %32 ], [ %7, %.preheader ], !dbg !4101
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !784, metadata !DIExpression()), !dbg !4074
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !785, metadata !DIExpression()), !dbg !4102
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #37, !dbg !4103
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !787, metadata !DIExpression()), !dbg !4102
  %13 = icmp slt i32 %12, 0, !dbg !4104
  %14 = load i32, ptr %4, align 4, !dbg !4106, !tbaa !894
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4107
  br i1 %16, label %17, label %19, !dbg !4107

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4108
  store i32 %18, ptr %4, align 4, !dbg !4108, !tbaa !894, !DIAssignID !4109
  call void @llvm.dbg.assign(metadata i32 %18, metadata !781, metadata !DIExpression(), metadata !4109, metadata ptr %4, metadata !DIExpression()), !dbg !4074
  br label %19, !dbg !4110

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4106
  call void @llvm.dbg.value(metadata ptr %11, metadata !4081, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 %20, metadata !4086, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4111
  %21 = icmp slt i32 %20, 0, !dbg !4113
  br i1 %21, label %22, label %24, !dbg !4115

22:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %11, %19 ], !dbg !4101
  %23 = tail call ptr @__errno_location() #40, !dbg !4116
  store i32 12, ptr %23, align 4, !dbg !4118, !tbaa !894
  tail call void @llvm.dbg.value(metadata ptr null, metadata !788, metadata !DIExpression()), !dbg !4102
  br label %30, !dbg !4119

24:                                               ; preds = %19
  %25 = zext nneg i32 %20 to i64, !dbg !4106
  call void @llvm.dbg.value(metadata i32 %20, metadata !4086, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4111
  %26 = shl nuw nsw i64 %25, 2, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %11, metadata !4089, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %26, metadata !4092, metadata !DIExpression()), !dbg !4121
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 1), !dbg !4123
  %28 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %27) #43, !dbg !4124
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !788, metadata !DIExpression()), !dbg !4102
  %29 = icmp eq ptr %28, null, !dbg !4125
  br i1 %29, label %.loopexit1, label %32, !dbg !4119

.loopexit1:                                       ; preds = %24
  %.lcssa3 = phi ptr [ %11, %24 ], !dbg !4101
  br label %30, !dbg !4127

30:                                               ; preds = %.loopexit1, %22
  %31 = phi ptr [ %.lcssa3, %.loopexit1 ], [ %.lcssa2, %22 ]
  call void @free(ptr noundef nonnull %31) #37, !dbg !4127
  br label %35, !dbg !4129

32:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !784, metadata !DIExpression()), !dbg !4074
  %33 = icmp sgt i32 %12, -1, !dbg !4130
  br i1 %33, label %34, label %9, !dbg !4132, !llvm.loop !4133

34:                                               ; preds = %32
  %.lcssa9 = phi ptr [ %28, %32 ], !dbg !4124
  %.lcssa7 = phi i32 [ %20, %32 ], !dbg !4106
  store ptr %.lcssa9, ptr %2, align 8, !dbg !4135, !tbaa !834
  br label %35, !dbg !4137

35:                                               ; preds = %34, %30, %6
  %36 = phi i32 [ -1, %6 ], [ %.lcssa7, %34 ], [ -1, %30 ], !dbg !4074
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !4138
  br label %99

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #37, !dbg !4139
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !789, metadata !DIExpression()), !dbg !4075
  %39 = icmp slt i32 %38, 0, !dbg !4140
  br i1 %39, label %40, label %50, !dbg !4141

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #40, !dbg !4142
  %42 = load i32, ptr %41, align 4, !dbg !4142, !tbaa !894
  %43 = icmp eq i32 %42, 38, !dbg !4143
  br i1 %43, label %44, label %99, !dbg !4144

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !4081, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 1, metadata !4086, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 4, metadata !4092, metadata !DIExpression()), !dbg !4147
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !4149
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !790, metadata !DIExpression()), !dbg !4150
  %46 = icmp eq ptr %45, null, !dbg !4151
  br i1 %46, label %99, label %47, !dbg !4153

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !4154, !tbaa !834
  store i32 %1, ptr %45, align 4, !dbg !4156, !tbaa !894
  %48 = icmp ne i32 %1, -1, !dbg !4157
  %49 = zext i1 %48 to i32, !dbg !4157
  br label %99

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !4158
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !4160
  %54 = zext i1 %53 to i32, !dbg !4160
  %55 = add nuw nsw i32 %38, %54, !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !789, metadata !DIExpression()), !dbg !4075
  %56 = zext nneg i32 %55 to i64, !dbg !4161
  call void @llvm.dbg.value(metadata ptr null, metadata !4081, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %56, metadata !4086, metadata !DIExpression()), !dbg !4162
  %57 = shl nuw nsw i64 %56, 2, !dbg !4164
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 %57, metadata !4092, metadata !DIExpression()), !dbg !4165
  %58 = tail call i64 @llvm.umax.i64(i64 %57, i64 1), !dbg !4167
  %59 = tail call ptr @malloc(i64 %58), !dbg !4168
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !795, metadata !DIExpression()), !dbg !4075
  %60 = icmp eq ptr %59, null, !dbg !4169
  br i1 %60, label %99, label %61, !dbg !4171

61:                                               ; preds = %50
  %62 = sext i1 %52 to i32, !dbg !4172
  %63 = add nsw i32 %55, %62, !dbg !4173
  %64 = zext i1 %52 to i64
  %65 = getelementptr inbounds i32, ptr %59, i64 %64, !dbg !4174
  %66 = tail call i32 @getgroups(i32 noundef %63, ptr noundef nonnull %65) #37, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !796, metadata !DIExpression()), !dbg !4075
  %67 = icmp slt i32 %66, 0, !dbg !4176
  br i1 %67, label %68, label %69, !dbg !4178

68:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %59) #37, !dbg !4179
  br label %99, !dbg !4181

69:                                               ; preds = %61
  br i1 %52, label %70, label %72, !dbg !4182

70:                                               ; preds = %69
  store i32 %1, ptr %59, align 4, !dbg !4184, !tbaa !894
  %71 = add nuw nsw i32 %66, 1, !dbg !4186
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !796, metadata !DIExpression()), !dbg !4075
  br label %72, !dbg !4187

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %71, %70 ], [ %66, %69 ], !dbg !4075
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !796, metadata !DIExpression()), !dbg !4075
  store ptr %59, ptr %2, align 8, !dbg !4188, !tbaa !834
  %74 = icmp ugt i32 %73, 1, !dbg !4189
  br i1 %74, label %75, label %99, !dbg !4190

75:                                               ; preds = %72
  %76 = load i32, ptr %59, align 4, !dbg !4191, !tbaa !894
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !797, metadata !DIExpression()), !dbg !4192
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds i32, ptr %59, i64 %77, !dbg !4193
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !800, metadata !DIExpression()), !dbg !4192
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !801, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4194
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !796, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !795, metadata !DIExpression()), !dbg !4075
  %79 = getelementptr inbounds i32, ptr %59, i64 1, !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !801, metadata !DIExpression()), !dbg !4194
  br label %80, !dbg !4196

80:                                               ; preds = %75, %93
  %81 = phi i32 [ %94, %93 ], [ %76, %75 ]
  %82 = phi ptr [ %97, %93 ], [ %79, %75 ]
  %83 = phi i32 [ %96, %93 ], [ %73, %75 ]
  %84 = phi ptr [ %95, %93 ], [ %59, %75 ]
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !796, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !795, metadata !DIExpression()), !dbg !4075
  %85 = load i32, ptr %82, align 4, !dbg !4197, !tbaa !894
  %86 = icmp eq i32 %85, %76, !dbg !4201
  %87 = icmp eq i32 %85, %81
  %88 = select i1 %86, i1 true, i1 %87, !dbg !4202
  br i1 %88, label %89, label %91, !dbg !4202

89:                                               ; preds = %80
  %90 = add nsw i32 %83, -1, !dbg !4203
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !796, metadata !DIExpression()), !dbg !4075
  br label %93, !dbg !4204

91:                                               ; preds = %80
  %92 = getelementptr inbounds i32, ptr %84, i64 1, !dbg !4205
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !795, metadata !DIExpression()), !dbg !4075
  store i32 %85, ptr %92, align 4, !dbg !4206, !tbaa !894
  br label %93

93:                                               ; preds = %89, %91
  %94 = phi i32 [ %81, %89 ], [ %85, %91 ]
  %95 = phi ptr [ %84, %89 ], [ %92, %91 ], !dbg !4075
  %96 = phi i32 [ %90, %89 ], [ %83, %91 ], !dbg !4075
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !796, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !795, metadata !DIExpression()), !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !801, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4194
  %97 = getelementptr inbounds i32, ptr %82, i64 1, !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !801, metadata !DIExpression()), !dbg !4194
  %98 = icmp ult ptr %97, %78, !dbg !4207
  br i1 %98, label %80, label %.loopexit, !dbg !4196, !llvm.loop !4208

.loopexit:                                        ; preds = %93
  %.lcssa = phi i32 [ %96, %93 ], !dbg !4075
  br label %99, !dbg !4210

99:                                               ; preds = %.loopexit, %44, %40, %47, %68, %72, %50, %35
  %100 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %68 ], [ %73, %72 ], [ -1, %40 ], [ -1, %44 ], [ %.lcssa, %.loopexit ], !dbg !4075
  ret i32 %100, !dbg !4210
}

declare !dbg !4211 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4218, metadata !DIExpression()), !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4219, metadata !DIExpression()), !dbg !4221
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4222
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4220, metadata !DIExpression()), !dbg !4221
  br i1 %5, label %6, label %8, !dbg !4224

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4225
  store i32 12, ptr %7, align 4, !dbg !4227, !tbaa !894
  br label %12, !dbg !4228

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %9, metadata !4232, metadata !DIExpression()), !dbg !4233
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4235
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4236
  br label %12, !dbg !4237

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4221
  ret ptr %13, !dbg !4238
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4239 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4244, metadata !DIExpression(), metadata !4248, metadata ptr %2, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4243, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4250
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4251
  %4 = icmp eq i32 %3, 0, !dbg !4251
  br i1 %4, label %5, label %12, !dbg !4253

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4254, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr @.str.135, metadata !4257, metadata !DIExpression()), !dbg !4258
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.135, i64 2), !dbg !4261
  %7 = icmp eq i32 %6, 0, !dbg !4262
  br i1 %7, label %11, label %8, !dbg !4263

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4254, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !4257, metadata !DIExpression()), !dbg !4264
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !4266
  %10 = icmp eq i32 %9, 0, !dbg !4267
  br i1 %10, label %11, label %12, !dbg !4268

11:                                               ; preds = %8, %5
  br label %12, !dbg !4269

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4249
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4270
  ret i1 %13, !dbg !4270
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4271 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4275, metadata !DIExpression()), !dbg !4278
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4276, metadata !DIExpression()), !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4277, metadata !DIExpression()), !dbg !4278
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4279
  ret i32 %4, !dbg !4280
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4281 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4285, metadata !DIExpression()), !dbg !4286
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4287
  ret ptr %2, !dbg !4288
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4289 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4291, metadata !DIExpression()), !dbg !4293
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4294
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4292, metadata !DIExpression()), !dbg !4293
  ret ptr %2, !dbg !4295
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()), !dbg !4305
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4299, metadata !DIExpression()), !dbg !4305
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4300, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 %0, metadata !4291, metadata !DIExpression()), !dbg !4306
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %4, metadata !4292, metadata !DIExpression()), !dbg !4306
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4305
  %5 = icmp eq ptr %4, null, !dbg !4309
  br i1 %5, label %6, label %9, !dbg !4310

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4311
  br i1 %7, label %19, label %8, !dbg !4314

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4315, !tbaa !903
  br label %19, !dbg !4316

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4317
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4302, metadata !DIExpression()), !dbg !4318
  %11 = icmp ult i64 %10, %2, !dbg !4319
  br i1 %11, label %12, label %14, !dbg !4321

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4322
  call void @llvm.dbg.value(metadata ptr %1, metadata !4324, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata ptr %4, metadata !4327, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %13, metadata !4328, metadata !DIExpression()), !dbg !4329
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4331
  br label %19, !dbg !4332

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4333
  br i1 %15, label %19, label %16, !dbg !4336

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4337
  call void @llvm.dbg.value(metadata ptr %1, metadata !4324, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %4, metadata !4327, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %17, metadata !4328, metadata !DIExpression()), !dbg !4339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4341
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4342
  store i8 0, ptr %18, align 1, !dbg !4343, !tbaa !903
  br label %19, !dbg !4344

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4345
  ret i32 %20, !dbg !4346
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!49, !701, !348, !352, !367, !667, !707, !709, !423, !437, !488, !711, !659, !718, !753, !755, !757, !759, !761, !763, !683, !765, !806, !808, !810, !812}
!llvm.ident = !{!814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814, !814}
!llvm.module.flags = !{!815, !816, !817, !818, !819, !820, !821, !822}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/groups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d48dc102a9c02fb59e67fc9e395fa6a9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 37)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 155)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "longopts", scope: !49, file: !2, line: 39, type: !313, isLocal: true, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/groups.o -MD -MP -MF src/.deps/groups.Tpo -c src/groups.c -o src/.groups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !73, globals: !83, splitDebugInlining: false, nameTableKind: None)
!50 = !{!51, !57}
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 337, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!56 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 46, baseType: !59, size: 32, elements: !60)
!58 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!61 = !DIEnumerator(name: "_ISupper", value: 256)
!62 = !DIEnumerator(name: "_ISlower", value: 512)
!63 = !DIEnumerator(name: "_ISalpha", value: 1024)
!64 = !DIEnumerator(name: "_ISdigit", value: 2048)
!65 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!66 = !DIEnumerator(name: "_ISspace", value: 8192)
!67 = !DIEnumerator(name: "_ISprint", value: 16384)
!68 = !DIEnumerator(name: "_ISgraph", value: 32768)
!69 = !DIEnumerator(name: "_ISblank", value: 1)
!70 = !DIEnumerator(name: "_IScntrl", value: 2)
!71 = !DIEnumerator(name: "_ISpunct", value: 4)
!72 = !DIEnumerator(name: "_ISalnum", value: 8)
!73 = !{!74, !75, !53, !76, !77, !80, !82}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 18, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !84, !89, !94, !99, !104, !109, !111, !116, !121, !201, !206, !208, !213, !215, !220, !222, !224, !229, !231, !233, !235, !237, !242, !244, !246, !248, !250, !252, !254, !256, !261, !263, !268, !270, !272, !274, !276, !278, !283, !285, !287, !292, !297, !302, !307, !309, !47, !311}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 14)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 16)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 15)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !101, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 17)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 6)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !123, file: !52, line: 575, type: !53, isLocal: true, isDefinition: true)
!123 = distinct !DISubprogram(name: "oputs_", scope: !52, file: !52, line: 573, type: !124, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !126)
!124 = !DISubroutineType(cc: DW_CC_nocall, types: !125)
!125 = !{null, !80, !80}
!126 = !{!127, !128, !129, !132, !134, !135, !136, !140, !141, !142, !143, !145, !195, !196, !197, !199, !200}
!127 = !DILocalVariable(name: "program", arg: 1, scope: !123, file: !52, line: 573, type: !80)
!128 = !DILocalVariable(name: "option", arg: 2, scope: !123, file: !52, line: 573, type: !80)
!129 = !DILocalVariable(name: "term", scope: !130, file: !52, line: 585, type: !80)
!130 = distinct !DILexicalBlock(scope: !131, file: !52, line: 582, column: 5)
!131 = distinct !DILexicalBlock(scope: !123, file: !52, line: 581, column: 7)
!132 = !DILocalVariable(name: "double_space", scope: !123, file: !52, line: 594, type: !133)
!133 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!134 = !DILocalVariable(name: "first_word", scope: !123, file: !52, line: 595, type: !80)
!135 = !DILocalVariable(name: "option_text", scope: !123, file: !52, line: 596, type: !80)
!136 = !DILocalVariable(name: "s", scope: !137, file: !52, line: 608, type: !80)
!137 = distinct !DILexicalBlock(scope: !138, file: !52, line: 605, column: 5)
!138 = distinct !DILexicalBlock(scope: !139, file: !52, line: 604, column: 12)
!139 = distinct !DILexicalBlock(scope: !123, file: !52, line: 597, column: 7)
!140 = !DILocalVariable(name: "spaces", scope: !137, file: !52, line: 609, type: !77)
!141 = !DILocalVariable(name: "anchor_len", scope: !123, file: !52, line: 620, type: !77)
!142 = !DILocalVariable(name: "desc_text", scope: !123, file: !52, line: 625, type: !80)
!143 = !DILocalVariable(name: "__ptr", scope: !144, file: !52, line: 644, type: !80)
!144 = distinct !DILexicalBlock(scope: !123, file: !52, line: 644, column: 3)
!145 = !DILocalVariable(name: "__stream", scope: !144, file: !52, line: 644, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !149)
!148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !151)
!150 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !167, !169, !170, !171, !175, !176, !178, !179, !182, !184, !187, !190, !191, !192, !193, !194}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !149, file: !150, line: 51, baseType: !53, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !149, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !149, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !149, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !149, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !149, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !149, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !149, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !149, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !149, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !149, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !149, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !149, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !150, line: 36, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !149, file: !150, line: 70, baseType: !168, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !149, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !149, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !149, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !173, line: 152, baseType: !174)
!173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!174 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !149, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !149, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!177 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !149, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !149, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !150, line: 43, baseType: null)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !149, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !173, line: 153, baseType: !174)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !149, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !150, line: 37, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !149, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !150, line: 38, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !149, file: !150, line: 93, baseType: !168, size: 64, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !149, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !149, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !149, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !149, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!195 = !DILocalVariable(name: "__cnt", scope: !144, file: !52, line: 644, type: !77)
!196 = !DILocalVariable(name: "url_program", scope: !123, file: !52, line: 648, type: !80)
!197 = !DILocalVariable(name: "__ptr", scope: !198, file: !52, line: 686, type: !80)
!198 = distinct !DILexicalBlock(scope: !123, file: !52, line: 686, column: 3)
!199 = !DILocalVariable(name: "__stream", scope: !198, file: !52, line: 686, type: !146)
!200 = !DILocalVariable(name: "__cnt", scope: !198, file: !52, line: 686, type: !77)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !52, line: 585, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 5)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !52, line: 586, type: !203, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !52, line: 595, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 4)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !52, line: 620, type: !118, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !52, line: 648, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 2)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !52, line: 648, type: !203, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !52, line: 649, type: !210, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !52, line: 649, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !52, line: 650, type: !203, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !52, line: 651, type: !118, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !52, line: 651, type: !118, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !52, line: 652, type: !19, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !52, line: 653, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 8)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !52, line: 654, type: !39, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !52, line: 655, type: !39, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !52, line: 656, type: !39, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !52, line: 657, type: !39, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !52, line: 663, type: !19, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !52, line: 664, type: !39, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !52, line: 669, type: !113, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !52, line: 669, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 40)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !52, line: 676, type: !96, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !52, line: 676, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 61)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !52, line: 679, type: !226, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !52, line: 683, type: !203, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !52, line: 688, type: !203, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !52, line: 691, type: !239, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !52, line: 839, type: !91, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !52, line: 840, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 22)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !52, line: 841, type: !96, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !52, line: 862, type: !210, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !52, line: 868, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 71)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !52, line: 875, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 27)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !52, line: 877, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 51)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !52, line: 877, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 12)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !203, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !239, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !52, line: 952, type: !304, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 768, elements: !227)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !316, line: 50, size: 256, elements: !317)
!316 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!317 = !{!318, !319, !320, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 52, baseType: !80, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !315, file: !316, line: 55, baseType: !53, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !315, file: !316, line: 56, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !315, file: !316, line: 57, baseType: !53, size: 32, offset: 192)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !325, line: 67, type: !326, isLocal: true, isDefinition: true)
!325 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 33)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !325, line: 72, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 45)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !325, line: 109, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 34)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !325, line: 116, type: !226, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !325, line: 118, type: !210, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !345, line: 3, type: !96, isLocal: true, isDefinition: true)
!345 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "Version", scope: !348, file: !345, line: 3, type: !80, isLocal: false, isDefinition: true)
!348 = distinct !DICompileUnit(language: DW_LANG_C11, file: !345, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !349, splitDebugInlining: false, nameTableKind: None)
!349 = !{!343, !346}
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "file_name", scope: !352, file: !353, line: 45, type: !80, isLocal: true, isDefinition: true)
!352 = distinct !DICompileUnit(language: DW_LANG_C11, file: !353, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !354, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!354 = !{!355, !357, !359, !361, !350, !363}
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !353, line: 121, type: !19, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !353, line: 121, type: !304, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !353, line: 123, type: !19, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !353, line: 126, type: !226, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !352, file: !353, line: 55, type: !133, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !367, file: !368, line: 66, type: !418, isLocal: false, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !369, globals: !370, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!369 = !{!75, !82}
!370 = !{!371, !373, !397, !399, !401, !403, !365, !405, !407, !409, !411, !416}
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !368, line: 272, type: !203, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "old_file_name", scope: !375, file: !368, line: 304, type: !80, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "verror_at_line", scope: !368, file: !368, line: 298, type: !376, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !390)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !53, !53, !80, !59, !80, !378}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !379, line: 52, baseType: !380)
!379 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !381, line: 12, baseType: !382)
!381 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !368, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !383, file: !368, baseType: !75, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !383, file: !368, baseType: !75, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !383, file: !368, baseType: !75, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !383, file: !368, baseType: !53, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !383, file: !368, baseType: !53, size: 32, offset: 224)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DILocalVariable(name: "status", arg: 1, scope: !375, file: !368, line: 298, type: !53)
!392 = !DILocalVariable(name: "errnum", arg: 2, scope: !375, file: !368, line: 298, type: !53)
!393 = !DILocalVariable(name: "file_name", arg: 3, scope: !375, file: !368, line: 298, type: !80)
!394 = !DILocalVariable(name: "line_number", arg: 4, scope: !375, file: !368, line: 298, type: !59)
!395 = !DILocalVariable(name: "message", arg: 5, scope: !375, file: !368, line: 298, type: !80)
!396 = !DILocalVariable(name: "args", arg: 6, scope: !375, file: !368, line: 298, type: !378)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "old_line_number", scope: !375, file: !368, line: 305, type: !59, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !368, line: 338, type: !210, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !239, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !217, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "error_message_count", scope: !367, file: !368, line: 69, type: !59, isLocal: false, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !367, file: !368, line: 295, type: !53, isLocal: false, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !19, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 21)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !368, line: 214, type: !203, isLocal: true, isDefinition: true)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null}
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "program_name", scope: !423, file: !424, line: 31, type: !80, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C11, file: !424, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, globals: !426, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!425 = !{!75, !74}
!426 = !{!421, !427, !429}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 46, type: !239, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !424, line: 49, type: !210, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "utf07FF", scope: !433, file: !434, line: 46, type: !461, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "proper_name_lite", scope: !434, file: !434, line: 38, type: !435, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !439)
!434 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!435 = !DISubroutineType(types: !436)
!436 = !{!80, !80, !80}
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !434, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !438, splitDebugInlining: false, nameTableKind: None)
!438 = !{!431}
!439 = !{!440, !441, !442, !443, !448}
!440 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !433, file: !434, line: 38, type: !80)
!441 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !433, file: !434, line: 38, type: !80)
!442 = !DILocalVariable(name: "translation", scope: !433, file: !434, line: 40, type: !80)
!443 = !DILocalVariable(name: "w", scope: !433, file: !434, line: 47, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !445, line: 37, baseType: !446)
!445 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !59)
!448 = !DILocalVariable(name: "mbs", scope: !433, file: !434, line: 48, type: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !450, line: 6, baseType: !451)
!450 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !452, line: 21, baseType: !453)
!452 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 13, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !453, file: !452, line: 15, baseType: !53, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !453, file: !452, line: 20, baseType: !457, size: 32, offset: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !452, line: 16, size: 32, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !457, file: !452, line: 18, baseType: !59, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !457, file: !452, line: 19, baseType: !210, size: 32)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !218)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !464, line: 78, type: !239, isLocal: true, isDefinition: true)
!464 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !464, line: 79, type: !118, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !464, line: 80, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 13)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !464, line: 81, type: !469, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !464, line: 82, type: !101, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !464, line: 83, type: !217, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !464, line: 84, type: !239, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !464, line: 85, type: !19, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !464, line: 86, type: !19, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !464, line: 87, type: !239, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !488, file: !464, line: 76, type: !574, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !464, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !489, retainedTypes: !509, globals: !510, splitDebugInlining: false, nameTableKind: None)
!489 = !{!490, !504, !57}
!490 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !491, line: 42, baseType: !59, size: 32, elements: !492)
!491 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!493 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!494 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!495 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!496 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!497 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!498 = !DIEnumerator(name: "c_quoting_style", value: 5)
!499 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!500 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!501 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!502 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!503 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !491, line: 254, baseType: !59, size: 32, elements: !505)
!505 = !{!506, !507, !508}
!506 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!507 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!508 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!509 = !{!75, !53, !76, !77}
!510 = !{!462, !465, !467, !472, !474, !476, !478, !480, !482, !484, !486, !511, !515, !525, !527, !532, !534, !536, !538, !540, !563, !570, !572}
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !488, file: !464, line: 92, type: !513, isLocal: false, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 320, elements: !40)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !488, file: !464, line: 1040, type: !517, isLocal: false, isDefinition: true)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !464, line: 56, size: 448, elements: !518)
!518 = !{!519, !520, !521, !523, !524}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !517, file: !464, line: 59, baseType: !490, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !464, line: 62, baseType: !53, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !517, file: !464, line: 66, baseType: !522, size: 256, offset: 64)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !240)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !517, file: !464, line: 69, baseType: !80, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !517, file: !464, line: 72, baseType: !80, size: 64, offset: 384)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !488, file: !464, line: 107, type: !517, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "slot0", scope: !488, file: !464, line: 831, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 256)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !464, line: 321, type: !217, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !464, line: 357, type: !217, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !464, line: 358, type: !217, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !464, line: 199, type: !19, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "quote", scope: !542, file: !464, line: 228, type: !561, isLocal: true, isDefinition: true)
!542 = distinct !DISubprogram(name: "gettext_quote", scope: !464, file: !464, line: 197, type: !543, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!80, !80, !490}
!545 = !{!546, !547, !548, !549, !550}
!546 = !DILocalVariable(name: "msgid", arg: 1, scope: !542, file: !464, line: 197, type: !80)
!547 = !DILocalVariable(name: "s", arg: 2, scope: !542, file: !464, line: 197, type: !490)
!548 = !DILocalVariable(name: "translation", scope: !542, file: !464, line: 199, type: !80)
!549 = !DILocalVariable(name: "w", scope: !542, file: !464, line: 229, type: !444)
!550 = !DILocalVariable(name: "mbs", scope: !542, file: !464, line: 230, type: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !450, line: 6, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !452, line: 21, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 13, size: 64, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !553, file: !452, line: 15, baseType: !53, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !553, file: !452, line: 20, baseType: !557, size: 32, offset: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !452, line: 16, size: 32, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !557, file: !452, line: 18, baseType: !59, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !557, file: !452, line: 19, baseType: !210, size: 32)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !562)
!562 = !{!219, !212}
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "slotvec", scope: !488, file: !464, line: 834, type: !565, isLocal: true, isDefinition: true)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !464, line: 823, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !566, file: !464, line: 825, baseType: !77, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !566, file: !464, line: 826, baseType: !74, size: 64, offset: 64)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "nslots", scope: !488, file: !464, line: 832, type: !53, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "slotvec0", scope: !488, file: !464, line: 833, type: !566, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 704, elements: !576)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!576 = !{!577}
!577 = !DISubrange(count: 11)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !580, line: 67, type: !304, isLocal: true, isDefinition: true)
!580 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !580, line: 69, type: !19, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 83, type: !19, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !580, line: 83, type: !210, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !580, line: 85, type: !217, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !580, line: 88, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 171)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !580, line: 88, type: !336, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !580, line: 105, type: !91, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !580, line: 109, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 23)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !580, line: 113, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 28)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !580, line: 120, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 32)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !580, line: 127, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 36)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !580, line: 134, type: !258, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !580, line: 142, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 44)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !580, line: 150, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 48)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !580, line: 159, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 52)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !580, line: 170, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 60)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !580, line: 248, type: !101, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !580, line: 248, type: !280, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !580, line: 254, type: !101, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !580, line: 254, type: !86, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !580, line: 254, type: !258, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !580, line: 259, type: !3, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !580, line: 259, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 29)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !659, file: !660, line: 26, type: !662, isLocal: false, isDefinition: true)
!659 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !661, splitDebugInlining: false, nameTableKind: None)
!660 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!661 = !{!657}
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 47)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "exit_failure", scope: !667, file: !668, line: 24, type: !670, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !669, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!669 = !{!665}
!670 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !673, line: 34, type: !226, isLocal: true, isDefinition: true)
!673 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !673, line: 34, type: !19, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !673, line: 34, type: !113, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !680, line: 108, type: !34, isLocal: true, isDefinition: true)
!680 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "internal_state", scope: !683, file: !680, line: 97, type: !686, isLocal: true, isDefinition: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, globals: !685, splitDebugInlining: false, nameTableKind: None)
!684 = !{!75, !77, !82}
!685 = !{!678, !681}
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !450, line: 6, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !452, line: 21, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 13, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !688, file: !452, line: 15, baseType: !53, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !688, file: !452, line: 20, baseType: !692, size: 32, offset: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !452, line: 16, size: 32, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !692, file: !452, line: 18, baseType: !59, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !692, file: !452, line: 19, baseType: !210, size: 32)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !698, line: 35, type: !217, isLocal: true, isDefinition: true)
!698 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !698, line: 35, type: !118, isLocal: true, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !325, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/group-list.o -MD -MP -MF src/.deps/group-list.Tpo -c src/group-list.c -o src/.group-list.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !702, globals: !706, splitDebugInlining: false, nameTableKind: None)
!702 = !{!75, !703, !82}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !704, line: 102, baseType: !705)
!704 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !173, line: 73, baseType: !79)
!706 = !{!323, !329, !334, !339, !341}
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !716, globals: !717, splitDebugInlining: false, nameTableKind: None)
!712 = !{!713}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !580, line: 40, baseType: !59, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!716 = !{!75}
!717 = !{!578, !581, !583, !585, !587, !589, !594, !596, !598, !603, !608, !613, !618, !620, !625, !630, !635, !640, !642, !644, !646, !648, !650, !652}
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !720, retainedTypes: !752, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!720 = !{!721, !733}
!721 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !722, file: !719, line: 188, baseType: !59, size: 32, elements: !731)
!722 = distinct !DISubprogram(name: "x2nrealloc", scope: !719, file: !719, line: 176, type: !723, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !726)
!723 = !DISubroutineType(types: !724)
!724 = !{!75, !75, !725, !77}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!726 = !{!727, !728, !729, !730}
!727 = !DILocalVariable(name: "p", arg: 1, scope: !722, file: !719, line: 176, type: !75)
!728 = !DILocalVariable(name: "pn", arg: 2, scope: !722, file: !719, line: 176, type: !725)
!729 = !DILocalVariable(name: "s", arg: 3, scope: !722, file: !719, line: 176, type: !77)
!730 = !DILocalVariable(name: "n", scope: !722, file: !719, line: 178, type: !77)
!731 = !{!732}
!732 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !734, file: !719, line: 228, baseType: !59, size: 32, elements: !731)
!734 = distinct !DISubprogram(name: "xpalloc", scope: !719, file: !719, line: 223, type: !735, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !742)
!735 = !DISubroutineType(types: !736)
!736 = !{!75, !75, !737, !738, !740, !738}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !739, line: 130, baseType: !740)
!739 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !741, line: 18, baseType: !174)
!741 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751}
!743 = !DILocalVariable(name: "pa", arg: 1, scope: !734, file: !719, line: 223, type: !75)
!744 = !DILocalVariable(name: "pn", arg: 2, scope: !734, file: !719, line: 223, type: !737)
!745 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !734, file: !719, line: 223, type: !738)
!746 = !DILocalVariable(name: "n_max", arg: 4, scope: !734, file: !719, line: 223, type: !740)
!747 = !DILocalVariable(name: "s", arg: 5, scope: !734, file: !719, line: 223, type: !738)
!748 = !DILocalVariable(name: "n0", scope: !734, file: !719, line: 230, type: !738)
!749 = !DILocalVariable(name: "n", scope: !734, file: !719, line: 237, type: !738)
!750 = !DILocalVariable(name: "nbytes", scope: !734, file: !719, line: 248, type: !738)
!751 = !DILocalVariable(name: "adjusted_nbytes", scope: !734, file: !719, line: 252, type: !738)
!752 = !{!74, !75}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !754, splitDebugInlining: false, nameTableKind: None)
!754 = !{!671, !674, !676}
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetgroups.Tpo -c lib/xgetgroups.c -o lib/.libcoreutils_a-xgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-mgetgroups.Tpo -c lib/mgetgroups.c -o lib/.libcoreutils_a-mgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !767, retainedTypes: !805, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!767 = !{!768}
!768 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !769, file: !766, line: 79, baseType: !59, size: 32, elements: !803)
!769 = distinct !DISubprogram(name: "mgetgroups", scope: !766, file: !766, line: 66, type: !770, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !777)
!770 = !DISubroutineType(types: !771)
!771 = !{!53, !80, !772, !775}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !773, line: 64, baseType: !774)
!773 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !173, line: 147, baseType: !59)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!777 = !{!778, !779, !780, !781, !784, !785, !787, !788, !789, !790, !795, !796, !797, !800, !801}
!778 = !DILocalVariable(name: "username", arg: 1, scope: !769, file: !766, line: 66, type: !80)
!779 = !DILocalVariable(name: "gid", arg: 2, scope: !769, file: !766, line: 66, type: !772)
!780 = !DILocalVariable(name: "groups", arg: 3, scope: !769, file: !766, line: 66, type: !775)
!781 = !DILocalVariable(name: "max_n_groups", scope: !782, file: !766, line: 80, type: !53)
!782 = distinct !DILexicalBlock(scope: !783, file: !766, line: 78, column: 5)
!783 = distinct !DILexicalBlock(scope: !769, file: !766, line: 77, column: 7)
!784 = !DILocalVariable(name: "g", scope: !782, file: !766, line: 82, type: !776)
!785 = !DILocalVariable(name: "last_n_groups", scope: !786, file: !766, line: 88, type: !53)
!786 = distinct !DILexicalBlock(scope: !782, file: !766, line: 87, column: 9)
!787 = !DILocalVariable(name: "ng", scope: !786, file: !766, line: 91, type: !53)
!788 = !DILocalVariable(name: "h", scope: !786, file: !766, line: 98, type: !776)
!789 = !DILocalVariable(name: "max_n_groups", scope: !769, file: !766, line: 118, type: !53)
!790 = !DILocalVariable(name: "g", scope: !791, file: !766, line: 129, type: !776)
!791 = distinct !DILexicalBlock(scope: !792, file: !766, line: 128, column: 9)
!792 = distinct !DILexicalBlock(scope: !793, file: !766, line: 127, column: 11)
!793 = distinct !DILexicalBlock(scope: !794, file: !766, line: 126, column: 5)
!794 = distinct !DILexicalBlock(scope: !769, file: !766, line: 125, column: 7)
!795 = !DILocalVariable(name: "g", scope: !769, file: !766, line: 142, type: !776)
!796 = !DILocalVariable(name: "ng", scope: !769, file: !766, line: 146, type: !53)
!797 = !DILocalVariable(name: "first", scope: !798, file: !766, line: 183, type: !772)
!798 = distinct !DILexicalBlock(scope: !799, file: !766, line: 182, column: 5)
!799 = distinct !DILexicalBlock(scope: !769, file: !766, line: 181, column: 7)
!800 = !DILocalVariable(name: "groups_end", scope: !798, file: !766, line: 184, type: !776)
!801 = !DILocalVariable(name: "next", scope: !802, file: !766, line: 186, type: !776)
!802 = distinct !DILexicalBlock(scope: !798, file: !766, line: 186, column: 7)
!803 = !{!804}
!804 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!805 = !{!75, !772}
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !809, splitDebugInlining: false, nameTableKind: None)
!809 = !{!696, !699}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!814 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!815 = !{i32 7, !"Dwarf Version", i32 5}
!816 = !{i32 2, !"Debug Info Version", i32 3}
!817 = !{i32 1, !"wchar_size", i32 4}
!818 = !{i32 8, !"PIC Level", i32 2}
!819 = !{i32 7, !"PIE Level", i32 2}
!820 = !{i32 7, !"uwtable", i32 2}
!821 = !{i32 7, !"frame-pointer", i32 1}
!822 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!823 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !824, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !53}
!826 = !{!827}
!827 = !DILocalVariable(name: "status", arg: 1, scope: !823, file: !2, line: 47, type: !53)
!828 = !DILocation(line: 0, scope: !823)
!829 = !DILocation(line: 49, column: 14, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !2, line: 49, column: 7)
!831 = !DILocation(line: 49, column: 7, scope: !823)
!832 = !DILocation(line: 50, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !2, line: 50, column: 5)
!834 = !{!835, !835, i64 0}
!835 = !{!"any pointer", !836, i64 0}
!836 = !{!"omnipotent char", !837, i64 0}
!837 = !{!"Simple C/C++ TBAA"}
!838 = !DILocation(line: 53, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !830, file: !2, line: 52, column: 5)
!840 = !DILocation(line: 54, column: 7, scope: !839)
!841 = !DILocation(line: 59, column: 7, scope: !839)
!842 = !DILocation(line: 60, column: 7, scope: !839)
!843 = !DILocalVariable(name: "program", arg: 1, scope: !844, file: !52, line: 836, type: !80)
!844 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !52, file: !52, line: 836, type: !845, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !80}
!847 = !{!843, !848, !855, !856, !858, !859}
!848 = !DILocalVariable(name: "infomap", scope: !844, file: !52, line: 838, type: !849)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 896, elements: !20)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !844, file: !52, line: 838, size: 128, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !851, file: !52, line: 838, baseType: !80, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !851, file: !52, line: 838, baseType: !80, size: 64, offset: 64)
!855 = !DILocalVariable(name: "node", scope: !844, file: !52, line: 848, type: !80)
!856 = !DILocalVariable(name: "map_prog", scope: !844, file: !52, line: 849, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!858 = !DILocalVariable(name: "lc_messages", scope: !844, file: !52, line: 861, type: !80)
!859 = !DILocalVariable(name: "url_program", scope: !844, file: !52, line: 874, type: !80)
!860 = !DILocation(line: 0, scope: !844, inlinedAt: !861)
!861 = distinct !DILocation(line: 61, column: 7, scope: !839)
!862 = !{}
!863 = !DILocation(line: 857, column: 3, scope: !844, inlinedAt: !861)
!864 = !DILocation(line: 861, column: 29, scope: !844, inlinedAt: !861)
!865 = !DILocation(line: 862, column: 7, scope: !866, inlinedAt: !861)
!866 = distinct !DILexicalBlock(scope: !844, file: !52, line: 862, column: 7)
!867 = !DILocation(line: 862, column: 19, scope: !866, inlinedAt: !861)
!868 = !DILocation(line: 862, column: 22, scope: !866, inlinedAt: !861)
!869 = !DILocation(line: 862, column: 7, scope: !844, inlinedAt: !861)
!870 = !DILocation(line: 868, column: 7, scope: !871, inlinedAt: !861)
!871 = distinct !DILexicalBlock(scope: !866, file: !52, line: 863, column: 5)
!872 = !DILocation(line: 870, column: 5, scope: !871, inlinedAt: !861)
!873 = !DILocation(line: 875, column: 3, scope: !844, inlinedAt: !861)
!874 = !DILocation(line: 877, column: 3, scope: !844, inlinedAt: !861)
!875 = !DILocation(line: 63, column: 3, scope: !823)
!876 = !DISubprogram(name: "dcgettext", scope: !877, file: !877, line: 51, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!878 = !DISubroutineType(types: !879)
!879 = !{!74, !80, !80, !53}
!880 = !DISubprogram(name: "__fprintf_chk", scope: !881, file: !881, line: 93, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!882 = !DISubroutineType(types: !883)
!883 = !{!53, !884, !53, !885, null}
!884 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!885 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!886 = !DISubprogram(name: "__printf_chk", scope: !881, file: !881, line: 95, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DISubroutineType(types: !888)
!888 = !{!53, !53, !885, null}
!889 = !DISubprogram(name: "fputs_unlocked", scope: !379, file: !379, line: 691, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!890 = !DISubroutineType(types: !891)
!891 = !{!53, !885, !884}
!892 = !DILocation(line: 0, scope: !123)
!893 = !DILocation(line: 581, column: 7, scope: !131)
!894 = !{!895, !895, i64 0}
!895 = !{!"int", !836, i64 0}
!896 = !DILocation(line: 581, column: 19, scope: !131)
!897 = !DILocation(line: 581, column: 7, scope: !123)
!898 = !DILocation(line: 585, column: 26, scope: !130)
!899 = !DILocation(line: 0, scope: !130)
!900 = !DILocation(line: 586, column: 23, scope: !130)
!901 = !DILocation(line: 586, column: 28, scope: !130)
!902 = !DILocation(line: 586, column: 32, scope: !130)
!903 = !{!836, !836, i64 0}
!904 = !DILocation(line: 586, column: 38, scope: !130)
!905 = !DILocalVariable(name: "__s1", arg: 1, scope: !906, file: !907, line: 1359, type: !80)
!906 = distinct !DISubprogram(name: "streq", scope: !907, file: !907, line: 1359, type: !908, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !910)
!907 = !DIFile(filename: "./lib/string.h", directory: "/src")
!908 = !DISubroutineType(types: !909)
!909 = !{!133, !80, !80}
!910 = !{!905, !911}
!911 = !DILocalVariable(name: "__s2", arg: 2, scope: !906, file: !907, line: 1359, type: !80)
!912 = !DILocation(line: 0, scope: !906, inlinedAt: !913)
!913 = distinct !DILocation(line: 586, column: 41, scope: !130)
!914 = !DILocation(line: 1361, column: 11, scope: !906, inlinedAt: !913)
!915 = !DILocation(line: 1361, column: 10, scope: !906, inlinedAt: !913)
!916 = !DILocation(line: 586, column: 19, scope: !130)
!917 = !DILocation(line: 587, column: 5, scope: !130)
!918 = !DILocation(line: 588, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !123, file: !52, line: 588, column: 7)
!920 = !DILocation(line: 588, column: 7, scope: !123)
!921 = !DILocation(line: 590, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !52, line: 589, column: 5)
!923 = !DILocation(line: 591, column: 7, scope: !922)
!924 = !DILocation(line: 595, column: 37, scope: !123)
!925 = !DILocation(line: 595, column: 35, scope: !123)
!926 = !DILocation(line: 596, column: 29, scope: !123)
!927 = !DILocation(line: 597, column: 8, scope: !139)
!928 = !DILocation(line: 597, column: 7, scope: !123)
!929 = !DILocation(line: 604, column: 24, scope: !138)
!930 = !DILocation(line: 604, column: 12, scope: !139)
!931 = !DILocation(line: 0, scope: !137)
!932 = !DILocation(line: 610, column: 16, scope: !137)
!933 = !DILocation(line: 610, column: 7, scope: !137)
!934 = !DILocation(line: 611, column: 21, scope: !137)
!935 = !{!936, !936, i64 0}
!936 = !{!"short", !836, i64 0}
!937 = !DILocation(line: 611, column: 19, scope: !137)
!938 = !DILocation(line: 611, column: 16, scope: !137)
!939 = !DILocation(line: 610, column: 30, scope: !137)
!940 = distinct !{!940, !933, !934, !941}
!941 = !{!"llvm.loop.mustprogress"}
!942 = !DILocation(line: 612, column: 18, scope: !943)
!943 = distinct !DILexicalBlock(scope: !137, file: !52, line: 612, column: 11)
!944 = !DILocation(line: 612, column: 11, scope: !137)
!945 = !DILocation(line: 620, column: 23, scope: !123)
!946 = !DILocation(line: 625, column: 39, scope: !123)
!947 = !DILocation(line: 626, column: 3, scope: !123)
!948 = !DILocation(line: 626, column: 10, scope: !123)
!949 = !DILocation(line: 626, column: 21, scope: !123)
!950 = !DILocation(line: 628, column: 44, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !52, line: 628, column: 11)
!952 = distinct !DILexicalBlock(scope: !123, file: !52, line: 627, column: 5)
!953 = !DILocation(line: 628, column: 32, scope: !951)
!954 = !DILocation(line: 628, column: 49, scope: !951)
!955 = !DILocation(line: 628, column: 11, scope: !952)
!956 = !DILocation(line: 630, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !52, line: 630, column: 11)
!958 = !DILocation(line: 630, column: 11, scope: !952)
!959 = !DILocation(line: 632, column: 26, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !52, line: 632, column: 15)
!961 = distinct !DILexicalBlock(scope: !957, file: !52, line: 631, column: 9)
!962 = !DILocation(line: 632, column: 34, scope: !960)
!963 = !DILocation(line: 632, column: 37, scope: !960)
!964 = !DILocation(line: 632, column: 15, scope: !961)
!965 = !DILocation(line: 640, column: 16, scope: !952)
!966 = distinct !{!966, !947, !967, !941}
!967 = !DILocation(line: 641, column: 5, scope: !123)
!968 = !DILocation(line: 644, column: 3, scope: !123)
!969 = !DILocation(line: 0, scope: !906, inlinedAt: !970)
!970 = distinct !DILocation(line: 648, column: 31, scope: !123)
!971 = !DILocation(line: 0, scope: !906, inlinedAt: !972)
!972 = distinct !DILocation(line: 649, column: 31, scope: !123)
!973 = !DILocation(line: 0, scope: !906, inlinedAt: !974)
!974 = distinct !DILocation(line: 650, column: 31, scope: !123)
!975 = !DILocation(line: 0, scope: !906, inlinedAt: !976)
!976 = distinct !DILocation(line: 651, column: 31, scope: !123)
!977 = !DILocation(line: 0, scope: !906, inlinedAt: !978)
!978 = distinct !DILocation(line: 652, column: 31, scope: !123)
!979 = !DILocation(line: 0, scope: !906, inlinedAt: !980)
!980 = distinct !DILocation(line: 653, column: 31, scope: !123)
!981 = !DILocation(line: 0, scope: !906, inlinedAt: !982)
!982 = distinct !DILocation(line: 654, column: 31, scope: !123)
!983 = !DILocation(line: 0, scope: !906, inlinedAt: !984)
!984 = distinct !DILocation(line: 655, column: 31, scope: !123)
!985 = !DILocation(line: 0, scope: !906, inlinedAt: !986)
!986 = distinct !DILocation(line: 656, column: 31, scope: !123)
!987 = !DILocation(line: 0, scope: !906, inlinedAt: !988)
!988 = distinct !DILocation(line: 657, column: 31, scope: !123)
!989 = !DILocation(line: 663, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !123, file: !52, line: 663, column: 7)
!991 = !DILocation(line: 664, column: 7, scope: !990)
!992 = !DILocation(line: 664, column: 10, scope: !990)
!993 = !DILocation(line: 663, column: 7, scope: !123)
!994 = !DILocation(line: 669, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !52, line: 665, column: 5)
!996 = !DILocation(line: 671, column: 5, scope: !995)
!997 = !DILocation(line: 676, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !990, file: !52, line: 673, column: 5)
!999 = !DILocation(line: 679, column: 3, scope: !123)
!1000 = !DILocation(line: 683, column: 3, scope: !123)
!1001 = !DILocation(line: 686, column: 3, scope: !123)
!1002 = !DILocation(line: 688, column: 3, scope: !123)
!1003 = !DILocation(line: 691, column: 3, scope: !123)
!1004 = !DILocation(line: 695, column: 3, scope: !123)
!1005 = !DILocation(line: 696, column: 1, scope: !123)
!1006 = !DISubprogram(name: "setlocale", scope: !1007, file: !1007, line: 122, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!74, !53, !80}
!1010 = !DISubprogram(name: "strncmp", scope: !1011, file: !1011, line: 159, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!53, !80, !80, !77}
!1014 = !DISubprogram(name: "exit", scope: !1015, file: !1015, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1015 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1016 = !DISubprogram(name: "getenv", scope: !1015, file: !1015, line: 641, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!74, !80}
!1019 = !DISubprogram(name: "strcmp", scope: !1011, file: !1011, line: 156, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!53, !80, !80}
!1022 = !DISubprogram(name: "strspn", scope: !1011, file: !1011, line: 297, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!79, !80, !80}
!1025 = !DISubprogram(name: "strchr", scope: !1011, file: !1011, line: 246, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!74, !80, !53}
!1028 = !DISubprogram(name: "__ctype_b_loc", scope: !58, file: !58, line: 79, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1034 = !DISubprogram(name: "strcspn", scope: !1011, file: !1011, line: 293, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubprogram(name: "fwrite_unlocked", scope: !379, file: !379, line: 704, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!77, !1038, !77, !77, !884}
!1038 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1041 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 67, type: !1042, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1045)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!53, !53, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1055, !1056, !1057, !1058, !1059, !1075, !1076, !1077}
!1046 = !DILocalVariable(name: "argc", arg: 1, scope: !1041, file: !2, line: 67, type: !53)
!1047 = !DILocalVariable(name: "argv", arg: 2, scope: !1041, file: !2, line: 67, type: !1044)
!1048 = !DILocalVariable(name: "optc", scope: !1041, file: !2, line: 79, type: !53)
!1049 = !DILocalVariable(name: "ok", scope: !1041, file: !2, line: 91, type: !133)
!1050 = !DILocalVariable(name: "NO_UID", scope: !1051, file: !2, line: 95, type: !1053)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 93, column: 5)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 92, column: 7)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !773, line: 79, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !173, line: 146, baseType: !59)
!1055 = !DILocalVariable(name: "NO_GID", scope: !1051, file: !2, line: 96, type: !772)
!1056 = !DILocalVariable(name: "ruid", scope: !1051, file: !2, line: 99, type: !1053)
!1057 = !DILocalVariable(name: "egid", scope: !1051, file: !2, line: 104, type: !772)
!1058 = !DILocalVariable(name: "rgid", scope: !1051, file: !2, line: 109, type: !772)
!1059 = !DILocalVariable(name: "pwd", scope: !1060, file: !2, line: 122, type: !1064)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 121, column: 9)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 120, column: 7)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 120, column: 7)
!1063 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 118, column: 5)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1066, line: 49, size: 384, elements: !1067)
!1066 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1065, file: !1066, line: 51, baseType: !74, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1065, file: !1066, line: 52, baseType: !74, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1065, file: !1066, line: 54, baseType: !1054, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1065, file: !1066, line: 55, baseType: !774, size: 32, offset: 160)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1065, file: !1066, line: 56, baseType: !74, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1065, file: !1066, line: 57, baseType: !74, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1065, file: !1066, line: 58, baseType: !74, size: 64, offset: 320)
!1075 = !DILocalVariable(name: "ruid", scope: !1060, file: !2, line: 129, type: !1053)
!1076 = !DILocalVariable(name: "rgid", scope: !1060, file: !2, line: 130, type: !772)
!1077 = !DILocalVariable(name: "egid", scope: !1060, file: !2, line: 131, type: !772)
!1078 = !DILocation(line: 0, scope: !1041)
!1079 = !DILocation(line: 70, column: 21, scope: !1041)
!1080 = !DILocation(line: 70, column: 3, scope: !1041)
!1081 = !DILocation(line: 71, column: 3, scope: !1041)
!1082 = !DILocation(line: 72, column: 3, scope: !1041)
!1083 = !DILocation(line: 73, column: 3, scope: !1041)
!1084 = !DILocation(line: 75, column: 3, scope: !1041)
!1085 = !DILocation(line: 80, column: 18, scope: !1041)
!1086 = !DILocation(line: 80, column: 3, scope: !1041)
!1087 = !DILocation(line: 84, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 83, column: 9)
!1089 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 81, column: 5)
!1090 = !DILocation(line: 85, column: 9, scope: !1088)
!1091 = !DILocation(line: 87, column: 11, scope: !1088)
!1092 = !DILocation(line: 92, column: 7, scope: !1052)
!1093 = !DILocation(line: 92, column: 14, scope: !1052)
!1094 = !DILocation(line: 92, column: 7, scope: !1041)
!1095 = !DILocation(line: 120, column: 22, scope: !1061)
!1096 = !DILocation(line: 120, column: 7, scope: !1062)
!1097 = !DILocation(line: 0, scope: !1051)
!1098 = !DILocation(line: 98, column: 7, scope: !1051)
!1099 = !DILocation(line: 98, column: 13, scope: !1051)
!1100 = !DILocation(line: 99, column: 20, scope: !1051)
!1101 = !DILocation(line: 100, column: 16, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 100, column: 11)
!1103 = !DILocation(line: 100, column: 26, scope: !1102)
!1104 = !DILocation(line: 100, column: 29, scope: !1102)
!1105 = !DILocation(line: 100, column: 11, scope: !1051)
!1106 = !DILocation(line: 101, column: 9, scope: !1102)
!1107 = !DILocation(line: 103, column: 13, scope: !1051)
!1108 = !DILocation(line: 104, column: 20, scope: !1051)
!1109 = !DILocation(line: 105, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 105, column: 11)
!1111 = !DILocation(line: 105, column: 26, scope: !1110)
!1112 = !DILocation(line: 105, column: 29, scope: !1110)
!1113 = !DILocation(line: 105, column: 11, scope: !1051)
!1114 = !DILocation(line: 106, column: 9, scope: !1110)
!1115 = !DILocation(line: 108, column: 13, scope: !1051)
!1116 = !DILocation(line: 109, column: 20, scope: !1051)
!1117 = !DILocation(line: 110, column: 16, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 110, column: 11)
!1119 = !DILocation(line: 110, column: 26, scope: !1118)
!1120 = !DILocation(line: 110, column: 29, scope: !1118)
!1121 = !DILocation(line: 110, column: 11, scope: !1051)
!1122 = !DILocation(line: 111, column: 9, scope: !1118)
!1123 = !DILocation(line: 113, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 113, column: 11)
!1125 = !DILocalVariable(name: "__c", arg: 1, scope: !1126, file: !1127, line: 108, type: !53)
!1126 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1127, file: !1127, line: 108, type: !1128, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1130)
!1127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!53, !53}
!1130 = !{!1125}
!1131 = !DILocation(line: 0, scope: !1126, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 115, column: 7, scope: !1051)
!1133 = !DILocation(line: 110, column: 10, scope: !1126, inlinedAt: !1132)
!1134 = !{!1135, !835, i64 40}
!1135 = !{!"_IO_FILE", !895, i64 0, !835, i64 8, !835, i64 16, !835, i64 24, !835, i64 32, !835, i64 40, !835, i64 48, !835, i64 56, !835, i64 64, !835, i64 72, !835, i64 80, !835, i64 88, !835, i64 96, !835, i64 104, !895, i64 112, !895, i64 116, !1136, i64 120, !936, i64 128, !836, i64 130, !836, i64 131, !835, i64 136, !1136, i64 144, !835, i64 152, !835, i64 160, !835, i64 168, !835, i64 176, !1136, i64 184, !895, i64 192, !836, i64 196}
!1136 = !{!"long", !836, i64 0}
!1137 = !{!1135, !835, i64 48}
!1138 = !{!"branch_weights", i32 2000, i32 1}
!1139 = !DILocation(line: 122, column: 42, scope: !1060)
!1140 = !DILocation(line: 122, column: 32, scope: !1060)
!1141 = !DILocation(line: 0, scope: !1060)
!1142 = !DILocation(line: 123, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 123, column: 15)
!1144 = !DILocation(line: 123, column: 15, scope: !1060)
!1145 = !DILocation(line: 125, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 124, column: 13)
!1147 = !DILocation(line: 127, column: 15, scope: !1146)
!1148 = !DILocation(line: 129, column: 29, scope: !1060)
!1149 = !{!1150, !895, i64 16}
!1150 = !{!"passwd", !835, i64 0, !835, i64 8, !895, i64 16, !895, i64 20, !835, i64 24, !835, i64 32, !835, i64 40}
!1151 = !DILocation(line: 130, column: 29, scope: !1060)
!1152 = !{!1150, !895, i64 20}
!1153 = !DILocation(line: 133, column: 11, scope: !1060)
!1154 = !DILocation(line: 134, column: 39, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 134, column: 15)
!1156 = !DILocation(line: 134, column: 34, scope: !1155)
!1157 = !DILocation(line: 134, column: 16, scope: !1155)
!1158 = !DILocation(line: 134, column: 15, scope: !1060)
!1159 = !DILocation(line: 0, scope: !1126, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 136, column: 11, scope: !1060)
!1161 = !DILocation(line: 110, column: 10, scope: !1126, inlinedAt: !1160)
!1162 = !DILocation(line: 138, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 138, column: 15)
!1164 = !DILocalVariable(name: "__stream", arg: 1, scope: !1165, file: !1127, line: 135, type: !146)
!1165 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1127, file: !1127, line: 135, type: !1166, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!53, !146}
!1168 = !{!1164}
!1169 = !DILocation(line: 0, scope: !1165, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 138, column: 15, scope: !1163)
!1171 = !DILocation(line: 137, column: 10, scope: !1165, inlinedAt: !1170)
!1172 = !{!1135, !895, i64 0}
!1173 = !DILocation(line: 138, column: 15, scope: !1060)
!1174 = !DILocation(line: 948, column: 21, scope: !1175, inlinedAt: !1178)
!1175 = distinct !DISubprogram(name: "write_error", scope: !52, file: !52, line: 946, type: !419, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1176)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "saved_errno", scope: !1175, file: !52, line: 948, type: !53)
!1178 = distinct !DILocation(line: 139, column: 13, scope: !1163)
!1179 = !DILocation(line: 0, scope: !1175, inlinedAt: !1178)
!1180 = !DILocation(line: 949, column: 3, scope: !1175, inlinedAt: !1178)
!1181 = !DILocation(line: 950, column: 11, scope: !1175, inlinedAt: !1178)
!1182 = !DILocation(line: 950, column: 3, scope: !1175, inlinedAt: !1178)
!1183 = !DILocation(line: 951, column: 3, scope: !1175, inlinedAt: !1178)
!1184 = !DILocation(line: 952, column: 3, scope: !1175, inlinedAt: !1178)
!1185 = !DILocation(line: 120, column: 36, scope: !1061)
!1186 = distinct !{!1186, !1096, !1187, !941}
!1187 = !DILocation(line: 140, column: 9, scope: !1062)
!1188 = !DILocation(line: 143, column: 10, scope: !1041)
!1189 = !DILocation(line: 144, column: 1, scope: !1041)
!1190 = !DISubprogram(name: "bindtextdomain", scope: !877, file: !877, line: 86, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!74, !80, !80}
!1193 = !DISubprogram(name: "textdomain", scope: !877, file: !877, line: 82, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubprogram(name: "atexit", scope: !1015, file: !1015, line: 602, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!53, !418}
!1197 = !DISubprogram(name: "getopt_long", scope: !316, file: !316, line: 66, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!53, !53, !1200, !80, !1202, !321}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1203 = !DISubprogram(name: "__errno_location", scope: !1204, file: !1204, line: 37, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!321}
!1207 = !DISubprogram(name: "getuid", scope: !1208, file: !1208, line: 697, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1054}
!1211 = !DISubprogram(name: "getegid", scope: !1208, file: !1208, line: 706, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!774}
!1214 = !DISubprogram(name: "getgid", scope: !1208, file: !1208, line: 703, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubprogram(name: "__overflow", scope: !379, file: !379, line: 886, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!53, !146, !53}
!1218 = !DISubprogram(name: "getpwnam", scope: !1066, file: !1066, line: 116, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1064, !80}
!1221 = !DISubprogram(name: "fflush_unlocked", scope: !379, file: !379, line: 239, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DISubprogram(name: "clearerr_unlocked", scope: !379, file: !379, line: 794, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !146}
!1225 = distinct !DISubprogram(name: "print_group_list", scope: !325, file: !325, line: 35, type: !1226, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!133, !80, !1053, !772, !772, !133, !4}
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1247, !1249, !1250}
!1229 = !DILocalVariable(name: "username", arg: 1, scope: !1225, file: !325, line: 35, type: !80)
!1230 = !DILocalVariable(name: "ruid", arg: 2, scope: !1225, file: !325, line: 36, type: !1053)
!1231 = !DILocalVariable(name: "rgid", arg: 3, scope: !1225, file: !325, line: 36, type: !772)
!1232 = !DILocalVariable(name: "egid", arg: 4, scope: !1225, file: !325, line: 36, type: !772)
!1233 = !DILocalVariable(name: "use_names", arg: 5, scope: !1225, file: !325, line: 37, type: !133)
!1234 = !DILocalVariable(name: "delim", arg: 6, scope: !1225, file: !325, line: 37, type: !4)
!1235 = !DILocalVariable(name: "ok", scope: !1225, file: !325, line: 39, type: !133)
!1236 = !DILocalVariable(name: "pwd", scope: !1225, file: !325, line: 40, type: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1066, line: 49, size: 384, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1238, file: !1066, line: 51, baseType: !74, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1238, file: !1066, line: 52, baseType: !74, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1238, file: !1066, line: 54, baseType: !1054, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1238, file: !1066, line: 55, baseType: !774, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1238, file: !1066, line: 56, baseType: !74, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1238, file: !1066, line: 57, baseType: !74, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1238, file: !1066, line: 58, baseType: !74, size: 64, offset: 320)
!1247 = !DILocalVariable(name: "groups", scope: !1248, file: !325, line: 60, type: !776)
!1248 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 59, column: 3)
!1249 = !DILocalVariable(name: "n_groups", scope: !1248, file: !325, line: 62, type: !53)
!1250 = !DILocalVariable(name: "i", scope: !1251, file: !325, line: 77, type: !53)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !325, line: 77, column: 5)
!1252 = distinct !DIAssignID()
!1253 = !DILocation(line: 0, scope: !1248)
!1254 = !DILocation(line: 0, scope: !1225)
!1255 = !DILocation(line: 42, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 42, column: 7)
!1257 = !DILocation(line: 42, column: 7, scope: !1225)
!1258 = !DILocation(line: 44, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !325, line: 43, column: 5)
!1260 = !DILocation(line: 45, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !325, line: 45, column: 11)
!1262 = !DILocation(line: 45, column: 11, scope: !1259)
!1263 = !DILocalVariable(name: "gid", arg: 1, scope: !1264, file: !325, line: 91, type: !772)
!1264 = distinct !DISubprogram(name: "print_group", scope: !325, file: !325, line: 91, type: !1265, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!133, !772, !133}
!1267 = !{!1263, !1268, !1269, !1278, !1279}
!1268 = !DILocalVariable(name: "use_name", arg: 2, scope: !1264, file: !325, line: 91, type: !133)
!1269 = !DILocalVariable(name: "grp", scope: !1264, file: !325, line: 93, type: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1272, line: 42, size: 256, elements: !1273)
!1272 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1271, file: !1272, line: 44, baseType: !74, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1271, file: !1272, line: 45, baseType: !74, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1271, file: !1272, line: 46, baseType: !774, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1271, file: !1272, line: 47, baseType: !1044, size: 64, offset: 192)
!1278 = !DILocalVariable(name: "ok", scope: !1264, file: !325, line: 94, type: !133)
!1279 = !DILocalVariable(name: "g", scope: !1280, file: !325, line: 108, type: !703)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !325, line: 107, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !325, line: 101, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !325, line: 100, column: 9)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !325, line: 99, column: 11)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !325, line: 97, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1264, file: !325, line: 96, column: 7)
!1286 = !DILocation(line: 0, scope: !1264, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 49, column: 8, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 49, column: 7)
!1289 = !DILocation(line: 96, column: 7, scope: !1264, inlinedAt: !1287)
!1290 = !DILocation(line: 118, column: 5, scope: !1291, inlinedAt: !1287)
!1291 = distinct !DILexicalBlock(scope: !1264, file: !325, line: 115, column: 7)
!1292 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1287)
!1293 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1287)
!1294 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1287)
!1295 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1287)
!1296 = !DILocation(line: 0, scope: !1280, inlinedAt: !1287)
!1297 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1287)
!1298 = !DILocation(line: 112, column: 9, scope: !1282, inlinedAt: !1287)
!1299 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1287)
!1300 = !{!1301, !835, i64 0}
!1301 = !{!"group", !835, i64 0, !835, i64 8, !895, i64 16, !835, i64 24}
!1302 = !DILocation(line: 49, column: 7, scope: !1225)
!1303 = !DILocation(line: 52, column: 12, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 52, column: 7)
!1305 = !DILocation(line: 52, column: 7, scope: !1225)
!1306 = !DILocalVariable(name: "__c", arg: 1, scope: !1307, file: !1127, line: 108, type: !53)
!1307 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1127, file: !1127, line: 108, type: !1128, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1308)
!1308 = !{!1306}
!1309 = !DILocation(line: 0, scope: !1307, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 54, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !325, line: 53, column: 5)
!1312 = !DILocation(line: 110, column: 10, scope: !1307, inlinedAt: !1310)
!1313 = !DILocation(line: 54, column: 7, scope: !1311)
!1314 = !DILocation(line: 0, scope: !1264, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 55, column: 12, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !325, line: 55, column: 11)
!1317 = !DILocation(line: 96, column: 7, scope: !1264, inlinedAt: !1315)
!1318 = !DILocation(line: 118, column: 5, scope: !1291, inlinedAt: !1315)
!1319 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1315)
!1320 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1315)
!1321 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1315)
!1322 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1315)
!1323 = !DILocation(line: 0, scope: !1280, inlinedAt: !1315)
!1324 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1315)
!1325 = !DILocation(line: 112, column: 9, scope: !1282, inlinedAt: !1315)
!1326 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1315)
!1327 = !DILocation(line: 55, column: 11, scope: !1311)
!1328 = !DILocation(line: 60, column: 5, scope: !1248)
!1329 = !DILocation(line: 62, column: 43, scope: !1248)
!1330 = !DILocation(line: 62, column: 54, scope: !1248)
!1331 = !DILocation(line: 62, column: 20, scope: !1248)
!1332 = !DILocation(line: 63, column: 18, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1248, file: !325, line: 63, column: 9)
!1334 = !DILocation(line: 63, column: 9, scope: !1248)
!1335 = !DILocation(line: 0, scope: !1251)
!1336 = !DILocation(line: 77, column: 23, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1251, file: !325, line: 77, column: 5)
!1338 = !DILocation(line: 77, column: 5, scope: !1251)
!1339 = !DILocation(line: 0, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !325, line: 65, column: 13)
!1341 = distinct !DILexicalBlock(scope: !1333, file: !325, line: 64, column: 7)
!1342 = !DILocation(line: 65, column: 13, scope: !1341)
!1343 = !DILocation(line: 67, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !325, line: 66, column: 11)
!1345 = !DILocation(line: 69, column: 11, scope: !1344)
!1346 = !DILocation(line: 72, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1340, file: !325, line: 71, column: 11)
!1348 = !DILocation(line: 84, column: 11, scope: !1248)
!1349 = !DILocation(line: 84, column: 5, scope: !1248)
!1350 = !DILocation(line: 85, column: 3, scope: !1225)
!1351 = !DILocation(line: 78, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1337, file: !325, line: 78, column: 11)
!1353 = !DILocation(line: 78, column: 21, scope: !1352)
!1354 = !DILocation(line: 78, column: 29, scope: !1352)
!1355 = !DILocation(line: 0, scope: !1307, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 80, column: 11, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !325, line: 79, column: 9)
!1358 = !DILocation(line: 110, column: 10, scope: !1307, inlinedAt: !1356)
!1359 = !DILocation(line: 81, column: 29, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !325, line: 81, column: 15)
!1361 = !DILocation(line: 0, scope: !1264, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 81, column: 16, scope: !1360)
!1363 = !DILocation(line: 96, column: 7, scope: !1264, inlinedAt: !1362)
!1364 = !DILocation(line: 118, column: 5, scope: !1291, inlinedAt: !1362)
!1365 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1362)
!1366 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1362)
!1367 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1362)
!1368 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1362)
!1369 = !DILocation(line: 0, scope: !1280, inlinedAt: !1362)
!1370 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1362)
!1371 = !DILocation(line: 112, column: 9, scope: !1282, inlinedAt: !1362)
!1372 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1362)
!1373 = !DILocation(line: 81, column: 15, scope: !1357)
!1374 = !DILocation(line: 77, column: 36, scope: !1337)
!1375 = distinct !{!1375, !1338, !1376, !941}
!1376 = !DILocation(line: 83, column: 9, scope: !1251)
!1377 = !DILocation(line: 87, column: 1, scope: !1225)
!1378 = !DISubprogram(name: "getpwuid", scope: !1066, file: !1066, line: 110, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1237, !1054}
!1381 = !DISubprogram(name: "getgrgid", scope: !1272, file: !1272, line: 101, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1270, !774}
!1384 = !DISubprogram(name: "free", scope: !1015, file: !1015, line: 555, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !75}
!1387 = !DILocation(line: 0, scope: !1264)
!1388 = !DILocation(line: 96, column: 7, scope: !1264)
!1389 = !DILocation(line: 118, column: 5, scope: !1291)
!1390 = !DILocation(line: 98, column: 13, scope: !1284)
!1391 = !DILocation(line: 99, column: 15, scope: !1283)
!1392 = !DILocation(line: 99, column: 11, scope: !1284)
!1393 = !DILocation(line: 108, column: 29, scope: !1280)
!1394 = !DILocation(line: 0, scope: !1280)
!1395 = !DILocation(line: 109, column: 15, scope: !1280)
!1396 = !DILocation(line: 112, column: 9, scope: !1282)
!1397 = !DILocation(line: 116, column: 5, scope: !1291)
!1398 = !DILocation(line: 119, column: 3, scope: !1264)
!1399 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !353, file: !353, line: 50, type: !845, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "file", arg: 1, scope: !1399, file: !353, line: 50, type: !80)
!1402 = !DILocation(line: 0, scope: !1399)
!1403 = !DILocation(line: 52, column: 13, scope: !1399)
!1404 = !DILocation(line: 53, column: 1, scope: !1399)
!1405 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !353, file: !353, line: 87, type: !1406, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !133}
!1408 = !{!1409}
!1409 = !DILocalVariable(name: "ignore", arg: 1, scope: !1405, file: !353, line: 87, type: !133)
!1410 = !DILocation(line: 0, scope: !1405)
!1411 = !DILocation(line: 89, column: 16, scope: !1405)
!1412 = !{!1413, !1413, i64 0}
!1413 = !{!"_Bool", !836, i64 0}
!1414 = !DILocation(line: 90, column: 1, scope: !1405)
!1415 = distinct !DISubprogram(name: "close_stdout", scope: !353, file: !353, line: 116, type: !419, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1416)
!1416 = !{!1417}
!1417 = !DILocalVariable(name: "write_error", scope: !1418, file: !353, line: 121, type: !80)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !353, line: 120, column: 5)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !353, line: 118, column: 7)
!1420 = !DILocation(line: 118, column: 21, scope: !1419)
!1421 = !DILocation(line: 118, column: 7, scope: !1419)
!1422 = !DILocation(line: 118, column: 29, scope: !1419)
!1423 = !DILocation(line: 119, column: 7, scope: !1419)
!1424 = !DILocation(line: 119, column: 12, scope: !1419)
!1425 = !{i8 0, i8 2}
!1426 = !DILocation(line: 119, column: 25, scope: !1419)
!1427 = !DILocation(line: 119, column: 28, scope: !1419)
!1428 = !DILocation(line: 119, column: 34, scope: !1419)
!1429 = !DILocation(line: 118, column: 7, scope: !1415)
!1430 = !DILocation(line: 121, column: 33, scope: !1418)
!1431 = !DILocation(line: 0, scope: !1418)
!1432 = !DILocation(line: 122, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1418, file: !353, line: 122, column: 11)
!1434 = !DILocation(line: 0, scope: !1433)
!1435 = !DILocation(line: 122, column: 11, scope: !1418)
!1436 = !DILocation(line: 123, column: 9, scope: !1433)
!1437 = !DILocation(line: 126, column: 9, scope: !1433)
!1438 = !DILocation(line: 128, column: 14, scope: !1418)
!1439 = !DILocation(line: 128, column: 7, scope: !1418)
!1440 = !DILocation(line: 133, column: 42, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1415, file: !353, line: 133, column: 7)
!1442 = !DILocation(line: 133, column: 28, scope: !1441)
!1443 = !DILocation(line: 133, column: 50, scope: !1441)
!1444 = !DILocation(line: 133, column: 7, scope: !1415)
!1445 = !DILocation(line: 134, column: 12, scope: !1441)
!1446 = !DILocation(line: 134, column: 5, scope: !1441)
!1447 = !DILocation(line: 135, column: 1, scope: !1415)
!1448 = !DISubprogram(name: "_exit", scope: !1208, file: !1208, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1449 = distinct !DISubprogram(name: "verror", scope: !368, file: !368, line: 251, type: !1450, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !53, !53, !80, !378}
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DILocalVariable(name: "status", arg: 1, scope: !1449, file: !368, line: 251, type: !53)
!1454 = !DILocalVariable(name: "errnum", arg: 2, scope: !1449, file: !368, line: 251, type: !53)
!1455 = !DILocalVariable(name: "message", arg: 3, scope: !1449, file: !368, line: 251, type: !80)
!1456 = !DILocalVariable(name: "args", arg: 4, scope: !1449, file: !368, line: 251, type: !378)
!1457 = !DILocation(line: 0, scope: !1449)
!1458 = !DILocation(line: 261, column: 3, scope: !1449)
!1459 = !DILocation(line: 265, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !368, line: 265, column: 7)
!1461 = !DILocation(line: 265, column: 7, scope: !1449)
!1462 = !DILocation(line: 266, column: 5, scope: !1460)
!1463 = !DILocation(line: 272, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !368, line: 268, column: 5)
!1465 = !DILocation(line: 276, column: 3, scope: !1449)
!1466 = !{i64 0, i64 8, !834, i64 8, i64 8, !834, i64 16, i64 8, !834, i64 24, i64 4, !894, i64 28, i64 4, !894}
!1467 = !DILocation(line: 282, column: 1, scope: !1449)
!1468 = distinct !DISubprogram(name: "flush_stdout", scope: !368, file: !368, line: 163, type: !419, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1469)
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "stdout_fd", scope: !1468, file: !368, line: 166, type: !53)
!1471 = !DILocation(line: 0, scope: !1468)
!1472 = !DILocalVariable(name: "fd", arg: 1, scope: !1473, file: !368, line: 145, type: !53)
!1473 = distinct !DISubprogram(name: "is_open", scope: !368, file: !368, line: 145, type: !1128, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1474)
!1474 = !{!1472}
!1475 = !DILocation(line: 0, scope: !1473, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 182, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1468, file: !368, line: 182, column: 7)
!1478 = !DILocation(line: 157, column: 15, scope: !1473, inlinedAt: !1476)
!1479 = !DILocation(line: 157, column: 12, scope: !1473, inlinedAt: !1476)
!1480 = !DILocation(line: 182, column: 7, scope: !1468)
!1481 = !DILocation(line: 184, column: 5, scope: !1477)
!1482 = !DILocation(line: 185, column: 1, scope: !1468)
!1483 = distinct !DISubprogram(name: "error_tail", scope: !368, file: !368, line: 219, type: !1450, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DILocalVariable(name: "status", arg: 1, scope: !1483, file: !368, line: 219, type: !53)
!1486 = !DILocalVariable(name: "errnum", arg: 2, scope: !1483, file: !368, line: 219, type: !53)
!1487 = !DILocalVariable(name: "message", arg: 3, scope: !1483, file: !368, line: 219, type: !80)
!1488 = !DILocalVariable(name: "args", arg: 4, scope: !1483, file: !368, line: 219, type: !378)
!1489 = distinct !DIAssignID()
!1490 = !DILocation(line: 0, scope: !1483)
!1491 = !DILocation(line: 229, column: 13, scope: !1483)
!1492 = !DILocation(line: 135, column: 10, scope: !1493, inlinedAt: !1535)
!1493 = distinct !DISubprogram(name: "vfprintf", scope: !881, file: !881, line: 132, type: !1494, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1531)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!53, !1496, !885, !380}
!1496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1499, file: !150, line: 51, baseType: !53, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1499, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1499, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1499, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1499, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1499, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1499, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1499, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1499, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1499, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1499, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1499, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1499, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1499, file: !150, line: 70, baseType: !1515, size: 64, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1499, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1499, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1499, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1499, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1499, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1499, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1499, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1499, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1499, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1499, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1499, file: !150, line: 93, baseType: !1515, size: 64, offset: 1344)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1499, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1499, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1499, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1499, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1531 = !{!1532, !1533, !1534}
!1532 = !DILocalVariable(name: "__stream", arg: 1, scope: !1493, file: !881, line: 132, type: !1496)
!1533 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1493, file: !881, line: 133, type: !885)
!1534 = !DILocalVariable(name: "__ap", arg: 3, scope: !1493, file: !881, line: 133, type: !380)
!1535 = distinct !DILocation(line: 229, column: 3, scope: !1483)
!1536 = !{!1537, !1539}
!1537 = distinct !{!1537, !1538, !"vfprintf.inline: argument 0"}
!1538 = distinct !{!1538, !"vfprintf.inline"}
!1539 = distinct !{!1539, !1538, !"vfprintf.inline: argument 1"}
!1540 = !DILocation(line: 229, column: 3, scope: !1483)
!1541 = !DILocation(line: 0, scope: !1493, inlinedAt: !1535)
!1542 = !DILocation(line: 232, column: 3, scope: !1483)
!1543 = !DILocation(line: 233, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1483, file: !368, line: 233, column: 7)
!1545 = !DILocation(line: 233, column: 7, scope: !1483)
!1546 = !DILocalVariable(name: "errbuf", scope: !1547, file: !368, line: 193, type: !1551)
!1547 = distinct !DISubprogram(name: "print_errno_message", scope: !368, file: !368, line: 188, type: !824, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1548)
!1548 = !{!1549, !1550, !1546}
!1549 = !DILocalVariable(name: "errnum", arg: 1, scope: !1547, file: !368, line: 188, type: !53)
!1550 = !DILocalVariable(name: "s", scope: !1547, file: !368, line: 190, type: !80)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 1024)
!1554 = !DILocation(line: 0, scope: !1547, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 234, column: 5, scope: !1544)
!1556 = !DILocation(line: 193, column: 3, scope: !1547, inlinedAt: !1555)
!1557 = !DILocation(line: 195, column: 7, scope: !1547, inlinedAt: !1555)
!1558 = !DILocation(line: 207, column: 9, scope: !1559, inlinedAt: !1555)
!1559 = distinct !DILexicalBlock(scope: !1547, file: !368, line: 207, column: 7)
!1560 = !DILocation(line: 207, column: 7, scope: !1547, inlinedAt: !1555)
!1561 = !DILocation(line: 208, column: 9, scope: !1559, inlinedAt: !1555)
!1562 = !DILocation(line: 208, column: 5, scope: !1559, inlinedAt: !1555)
!1563 = !DILocation(line: 214, column: 3, scope: !1547, inlinedAt: !1555)
!1564 = !DILocation(line: 216, column: 1, scope: !1547, inlinedAt: !1555)
!1565 = !DILocation(line: 234, column: 5, scope: !1544)
!1566 = !DILocation(line: 238, column: 3, scope: !1483)
!1567 = !DILocalVariable(name: "__c", arg: 1, scope: !1568, file: !1127, line: 101, type: !53)
!1568 = distinct !DISubprogram(name: "putc_unlocked", scope: !1127, file: !1127, line: 101, type: !1569, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!53, !53, !1497}
!1571 = !{!1567, !1572}
!1572 = !DILocalVariable(name: "__stream", arg: 2, scope: !1568, file: !1127, line: 101, type: !1497)
!1573 = !DILocation(line: 0, scope: !1568, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 238, column: 3, scope: !1483)
!1575 = !DILocation(line: 103, column: 10, scope: !1568, inlinedAt: !1574)
!1576 = !DILocation(line: 240, column: 3, scope: !1483)
!1577 = !DILocation(line: 241, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1483, file: !368, line: 241, column: 7)
!1579 = !DILocation(line: 241, column: 7, scope: !1483)
!1580 = !DILocation(line: 242, column: 5, scope: !1578)
!1581 = !DILocation(line: 243, column: 1, scope: !1483)
!1582 = !DISubprogram(name: "__vfprintf_chk", scope: !881, file: !881, line: 96, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!53, !1496, !53, !885, !380}
!1585 = !DISubprogram(name: "strerror_r", scope: !1011, file: !1011, line: 444, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!74, !53, !74, !77}
!1588 = !DISubprogram(name: "fcntl", scope: !1589, file: !1589, line: 149, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!53, !53, !53, null}
!1592 = distinct !DISubprogram(name: "error", scope: !368, file: !368, line: 285, type: !1593, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !53, !53, !80, null}
!1595 = !{!1596, !1597, !1598, !1599}
!1596 = !DILocalVariable(name: "status", arg: 1, scope: !1592, file: !368, line: 285, type: !53)
!1597 = !DILocalVariable(name: "errnum", arg: 2, scope: !1592, file: !368, line: 285, type: !53)
!1598 = !DILocalVariable(name: "message", arg: 3, scope: !1592, file: !368, line: 285, type: !80)
!1599 = !DILocalVariable(name: "ap", scope: !1592, file: !368, line: 287, type: !378)
!1600 = distinct !DIAssignID()
!1601 = !DILocation(line: 0, scope: !1592)
!1602 = !DILocation(line: 287, column: 3, scope: !1592)
!1603 = !DILocation(line: 288, column: 3, scope: !1592)
!1604 = !DILocation(line: 289, column: 3, scope: !1592)
!1605 = !DILocation(line: 290, column: 3, scope: !1592)
!1606 = !DILocation(line: 291, column: 1, scope: !1592)
!1607 = !DILocation(line: 0, scope: !375)
!1608 = !DILocation(line: 302, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !375, file: !368, line: 302, column: 7)
!1610 = !DILocation(line: 302, column: 7, scope: !375)
!1611 = !DILocation(line: 307, column: 11, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !368, line: 307, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !368, line: 303, column: 5)
!1614 = !DILocation(line: 307, column: 27, scope: !1612)
!1615 = !DILocation(line: 308, column: 11, scope: !1612)
!1616 = !DILocation(line: 308, column: 28, scope: !1612)
!1617 = !DILocation(line: 308, column: 25, scope: !1612)
!1618 = !DILocation(line: 309, column: 15, scope: !1612)
!1619 = !DILocation(line: 309, column: 33, scope: !1612)
!1620 = !DILocation(line: 310, column: 19, scope: !1612)
!1621 = !DILocation(line: 311, column: 22, scope: !1612)
!1622 = !DILocation(line: 311, column: 56, scope: !1612)
!1623 = !DILocation(line: 307, column: 11, scope: !1613)
!1624 = !DILocation(line: 316, column: 21, scope: !1613)
!1625 = !DILocation(line: 317, column: 23, scope: !1613)
!1626 = !DILocation(line: 318, column: 5, scope: !1613)
!1627 = !DILocation(line: 327, column: 3, scope: !375)
!1628 = !DILocation(line: 331, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !375, file: !368, line: 331, column: 7)
!1630 = !DILocation(line: 331, column: 7, scope: !375)
!1631 = !DILocation(line: 332, column: 5, scope: !1629)
!1632 = !DILocation(line: 338, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !368, line: 334, column: 5)
!1634 = !DILocation(line: 346, column: 3, scope: !375)
!1635 = !DILocation(line: 350, column: 3, scope: !375)
!1636 = !DILocation(line: 356, column: 1, scope: !375)
!1637 = distinct !DISubprogram(name: "error_at_line", scope: !368, file: !368, line: 359, type: !1638, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !53, !53, !80, !59, !80, null}
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646}
!1641 = !DILocalVariable(name: "status", arg: 1, scope: !1637, file: !368, line: 359, type: !53)
!1642 = !DILocalVariable(name: "errnum", arg: 2, scope: !1637, file: !368, line: 359, type: !53)
!1643 = !DILocalVariable(name: "file_name", arg: 3, scope: !1637, file: !368, line: 359, type: !80)
!1644 = !DILocalVariable(name: "line_number", arg: 4, scope: !1637, file: !368, line: 360, type: !59)
!1645 = !DILocalVariable(name: "message", arg: 5, scope: !1637, file: !368, line: 360, type: !80)
!1646 = !DILocalVariable(name: "ap", scope: !1637, file: !368, line: 362, type: !378)
!1647 = distinct !DIAssignID()
!1648 = !DILocation(line: 0, scope: !1637)
!1649 = !DILocation(line: 362, column: 3, scope: !1637)
!1650 = !DILocation(line: 363, column: 3, scope: !1637)
!1651 = !DILocation(line: 364, column: 3, scope: !1637)
!1652 = !DILocation(line: 366, column: 3, scope: !1637)
!1653 = !DILocation(line: 367, column: 1, scope: !1637)
!1654 = distinct !DISubprogram(name: "fpurge", scope: !708, file: !708, line: 32, type: !1655, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1691)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!53, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1659, file: !150, line: 51, baseType: !53, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1659, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1659, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1659, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1659, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1659, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1659, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1659, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1659, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1659, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1659, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1659, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1659, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1659, file: !150, line: 70, baseType: !1675, size: 64, offset: 832)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1659, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1659, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1659, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1659, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1659, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1659, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1659, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1659, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1659, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1659, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1659, file: !150, line: 93, baseType: !1675, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1659, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1659, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1659, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1659, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "fp", arg: 1, scope: !1654, file: !708, line: 32, type: !1657)
!1693 = !DILocation(line: 0, scope: !1654)
!1694 = !DILocation(line: 36, column: 3, scope: !1654)
!1695 = !DILocation(line: 38, column: 3, scope: !1654)
!1696 = !DISubprogram(name: "__fpurge", scope: !1697, file: !1697, line: 72, type: !1698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1697 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !1657}
!1700 = distinct !DISubprogram(name: "getprogname", scope: !710, file: !710, line: 54, type: !1701, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!80}
!1703 = !DILocation(line: 58, column: 10, scope: !1700)
!1704 = !DILocation(line: 58, column: 3, scope: !1700)
!1705 = distinct !DISubprogram(name: "set_program_name", scope: !424, file: !424, line: 37, type: !845, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "argv0", arg: 1, scope: !1705, file: !424, line: 37, type: !80)
!1708 = !DILocalVariable(name: "slash", scope: !1705, file: !424, line: 44, type: !80)
!1709 = !DILocalVariable(name: "base", scope: !1705, file: !424, line: 45, type: !80)
!1710 = !DILocation(line: 0, scope: !1705)
!1711 = !DILocation(line: 44, column: 23, scope: !1705)
!1712 = !DILocation(line: 45, column: 22, scope: !1705)
!1713 = !DILocation(line: 46, column: 17, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1705, file: !424, line: 46, column: 7)
!1715 = !DILocation(line: 46, column: 9, scope: !1714)
!1716 = !DILocation(line: 46, column: 25, scope: !1714)
!1717 = !DILocation(line: 46, column: 40, scope: !1714)
!1718 = !DILocalVariable(name: "__s1", arg: 1, scope: !1719, file: !907, line: 974, type: !1039)
!1719 = distinct !DISubprogram(name: "memeq", scope: !907, file: !907, line: 974, type: !1720, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!133, !1039, !1039, !77}
!1722 = !{!1718, !1723, !1724}
!1723 = !DILocalVariable(name: "__s2", arg: 2, scope: !1719, file: !907, line: 974, type: !1039)
!1724 = !DILocalVariable(name: "__n", arg: 3, scope: !1719, file: !907, line: 974, type: !77)
!1725 = !DILocation(line: 0, scope: !1719, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 46, column: 28, scope: !1714)
!1727 = !DILocation(line: 976, column: 11, scope: !1719, inlinedAt: !1726)
!1728 = !DILocation(line: 976, column: 10, scope: !1719, inlinedAt: !1726)
!1729 = !DILocation(line: 46, column: 7, scope: !1705)
!1730 = !DILocation(line: 49, column: 11, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !424, line: 49, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1714, file: !424, line: 47, column: 5)
!1733 = !DILocation(line: 49, column: 36, scope: !1731)
!1734 = !DILocation(line: 49, column: 11, scope: !1732)
!1735 = !DILocation(line: 65, column: 16, scope: !1705)
!1736 = !DILocation(line: 71, column: 27, scope: !1705)
!1737 = !DILocation(line: 74, column: 33, scope: !1705)
!1738 = !DILocation(line: 76, column: 1, scope: !1705)
!1739 = !DISubprogram(name: "strrchr", scope: !1011, file: !1011, line: 273, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1740 = distinct !DIAssignID()
!1741 = !DILocation(line: 0, scope: !433)
!1742 = distinct !DIAssignID()
!1743 = !DILocation(line: 40, column: 29, scope: !433)
!1744 = !DILocation(line: 41, column: 19, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !433, file: !434, line: 41, column: 7)
!1746 = !DILocation(line: 41, column: 7, scope: !433)
!1747 = !DILocation(line: 47, column: 3, scope: !433)
!1748 = !DILocation(line: 48, column: 3, scope: !433)
!1749 = !DILocalVariable(name: "ps", arg: 1, scope: !1750, file: !1751, line: 1135, type: !1754)
!1750 = distinct !DISubprogram(name: "mbszero", scope: !1751, file: !1751, line: 1135, type: !1752, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1755)
!1751 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1755 = !{!1749}
!1756 = !DILocation(line: 0, scope: !1750, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 48, column: 18, scope: !433)
!1758 = !DILocalVariable(name: "__dest", arg: 1, scope: !1759, file: !1760, line: 57, type: !75)
!1759 = distinct !DISubprogram(name: "memset", scope: !1760, file: !1760, line: 57, type: !1761, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1763)
!1760 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!75, !75, !53, !77}
!1763 = !{!1758, !1764, !1765}
!1764 = !DILocalVariable(name: "__ch", arg: 2, scope: !1759, file: !1760, line: 57, type: !53)
!1765 = !DILocalVariable(name: "__len", arg: 3, scope: !1759, file: !1760, line: 57, type: !77)
!1766 = !DILocation(line: 0, scope: !1759, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 1137, column: 3, scope: !1750, inlinedAt: !1757)
!1768 = !DILocation(line: 59, column: 10, scope: !1759, inlinedAt: !1767)
!1769 = !DILocation(line: 49, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !433, file: !434, line: 49, column: 7)
!1771 = !DILocation(line: 49, column: 39, scope: !1770)
!1772 = !DILocation(line: 49, column: 44, scope: !1770)
!1773 = !DILocation(line: 54, column: 1, scope: !433)
!1774 = !DISubprogram(name: "mbrtoc32", scope: !445, file: !445, line: 57, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!77, !1777, !885, !77, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1754)
!1780 = distinct !DISubprogram(name: "clone_quoting_options", scope: !464, file: !464, line: 113, type: !1781, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1784)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1783, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "o", arg: 1, scope: !1780, file: !464, line: 113, type: !1783)
!1786 = !DILocalVariable(name: "saved_errno", scope: !1780, file: !464, line: 115, type: !53)
!1787 = !DILocalVariable(name: "p", scope: !1780, file: !464, line: 116, type: !1783)
!1788 = !DILocation(line: 0, scope: !1780)
!1789 = !DILocation(line: 115, column: 21, scope: !1780)
!1790 = !DILocation(line: 116, column: 40, scope: !1780)
!1791 = !DILocation(line: 116, column: 31, scope: !1780)
!1792 = !DILocation(line: 118, column: 9, scope: !1780)
!1793 = !DILocation(line: 119, column: 3, scope: !1780)
!1794 = distinct !DISubprogram(name: "get_quoting_style", scope: !464, file: !464, line: 124, type: !1795, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1799)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!490, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "o", arg: 1, scope: !1794, file: !464, line: 124, type: !1797)
!1801 = !DILocation(line: 0, scope: !1794)
!1802 = !DILocation(line: 126, column: 11, scope: !1794)
!1803 = !DILocation(line: 126, column: 46, scope: !1794)
!1804 = !{!1805, !895, i64 0}
!1805 = !{!"quoting_options", !895, i64 0, !895, i64 4, !836, i64 8, !835, i64 40, !835, i64 48}
!1806 = !DILocation(line: 126, column: 3, scope: !1794)
!1807 = distinct !DISubprogram(name: "set_quoting_style", scope: !464, file: !464, line: 132, type: !1808, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1783, !490}
!1810 = !{!1811, !1812}
!1811 = !DILocalVariable(name: "o", arg: 1, scope: !1807, file: !464, line: 132, type: !1783)
!1812 = !DILocalVariable(name: "s", arg: 2, scope: !1807, file: !464, line: 132, type: !490)
!1813 = !DILocation(line: 0, scope: !1807)
!1814 = !DILocation(line: 134, column: 4, scope: !1807)
!1815 = !DILocation(line: 134, column: 45, scope: !1807)
!1816 = !DILocation(line: 135, column: 1, scope: !1807)
!1817 = distinct !DISubprogram(name: "set_char_quoting", scope: !464, file: !464, line: 143, type: !1818, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!53, !1783, !4, !53}
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1827, !1828}
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1817, file: !464, line: 143, type: !1783)
!1822 = !DILocalVariable(name: "c", arg: 2, scope: !1817, file: !464, line: 143, type: !4)
!1823 = !DILocalVariable(name: "i", arg: 3, scope: !1817, file: !464, line: 143, type: !53)
!1824 = !DILocalVariable(name: "uc", scope: !1817, file: !464, line: 145, type: !82)
!1825 = !DILocalVariable(name: "p", scope: !1817, file: !464, line: 146, type: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1827 = !DILocalVariable(name: "shift", scope: !1817, file: !464, line: 148, type: !53)
!1828 = !DILocalVariable(name: "r", scope: !1817, file: !464, line: 149, type: !59)
!1829 = !DILocation(line: 0, scope: !1817)
!1830 = !DILocation(line: 147, column: 6, scope: !1817)
!1831 = !DILocation(line: 147, column: 41, scope: !1817)
!1832 = !DILocation(line: 147, column: 62, scope: !1817)
!1833 = !DILocation(line: 147, column: 57, scope: !1817)
!1834 = !DILocation(line: 148, column: 15, scope: !1817)
!1835 = !DILocation(line: 149, column: 21, scope: !1817)
!1836 = !DILocation(line: 149, column: 24, scope: !1817)
!1837 = !DILocation(line: 149, column: 34, scope: !1817)
!1838 = !DILocation(line: 150, column: 19, scope: !1817)
!1839 = !DILocation(line: 150, column: 24, scope: !1817)
!1840 = !DILocation(line: 150, column: 6, scope: !1817)
!1841 = !DILocation(line: 151, column: 3, scope: !1817)
!1842 = distinct !DISubprogram(name: "set_quoting_flags", scope: !464, file: !464, line: 159, type: !1843, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!53, !1783, !53}
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "o", arg: 1, scope: !1842, file: !464, line: 159, type: !1783)
!1847 = !DILocalVariable(name: "i", arg: 2, scope: !1842, file: !464, line: 159, type: !53)
!1848 = !DILocalVariable(name: "r", scope: !1842, file: !464, line: 163, type: !53)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 161, column: 8, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1842, file: !464, line: 161, column: 7)
!1852 = !DILocation(line: 161, column: 7, scope: !1842)
!1853 = !DILocation(line: 163, column: 14, scope: !1842)
!1854 = !{!1805, !895, i64 4}
!1855 = !DILocation(line: 164, column: 12, scope: !1842)
!1856 = !DILocation(line: 165, column: 3, scope: !1842)
!1857 = distinct !DISubprogram(name: "set_custom_quoting", scope: !464, file: !464, line: 169, type: !1858, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1783, !80, !80}
!1860 = !{!1861, !1862, !1863}
!1861 = !DILocalVariable(name: "o", arg: 1, scope: !1857, file: !464, line: 169, type: !1783)
!1862 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1857, file: !464, line: 170, type: !80)
!1863 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1857, file: !464, line: 170, type: !80)
!1864 = !DILocation(line: 0, scope: !1857)
!1865 = !DILocation(line: 172, column: 8, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1857, file: !464, line: 172, column: 7)
!1867 = !DILocation(line: 172, column: 7, scope: !1857)
!1868 = !DILocation(line: 174, column: 12, scope: !1857)
!1869 = !DILocation(line: 175, column: 8, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1857, file: !464, line: 175, column: 7)
!1871 = !DILocation(line: 175, column: 19, scope: !1870)
!1872 = !DILocation(line: 176, column: 5, scope: !1870)
!1873 = !DILocation(line: 177, column: 6, scope: !1857)
!1874 = !DILocation(line: 177, column: 17, scope: !1857)
!1875 = !{!1805, !835, i64 40}
!1876 = !DILocation(line: 178, column: 6, scope: !1857)
!1877 = !DILocation(line: 178, column: 18, scope: !1857)
!1878 = !{!1805, !835, i64 48}
!1879 = !DILocation(line: 179, column: 1, scope: !1857)
!1880 = !DISubprogram(name: "abort", scope: !1015, file: !1015, line: 598, type: !419, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1881 = distinct !DISubprogram(name: "quotearg_buffer", scope: !464, file: !464, line: 774, type: !1882, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!77, !74, !77, !80, !77, !1797}
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1885 = !DILocalVariable(name: "buffer", arg: 1, scope: !1881, file: !464, line: 774, type: !74)
!1886 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1881, file: !464, line: 774, type: !77)
!1887 = !DILocalVariable(name: "arg", arg: 3, scope: !1881, file: !464, line: 775, type: !80)
!1888 = !DILocalVariable(name: "argsize", arg: 4, scope: !1881, file: !464, line: 775, type: !77)
!1889 = !DILocalVariable(name: "o", arg: 5, scope: !1881, file: !464, line: 776, type: !1797)
!1890 = !DILocalVariable(name: "p", scope: !1881, file: !464, line: 778, type: !1797)
!1891 = !DILocalVariable(name: "saved_errno", scope: !1881, file: !464, line: 779, type: !53)
!1892 = !DILocalVariable(name: "r", scope: !1881, file: !464, line: 780, type: !77)
!1893 = !DILocation(line: 0, scope: !1881)
!1894 = !DILocation(line: 778, column: 37, scope: !1881)
!1895 = !DILocation(line: 779, column: 21, scope: !1881)
!1896 = !DILocation(line: 781, column: 43, scope: !1881)
!1897 = !DILocation(line: 781, column: 53, scope: !1881)
!1898 = !DILocation(line: 781, column: 63, scope: !1881)
!1899 = !DILocation(line: 782, column: 43, scope: !1881)
!1900 = !DILocation(line: 782, column: 58, scope: !1881)
!1901 = !DILocation(line: 780, column: 14, scope: !1881)
!1902 = !DILocation(line: 783, column: 9, scope: !1881)
!1903 = !DILocation(line: 784, column: 3, scope: !1881)
!1904 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !464, file: !464, line: 251, type: !1905, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1909)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!77, !74, !77, !80, !77, !490, !53, !1907, !80, !80}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1935, !1937, !1940, !1941, !1942, !1943, !1946, !1947, !1949, !1950, !1953, !1957, !1958, !1966, !1969, !1970, !1971}
!1910 = !DILocalVariable(name: "buffer", arg: 1, scope: !1904, file: !464, line: 251, type: !74)
!1911 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1904, file: !464, line: 251, type: !77)
!1912 = !DILocalVariable(name: "arg", arg: 3, scope: !1904, file: !464, line: 252, type: !80)
!1913 = !DILocalVariable(name: "argsize", arg: 4, scope: !1904, file: !464, line: 252, type: !77)
!1914 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1904, file: !464, line: 253, type: !490)
!1915 = !DILocalVariable(name: "flags", arg: 6, scope: !1904, file: !464, line: 253, type: !53)
!1916 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1904, file: !464, line: 254, type: !1907)
!1917 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1904, file: !464, line: 255, type: !80)
!1918 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1904, file: !464, line: 256, type: !80)
!1919 = !DILocalVariable(name: "unibyte_locale", scope: !1904, file: !464, line: 258, type: !133)
!1920 = !DILocalVariable(name: "len", scope: !1904, file: !464, line: 260, type: !77)
!1921 = !DILocalVariable(name: "orig_buffersize", scope: !1904, file: !464, line: 261, type: !77)
!1922 = !DILocalVariable(name: "quote_string", scope: !1904, file: !464, line: 262, type: !80)
!1923 = !DILocalVariable(name: "quote_string_len", scope: !1904, file: !464, line: 263, type: !77)
!1924 = !DILocalVariable(name: "backslash_escapes", scope: !1904, file: !464, line: 264, type: !133)
!1925 = !DILocalVariable(name: "elide_outer_quotes", scope: !1904, file: !464, line: 265, type: !133)
!1926 = !DILocalVariable(name: "encountered_single_quote", scope: !1904, file: !464, line: 266, type: !133)
!1927 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1904, file: !464, line: 267, type: !133)
!1928 = !DILabel(scope: !1904, name: "process_input", file: !464, line: 308)
!1929 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1904, file: !464, line: 309, type: !133)
!1930 = !DILocalVariable(name: "lq", scope: !1931, file: !464, line: 361, type: !80)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !464, line: 361, column: 11)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !464, line: 360, column: 13)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !464, line: 333, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 312, column: 5)
!1935 = !DILocalVariable(name: "i", scope: !1936, file: !464, line: 395, type: !77)
!1936 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 395, column: 3)
!1937 = !DILocalVariable(name: "is_right_quote", scope: !1938, file: !464, line: 397, type: !133)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !464, line: 396, column: 5)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !464, line: 395, column: 3)
!1940 = !DILocalVariable(name: "escaping", scope: !1938, file: !464, line: 398, type: !133)
!1941 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1938, file: !464, line: 399, type: !133)
!1942 = !DILocalVariable(name: "c", scope: !1938, file: !464, line: 417, type: !82)
!1943 = !DILabel(scope: !1944, name: "c_and_shell_escape", file: !464, line: 502)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 478, column: 9)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 419, column: 9)
!1946 = !DILabel(scope: !1944, name: "c_escape", file: !464, line: 507)
!1947 = !DILocalVariable(name: "m", scope: !1948, file: !464, line: 598, type: !77)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 596, column: 11)
!1949 = !DILocalVariable(name: "printable", scope: !1948, file: !464, line: 600, type: !133)
!1950 = !DILocalVariable(name: "mbs", scope: !1951, file: !464, line: 609, type: !551)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !464, line: 608, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !464, line: 602, column: 17)
!1953 = !DILocalVariable(name: "w", scope: !1954, file: !464, line: 618, type: !444)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !464, line: 617, column: 19)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !464, line: 616, column: 17)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !464, line: 616, column: 17)
!1957 = !DILocalVariable(name: "bytes", scope: !1954, file: !464, line: 619, type: !77)
!1958 = !DILocalVariable(name: "j", scope: !1959, file: !464, line: 648, type: !77)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !464, line: 648, column: 29)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !464, line: 647, column: 27)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !464, line: 645, column: 29)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !464, line: 636, column: 23)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !464, line: 628, column: 30)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !464, line: 623, column: 30)
!1965 = distinct !DILexicalBlock(scope: !1954, file: !464, line: 621, column: 25)
!1966 = !DILocalVariable(name: "ilim", scope: !1967, file: !464, line: 674, type: !77)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !464, line: 671, column: 15)
!1968 = distinct !DILexicalBlock(scope: !1948, file: !464, line: 670, column: 17)
!1969 = !DILabel(scope: !1938, name: "store_escape", file: !464, line: 709)
!1970 = !DILabel(scope: !1938, name: "store_c", file: !464, line: 712)
!1971 = !DILabel(scope: !1904, name: "force_outer_quoting_style", file: !464, line: 753)
!1972 = distinct !DIAssignID()
!1973 = distinct !DIAssignID()
!1974 = distinct !DIAssignID()
!1975 = distinct !DIAssignID()
!1976 = distinct !DIAssignID()
!1977 = !DILocation(line: 0, scope: !1951)
!1978 = distinct !DIAssignID()
!1979 = !DILocation(line: 0, scope: !1954)
!1980 = !DILocation(line: 0, scope: !1904)
!1981 = !DILocation(line: 258, column: 25, scope: !1904)
!1982 = !DILocation(line: 258, column: 36, scope: !1904)
!1983 = !DILocation(line: 267, column: 3, scope: !1904)
!1984 = !DILocation(line: 261, column: 10, scope: !1904)
!1985 = !DILocation(line: 262, column: 15, scope: !1904)
!1986 = !DILocation(line: 263, column: 10, scope: !1904)
!1987 = !DILocation(line: 308, column: 2, scope: !1904)
!1988 = !DILocation(line: 311, column: 3, scope: !1904)
!1989 = !DILocation(line: 318, column: 11, scope: !1934)
!1990 = !DILocation(line: 319, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !464, line: 319, column: 9)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !464, line: 319, column: 9)
!1993 = distinct !DILexicalBlock(scope: !1934, file: !464, line: 318, column: 11)
!1994 = !DILocation(line: 319, column: 9, scope: !1992)
!1995 = !DILocation(line: 0, scope: !542, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 357, column: 26, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !464, line: 335, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1933, file: !464, line: 334, column: 13)
!1999 = !DILocation(line: 199, column: 29, scope: !542, inlinedAt: !1996)
!2000 = !DILocation(line: 201, column: 19, scope: !2001, inlinedAt: !1996)
!2001 = distinct !DILexicalBlock(scope: !542, file: !464, line: 201, column: 7)
!2002 = !DILocation(line: 201, column: 7, scope: !542, inlinedAt: !1996)
!2003 = !DILocation(line: 229, column: 3, scope: !542, inlinedAt: !1996)
!2004 = !DILocation(line: 230, column: 3, scope: !542, inlinedAt: !1996)
!2005 = !DILocalVariable(name: "ps", arg: 1, scope: !2006, file: !1751, line: 1135, type: !2009)
!2006 = distinct !DISubprogram(name: "mbszero", scope: !1751, file: !1751, line: 1135, type: !2007, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2010)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !2009}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2010 = !{!2005}
!2011 = !DILocation(line: 0, scope: !2006, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 230, column: 18, scope: !542, inlinedAt: !1996)
!2013 = !DILocalVariable(name: "__dest", arg: 1, scope: !2014, file: !1760, line: 57, type: !75)
!2014 = distinct !DISubprogram(name: "memset", scope: !1760, file: !1760, line: 57, type: !1761, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2015)
!2015 = !{!2013, !2016, !2017}
!2016 = !DILocalVariable(name: "__ch", arg: 2, scope: !2014, file: !1760, line: 57, type: !53)
!2017 = !DILocalVariable(name: "__len", arg: 3, scope: !2014, file: !1760, line: 57, type: !77)
!2018 = !DILocation(line: 0, scope: !2014, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 1137, column: 3, scope: !2006, inlinedAt: !2012)
!2020 = !DILocation(line: 59, column: 10, scope: !2014, inlinedAt: !2019)
!2021 = !DILocation(line: 231, column: 7, scope: !2022, inlinedAt: !1996)
!2022 = distinct !DILexicalBlock(scope: !542, file: !464, line: 231, column: 7)
!2023 = !DILocation(line: 231, column: 40, scope: !2022, inlinedAt: !1996)
!2024 = !DILocation(line: 231, column: 45, scope: !2022, inlinedAt: !1996)
!2025 = !DILocation(line: 235, column: 1, scope: !542, inlinedAt: !1996)
!2026 = !DILocation(line: 0, scope: !542, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 358, column: 27, scope: !1997)
!2028 = !DILocation(line: 199, column: 29, scope: !542, inlinedAt: !2027)
!2029 = !DILocation(line: 201, column: 19, scope: !2001, inlinedAt: !2027)
!2030 = !DILocation(line: 201, column: 7, scope: !542, inlinedAt: !2027)
!2031 = !DILocation(line: 229, column: 3, scope: !542, inlinedAt: !2027)
!2032 = !DILocation(line: 230, column: 3, scope: !542, inlinedAt: !2027)
!2033 = !DILocation(line: 0, scope: !2006, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 230, column: 18, scope: !542, inlinedAt: !2027)
!2035 = !DILocation(line: 0, scope: !2014, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 1137, column: 3, scope: !2006, inlinedAt: !2034)
!2037 = !DILocation(line: 59, column: 10, scope: !2014, inlinedAt: !2036)
!2038 = !DILocation(line: 231, column: 7, scope: !2022, inlinedAt: !2027)
!2039 = !DILocation(line: 231, column: 40, scope: !2022, inlinedAt: !2027)
!2040 = !DILocation(line: 231, column: 45, scope: !2022, inlinedAt: !2027)
!2041 = !DILocation(line: 235, column: 1, scope: !542, inlinedAt: !2027)
!2042 = !DILocation(line: 360, column: 13, scope: !1933)
!2043 = !DILocation(line: 0, scope: !1931)
!2044 = !DILocation(line: 361, column: 45, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1931, file: !464, line: 361, column: 11)
!2046 = !DILocation(line: 361, column: 11, scope: !1931)
!2047 = !DILocation(line: 362, column: 13, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !464, line: 362, column: 13)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !464, line: 362, column: 13)
!2050 = !DILocation(line: 362, column: 13, scope: !2049)
!2051 = !DILocation(line: 361, column: 52, scope: !2045)
!2052 = distinct !{!2052, !2046, !2053, !941}
!2053 = !DILocation(line: 362, column: 13, scope: !1931)
!2054 = !DILocation(line: 365, column: 28, scope: !1933)
!2055 = !DILocation(line: 260, column: 10, scope: !1904)
!2056 = !DILocation(line: 367, column: 7, scope: !1934)
!2057 = !DILocation(line: 373, column: 7, scope: !1934)
!2058 = !DILocation(line: 381, column: 11, scope: !1934)
!2059 = !DILocation(line: 376, column: 11, scope: !1934)
!2060 = !DILocation(line: 382, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !464, line: 382, column: 9)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !464, line: 382, column: 9)
!2063 = distinct !DILexicalBlock(scope: !1934, file: !464, line: 381, column: 11)
!2064 = !DILocation(line: 382, column: 9, scope: !2062)
!2065 = !DILocation(line: 389, column: 7, scope: !1934)
!2066 = !DILocation(line: 392, column: 7, scope: !1934)
!2067 = !DILocation(line: 0, scope: !1936)
!2068 = !DILocation(line: 395, column: 8, scope: !1936)
!2069 = !DILocation(line: 395, scope: !1936)
!2070 = !DILocation(line: 395, column: 34, scope: !1939)
!2071 = !DILocation(line: 395, column: 26, scope: !1939)
!2072 = !DILocation(line: 395, column: 48, scope: !1939)
!2073 = !DILocation(line: 395, column: 55, scope: !1939)
!2074 = !DILocation(line: 395, column: 3, scope: !1936)
!2075 = !DILocation(line: 395, column: 67, scope: !1939)
!2076 = !DILocation(line: 0, scope: !1938)
!2077 = !DILocation(line: 402, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 401, column: 11)
!2079 = !DILocation(line: 404, column: 17, scope: !2078)
!2080 = !DILocation(line: 405, column: 39, scope: !2078)
!2081 = !DILocation(line: 409, column: 32, scope: !2078)
!2082 = !DILocation(line: 405, column: 19, scope: !2078)
!2083 = !DILocation(line: 405, column: 15, scope: !2078)
!2084 = !DILocation(line: 410, column: 11, scope: !2078)
!2085 = !DILocation(line: 410, column: 25, scope: !2078)
!2086 = !DILocalVariable(name: "__s1", arg: 1, scope: !2087, file: !907, line: 974, type: !1039)
!2087 = distinct !DISubprogram(name: "memeq", scope: !907, file: !907, line: 974, type: !1720, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2088)
!2088 = !{!2086, !2089, !2090}
!2089 = !DILocalVariable(name: "__s2", arg: 2, scope: !2087, file: !907, line: 974, type: !1039)
!2090 = !DILocalVariable(name: "__n", arg: 3, scope: !2087, file: !907, line: 974, type: !77)
!2091 = !DILocation(line: 0, scope: !2087, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 410, column: 14, scope: !2078)
!2093 = !DILocation(line: 976, column: 11, scope: !2087, inlinedAt: !2092)
!2094 = !DILocation(line: 976, column: 10, scope: !2087, inlinedAt: !2092)
!2095 = !DILocation(line: 401, column: 11, scope: !1938)
!2096 = !DILocation(line: 417, column: 25, scope: !1938)
!2097 = !DILocation(line: 418, column: 7, scope: !1938)
!2098 = !DILocation(line: 421, column: 15, scope: !1945)
!2099 = !DILocation(line: 423, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !464, line: 423, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !464, line: 422, column: 13)
!2102 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 421, column: 15)
!2103 = !DILocation(line: 423, column: 15, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !464, line: 423, column: 15)
!2105 = !DILocation(line: 423, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !464, line: 423, column: 15)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !464, line: 423, column: 15)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !464, line: 423, column: 15)
!2109 = !DILocation(line: 423, column: 15, scope: !2107)
!2110 = !DILocation(line: 423, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !464, line: 423, column: 15)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !464, line: 423, column: 15)
!2113 = !DILocation(line: 423, column: 15, scope: !2112)
!2114 = !DILocation(line: 423, column: 15, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !464, line: 423, column: 15)
!2116 = distinct !DILexicalBlock(scope: !2108, file: !464, line: 423, column: 15)
!2117 = !DILocation(line: 423, column: 15, scope: !2116)
!2118 = !DILocation(line: 423, column: 15, scope: !2108)
!2119 = !DILocation(line: 423, column: 15, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !464, line: 423, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2100, file: !464, line: 423, column: 15)
!2122 = !DILocation(line: 423, column: 15, scope: !2121)
!2123 = !DILocation(line: 431, column: 19, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2101, file: !464, line: 430, column: 19)
!2125 = !DILocation(line: 431, column: 24, scope: !2124)
!2126 = !DILocation(line: 431, column: 28, scope: !2124)
!2127 = !DILocation(line: 431, column: 38, scope: !2124)
!2128 = !DILocation(line: 431, column: 48, scope: !2124)
!2129 = !DILocation(line: 431, column: 59, scope: !2124)
!2130 = !DILocation(line: 433, column: 19, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !464, line: 433, column: 19)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !464, line: 433, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2124, file: !464, line: 432, column: 17)
!2134 = !DILocation(line: 433, column: 19, scope: !2132)
!2135 = !DILocation(line: 434, column: 19, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !464, line: 434, column: 19)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !464, line: 434, column: 19)
!2138 = !DILocation(line: 434, column: 19, scope: !2137)
!2139 = !DILocation(line: 435, column: 17, scope: !2133)
!2140 = !DILocation(line: 442, column: 20, scope: !2102)
!2141 = !DILocation(line: 447, column: 11, scope: !1945)
!2142 = !DILocation(line: 450, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 448, column: 13)
!2144 = !DILocation(line: 456, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2143, file: !464, line: 455, column: 19)
!2146 = !DILocation(line: 456, column: 24, scope: !2145)
!2147 = !DILocation(line: 456, column: 28, scope: !2145)
!2148 = !DILocation(line: 456, column: 38, scope: !2145)
!2149 = !DILocation(line: 456, column: 41, scope: !2145)
!2150 = !DILocation(line: 456, column: 52, scope: !2145)
!2151 = !DILocation(line: 455, column: 19, scope: !2143)
!2152 = !DILocation(line: 457, column: 25, scope: !2145)
!2153 = !DILocation(line: 457, column: 17, scope: !2145)
!2154 = !DILocation(line: 464, column: 25, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2145, file: !464, line: 458, column: 19)
!2156 = !DILocation(line: 468, column: 21, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !464, line: 468, column: 21)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !464, line: 468, column: 21)
!2159 = !DILocation(line: 468, column: 21, scope: !2158)
!2160 = !DILocation(line: 469, column: 21, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !464, line: 469, column: 21)
!2162 = distinct !DILexicalBlock(scope: !2155, file: !464, line: 469, column: 21)
!2163 = !DILocation(line: 469, column: 21, scope: !2162)
!2164 = !DILocation(line: 470, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !464, line: 470, column: 21)
!2166 = distinct !DILexicalBlock(scope: !2155, file: !464, line: 470, column: 21)
!2167 = !DILocation(line: 470, column: 21, scope: !2166)
!2168 = !DILocation(line: 471, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !464, line: 471, column: 21)
!2170 = distinct !DILexicalBlock(scope: !2155, file: !464, line: 471, column: 21)
!2171 = !DILocation(line: 471, column: 21, scope: !2170)
!2172 = !DILocation(line: 472, column: 21, scope: !2155)
!2173 = !DILocation(line: 482, column: 33, scope: !1944)
!2174 = !DILocation(line: 483, column: 33, scope: !1944)
!2175 = !DILocation(line: 485, column: 33, scope: !1944)
!2176 = !DILocation(line: 486, column: 33, scope: !1944)
!2177 = !DILocation(line: 487, column: 33, scope: !1944)
!2178 = !DILocation(line: 490, column: 17, scope: !1944)
!2179 = !DILocation(line: 492, column: 21, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !464, line: 491, column: 15)
!2181 = distinct !DILexicalBlock(scope: !1944, file: !464, line: 490, column: 17)
!2182 = !DILocation(line: 499, column: 35, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1944, file: !464, line: 499, column: 17)
!2184 = !DILocation(line: 0, scope: !1944)
!2185 = !DILocation(line: 502, column: 11, scope: !1944)
!2186 = !DILocation(line: 504, column: 17, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1944, file: !464, line: 503, column: 17)
!2188 = !DILocation(line: 507, column: 11, scope: !1944)
!2189 = !DILocation(line: 508, column: 17, scope: !1944)
!2190 = !DILocation(line: 517, column: 15, scope: !1945)
!2191 = !DILocation(line: 517, column: 40, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 517, column: 15)
!2193 = !DILocation(line: 517, column: 47, scope: !2192)
!2194 = !DILocation(line: 517, column: 18, scope: !2192)
!2195 = !DILocation(line: 521, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 521, column: 15)
!2197 = !DILocation(line: 521, column: 15, scope: !1945)
!2198 = !DILocation(line: 525, column: 11, scope: !1945)
!2199 = !DILocation(line: 537, column: 15, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 536, column: 15)
!2201 = !DILocation(line: 536, column: 15, scope: !1945)
!2202 = !DILocation(line: 544, column: 15, scope: !1945)
!2203 = !DILocation(line: 546, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !464, line: 545, column: 13)
!2205 = distinct !DILexicalBlock(scope: !1945, file: !464, line: 544, column: 15)
!2206 = !DILocation(line: 549, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !464, line: 549, column: 19)
!2208 = !DILocation(line: 549, column: 30, scope: !2207)
!2209 = !DILocation(line: 558, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !464, line: 558, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !464, line: 558, column: 15)
!2212 = !DILocation(line: 558, column: 15, scope: !2211)
!2213 = !DILocation(line: 559, column: 15, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !464, line: 559, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2204, file: !464, line: 559, column: 15)
!2216 = !DILocation(line: 559, column: 15, scope: !2215)
!2217 = !DILocation(line: 560, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !464, line: 560, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2204, file: !464, line: 560, column: 15)
!2220 = !DILocation(line: 560, column: 15, scope: !2219)
!2221 = !DILocation(line: 562, column: 13, scope: !2204)
!2222 = !DILocation(line: 602, column: 17, scope: !1948)
!2223 = !DILocation(line: 0, scope: !1948)
!2224 = !DILocation(line: 605, column: 29, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1952, file: !464, line: 603, column: 15)
!2226 = !DILocation(line: 605, column: 41, scope: !2225)
!2227 = !DILocation(line: 606, column: 15, scope: !2225)
!2228 = !DILocation(line: 609, column: 17, scope: !1951)
!2229 = !DILocation(line: 0, scope: !2006, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 609, column: 32, scope: !1951)
!2231 = !DILocation(line: 0, scope: !2014, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 1137, column: 3, scope: !2006, inlinedAt: !2230)
!2233 = !DILocation(line: 59, column: 10, scope: !2014, inlinedAt: !2232)
!2234 = !DILocation(line: 613, column: 29, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1951, file: !464, line: 613, column: 21)
!2236 = !DILocation(line: 613, column: 21, scope: !1951)
!2237 = !DILocation(line: 614, column: 29, scope: !2235)
!2238 = !DILocation(line: 614, column: 19, scope: !2235)
!2239 = !DILocation(line: 618, column: 21, scope: !1954)
!2240 = !DILocation(line: 620, column: 54, scope: !1954)
!2241 = !DILocation(line: 619, column: 36, scope: !1954)
!2242 = !DILocation(line: 621, column: 25, scope: !1954)
!2243 = !DILocation(line: 631, column: 38, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1963, file: !464, line: 629, column: 23)
!2245 = !DILocation(line: 631, column: 48, scope: !2244)
!2246 = !DILocation(line: 631, column: 25, scope: !2244)
!2247 = !DILocation(line: 626, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1964, file: !464, line: 624, column: 23)
!2249 = !DILocation(line: 631, column: 51, scope: !2244)
!2250 = !DILocation(line: 632, column: 28, scope: !2244)
!2251 = !DILocation(line: 631, column: 34, scope: !2244)
!2252 = distinct !{!2252, !2246, !2250, !941}
!2253 = !DILocation(line: 0, scope: !1959)
!2254 = !DILocation(line: 646, column: 29, scope: !1961)
!2255 = !DILocation(line: 648, column: 29, scope: !1959)
!2256 = !DILocation(line: 649, column: 39, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1959, file: !464, line: 648, column: 29)
!2258 = !DILocation(line: 649, column: 31, scope: !2257)
!2259 = !DILocation(line: 648, column: 60, scope: !2257)
!2260 = !DILocation(line: 648, column: 50, scope: !2257)
!2261 = distinct !{!2261, !2255, !2262, !941}
!2262 = !DILocation(line: 654, column: 33, scope: !1959)
!2263 = !DILocation(line: 657, column: 43, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1962, file: !464, line: 657, column: 29)
!2265 = !DILocalVariable(name: "wc", arg: 1, scope: !2266, file: !2267, line: 865, type: !2270)
!2266 = distinct !DISubprogram(name: "c32isprint", scope: !2267, file: !2267, line: 865, type: !2268, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2272)
!2267 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!53, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2271, line: 20, baseType: !59)
!2271 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2272 = !{!2265}
!2273 = !DILocation(line: 0, scope: !2266, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 657, column: 31, scope: !2264)
!2275 = !DILocation(line: 871, column: 10, scope: !2266, inlinedAt: !2274)
!2276 = !DILocation(line: 657, column: 31, scope: !2264)
!2277 = !DILocation(line: 664, column: 23, scope: !1954)
!2278 = !DILocation(line: 665, column: 19, scope: !1955)
!2279 = !DILocation(line: 666, column: 15, scope: !1952)
!2280 = !DILocation(line: 753, column: 2, scope: !1904)
!2281 = !DILocation(line: 756, column: 51, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 756, column: 7)
!2283 = !DILocation(line: 0, scope: !1952)
!2284 = !DILocation(line: 670, column: 19, scope: !1968)
!2285 = !DILocation(line: 670, column: 23, scope: !1968)
!2286 = !DILocation(line: 674, column: 33, scope: !1967)
!2287 = !DILocation(line: 0, scope: !1967)
!2288 = !DILocation(line: 676, column: 17, scope: !1967)
!2289 = !DILocation(line: 678, column: 43, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !464, line: 678, column: 25)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !464, line: 677, column: 19)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !464, line: 676, column: 17)
!2293 = distinct !DILexicalBlock(scope: !1967, file: !464, line: 676, column: 17)
!2294 = !DILocation(line: 680, column: 25, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !464, line: 680, column: 25)
!2296 = distinct !DILexicalBlock(scope: !2290, file: !464, line: 679, column: 23)
!2297 = !DILocation(line: 680, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !464, line: 680, column: 25)
!2299 = !DILocation(line: 680, column: 25, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !464, line: 680, column: 25)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !464, line: 680, column: 25)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !464, line: 680, column: 25)
!2303 = !DILocation(line: 680, column: 25, scope: !2301)
!2304 = !DILocation(line: 680, column: 25, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !464, line: 680, column: 25)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !464, line: 680, column: 25)
!2307 = !DILocation(line: 680, column: 25, scope: !2306)
!2308 = !DILocation(line: 680, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !464, line: 680, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2302, file: !464, line: 680, column: 25)
!2311 = !DILocation(line: 680, column: 25, scope: !2310)
!2312 = !DILocation(line: 680, column: 25, scope: !2302)
!2313 = !DILocation(line: 680, column: 25, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !464, line: 680, column: 25)
!2315 = distinct !DILexicalBlock(scope: !2295, file: !464, line: 680, column: 25)
!2316 = !DILocation(line: 680, column: 25, scope: !2315)
!2317 = !DILocation(line: 681, column: 25, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !464, line: 681, column: 25)
!2319 = distinct !DILexicalBlock(scope: !2296, file: !464, line: 681, column: 25)
!2320 = !DILocation(line: 681, column: 25, scope: !2319)
!2321 = !DILocation(line: 682, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !464, line: 682, column: 25)
!2323 = distinct !DILexicalBlock(scope: !2296, file: !464, line: 682, column: 25)
!2324 = !DILocation(line: 682, column: 25, scope: !2323)
!2325 = !DILocation(line: 683, column: 38, scope: !2296)
!2326 = !DILocation(line: 683, column: 33, scope: !2296)
!2327 = !DILocation(line: 684, column: 23, scope: !2296)
!2328 = !DILocation(line: 685, column: 30, scope: !2290)
!2329 = !DILocation(line: 687, column: 25, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !464, line: 687, column: 25)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !464, line: 687, column: 25)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !464, line: 686, column: 23)
!2333 = distinct !DILexicalBlock(scope: !2290, file: !464, line: 685, column: 30)
!2334 = !DILocation(line: 687, column: 25, scope: !2331)
!2335 = !DILocation(line: 689, column: 23, scope: !2332)
!2336 = !DILocation(line: 690, column: 35, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2291, file: !464, line: 690, column: 25)
!2338 = !DILocation(line: 690, column: 30, scope: !2337)
!2339 = !DILocation(line: 690, column: 25, scope: !2291)
!2340 = !DILocation(line: 692, column: 21, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !464, line: 692, column: 21)
!2342 = distinct !DILexicalBlock(scope: !2291, file: !464, line: 692, column: 21)
!2343 = !DILocation(line: 692, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !464, line: 692, column: 21)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !464, line: 692, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !464, line: 692, column: 21)
!2347 = !DILocation(line: 692, column: 21, scope: !2345)
!2348 = !DILocation(line: 692, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !464, line: 692, column: 21)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !464, line: 692, column: 21)
!2351 = !DILocation(line: 692, column: 21, scope: !2350)
!2352 = !DILocation(line: 692, column: 21, scope: !2346)
!2353 = !DILocation(line: 0, scope: !2291)
!2354 = !DILocation(line: 693, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !464, line: 693, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2291, file: !464, line: 693, column: 21)
!2357 = !DILocation(line: 693, column: 21, scope: !2356)
!2358 = !DILocation(line: 694, column: 25, scope: !2291)
!2359 = !DILocation(line: 676, column: 17, scope: !2292)
!2360 = distinct !{!2360, !2361, !2362}
!2361 = !DILocation(line: 676, column: 17, scope: !2293)
!2362 = !DILocation(line: 695, column: 19, scope: !2293)
!2363 = !DILocation(line: 409, column: 30, scope: !2078)
!2364 = !DILocation(line: 702, column: 34, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 702, column: 11)
!2366 = !DILocation(line: 704, column: 14, scope: !2365)
!2367 = !DILocation(line: 705, column: 14, scope: !2365)
!2368 = !DILocation(line: 705, column: 35, scope: !2365)
!2369 = !DILocation(line: 705, column: 17, scope: !2365)
!2370 = !DILocation(line: 705, column: 47, scope: !2365)
!2371 = !DILocation(line: 705, column: 65, scope: !2365)
!2372 = !DILocation(line: 706, column: 11, scope: !2365)
!2373 = !DILocation(line: 702, column: 11, scope: !1938)
!2374 = !DILocation(line: 395, column: 15, scope: !1936)
!2375 = !DILocation(line: 709, column: 5, scope: !1938)
!2376 = !DILocation(line: 710, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 710, column: 7)
!2378 = !DILocation(line: 710, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !464, line: 710, column: 7)
!2380 = !DILocation(line: 710, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !464, line: 710, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !464, line: 710, column: 7)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !464, line: 710, column: 7)
!2384 = !DILocation(line: 710, column: 7, scope: !2382)
!2385 = !DILocation(line: 710, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !464, line: 710, column: 7)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !464, line: 710, column: 7)
!2388 = !DILocation(line: 710, column: 7, scope: !2387)
!2389 = !DILocation(line: 710, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !464, line: 710, column: 7)
!2391 = distinct !DILexicalBlock(scope: !2383, file: !464, line: 710, column: 7)
!2392 = !DILocation(line: 710, column: 7, scope: !2391)
!2393 = !DILocation(line: 710, column: 7, scope: !2383)
!2394 = !DILocation(line: 710, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !464, line: 710, column: 7)
!2396 = distinct !DILexicalBlock(scope: !2377, file: !464, line: 710, column: 7)
!2397 = !DILocation(line: 710, column: 7, scope: !2396)
!2398 = !DILocation(line: 712, column: 5, scope: !1938)
!2399 = !DILocation(line: 713, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !464, line: 713, column: 7)
!2401 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 713, column: 7)
!2402 = !DILocation(line: 417, column: 21, scope: !1938)
!2403 = !DILocation(line: 713, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !464, line: 713, column: 7)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !464, line: 713, column: 7)
!2406 = distinct !DILexicalBlock(scope: !2400, file: !464, line: 713, column: 7)
!2407 = !DILocation(line: 713, column: 7, scope: !2405)
!2408 = !DILocation(line: 713, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !464, line: 713, column: 7)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !464, line: 713, column: 7)
!2411 = !DILocation(line: 713, column: 7, scope: !2410)
!2412 = !DILocation(line: 713, column: 7, scope: !2406)
!2413 = !DILocation(line: 714, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !464, line: 714, column: 7)
!2415 = distinct !DILexicalBlock(scope: !1938, file: !464, line: 714, column: 7)
!2416 = !DILocation(line: 714, column: 7, scope: !2415)
!2417 = !DILocation(line: 716, column: 11, scope: !1938)
!2418 = !DILocation(line: 718, column: 5, scope: !1939)
!2419 = !DILocation(line: 395, column: 82, scope: !1939)
!2420 = !DILocation(line: 395, column: 3, scope: !1939)
!2421 = distinct !{!2421, !2074, !2422, !941}
!2422 = !DILocation(line: 718, column: 5, scope: !1936)
!2423 = !DILocation(line: 720, column: 11, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 720, column: 7)
!2425 = !DILocation(line: 720, column: 16, scope: !2424)
!2426 = !DILocation(line: 728, column: 51, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 728, column: 7)
!2428 = !DILocation(line: 731, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !464, line: 730, column: 5)
!2430 = !DILocation(line: 732, column: 16, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !464, line: 731, column: 11)
!2432 = !DILocation(line: 732, column: 9, scope: !2431)
!2433 = !DILocation(line: 736, column: 18, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !464, line: 736, column: 16)
!2435 = !DILocation(line: 736, column: 29, scope: !2434)
!2436 = !DILocation(line: 745, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 745, column: 7)
!2438 = !DILocation(line: 745, column: 20, scope: !2437)
!2439 = !DILocation(line: 746, column: 12, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !464, line: 746, column: 5)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !464, line: 746, column: 5)
!2442 = !DILocation(line: 746, column: 5, scope: !2441)
!2443 = !DILocation(line: 747, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !464, line: 747, column: 7)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !464, line: 747, column: 7)
!2446 = !DILocation(line: 747, column: 7, scope: !2445)
!2447 = !DILocation(line: 746, column: 39, scope: !2440)
!2448 = distinct !{!2448, !2442, !2449, !941}
!2449 = !DILocation(line: 747, column: 7, scope: !2441)
!2450 = !DILocation(line: 749, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !1904, file: !464, line: 749, column: 7)
!2452 = !DILocation(line: 749, column: 7, scope: !1904)
!2453 = !DILocation(line: 750, column: 5, scope: !2451)
!2454 = !DILocation(line: 750, column: 17, scope: !2451)
!2455 = !DILocation(line: 756, column: 21, scope: !2282)
!2456 = !DILocation(line: 760, column: 42, scope: !1904)
!2457 = !DILocation(line: 758, column: 10, scope: !1904)
!2458 = !DILocation(line: 758, column: 3, scope: !1904)
!2459 = !DILocation(line: 762, column: 1, scope: !1904)
!2460 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1015, file: !1015, line: 98, type: !2461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!77}
!2463 = !DISubprogram(name: "strlen", scope: !1011, file: !1011, line: 407, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!79, !80}
!2466 = !DISubprogram(name: "iswprint", scope: !2467, file: !2467, line: 120, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2468 = distinct !DISubprogram(name: "quotearg_alloc", scope: !464, file: !464, line: 788, type: !2469, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!74, !80, !77, !1797}
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "arg", arg: 1, scope: !2468, file: !464, line: 788, type: !80)
!2473 = !DILocalVariable(name: "argsize", arg: 2, scope: !2468, file: !464, line: 788, type: !77)
!2474 = !DILocalVariable(name: "o", arg: 3, scope: !2468, file: !464, line: 789, type: !1797)
!2475 = !DILocation(line: 0, scope: !2468)
!2476 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !464, line: 801, type: !80)
!2477 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !464, file: !464, line: 801, type: !2478, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!74, !80, !77, !725, !1797}
!2480 = !{!2476, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2481 = !DILocalVariable(name: "argsize", arg: 2, scope: !2477, file: !464, line: 801, type: !77)
!2482 = !DILocalVariable(name: "size", arg: 3, scope: !2477, file: !464, line: 801, type: !725)
!2483 = !DILocalVariable(name: "o", arg: 4, scope: !2477, file: !464, line: 802, type: !1797)
!2484 = !DILocalVariable(name: "p", scope: !2477, file: !464, line: 804, type: !1797)
!2485 = !DILocalVariable(name: "saved_errno", scope: !2477, file: !464, line: 805, type: !53)
!2486 = !DILocalVariable(name: "flags", scope: !2477, file: !464, line: 807, type: !53)
!2487 = !DILocalVariable(name: "bufsize", scope: !2477, file: !464, line: 808, type: !77)
!2488 = !DILocalVariable(name: "buf", scope: !2477, file: !464, line: 812, type: !74)
!2489 = !DILocation(line: 0, scope: !2477, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 791, column: 10, scope: !2468)
!2491 = !DILocation(line: 804, column: 37, scope: !2477, inlinedAt: !2490)
!2492 = !DILocation(line: 805, column: 21, scope: !2477, inlinedAt: !2490)
!2493 = !DILocation(line: 807, column: 18, scope: !2477, inlinedAt: !2490)
!2494 = !DILocation(line: 807, column: 24, scope: !2477, inlinedAt: !2490)
!2495 = !DILocation(line: 808, column: 72, scope: !2477, inlinedAt: !2490)
!2496 = !DILocation(line: 809, column: 56, scope: !2477, inlinedAt: !2490)
!2497 = !DILocation(line: 810, column: 49, scope: !2477, inlinedAt: !2490)
!2498 = !DILocation(line: 811, column: 49, scope: !2477, inlinedAt: !2490)
!2499 = !DILocation(line: 808, column: 20, scope: !2477, inlinedAt: !2490)
!2500 = !DILocation(line: 811, column: 62, scope: !2477, inlinedAt: !2490)
!2501 = !DILocation(line: 812, column: 15, scope: !2477, inlinedAt: !2490)
!2502 = !DILocation(line: 813, column: 60, scope: !2477, inlinedAt: !2490)
!2503 = !DILocation(line: 815, column: 32, scope: !2477, inlinedAt: !2490)
!2504 = !DILocation(line: 815, column: 47, scope: !2477, inlinedAt: !2490)
!2505 = !DILocation(line: 813, column: 3, scope: !2477, inlinedAt: !2490)
!2506 = !DILocation(line: 816, column: 9, scope: !2477, inlinedAt: !2490)
!2507 = !DILocation(line: 791, column: 3, scope: !2468)
!2508 = !DILocation(line: 0, scope: !2477)
!2509 = !DILocation(line: 804, column: 37, scope: !2477)
!2510 = !DILocation(line: 805, column: 21, scope: !2477)
!2511 = !DILocation(line: 807, column: 18, scope: !2477)
!2512 = !DILocation(line: 807, column: 27, scope: !2477)
!2513 = !DILocation(line: 807, column: 24, scope: !2477)
!2514 = !DILocation(line: 808, column: 72, scope: !2477)
!2515 = !DILocation(line: 809, column: 56, scope: !2477)
!2516 = !DILocation(line: 810, column: 49, scope: !2477)
!2517 = !DILocation(line: 811, column: 49, scope: !2477)
!2518 = !DILocation(line: 808, column: 20, scope: !2477)
!2519 = !DILocation(line: 811, column: 62, scope: !2477)
!2520 = !DILocation(line: 812, column: 15, scope: !2477)
!2521 = !DILocation(line: 813, column: 60, scope: !2477)
!2522 = !DILocation(line: 815, column: 32, scope: !2477)
!2523 = !DILocation(line: 815, column: 47, scope: !2477)
!2524 = !DILocation(line: 813, column: 3, scope: !2477)
!2525 = !DILocation(line: 816, column: 9, scope: !2477)
!2526 = !DILocation(line: 817, column: 7, scope: !2477)
!2527 = !DILocation(line: 818, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2477, file: !464, line: 817, column: 7)
!2529 = !{!1136, !1136, i64 0}
!2530 = !DILocation(line: 818, column: 5, scope: !2528)
!2531 = !DILocation(line: 819, column: 3, scope: !2477)
!2532 = distinct !DISubprogram(name: "quotearg_free", scope: !464, file: !464, line: 837, type: !419, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2533)
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "sv", scope: !2532, file: !464, line: 839, type: !565)
!2535 = !DILocalVariable(name: "i", scope: !2536, file: !464, line: 840, type: !53)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !464, line: 840, column: 3)
!2537 = !DILocation(line: 839, column: 24, scope: !2532)
!2538 = !DILocation(line: 0, scope: !2532)
!2539 = !DILocation(line: 0, scope: !2536)
!2540 = !DILocation(line: 840, column: 21, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2536, file: !464, line: 840, column: 3)
!2542 = !DILocation(line: 840, column: 3, scope: !2536)
!2543 = !DILocation(line: 842, column: 13, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2532, file: !464, line: 842, column: 7)
!2545 = !{!2546, !835, i64 8}
!2546 = !{!"slotvec", !1136, i64 0, !835, i64 8}
!2547 = !DILocation(line: 842, column: 17, scope: !2544)
!2548 = !DILocation(line: 842, column: 7, scope: !2532)
!2549 = !DILocation(line: 841, column: 17, scope: !2541)
!2550 = !DILocation(line: 841, column: 5, scope: !2541)
!2551 = !DILocation(line: 840, column: 32, scope: !2541)
!2552 = distinct !{!2552, !2542, !2553, !941}
!2553 = !DILocation(line: 841, column: 20, scope: !2536)
!2554 = !DILocation(line: 844, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2544, file: !464, line: 843, column: 5)
!2556 = !DILocation(line: 845, column: 21, scope: !2555)
!2557 = !{!2546, !1136, i64 0}
!2558 = !DILocation(line: 846, column: 20, scope: !2555)
!2559 = !DILocation(line: 847, column: 5, scope: !2555)
!2560 = !DILocation(line: 848, column: 10, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2532, file: !464, line: 848, column: 7)
!2562 = !DILocation(line: 848, column: 7, scope: !2532)
!2563 = !DILocation(line: 850, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !464, line: 849, column: 5)
!2565 = !DILocation(line: 851, column: 15, scope: !2564)
!2566 = !DILocation(line: 852, column: 5, scope: !2564)
!2567 = !DILocation(line: 853, column: 10, scope: !2532)
!2568 = !DILocation(line: 854, column: 1, scope: !2532)
!2569 = distinct !DISubprogram(name: "quotearg_n", scope: !464, file: !464, line: 919, type: !1008, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2570)
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !464, line: 919, type: !53)
!2572 = !DILocalVariable(name: "arg", arg: 2, scope: !2569, file: !464, line: 919, type: !80)
!2573 = !DILocation(line: 0, scope: !2569)
!2574 = !DILocation(line: 921, column: 10, scope: !2569)
!2575 = !DILocation(line: 921, column: 3, scope: !2569)
!2576 = distinct !DISubprogram(name: "quotearg_n_options", scope: !464, file: !464, line: 866, type: !2577, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!74, !53, !80, !77, !1797}
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2590, !2591, !2593, !2594, !2595}
!2580 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !464, line: 866, type: !53)
!2581 = !DILocalVariable(name: "arg", arg: 2, scope: !2576, file: !464, line: 866, type: !80)
!2582 = !DILocalVariable(name: "argsize", arg: 3, scope: !2576, file: !464, line: 866, type: !77)
!2583 = !DILocalVariable(name: "options", arg: 4, scope: !2576, file: !464, line: 867, type: !1797)
!2584 = !DILocalVariable(name: "saved_errno", scope: !2576, file: !464, line: 869, type: !53)
!2585 = !DILocalVariable(name: "sv", scope: !2576, file: !464, line: 871, type: !565)
!2586 = !DILocalVariable(name: "nslots_max", scope: !2576, file: !464, line: 873, type: !53)
!2587 = !DILocalVariable(name: "preallocated", scope: !2588, file: !464, line: 879, type: !133)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !464, line: 878, column: 5)
!2589 = distinct !DILexicalBlock(scope: !2576, file: !464, line: 877, column: 7)
!2590 = !DILocalVariable(name: "new_nslots", scope: !2588, file: !464, line: 880, type: !738)
!2591 = !DILocalVariable(name: "size", scope: !2592, file: !464, line: 891, type: !77)
!2592 = distinct !DILexicalBlock(scope: !2576, file: !464, line: 890, column: 3)
!2593 = !DILocalVariable(name: "val", scope: !2592, file: !464, line: 892, type: !74)
!2594 = !DILocalVariable(name: "flags", scope: !2592, file: !464, line: 894, type: !53)
!2595 = !DILocalVariable(name: "qsize", scope: !2592, file: !464, line: 895, type: !77)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 0, scope: !2588)
!2598 = !DILocation(line: 0, scope: !2576)
!2599 = !DILocation(line: 869, column: 21, scope: !2576)
!2600 = !DILocation(line: 871, column: 24, scope: !2576)
!2601 = !DILocation(line: 874, column: 17, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2576, file: !464, line: 874, column: 7)
!2603 = !DILocation(line: 875, column: 5, scope: !2602)
!2604 = !DILocation(line: 877, column: 7, scope: !2589)
!2605 = !DILocation(line: 877, column: 14, scope: !2589)
!2606 = !DILocation(line: 877, column: 7, scope: !2576)
!2607 = !DILocation(line: 879, column: 31, scope: !2588)
!2608 = !DILocation(line: 880, column: 7, scope: !2588)
!2609 = !DILocation(line: 880, column: 26, scope: !2588)
!2610 = !DILocation(line: 880, column: 13, scope: !2588)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 882, column: 31, scope: !2588)
!2613 = !DILocation(line: 883, column: 33, scope: !2588)
!2614 = !DILocation(line: 883, column: 42, scope: !2588)
!2615 = !DILocation(line: 883, column: 31, scope: !2588)
!2616 = !DILocation(line: 882, column: 22, scope: !2588)
!2617 = !DILocation(line: 882, column: 15, scope: !2588)
!2618 = !DILocation(line: 884, column: 11, scope: !2588)
!2619 = !DILocation(line: 885, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2588, file: !464, line: 884, column: 11)
!2621 = !{i64 0, i64 8, !2529, i64 8, i64 8, !834}
!2622 = !DILocation(line: 885, column: 9, scope: !2620)
!2623 = !DILocation(line: 886, column: 20, scope: !2588)
!2624 = !DILocation(line: 886, column: 18, scope: !2588)
!2625 = !DILocation(line: 886, column: 32, scope: !2588)
!2626 = !DILocation(line: 886, column: 43, scope: !2588)
!2627 = !DILocation(line: 886, column: 53, scope: !2588)
!2628 = !DILocation(line: 0, scope: !2014, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 886, column: 7, scope: !2588)
!2630 = !DILocation(line: 59, column: 10, scope: !2014, inlinedAt: !2629)
!2631 = !DILocation(line: 887, column: 16, scope: !2588)
!2632 = !DILocation(line: 887, column: 14, scope: !2588)
!2633 = !DILocation(line: 888, column: 5, scope: !2589)
!2634 = !DILocation(line: 888, column: 5, scope: !2588)
!2635 = !DILocation(line: 891, column: 19, scope: !2592)
!2636 = !DILocation(line: 891, column: 25, scope: !2592)
!2637 = !DILocation(line: 0, scope: !2592)
!2638 = !DILocation(line: 892, column: 23, scope: !2592)
!2639 = !DILocation(line: 894, column: 26, scope: !2592)
!2640 = !DILocation(line: 894, column: 32, scope: !2592)
!2641 = !DILocation(line: 896, column: 55, scope: !2592)
!2642 = !DILocation(line: 897, column: 55, scope: !2592)
!2643 = !DILocation(line: 898, column: 55, scope: !2592)
!2644 = !DILocation(line: 899, column: 55, scope: !2592)
!2645 = !DILocation(line: 895, column: 20, scope: !2592)
!2646 = !DILocation(line: 901, column: 14, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2592, file: !464, line: 901, column: 9)
!2648 = !DILocation(line: 901, column: 9, scope: !2592)
!2649 = !DILocation(line: 903, column: 35, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !464, line: 902, column: 7)
!2651 = !DILocation(line: 903, column: 20, scope: !2650)
!2652 = !DILocation(line: 904, column: 17, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !464, line: 904, column: 13)
!2654 = !DILocation(line: 904, column: 13, scope: !2650)
!2655 = !DILocation(line: 905, column: 11, scope: !2653)
!2656 = !DILocation(line: 906, column: 27, scope: !2650)
!2657 = !DILocation(line: 906, column: 19, scope: !2650)
!2658 = !DILocation(line: 907, column: 69, scope: !2650)
!2659 = !DILocation(line: 909, column: 44, scope: !2650)
!2660 = !DILocation(line: 910, column: 44, scope: !2650)
!2661 = !DILocation(line: 907, column: 9, scope: !2650)
!2662 = !DILocation(line: 911, column: 7, scope: !2650)
!2663 = !DILocation(line: 913, column: 11, scope: !2592)
!2664 = !DILocation(line: 914, column: 5, scope: !2592)
!2665 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !464, file: !464, line: 925, type: !2666, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!74, !53, !80, !77}
!2668 = !{!2669, !2670, !2671}
!2669 = !DILocalVariable(name: "n", arg: 1, scope: !2665, file: !464, line: 925, type: !53)
!2670 = !DILocalVariable(name: "arg", arg: 2, scope: !2665, file: !464, line: 925, type: !80)
!2671 = !DILocalVariable(name: "argsize", arg: 3, scope: !2665, file: !464, line: 925, type: !77)
!2672 = !DILocation(line: 0, scope: !2665)
!2673 = !DILocation(line: 927, column: 10, scope: !2665)
!2674 = !DILocation(line: 927, column: 3, scope: !2665)
!2675 = distinct !DISubprogram(name: "quotearg", scope: !464, file: !464, line: 931, type: !1017, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2676)
!2676 = !{!2677}
!2677 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !464, line: 931, type: !80)
!2678 = !DILocation(line: 0, scope: !2675)
!2679 = !DILocation(line: 0, scope: !2569, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 933, column: 10, scope: !2675)
!2681 = !DILocation(line: 921, column: 10, scope: !2569, inlinedAt: !2680)
!2682 = !DILocation(line: 933, column: 3, scope: !2675)
!2683 = distinct !DISubprogram(name: "quotearg_mem", scope: !464, file: !464, line: 937, type: !2684, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!74, !80, !77}
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2683, file: !464, line: 937, type: !80)
!2688 = !DILocalVariable(name: "argsize", arg: 2, scope: !2683, file: !464, line: 937, type: !77)
!2689 = !DILocation(line: 0, scope: !2683)
!2690 = !DILocation(line: 0, scope: !2665, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 939, column: 10, scope: !2683)
!2692 = !DILocation(line: 927, column: 10, scope: !2665, inlinedAt: !2691)
!2693 = !DILocation(line: 939, column: 3, scope: !2683)
!2694 = distinct !DISubprogram(name: "quotearg_n_style", scope: !464, file: !464, line: 943, type: !2695, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!74, !53, !490, !80}
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !464, line: 943, type: !53)
!2699 = !DILocalVariable(name: "s", arg: 2, scope: !2694, file: !464, line: 943, type: !490)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !464, line: 943, type: !80)
!2701 = !DILocalVariable(name: "o", scope: !2694, file: !464, line: 945, type: !1798)
!2702 = distinct !DIAssignID()
!2703 = !DILocation(line: 0, scope: !2694)
!2704 = !DILocation(line: 945, column: 3, scope: !2694)
!2705 = !{!2706}
!2706 = distinct !{!2706, !2707, !"quoting_options_from_style: argument 0"}
!2707 = distinct !{!2707, !"quoting_options_from_style"}
!2708 = !DILocation(line: 945, column: 36, scope: !2694)
!2709 = !DILocalVariable(name: "style", arg: 1, scope: !2710, file: !464, line: 183, type: !490)
!2710 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !464, file: !464, line: 183, type: !2711, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!517, !490}
!2713 = !{!2709, !2714}
!2714 = !DILocalVariable(name: "o", scope: !2710, file: !464, line: 185, type: !517)
!2715 = !DILocation(line: 0, scope: !2710, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 945, column: 36, scope: !2694)
!2717 = !DILocation(line: 185, column: 26, scope: !2710, inlinedAt: !2716)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 186, column: 13, scope: !2720, inlinedAt: !2716)
!2720 = distinct !DILexicalBlock(scope: !2710, file: !464, line: 186, column: 7)
!2721 = !DILocation(line: 186, column: 7, scope: !2710, inlinedAt: !2716)
!2722 = !DILocation(line: 187, column: 5, scope: !2720, inlinedAt: !2716)
!2723 = !DILocation(line: 188, column: 11, scope: !2710, inlinedAt: !2716)
!2724 = distinct !DIAssignID()
!2725 = !DILocation(line: 946, column: 10, scope: !2694)
!2726 = !DILocation(line: 947, column: 1, scope: !2694)
!2727 = !DILocation(line: 946, column: 3, scope: !2694)
!2728 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !464, file: !464, line: 950, type: !2729, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!74, !53, !490, !80, !77}
!2731 = !{!2732, !2733, !2734, !2735, !2736}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !464, line: 950, type: !53)
!2733 = !DILocalVariable(name: "s", arg: 2, scope: !2728, file: !464, line: 950, type: !490)
!2734 = !DILocalVariable(name: "arg", arg: 3, scope: !2728, file: !464, line: 951, type: !80)
!2735 = !DILocalVariable(name: "argsize", arg: 4, scope: !2728, file: !464, line: 951, type: !77)
!2736 = !DILocalVariable(name: "o", scope: !2728, file: !464, line: 953, type: !1798)
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 0, scope: !2728)
!2739 = !DILocation(line: 953, column: 3, scope: !2728)
!2740 = !{!2741}
!2741 = distinct !{!2741, !2742, !"quoting_options_from_style: argument 0"}
!2742 = distinct !{!2742, !"quoting_options_from_style"}
!2743 = !DILocation(line: 953, column: 36, scope: !2728)
!2744 = !DILocation(line: 0, scope: !2710, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 953, column: 36, scope: !2728)
!2746 = !DILocation(line: 185, column: 26, scope: !2710, inlinedAt: !2745)
!2747 = distinct !DIAssignID()
!2748 = !DILocation(line: 186, column: 13, scope: !2720, inlinedAt: !2745)
!2749 = !DILocation(line: 186, column: 7, scope: !2710, inlinedAt: !2745)
!2750 = !DILocation(line: 187, column: 5, scope: !2720, inlinedAt: !2745)
!2751 = !DILocation(line: 188, column: 11, scope: !2710, inlinedAt: !2745)
!2752 = distinct !DIAssignID()
!2753 = !DILocation(line: 954, column: 10, scope: !2728)
!2754 = !DILocation(line: 955, column: 1, scope: !2728)
!2755 = !DILocation(line: 954, column: 3, scope: !2728)
!2756 = distinct !DISubprogram(name: "quotearg_style", scope: !464, file: !464, line: 958, type: !2757, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!74, !490, !80}
!2759 = !{!2760, !2761}
!2760 = !DILocalVariable(name: "s", arg: 1, scope: !2756, file: !464, line: 958, type: !490)
!2761 = !DILocalVariable(name: "arg", arg: 2, scope: !2756, file: !464, line: 958, type: !80)
!2762 = distinct !DIAssignID()
!2763 = !DILocation(line: 0, scope: !2756)
!2764 = !DILocation(line: 0, scope: !2694, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 960, column: 10, scope: !2756)
!2766 = !DILocation(line: 945, column: 3, scope: !2694, inlinedAt: !2765)
!2767 = !{!2768}
!2768 = distinct !{!2768, !2769, !"quoting_options_from_style: argument 0"}
!2769 = distinct !{!2769, !"quoting_options_from_style"}
!2770 = !DILocation(line: 945, column: 36, scope: !2694, inlinedAt: !2765)
!2771 = !DILocation(line: 0, scope: !2710, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 945, column: 36, scope: !2694, inlinedAt: !2765)
!2773 = !DILocation(line: 185, column: 26, scope: !2710, inlinedAt: !2772)
!2774 = distinct !DIAssignID()
!2775 = !DILocation(line: 186, column: 13, scope: !2720, inlinedAt: !2772)
!2776 = !DILocation(line: 186, column: 7, scope: !2710, inlinedAt: !2772)
!2777 = !DILocation(line: 187, column: 5, scope: !2720, inlinedAt: !2772)
!2778 = !DILocation(line: 188, column: 11, scope: !2710, inlinedAt: !2772)
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 946, column: 10, scope: !2694, inlinedAt: !2765)
!2781 = !DILocation(line: 947, column: 1, scope: !2694, inlinedAt: !2765)
!2782 = !DILocation(line: 960, column: 3, scope: !2756)
!2783 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !464, file: !464, line: 964, type: !2784, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!74, !490, !80, !77}
!2786 = !{!2787, !2788, !2789}
!2787 = !DILocalVariable(name: "s", arg: 1, scope: !2783, file: !464, line: 964, type: !490)
!2788 = !DILocalVariable(name: "arg", arg: 2, scope: !2783, file: !464, line: 964, type: !80)
!2789 = !DILocalVariable(name: "argsize", arg: 3, scope: !2783, file: !464, line: 964, type: !77)
!2790 = distinct !DIAssignID()
!2791 = !DILocation(line: 0, scope: !2783)
!2792 = !DILocation(line: 0, scope: !2728, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 966, column: 10, scope: !2783)
!2794 = !DILocation(line: 953, column: 3, scope: !2728, inlinedAt: !2793)
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"quoting_options_from_style: argument 0"}
!2797 = distinct !{!2797, !"quoting_options_from_style"}
!2798 = !DILocation(line: 953, column: 36, scope: !2728, inlinedAt: !2793)
!2799 = !DILocation(line: 0, scope: !2710, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 953, column: 36, scope: !2728, inlinedAt: !2793)
!2801 = !DILocation(line: 185, column: 26, scope: !2710, inlinedAt: !2800)
!2802 = distinct !DIAssignID()
!2803 = !DILocation(line: 186, column: 13, scope: !2720, inlinedAt: !2800)
!2804 = !DILocation(line: 186, column: 7, scope: !2710, inlinedAt: !2800)
!2805 = !DILocation(line: 187, column: 5, scope: !2720, inlinedAt: !2800)
!2806 = !DILocation(line: 188, column: 11, scope: !2710, inlinedAt: !2800)
!2807 = distinct !DIAssignID()
!2808 = !DILocation(line: 954, column: 10, scope: !2728, inlinedAt: !2793)
!2809 = !DILocation(line: 955, column: 1, scope: !2728, inlinedAt: !2793)
!2810 = !DILocation(line: 966, column: 3, scope: !2783)
!2811 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !464, file: !464, line: 970, type: !2812, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!74, !80, !77, !4}
!2814 = !{!2815, !2816, !2817, !2818}
!2815 = !DILocalVariable(name: "arg", arg: 1, scope: !2811, file: !464, line: 970, type: !80)
!2816 = !DILocalVariable(name: "argsize", arg: 2, scope: !2811, file: !464, line: 970, type: !77)
!2817 = !DILocalVariable(name: "ch", arg: 3, scope: !2811, file: !464, line: 970, type: !4)
!2818 = !DILocalVariable(name: "options", scope: !2811, file: !464, line: 972, type: !517)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 0, scope: !2811)
!2821 = !DILocation(line: 972, column: 3, scope: !2811)
!2822 = !DILocation(line: 973, column: 13, scope: !2811)
!2823 = !{i64 0, i64 4, !894, i64 4, i64 4, !894, i64 8, i64 32, !903, i64 40, i64 8, !834, i64 48, i64 8, !834}
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 0, scope: !1817, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 974, column: 3, scope: !2811)
!2827 = !DILocation(line: 147, column: 41, scope: !1817, inlinedAt: !2826)
!2828 = !DILocation(line: 147, column: 62, scope: !1817, inlinedAt: !2826)
!2829 = !DILocation(line: 147, column: 57, scope: !1817, inlinedAt: !2826)
!2830 = !DILocation(line: 148, column: 15, scope: !1817, inlinedAt: !2826)
!2831 = !DILocation(line: 149, column: 21, scope: !1817, inlinedAt: !2826)
!2832 = !DILocation(line: 149, column: 24, scope: !1817, inlinedAt: !2826)
!2833 = !DILocation(line: 150, column: 19, scope: !1817, inlinedAt: !2826)
!2834 = !DILocation(line: 150, column: 24, scope: !1817, inlinedAt: !2826)
!2835 = !DILocation(line: 150, column: 6, scope: !1817, inlinedAt: !2826)
!2836 = !DILocation(line: 975, column: 10, scope: !2811)
!2837 = !DILocation(line: 976, column: 1, scope: !2811)
!2838 = !DILocation(line: 975, column: 3, scope: !2811)
!2839 = distinct !DISubprogram(name: "quotearg_char", scope: !464, file: !464, line: 979, type: !2840, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!74, !80, !4}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "arg", arg: 1, scope: !2839, file: !464, line: 979, type: !80)
!2844 = !DILocalVariable(name: "ch", arg: 2, scope: !2839, file: !464, line: 979, type: !4)
!2845 = distinct !DIAssignID()
!2846 = !DILocation(line: 0, scope: !2839)
!2847 = !DILocation(line: 0, scope: !2811, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 981, column: 10, scope: !2839)
!2849 = !DILocation(line: 972, column: 3, scope: !2811, inlinedAt: !2848)
!2850 = !DILocation(line: 973, column: 13, scope: !2811, inlinedAt: !2848)
!2851 = distinct !DIAssignID()
!2852 = !DILocation(line: 0, scope: !1817, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 974, column: 3, scope: !2811, inlinedAt: !2848)
!2854 = !DILocation(line: 147, column: 41, scope: !1817, inlinedAt: !2853)
!2855 = !DILocation(line: 147, column: 62, scope: !1817, inlinedAt: !2853)
!2856 = !DILocation(line: 147, column: 57, scope: !1817, inlinedAt: !2853)
!2857 = !DILocation(line: 148, column: 15, scope: !1817, inlinedAt: !2853)
!2858 = !DILocation(line: 149, column: 21, scope: !1817, inlinedAt: !2853)
!2859 = !DILocation(line: 149, column: 24, scope: !1817, inlinedAt: !2853)
!2860 = !DILocation(line: 150, column: 19, scope: !1817, inlinedAt: !2853)
!2861 = !DILocation(line: 150, column: 24, scope: !1817, inlinedAt: !2853)
!2862 = !DILocation(line: 150, column: 6, scope: !1817, inlinedAt: !2853)
!2863 = !DILocation(line: 975, column: 10, scope: !2811, inlinedAt: !2848)
!2864 = !DILocation(line: 976, column: 1, scope: !2811, inlinedAt: !2848)
!2865 = !DILocation(line: 981, column: 3, scope: !2839)
!2866 = distinct !DISubprogram(name: "quotearg_colon", scope: !464, file: !464, line: 985, type: !1017, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2867)
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !464, line: 985, type: !80)
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 0, scope: !2866)
!2871 = !DILocation(line: 0, scope: !2839, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 987, column: 10, scope: !2866)
!2873 = !DILocation(line: 0, scope: !2811, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 981, column: 10, scope: !2839, inlinedAt: !2872)
!2875 = !DILocation(line: 972, column: 3, scope: !2811, inlinedAt: !2874)
!2876 = !DILocation(line: 973, column: 13, scope: !2811, inlinedAt: !2874)
!2877 = distinct !DIAssignID()
!2878 = !DILocation(line: 0, scope: !1817, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 974, column: 3, scope: !2811, inlinedAt: !2874)
!2880 = !DILocation(line: 147, column: 57, scope: !1817, inlinedAt: !2879)
!2881 = !DILocation(line: 149, column: 21, scope: !1817, inlinedAt: !2879)
!2882 = !DILocation(line: 150, column: 6, scope: !1817, inlinedAt: !2879)
!2883 = !DILocation(line: 975, column: 10, scope: !2811, inlinedAt: !2874)
!2884 = !DILocation(line: 976, column: 1, scope: !2811, inlinedAt: !2874)
!2885 = !DILocation(line: 987, column: 3, scope: !2866)
!2886 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !464, file: !464, line: 991, type: !2684, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2887)
!2887 = !{!2888, !2889}
!2888 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !464, line: 991, type: !80)
!2889 = !DILocalVariable(name: "argsize", arg: 2, scope: !2886, file: !464, line: 991, type: !77)
!2890 = distinct !DIAssignID()
!2891 = !DILocation(line: 0, scope: !2886)
!2892 = !DILocation(line: 0, scope: !2811, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 993, column: 10, scope: !2886)
!2894 = !DILocation(line: 972, column: 3, scope: !2811, inlinedAt: !2893)
!2895 = !DILocation(line: 973, column: 13, scope: !2811, inlinedAt: !2893)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 0, scope: !1817, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 974, column: 3, scope: !2811, inlinedAt: !2893)
!2899 = !DILocation(line: 147, column: 57, scope: !1817, inlinedAt: !2898)
!2900 = !DILocation(line: 149, column: 21, scope: !1817, inlinedAt: !2898)
!2901 = !DILocation(line: 150, column: 6, scope: !1817, inlinedAt: !2898)
!2902 = !DILocation(line: 975, column: 10, scope: !2811, inlinedAt: !2893)
!2903 = !DILocation(line: 976, column: 1, scope: !2811, inlinedAt: !2893)
!2904 = !DILocation(line: 993, column: 3, scope: !2886)
!2905 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !464, file: !464, line: 997, type: !2695, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2906)
!2906 = !{!2907, !2908, !2909, !2910}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !464, line: 997, type: !53)
!2908 = !DILocalVariable(name: "s", arg: 2, scope: !2905, file: !464, line: 997, type: !490)
!2909 = !DILocalVariable(name: "arg", arg: 3, scope: !2905, file: !464, line: 997, type: !80)
!2910 = !DILocalVariable(name: "options", scope: !2905, file: !464, line: 999, type: !517)
!2911 = distinct !DIAssignID()
!2912 = !DILocation(line: 0, scope: !2905)
!2913 = !DILocation(line: 185, column: 26, scope: !2710, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 1000, column: 13, scope: !2905)
!2915 = !DILocation(line: 999, column: 3, scope: !2905)
!2916 = !DILocation(line: 0, scope: !2710, inlinedAt: !2914)
!2917 = !DILocation(line: 186, column: 13, scope: !2720, inlinedAt: !2914)
!2918 = !DILocation(line: 186, column: 7, scope: !2710, inlinedAt: !2914)
!2919 = !DILocation(line: 187, column: 5, scope: !2720, inlinedAt: !2914)
!2920 = !{!2921}
!2921 = distinct !{!2921, !2922, !"quoting_options_from_style: argument 0"}
!2922 = distinct !{!2922, !"quoting_options_from_style"}
!2923 = !DILocation(line: 1000, column: 13, scope: !2905)
!2924 = distinct !DIAssignID()
!2925 = distinct !DIAssignID()
!2926 = !DILocation(line: 0, scope: !1817, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 1001, column: 3, scope: !2905)
!2928 = !DILocation(line: 147, column: 57, scope: !1817, inlinedAt: !2927)
!2929 = !DILocation(line: 149, column: 21, scope: !1817, inlinedAt: !2927)
!2930 = !DILocation(line: 150, column: 6, scope: !1817, inlinedAt: !2927)
!2931 = distinct !DIAssignID()
!2932 = !DILocation(line: 1002, column: 10, scope: !2905)
!2933 = !DILocation(line: 1003, column: 1, scope: !2905)
!2934 = !DILocation(line: 1002, column: 3, scope: !2905)
!2935 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !464, file: !464, line: 1006, type: !2936, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!74, !53, !80, !80, !80}
!2938 = !{!2939, !2940, !2941, !2942}
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2935, file: !464, line: 1006, type: !53)
!2940 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2935, file: !464, line: 1006, type: !80)
!2941 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2935, file: !464, line: 1007, type: !80)
!2942 = !DILocalVariable(name: "arg", arg: 4, scope: !2935, file: !464, line: 1007, type: !80)
!2943 = distinct !DIAssignID()
!2944 = !DILocation(line: 0, scope: !2935)
!2945 = !DILocalVariable(name: "o", scope: !2946, file: !464, line: 1018, type: !517)
!2946 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !464, file: !464, line: 1014, type: !2947, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!74, !53, !80, !80, !80, !77}
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2945}
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !464, line: 1014, type: !53)
!2951 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2946, file: !464, line: 1014, type: !80)
!2952 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2946, file: !464, line: 1015, type: !80)
!2953 = !DILocalVariable(name: "arg", arg: 4, scope: !2946, file: !464, line: 1016, type: !80)
!2954 = !DILocalVariable(name: "argsize", arg: 5, scope: !2946, file: !464, line: 1016, type: !77)
!2955 = !DILocation(line: 0, scope: !2946, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 1009, column: 10, scope: !2935)
!2957 = !DILocation(line: 1018, column: 3, scope: !2946, inlinedAt: !2956)
!2958 = !DILocation(line: 1018, column: 30, scope: !2946, inlinedAt: !2956)
!2959 = distinct !DIAssignID()
!2960 = distinct !DIAssignID()
!2961 = !DILocation(line: 0, scope: !1857, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1019, column: 3, scope: !2946, inlinedAt: !2956)
!2963 = !DILocation(line: 174, column: 12, scope: !1857, inlinedAt: !2962)
!2964 = distinct !DIAssignID()
!2965 = !DILocation(line: 175, column: 8, scope: !1870, inlinedAt: !2962)
!2966 = !DILocation(line: 175, column: 19, scope: !1870, inlinedAt: !2962)
!2967 = !DILocation(line: 176, column: 5, scope: !1870, inlinedAt: !2962)
!2968 = !DILocation(line: 177, column: 6, scope: !1857, inlinedAt: !2962)
!2969 = !DILocation(line: 177, column: 17, scope: !1857, inlinedAt: !2962)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 178, column: 6, scope: !1857, inlinedAt: !2962)
!2972 = !DILocation(line: 178, column: 18, scope: !1857, inlinedAt: !2962)
!2973 = distinct !DIAssignID()
!2974 = !DILocation(line: 1020, column: 10, scope: !2946, inlinedAt: !2956)
!2975 = !DILocation(line: 1021, column: 1, scope: !2946, inlinedAt: !2956)
!2976 = !DILocation(line: 1009, column: 3, scope: !2935)
!2977 = distinct !DIAssignID()
!2978 = !DILocation(line: 0, scope: !2946)
!2979 = !DILocation(line: 1018, column: 3, scope: !2946)
!2980 = !DILocation(line: 1018, column: 30, scope: !2946)
!2981 = distinct !DIAssignID()
!2982 = distinct !DIAssignID()
!2983 = !DILocation(line: 0, scope: !1857, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1019, column: 3, scope: !2946)
!2985 = !DILocation(line: 174, column: 12, scope: !1857, inlinedAt: !2984)
!2986 = distinct !DIAssignID()
!2987 = !DILocation(line: 175, column: 8, scope: !1870, inlinedAt: !2984)
!2988 = !DILocation(line: 175, column: 19, scope: !1870, inlinedAt: !2984)
!2989 = !DILocation(line: 176, column: 5, scope: !1870, inlinedAt: !2984)
!2990 = !DILocation(line: 177, column: 6, scope: !1857, inlinedAt: !2984)
!2991 = !DILocation(line: 177, column: 17, scope: !1857, inlinedAt: !2984)
!2992 = distinct !DIAssignID()
!2993 = !DILocation(line: 178, column: 6, scope: !1857, inlinedAt: !2984)
!2994 = !DILocation(line: 178, column: 18, scope: !1857, inlinedAt: !2984)
!2995 = distinct !DIAssignID()
!2996 = !DILocation(line: 1020, column: 10, scope: !2946)
!2997 = !DILocation(line: 1021, column: 1, scope: !2946)
!2998 = !DILocation(line: 1020, column: 3, scope: !2946)
!2999 = distinct !DISubprogram(name: "quotearg_custom", scope: !464, file: !464, line: 1024, type: !3000, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!74, !80, !80, !80}
!3002 = !{!3003, !3004, !3005}
!3003 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2999, file: !464, line: 1024, type: !80)
!3004 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2999, file: !464, line: 1024, type: !80)
!3005 = !DILocalVariable(name: "arg", arg: 3, scope: !2999, file: !464, line: 1025, type: !80)
!3006 = distinct !DIAssignID()
!3007 = !DILocation(line: 0, scope: !2999)
!3008 = !DILocation(line: 0, scope: !2935, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1027, column: 10, scope: !2999)
!3010 = !DILocation(line: 0, scope: !2946, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1009, column: 10, scope: !2935, inlinedAt: !3009)
!3012 = !DILocation(line: 1018, column: 3, scope: !2946, inlinedAt: !3011)
!3013 = !DILocation(line: 1018, column: 30, scope: !2946, inlinedAt: !3011)
!3014 = distinct !DIAssignID()
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 0, scope: !1857, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 1019, column: 3, scope: !2946, inlinedAt: !3011)
!3018 = !DILocation(line: 174, column: 12, scope: !1857, inlinedAt: !3017)
!3019 = distinct !DIAssignID()
!3020 = !DILocation(line: 175, column: 8, scope: !1870, inlinedAt: !3017)
!3021 = !DILocation(line: 175, column: 19, scope: !1870, inlinedAt: !3017)
!3022 = !DILocation(line: 176, column: 5, scope: !1870, inlinedAt: !3017)
!3023 = !DILocation(line: 177, column: 6, scope: !1857, inlinedAt: !3017)
!3024 = !DILocation(line: 177, column: 17, scope: !1857, inlinedAt: !3017)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 178, column: 6, scope: !1857, inlinedAt: !3017)
!3027 = !DILocation(line: 178, column: 18, scope: !1857, inlinedAt: !3017)
!3028 = distinct !DIAssignID()
!3029 = !DILocation(line: 1020, column: 10, scope: !2946, inlinedAt: !3011)
!3030 = !DILocation(line: 1021, column: 1, scope: !2946, inlinedAt: !3011)
!3031 = !DILocation(line: 1027, column: 3, scope: !2999)
!3032 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !464, file: !464, line: 1031, type: !3033, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!74, !80, !80, !80, !77}
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3032, file: !464, line: 1031, type: !80)
!3037 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3032, file: !464, line: 1031, type: !80)
!3038 = !DILocalVariable(name: "arg", arg: 3, scope: !3032, file: !464, line: 1032, type: !80)
!3039 = !DILocalVariable(name: "argsize", arg: 4, scope: !3032, file: !464, line: 1032, type: !77)
!3040 = distinct !DIAssignID()
!3041 = !DILocation(line: 0, scope: !3032)
!3042 = !DILocation(line: 0, scope: !2946, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1034, column: 10, scope: !3032)
!3044 = !DILocation(line: 1018, column: 3, scope: !2946, inlinedAt: !3043)
!3045 = !DILocation(line: 1018, column: 30, scope: !2946, inlinedAt: !3043)
!3046 = distinct !DIAssignID()
!3047 = distinct !DIAssignID()
!3048 = !DILocation(line: 0, scope: !1857, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1019, column: 3, scope: !2946, inlinedAt: !3043)
!3050 = !DILocation(line: 174, column: 12, scope: !1857, inlinedAt: !3049)
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 175, column: 8, scope: !1870, inlinedAt: !3049)
!3053 = !DILocation(line: 175, column: 19, scope: !1870, inlinedAt: !3049)
!3054 = !DILocation(line: 176, column: 5, scope: !1870, inlinedAt: !3049)
!3055 = !DILocation(line: 177, column: 6, scope: !1857, inlinedAt: !3049)
!3056 = !DILocation(line: 177, column: 17, scope: !1857, inlinedAt: !3049)
!3057 = distinct !DIAssignID()
!3058 = !DILocation(line: 178, column: 6, scope: !1857, inlinedAt: !3049)
!3059 = !DILocation(line: 178, column: 18, scope: !1857, inlinedAt: !3049)
!3060 = distinct !DIAssignID()
!3061 = !DILocation(line: 1020, column: 10, scope: !2946, inlinedAt: !3043)
!3062 = !DILocation(line: 1021, column: 1, scope: !2946, inlinedAt: !3043)
!3063 = !DILocation(line: 1034, column: 3, scope: !3032)
!3064 = distinct !DISubprogram(name: "quote_n_mem", scope: !464, file: !464, line: 1049, type: !3065, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!80, !53, !80, !77}
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !464, line: 1049, type: !53)
!3069 = !DILocalVariable(name: "arg", arg: 2, scope: !3064, file: !464, line: 1049, type: !80)
!3070 = !DILocalVariable(name: "argsize", arg: 3, scope: !3064, file: !464, line: 1049, type: !77)
!3071 = !DILocation(line: 0, scope: !3064)
!3072 = !DILocation(line: 1051, column: 10, scope: !3064)
!3073 = !DILocation(line: 1051, column: 3, scope: !3064)
!3074 = distinct !DISubprogram(name: "quote_mem", scope: !464, file: !464, line: 1055, type: !3075, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!80, !80, !77}
!3077 = !{!3078, !3079}
!3078 = !DILocalVariable(name: "arg", arg: 1, scope: !3074, file: !464, line: 1055, type: !80)
!3079 = !DILocalVariable(name: "argsize", arg: 2, scope: !3074, file: !464, line: 1055, type: !77)
!3080 = !DILocation(line: 0, scope: !3074)
!3081 = !DILocation(line: 0, scope: !3064, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1057, column: 10, scope: !3074)
!3083 = !DILocation(line: 1051, column: 10, scope: !3064, inlinedAt: !3082)
!3084 = !DILocation(line: 1057, column: 3, scope: !3074)
!3085 = distinct !DISubprogram(name: "quote_n", scope: !464, file: !464, line: 1061, type: !3086, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!80, !53, !80}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !464, line: 1061, type: !53)
!3090 = !DILocalVariable(name: "arg", arg: 2, scope: !3085, file: !464, line: 1061, type: !80)
!3091 = !DILocation(line: 0, scope: !3085)
!3092 = !DILocation(line: 0, scope: !3064, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1063, column: 10, scope: !3085)
!3094 = !DILocation(line: 1051, column: 10, scope: !3064, inlinedAt: !3093)
!3095 = !DILocation(line: 1063, column: 3, scope: !3085)
!3096 = distinct !DISubprogram(name: "quote", scope: !464, file: !464, line: 1067, type: !3097, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!80, !80}
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "arg", arg: 1, scope: !3096, file: !464, line: 1067, type: !80)
!3101 = !DILocation(line: 0, scope: !3096)
!3102 = !DILocation(line: 0, scope: !3085, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1069, column: 10, scope: !3096)
!3104 = !DILocation(line: 0, scope: !3064, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1063, column: 10, scope: !3085, inlinedAt: !3103)
!3106 = !DILocation(line: 1051, column: 10, scope: !3064, inlinedAt: !3105)
!3107 = !DILocation(line: 1069, column: 3, scope: !3096)
!3108 = distinct !DISubprogram(name: "version_etc_arn", scope: !580, file: !580, line: 61, type: !3109, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3146)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3111, !80, !80, !80, !3145, !77}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3113)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3113, file: !150, line: 51, baseType: !53, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3113, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3113, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3113, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3113, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3113, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3113, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3113, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3113, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3113, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3113, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3113, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3113, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3113, file: !150, line: 70, baseType: !3129, size: 64, offset: 832)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3113, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3113, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3113, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3113, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3113, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3113, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3113, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3113, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3113, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3113, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3113, file: !150, line: 93, baseType: !3129, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3113, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3113, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3113, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3113, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152}
!3147 = !DILocalVariable(name: "stream", arg: 1, scope: !3108, file: !580, line: 61, type: !3111)
!3148 = !DILocalVariable(name: "command_name", arg: 2, scope: !3108, file: !580, line: 62, type: !80)
!3149 = !DILocalVariable(name: "package", arg: 3, scope: !3108, file: !580, line: 62, type: !80)
!3150 = !DILocalVariable(name: "version", arg: 4, scope: !3108, file: !580, line: 63, type: !80)
!3151 = !DILocalVariable(name: "authors", arg: 5, scope: !3108, file: !580, line: 64, type: !3145)
!3152 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3108, file: !580, line: 64, type: !77)
!3153 = !DILocation(line: 0, scope: !3108)
!3154 = !DILocation(line: 66, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3108, file: !580, line: 66, column: 7)
!3156 = !DILocation(line: 66, column: 7, scope: !3108)
!3157 = !DILocation(line: 67, column: 5, scope: !3155)
!3158 = !DILocation(line: 69, column: 5, scope: !3155)
!3159 = !DILocation(line: 83, column: 3, scope: !3108)
!3160 = !DILocation(line: 85, column: 3, scope: !3108)
!3161 = !DILocation(line: 88, column: 3, scope: !3108)
!3162 = !DILocation(line: 95, column: 3, scope: !3108)
!3163 = !DILocation(line: 97, column: 3, scope: !3108)
!3164 = !DILocation(line: 105, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3108, file: !580, line: 98, column: 5)
!3166 = !DILocation(line: 106, column: 7, scope: !3165)
!3167 = !DILocation(line: 109, column: 7, scope: !3165)
!3168 = !DILocation(line: 110, column: 7, scope: !3165)
!3169 = !DILocation(line: 113, column: 7, scope: !3165)
!3170 = !DILocation(line: 115, column: 7, scope: !3165)
!3171 = !DILocation(line: 120, column: 7, scope: !3165)
!3172 = !DILocation(line: 122, column: 7, scope: !3165)
!3173 = !DILocation(line: 127, column: 7, scope: !3165)
!3174 = !DILocation(line: 129, column: 7, scope: !3165)
!3175 = !DILocation(line: 134, column: 7, scope: !3165)
!3176 = !DILocation(line: 137, column: 7, scope: !3165)
!3177 = !DILocation(line: 142, column: 7, scope: !3165)
!3178 = !DILocation(line: 145, column: 7, scope: !3165)
!3179 = !DILocation(line: 150, column: 7, scope: !3165)
!3180 = !DILocation(line: 154, column: 7, scope: !3165)
!3181 = !DILocation(line: 159, column: 7, scope: !3165)
!3182 = !DILocation(line: 163, column: 7, scope: !3165)
!3183 = !DILocation(line: 170, column: 7, scope: !3165)
!3184 = !DILocation(line: 174, column: 7, scope: !3165)
!3185 = !DILocation(line: 176, column: 1, scope: !3108)
!3186 = distinct !DISubprogram(name: "version_etc_ar", scope: !580, file: !580, line: 183, type: !3187, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !3111, !80, !80, !80, !3145}
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195}
!3190 = !DILocalVariable(name: "stream", arg: 1, scope: !3186, file: !580, line: 183, type: !3111)
!3191 = !DILocalVariable(name: "command_name", arg: 2, scope: !3186, file: !580, line: 184, type: !80)
!3192 = !DILocalVariable(name: "package", arg: 3, scope: !3186, file: !580, line: 184, type: !80)
!3193 = !DILocalVariable(name: "version", arg: 4, scope: !3186, file: !580, line: 185, type: !80)
!3194 = !DILocalVariable(name: "authors", arg: 5, scope: !3186, file: !580, line: 185, type: !3145)
!3195 = !DILocalVariable(name: "n_authors", scope: !3186, file: !580, line: 187, type: !77)
!3196 = !DILocation(line: 0, scope: !3186)
!3197 = !DILocation(line: 189, column: 8, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3186, file: !580, line: 189, column: 3)
!3199 = !DILocation(line: 189, scope: !3198)
!3200 = !DILocation(line: 189, column: 23, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !580, line: 189, column: 3)
!3202 = !DILocation(line: 189, column: 3, scope: !3198)
!3203 = !DILocation(line: 189, column: 52, scope: !3201)
!3204 = distinct !{!3204, !3202, !3205, !941}
!3205 = !DILocation(line: 190, column: 5, scope: !3198)
!3206 = !DILocation(line: 191, column: 3, scope: !3186)
!3207 = !DILocation(line: 192, column: 1, scope: !3186)
!3208 = distinct !DISubprogram(name: "version_etc_va", scope: !580, file: !580, line: 199, type: !3209, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3221)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !3111, !80, !80, !80, !3211}
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !379, line: 52, baseType: !3212)
!3212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !381, line: 12, baseType: !3213)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !580, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3220}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3214, file: !580, line: 192, baseType: !75, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3214, file: !580, line: 192, baseType: !75, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3214, file: !580, line: 192, baseType: !75, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3214, file: !580, line: 192, baseType: !53, size: 32, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3214, file: !580, line: 192, baseType: !53, size: 32, offset: 224)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228}
!3222 = !DILocalVariable(name: "stream", arg: 1, scope: !3208, file: !580, line: 199, type: !3111)
!3223 = !DILocalVariable(name: "command_name", arg: 2, scope: !3208, file: !580, line: 200, type: !80)
!3224 = !DILocalVariable(name: "package", arg: 3, scope: !3208, file: !580, line: 200, type: !80)
!3225 = !DILocalVariable(name: "version", arg: 4, scope: !3208, file: !580, line: 201, type: !80)
!3226 = !DILocalVariable(name: "authors", arg: 5, scope: !3208, file: !580, line: 201, type: !3211)
!3227 = !DILocalVariable(name: "n_authors", scope: !3208, file: !580, line: 203, type: !77)
!3228 = !DILocalVariable(name: "authtab", scope: !3208, file: !580, line: 204, type: !3229)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!3230 = distinct !DIAssignID()
!3231 = !DILocation(line: 0, scope: !3208)
!3232 = !DILocation(line: 204, column: 3, scope: !3208)
!3233 = !DILocation(line: 208, column: 35, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !580, line: 206, column: 3)
!3235 = distinct !DILexicalBlock(scope: !3208, file: !580, line: 206, column: 3)
!3236 = !DILocation(line: 208, column: 33, scope: !3234)
!3237 = !DILocation(line: 208, column: 67, scope: !3234)
!3238 = !DILocation(line: 206, column: 3, scope: !3235)
!3239 = !DILocation(line: 208, column: 14, scope: !3234)
!3240 = !DILocation(line: 0, scope: !3235)
!3241 = !DILocation(line: 211, column: 3, scope: !3208)
!3242 = !DILocation(line: 213, column: 1, scope: !3208)
!3243 = distinct !DISubprogram(name: "version_etc", scope: !580, file: !580, line: 230, type: !3244, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !3111, !80, !80, !80, null}
!3246 = !{!3247, !3248, !3249, !3250, !3251}
!3247 = !DILocalVariable(name: "stream", arg: 1, scope: !3243, file: !580, line: 230, type: !3111)
!3248 = !DILocalVariable(name: "command_name", arg: 2, scope: !3243, file: !580, line: 231, type: !80)
!3249 = !DILocalVariable(name: "package", arg: 3, scope: !3243, file: !580, line: 231, type: !80)
!3250 = !DILocalVariable(name: "version", arg: 4, scope: !3243, file: !580, line: 232, type: !80)
!3251 = !DILocalVariable(name: "authors", scope: !3243, file: !580, line: 234, type: !3211)
!3252 = distinct !DIAssignID()
!3253 = !DILocation(line: 0, scope: !3243)
!3254 = !DILocation(line: 234, column: 3, scope: !3243)
!3255 = !DILocation(line: 235, column: 3, scope: !3243)
!3256 = !DILocation(line: 236, column: 3, scope: !3243)
!3257 = !DILocation(line: 237, column: 3, scope: !3243)
!3258 = !DILocation(line: 238, column: 1, scope: !3243)
!3259 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !580, file: !580, line: 241, type: !419, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711)
!3260 = !DILocation(line: 243, column: 3, scope: !3259)
!3261 = !DILocation(line: 248, column: 3, scope: !3259)
!3262 = !DILocation(line: 254, column: 3, scope: !3259)
!3263 = !DILocation(line: 259, column: 3, scope: !3259)
!3264 = !DILocation(line: 261, column: 1, scope: !3259)
!3265 = distinct !DISubprogram(name: "xnrealloc", scope: !3266, file: !3266, line: 147, type: !3267, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3269)
!3266 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!75, !75, !77, !77}
!3269 = !{!3270, !3271, !3272}
!3270 = !DILocalVariable(name: "p", arg: 1, scope: !3265, file: !3266, line: 147, type: !75)
!3271 = !DILocalVariable(name: "n", arg: 2, scope: !3265, file: !3266, line: 147, type: !77)
!3272 = !DILocalVariable(name: "s", arg: 3, scope: !3265, file: !3266, line: 147, type: !77)
!3273 = !DILocation(line: 0, scope: !3265)
!3274 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !719, line: 83, type: !75)
!3275 = distinct !DISubprogram(name: "xreallocarray", scope: !719, file: !719, line: 83, type: !3267, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3276)
!3276 = !{!3274, !3277, !3278}
!3277 = !DILocalVariable(name: "n", arg: 2, scope: !3275, file: !719, line: 83, type: !77)
!3278 = !DILocalVariable(name: "s", arg: 3, scope: !3275, file: !719, line: 83, type: !77)
!3279 = !DILocation(line: 0, scope: !3275, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 149, column: 10, scope: !3265)
!3281 = !DILocation(line: 85, column: 25, scope: !3275, inlinedAt: !3280)
!3282 = !DILocalVariable(name: "p", arg: 1, scope: !3283, file: !719, line: 37, type: !75)
!3283 = distinct !DISubprogram(name: "check_nonnull", scope: !719, file: !719, line: 37, type: !3284, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!75, !75}
!3286 = !{!3282}
!3287 = !DILocation(line: 0, scope: !3283, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 85, column: 10, scope: !3275, inlinedAt: !3280)
!3289 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3288)
!3290 = distinct !DILexicalBlock(scope: !3283, file: !719, line: 39, column: 7)
!3291 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3288)
!3292 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3288)
!3293 = !DILocation(line: 149, column: 3, scope: !3265)
!3294 = !DILocation(line: 0, scope: !3275)
!3295 = !DILocation(line: 85, column: 25, scope: !3275)
!3296 = !DILocation(line: 0, scope: !3283, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 85, column: 10, scope: !3275)
!3298 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3297)
!3299 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3297)
!3300 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3297)
!3301 = !DILocation(line: 85, column: 3, scope: !3275)
!3302 = distinct !DISubprogram(name: "xmalloc", scope: !719, file: !719, line: 47, type: !3303, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!75, !77}
!3305 = !{!3306}
!3306 = !DILocalVariable(name: "s", arg: 1, scope: !3302, file: !719, line: 47, type: !77)
!3307 = !DILocation(line: 0, scope: !3302)
!3308 = !DILocation(line: 49, column: 25, scope: !3302)
!3309 = !DILocation(line: 0, scope: !3283, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 49, column: 10, scope: !3302)
!3311 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3310)
!3312 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3310)
!3313 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3310)
!3314 = !DILocation(line: 49, column: 3, scope: !3302)
!3315 = !DISubprogram(name: "malloc", scope: !1015, file: !1015, line: 540, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3316 = distinct !DISubprogram(name: "ximalloc", scope: !719, file: !719, line: 53, type: !3317, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!75, !738}
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "s", arg: 1, scope: !3316, file: !719, line: 53, type: !738)
!3321 = !DILocation(line: 0, scope: !3316)
!3322 = !DILocalVariable(name: "s", arg: 1, scope: !3323, file: !3324, line: 55, type: !738)
!3323 = distinct !DISubprogram(name: "imalloc", scope: !3324, file: !3324, line: 55, type: !3317, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3325)
!3324 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3325 = !{!3322}
!3326 = !DILocation(line: 0, scope: !3323, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 55, column: 25, scope: !3316)
!3328 = !DILocation(line: 57, column: 26, scope: !3323, inlinedAt: !3327)
!3329 = !DILocation(line: 0, scope: !3283, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 55, column: 10, scope: !3316)
!3331 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3330)
!3332 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3330)
!3333 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3330)
!3334 = !DILocation(line: 55, column: 3, scope: !3316)
!3335 = distinct !DISubprogram(name: "xcharalloc", scope: !719, file: !719, line: 59, type: !3336, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!74, !77}
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "n", arg: 1, scope: !3335, file: !719, line: 59, type: !77)
!3340 = !DILocation(line: 0, scope: !3335)
!3341 = !DILocation(line: 0, scope: !3302, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 61, column: 10, scope: !3335)
!3343 = !DILocation(line: 49, column: 25, scope: !3302, inlinedAt: !3342)
!3344 = !DILocation(line: 0, scope: !3283, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 49, column: 10, scope: !3302, inlinedAt: !3342)
!3346 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3345)
!3347 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3345)
!3348 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3345)
!3349 = !DILocation(line: 61, column: 3, scope: !3335)
!3350 = distinct !DISubprogram(name: "xrealloc", scope: !719, file: !719, line: 68, type: !3351, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!75, !75, !77}
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !719, line: 68, type: !75)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3350, file: !719, line: 68, type: !77)
!3356 = !DILocation(line: 0, scope: !3350)
!3357 = !DILocalVariable(name: "ptr", arg: 1, scope: !3358, file: !3359, line: 2057, type: !75)
!3358 = distinct !DISubprogram(name: "rpl_realloc", scope: !3359, file: !3359, line: 2057, type: !3351, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3360)
!3359 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3360 = !{!3357, !3361}
!3361 = !DILocalVariable(name: "size", arg: 2, scope: !3358, file: !3359, line: 2057, type: !77)
!3362 = !DILocation(line: 0, scope: !3358, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 70, column: 25, scope: !3350)
!3364 = !DILocation(line: 2059, column: 24, scope: !3358, inlinedAt: !3363)
!3365 = !DILocation(line: 2059, column: 10, scope: !3358, inlinedAt: !3363)
!3366 = !DILocation(line: 0, scope: !3283, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 70, column: 10, scope: !3350)
!3368 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3367)
!3369 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3367)
!3370 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3367)
!3371 = !DILocation(line: 70, column: 3, scope: !3350)
!3372 = !DISubprogram(name: "realloc", scope: !1015, file: !1015, line: 551, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3373 = distinct !DISubprogram(name: "xirealloc", scope: !719, file: !719, line: 74, type: !3374, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!75, !75, !738}
!3376 = !{!3377, !3378}
!3377 = !DILocalVariable(name: "p", arg: 1, scope: !3373, file: !719, line: 74, type: !75)
!3378 = !DILocalVariable(name: "s", arg: 2, scope: !3373, file: !719, line: 74, type: !738)
!3379 = !DILocation(line: 0, scope: !3373)
!3380 = !DILocalVariable(name: "p", arg: 1, scope: !3381, file: !3324, line: 66, type: !75)
!3381 = distinct !DISubprogram(name: "irealloc", scope: !3324, file: !3324, line: 66, type: !3374, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3382)
!3382 = !{!3380, !3383}
!3383 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !3324, line: 66, type: !738)
!3384 = !DILocation(line: 0, scope: !3381, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 76, column: 25, scope: !3373)
!3386 = !DILocation(line: 0, scope: !3358, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 68, column: 26, scope: !3381, inlinedAt: !3385)
!3388 = !DILocation(line: 2059, column: 24, scope: !3358, inlinedAt: !3387)
!3389 = !DILocation(line: 2059, column: 10, scope: !3358, inlinedAt: !3387)
!3390 = !DILocation(line: 0, scope: !3283, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 76, column: 10, scope: !3373)
!3392 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3391)
!3393 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3391)
!3394 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3391)
!3395 = !DILocation(line: 76, column: 3, scope: !3373)
!3396 = distinct !DISubprogram(name: "xireallocarray", scope: !719, file: !719, line: 89, type: !3397, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!75, !75, !738, !738}
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "p", arg: 1, scope: !3396, file: !719, line: 89, type: !75)
!3401 = !DILocalVariable(name: "n", arg: 2, scope: !3396, file: !719, line: 89, type: !738)
!3402 = !DILocalVariable(name: "s", arg: 3, scope: !3396, file: !719, line: 89, type: !738)
!3403 = !DILocation(line: 0, scope: !3396)
!3404 = !DILocalVariable(name: "p", arg: 1, scope: !3405, file: !3324, line: 98, type: !75)
!3405 = distinct !DISubprogram(name: "ireallocarray", scope: !3324, file: !3324, line: 98, type: !3397, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3406)
!3406 = !{!3404, !3407, !3408}
!3407 = !DILocalVariable(name: "n", arg: 2, scope: !3405, file: !3324, line: 98, type: !738)
!3408 = !DILocalVariable(name: "s", arg: 3, scope: !3405, file: !3324, line: 98, type: !738)
!3409 = !DILocation(line: 0, scope: !3405, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 91, column: 25, scope: !3396)
!3411 = !DILocation(line: 101, column: 13, scope: !3405, inlinedAt: !3410)
!3412 = !DILocation(line: 0, scope: !3283, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 91, column: 10, scope: !3396)
!3414 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3413)
!3415 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3413)
!3416 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3413)
!3417 = !DILocation(line: 91, column: 3, scope: !3396)
!3418 = distinct !DISubprogram(name: "xnmalloc", scope: !719, file: !719, line: 98, type: !3419, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!75, !77, !77}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3418, file: !719, line: 98, type: !77)
!3423 = !DILocalVariable(name: "s", arg: 2, scope: !3418, file: !719, line: 98, type: !77)
!3424 = !DILocation(line: 0, scope: !3418)
!3425 = !DILocation(line: 0, scope: !3275, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 100, column: 10, scope: !3418)
!3427 = !DILocation(line: 85, column: 25, scope: !3275, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3283, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 85, column: 10, scope: !3275, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3429)
!3433 = !DILocation(line: 100, column: 3, scope: !3418)
!3434 = distinct !DISubprogram(name: "xinmalloc", scope: !719, file: !719, line: 104, type: !3435, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!75, !738, !738}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !719, line: 104, type: !738)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !719, line: 104, type: !738)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 0, scope: !3396, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 106, column: 10, scope: !3434)
!3443 = !DILocation(line: 0, scope: !3405, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 91, column: 25, scope: !3396, inlinedAt: !3442)
!3445 = !DILocation(line: 101, column: 13, scope: !3405, inlinedAt: !3444)
!3446 = !DILocation(line: 0, scope: !3283, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 91, column: 10, scope: !3396, inlinedAt: !3442)
!3448 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3447)
!3449 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3447)
!3450 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3447)
!3451 = !DILocation(line: 106, column: 3, scope: !3434)
!3452 = distinct !DISubprogram(name: "x2realloc", scope: !719, file: !719, line: 116, type: !3453, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!75, !75, !725}
!3455 = !{!3456, !3457}
!3456 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !719, line: 116, type: !75)
!3457 = !DILocalVariable(name: "ps", arg: 2, scope: !3452, file: !719, line: 116, type: !725)
!3458 = !DILocation(line: 0, scope: !3452)
!3459 = !DILocation(line: 0, scope: !722, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 118, column: 10, scope: !3452)
!3461 = !DILocation(line: 178, column: 14, scope: !722, inlinedAt: !3460)
!3462 = !DILocation(line: 180, column: 9, scope: !3463, inlinedAt: !3460)
!3463 = distinct !DILexicalBlock(scope: !722, file: !719, line: 180, column: 7)
!3464 = !DILocation(line: 180, column: 7, scope: !722, inlinedAt: !3460)
!3465 = !DILocation(line: 182, column: 13, scope: !3466, inlinedAt: !3460)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !719, line: 182, column: 11)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !719, line: 181, column: 5)
!3468 = !DILocation(line: 182, column: 11, scope: !3467, inlinedAt: !3460)
!3469 = !DILocation(line: 197, column: 11, scope: !3470, inlinedAt: !3460)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !719, line: 197, column: 11)
!3471 = distinct !DILexicalBlock(scope: !3463, file: !719, line: 195, column: 5)
!3472 = !DILocation(line: 197, column: 11, scope: !3471, inlinedAt: !3460)
!3473 = !DILocation(line: 198, column: 9, scope: !3470, inlinedAt: !3460)
!3474 = !DILocation(line: 0, scope: !3275, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 201, column: 7, scope: !722, inlinedAt: !3460)
!3476 = !DILocation(line: 85, column: 25, scope: !3275, inlinedAt: !3475)
!3477 = !DILocation(line: 0, scope: !3283, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 85, column: 10, scope: !3275, inlinedAt: !3475)
!3479 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3478)
!3482 = !DILocation(line: 202, column: 7, scope: !722, inlinedAt: !3460)
!3483 = !DILocation(line: 118, column: 3, scope: !3452)
!3484 = !DILocation(line: 0, scope: !722)
!3485 = !DILocation(line: 178, column: 14, scope: !722)
!3486 = !DILocation(line: 180, column: 9, scope: !3463)
!3487 = !DILocation(line: 180, column: 7, scope: !722)
!3488 = !DILocation(line: 182, column: 13, scope: !3466)
!3489 = !DILocation(line: 182, column: 11, scope: !3467)
!3490 = !DILocation(line: 190, column: 30, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3466, file: !719, line: 183, column: 9)
!3492 = !DILocation(line: 191, column: 16, scope: !3491)
!3493 = !DILocation(line: 191, column: 13, scope: !3491)
!3494 = !DILocation(line: 192, column: 9, scope: !3491)
!3495 = !DILocation(line: 197, column: 11, scope: !3470)
!3496 = !DILocation(line: 197, column: 11, scope: !3471)
!3497 = !DILocation(line: 198, column: 9, scope: !3470)
!3498 = !DILocation(line: 0, scope: !3275, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 201, column: 7, scope: !722)
!3500 = !DILocation(line: 85, column: 25, scope: !3275, inlinedAt: !3499)
!3501 = !DILocation(line: 0, scope: !3283, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 85, column: 10, scope: !3275, inlinedAt: !3499)
!3503 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3502)
!3504 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3502)
!3505 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3502)
!3506 = !DILocation(line: 202, column: 7, scope: !722)
!3507 = !DILocation(line: 203, column: 3, scope: !722)
!3508 = !DILocation(line: 0, scope: !734)
!3509 = !DILocation(line: 230, column: 14, scope: !734)
!3510 = !DILocation(line: 238, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !734, file: !719, line: 238, column: 7)
!3512 = !DILocation(line: 238, column: 7, scope: !734)
!3513 = !DILocation(line: 240, column: 9, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !734, file: !719, line: 240, column: 7)
!3515 = !DILocation(line: 240, column: 18, scope: !3514)
!3516 = !DILocation(line: 253, column: 8, scope: !734)
!3517 = !DILocation(line: 256, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !734, file: !719, line: 256, column: 7)
!3519 = !DILocation(line: 256, column: 7, scope: !734)
!3520 = !DILocation(line: 258, column: 27, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !719, line: 257, column: 5)
!3522 = !DILocation(line: 259, column: 32, scope: !3521)
!3523 = !DILocation(line: 260, column: 5, scope: !3521)
!3524 = !DILocation(line: 262, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !734, file: !719, line: 262, column: 7)
!3526 = !DILocation(line: 262, column: 7, scope: !734)
!3527 = !DILocation(line: 263, column: 9, scope: !3525)
!3528 = !DILocation(line: 263, column: 5, scope: !3525)
!3529 = !DILocation(line: 264, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !734, file: !719, line: 264, column: 7)
!3531 = !DILocation(line: 264, column: 14, scope: !3530)
!3532 = !DILocation(line: 265, column: 7, scope: !3530)
!3533 = !DILocation(line: 265, column: 11, scope: !3530)
!3534 = !DILocation(line: 266, column: 11, scope: !3530)
!3535 = !DILocation(line: 267, column: 14, scope: !3530)
!3536 = !DILocation(line: 264, column: 7, scope: !734)
!3537 = !DILocation(line: 268, column: 5, scope: !3530)
!3538 = !DILocation(line: 0, scope: !3350, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 269, column: 8, scope: !734)
!3540 = !DILocation(line: 0, scope: !3358, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 70, column: 25, scope: !3350, inlinedAt: !3539)
!3542 = !DILocation(line: 2059, column: 24, scope: !3358, inlinedAt: !3541)
!3543 = !DILocation(line: 2059, column: 10, scope: !3358, inlinedAt: !3541)
!3544 = !DILocation(line: 0, scope: !3283, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 70, column: 10, scope: !3350, inlinedAt: !3539)
!3546 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3545)
!3547 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3545)
!3548 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3545)
!3549 = !DILocation(line: 270, column: 7, scope: !734)
!3550 = !DILocation(line: 271, column: 3, scope: !734)
!3551 = distinct !DISubprogram(name: "xzalloc", scope: !719, file: !719, line: 279, type: !3303, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3552)
!3552 = !{!3553}
!3553 = !DILocalVariable(name: "s", arg: 1, scope: !3551, file: !719, line: 279, type: !77)
!3554 = !DILocation(line: 0, scope: !3551)
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3556, file: !719, line: 294, type: !77)
!3556 = distinct !DISubprogram(name: "xcalloc", scope: !719, file: !719, line: 294, type: !3419, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3557)
!3557 = !{!3555, !3558}
!3558 = !DILocalVariable(name: "s", arg: 2, scope: !3556, file: !719, line: 294, type: !77)
!3559 = !DILocation(line: 0, scope: !3556, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 281, column: 10, scope: !3551)
!3561 = !DILocation(line: 296, column: 25, scope: !3556, inlinedAt: !3560)
!3562 = !DILocation(line: 0, scope: !3283, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 296, column: 10, scope: !3556, inlinedAt: !3560)
!3564 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3563)
!3565 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3563)
!3566 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3563)
!3567 = !DILocation(line: 281, column: 3, scope: !3551)
!3568 = !DISubprogram(name: "calloc", scope: !1015, file: !1015, line: 543, type: !3419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3569 = !DILocation(line: 0, scope: !3556)
!3570 = !DILocation(line: 296, column: 25, scope: !3556)
!3571 = !DILocation(line: 0, scope: !3283, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 296, column: 10, scope: !3556)
!3573 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3572)
!3574 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3572)
!3575 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3572)
!3576 = !DILocation(line: 296, column: 3, scope: !3556)
!3577 = distinct !DISubprogram(name: "xizalloc", scope: !719, file: !719, line: 285, type: !3317, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3578)
!3578 = !{!3579}
!3579 = !DILocalVariable(name: "s", arg: 1, scope: !3577, file: !719, line: 285, type: !738)
!3580 = !DILocation(line: 0, scope: !3577)
!3581 = !DILocalVariable(name: "n", arg: 1, scope: !3582, file: !719, line: 300, type: !738)
!3582 = distinct !DISubprogram(name: "xicalloc", scope: !719, file: !719, line: 300, type: !3435, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3583)
!3583 = !{!3581, !3584}
!3584 = !DILocalVariable(name: "s", arg: 2, scope: !3582, file: !719, line: 300, type: !738)
!3585 = !DILocation(line: 0, scope: !3582, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 287, column: 10, scope: !3577)
!3587 = !DILocalVariable(name: "n", arg: 1, scope: !3588, file: !3324, line: 77, type: !738)
!3588 = distinct !DISubprogram(name: "icalloc", scope: !3324, file: !3324, line: 77, type: !3435, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3589)
!3589 = !{!3587, !3590}
!3590 = !DILocalVariable(name: "s", arg: 2, scope: !3588, file: !3324, line: 77, type: !738)
!3591 = !DILocation(line: 0, scope: !3588, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 302, column: 25, scope: !3582, inlinedAt: !3586)
!3593 = !DILocation(line: 91, column: 10, scope: !3588, inlinedAt: !3592)
!3594 = !DILocation(line: 0, scope: !3283, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 302, column: 10, scope: !3582, inlinedAt: !3586)
!3596 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3595)
!3597 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3595)
!3598 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3595)
!3599 = !DILocation(line: 287, column: 3, scope: !3577)
!3600 = !DILocation(line: 0, scope: !3582)
!3601 = !DILocation(line: 0, scope: !3588, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 302, column: 25, scope: !3582)
!3603 = !DILocation(line: 91, column: 10, scope: !3588, inlinedAt: !3602)
!3604 = !DILocation(line: 0, scope: !3283, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 302, column: 10, scope: !3582)
!3606 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3605)
!3607 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3605)
!3608 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3605)
!3609 = !DILocation(line: 302, column: 3, scope: !3582)
!3610 = distinct !DISubprogram(name: "xmemdup", scope: !719, file: !719, line: 310, type: !3611, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!75, !1039, !77}
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "p", arg: 1, scope: !3610, file: !719, line: 310, type: !1039)
!3615 = !DILocalVariable(name: "s", arg: 2, scope: !3610, file: !719, line: 310, type: !77)
!3616 = !DILocation(line: 0, scope: !3610)
!3617 = !DILocation(line: 0, scope: !3302, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 312, column: 18, scope: !3610)
!3619 = !DILocation(line: 49, column: 25, scope: !3302, inlinedAt: !3618)
!3620 = !DILocation(line: 0, scope: !3283, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 49, column: 10, scope: !3302, inlinedAt: !3618)
!3622 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3621)
!3623 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3621)
!3624 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3621)
!3625 = !DILocalVariable(name: "__dest", arg: 1, scope: !3626, file: !1760, line: 26, type: !3629)
!3626 = distinct !DISubprogram(name: "memcpy", scope: !1760, file: !1760, line: 26, type: !3627, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3630)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!75, !3629, !1038, !77}
!3629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!3630 = !{!3625, !3631, !3632}
!3631 = !DILocalVariable(name: "__src", arg: 2, scope: !3626, file: !1760, line: 26, type: !1038)
!3632 = !DILocalVariable(name: "__len", arg: 3, scope: !3626, file: !1760, line: 26, type: !77)
!3633 = !DILocation(line: 0, scope: !3626, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 312, column: 10, scope: !3610)
!3635 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3634)
!3636 = !DILocation(line: 312, column: 3, scope: !3610)
!3637 = distinct !DISubprogram(name: "ximemdup", scope: !719, file: !719, line: 316, type: !3638, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!75, !1039, !738}
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "p", arg: 1, scope: !3637, file: !719, line: 316, type: !1039)
!3642 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !719, line: 316, type: !738)
!3643 = !DILocation(line: 0, scope: !3637)
!3644 = !DILocation(line: 0, scope: !3316, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 318, column: 18, scope: !3637)
!3646 = !DILocation(line: 0, scope: !3323, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 55, column: 25, scope: !3316, inlinedAt: !3645)
!3648 = !DILocation(line: 57, column: 26, scope: !3323, inlinedAt: !3647)
!3649 = !DILocation(line: 0, scope: !3283, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 55, column: 10, scope: !3316, inlinedAt: !3645)
!3651 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3650)
!3652 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3650)
!3653 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3650)
!3654 = !DILocation(line: 0, scope: !3626, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 318, column: 10, scope: !3637)
!3656 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3655)
!3657 = !DILocation(line: 318, column: 3, scope: !3637)
!3658 = distinct !DISubprogram(name: "ximemdup0", scope: !719, file: !719, line: 325, type: !3659, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!74, !1039, !738}
!3661 = !{!3662, !3663, !3664}
!3662 = !DILocalVariable(name: "p", arg: 1, scope: !3658, file: !719, line: 325, type: !1039)
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !719, line: 325, type: !738)
!3664 = !DILocalVariable(name: "result", scope: !3658, file: !719, line: 327, type: !74)
!3665 = !DILocation(line: 0, scope: !3658)
!3666 = !DILocation(line: 327, column: 30, scope: !3658)
!3667 = !DILocation(line: 0, scope: !3316, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 327, column: 18, scope: !3658)
!3669 = !DILocation(line: 0, scope: !3323, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 55, column: 25, scope: !3316, inlinedAt: !3668)
!3671 = !DILocation(line: 57, column: 26, scope: !3323, inlinedAt: !3670)
!3672 = !DILocation(line: 0, scope: !3283, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 55, column: 10, scope: !3316, inlinedAt: !3668)
!3674 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3673)
!3675 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3673)
!3676 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3673)
!3677 = !DILocation(line: 328, column: 3, scope: !3658)
!3678 = !DILocation(line: 328, column: 13, scope: !3658)
!3679 = !DILocation(line: 0, scope: !3626, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 329, column: 10, scope: !3658)
!3681 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3680)
!3682 = !DILocation(line: 329, column: 3, scope: !3658)
!3683 = distinct !DISubprogram(name: "xstrdup", scope: !719, file: !719, line: 335, type: !1017, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3684)
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "string", arg: 1, scope: !3683, file: !719, line: 335, type: !80)
!3686 = !DILocation(line: 0, scope: !3683)
!3687 = !DILocation(line: 337, column: 27, scope: !3683)
!3688 = !DILocation(line: 337, column: 43, scope: !3683)
!3689 = !DILocation(line: 0, scope: !3610, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 337, column: 10, scope: !3683)
!3691 = !DILocation(line: 0, scope: !3302, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 312, column: 18, scope: !3610, inlinedAt: !3690)
!3693 = !DILocation(line: 49, column: 25, scope: !3302, inlinedAt: !3692)
!3694 = !DILocation(line: 0, scope: !3283, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 49, column: 10, scope: !3302, inlinedAt: !3692)
!3696 = !DILocation(line: 39, column: 8, scope: !3290, inlinedAt: !3695)
!3697 = !DILocation(line: 39, column: 7, scope: !3283, inlinedAt: !3695)
!3698 = !DILocation(line: 40, column: 5, scope: !3290, inlinedAt: !3695)
!3699 = !DILocation(line: 0, scope: !3626, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 312, column: 10, scope: !3610, inlinedAt: !3690)
!3701 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3700)
!3702 = !DILocation(line: 337, column: 3, scope: !3683)
!3703 = distinct !DISubprogram(name: "xalloc_die", scope: !673, file: !673, line: 32, type: !419, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3704)
!3704 = !{!3705}
!3705 = !DILocalVariable(name: "__errstatus", scope: !3706, file: !673, line: 34, type: !3707)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !673, line: 34, column: 3)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3708 = !DILocation(line: 34, column: 3, scope: !3706)
!3709 = !DILocation(line: 0, scope: !3706)
!3710 = !DILocation(line: 40, column: 3, scope: !3703)
!3711 = distinct !DISubprogram(name: "xgetgroups", scope: !756, file: !756, line: 31, type: !770, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3712)
!3712 = !{!3713, !3714, !3715, !3716}
!3713 = !DILocalVariable(name: "username", arg: 1, scope: !3711, file: !756, line: 31, type: !80)
!3714 = !DILocalVariable(name: "gid", arg: 2, scope: !3711, file: !756, line: 31, type: !772)
!3715 = !DILocalVariable(name: "groups", arg: 3, scope: !3711, file: !756, line: 31, type: !775)
!3716 = !DILocalVariable(name: "result", scope: !3711, file: !756, line: 33, type: !53)
!3717 = !DILocation(line: 0, scope: !3711)
!3718 = !DILocation(line: 33, column: 16, scope: !3711)
!3719 = !DILocation(line: 34, column: 14, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3711, file: !756, line: 34, column: 7)
!3721 = !DILocation(line: 34, column: 20, scope: !3720)
!3722 = !DILocation(line: 34, column: 23, scope: !3720)
!3723 = !DILocation(line: 34, column: 29, scope: !3720)
!3724 = !DILocation(line: 34, column: 7, scope: !3711)
!3725 = !DILocation(line: 35, column: 5, scope: !3720)
!3726 = !DILocation(line: 36, column: 3, scope: !3711)
!3727 = distinct !DISubprogram(name: "close_stream", scope: !758, file: !758, line: 55, type: !3728, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3764)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!53, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3732, file: !150, line: 51, baseType: !53, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3732, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3732, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3732, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3732, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3732, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3732, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3732, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3732, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3732, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3732, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3732, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3732, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3732, file: !150, line: 70, baseType: !3748, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3732, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3732, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3732, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3732, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3732, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3732, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3732, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3732, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3732, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3732, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3732, file: !150, line: 93, baseType: !3748, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3732, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3732, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3732, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3732, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3764 = !{!3765, !3766, !3768, !3769}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3727, file: !758, line: 55, type: !3730)
!3766 = !DILocalVariable(name: "some_pending", scope: !3727, file: !758, line: 57, type: !3767)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3768 = !DILocalVariable(name: "prev_fail", scope: !3727, file: !758, line: 58, type: !3767)
!3769 = !DILocalVariable(name: "fclose_fail", scope: !3727, file: !758, line: 59, type: !3767)
!3770 = !DILocation(line: 0, scope: !3727)
!3771 = !DILocation(line: 57, column: 30, scope: !3727)
!3772 = !DILocalVariable(name: "__stream", arg: 1, scope: !3773, file: !1127, line: 135, type: !3730)
!3773 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1127, file: !1127, line: 135, type: !3728, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3774)
!3774 = !{!3772}
!3775 = !DILocation(line: 0, scope: !3773, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 58, column: 27, scope: !3727)
!3777 = !DILocation(line: 137, column: 10, scope: !3773, inlinedAt: !3776)
!3778 = !DILocation(line: 58, column: 43, scope: !3727)
!3779 = !DILocation(line: 59, column: 29, scope: !3727)
!3780 = !DILocation(line: 59, column: 45, scope: !3727)
!3781 = !DILocation(line: 69, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3727, file: !758, line: 69, column: 7)
!3783 = !DILocation(line: 57, column: 50, scope: !3727)
!3784 = !DILocation(line: 69, column: 33, scope: !3782)
!3785 = !DILocation(line: 69, column: 53, scope: !3782)
!3786 = !DILocation(line: 69, column: 59, scope: !3782)
!3787 = !DILocation(line: 69, column: 7, scope: !3727)
!3788 = !DILocation(line: 71, column: 11, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3782, file: !758, line: 70, column: 5)
!3790 = !DILocation(line: 72, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3789, file: !758, line: 71, column: 11)
!3792 = !DILocation(line: 72, column: 15, scope: !3791)
!3793 = !DILocation(line: 77, column: 1, scope: !3727)
!3794 = !DISubprogram(name: "__fpending", scope: !1697, file: !1697, line: 75, type: !3795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!77, !3730}
!3797 = distinct !DISubprogram(name: "rpl_fclose", scope: !760, file: !760, line: 58, type: !3798, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3834)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!53, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3802)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3802, file: !150, line: 51, baseType: !53, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3802, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3802, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3802, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3802, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3802, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3802, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3802, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3802, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3802, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3802, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3802, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3802, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3802, file: !150, line: 70, baseType: !3818, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3802, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3802, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3802, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3802, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3802, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3802, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3802, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3802, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3802, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3802, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3802, file: !150, line: 93, baseType: !3818, size: 64, offset: 1344)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3802, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3802, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3802, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3802, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3834 = !{!3835, !3836, !3837, !3838}
!3835 = !DILocalVariable(name: "fp", arg: 1, scope: !3797, file: !760, line: 58, type: !3800)
!3836 = !DILocalVariable(name: "saved_errno", scope: !3797, file: !760, line: 60, type: !53)
!3837 = !DILocalVariable(name: "fd", scope: !3797, file: !760, line: 63, type: !53)
!3838 = !DILocalVariable(name: "result", scope: !3797, file: !760, line: 74, type: !53)
!3839 = !DILocation(line: 0, scope: !3797)
!3840 = !DILocation(line: 63, column: 12, scope: !3797)
!3841 = !DILocation(line: 64, column: 10, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3797, file: !760, line: 64, column: 7)
!3843 = !DILocation(line: 64, column: 7, scope: !3797)
!3844 = !DILocation(line: 65, column: 12, scope: !3842)
!3845 = !DILocation(line: 65, column: 5, scope: !3842)
!3846 = !DILocation(line: 70, column: 9, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3797, file: !760, line: 70, column: 7)
!3848 = !DILocation(line: 70, column: 23, scope: !3847)
!3849 = !DILocation(line: 70, column: 33, scope: !3847)
!3850 = !DILocation(line: 70, column: 26, scope: !3847)
!3851 = !DILocation(line: 70, column: 59, scope: !3847)
!3852 = !DILocation(line: 71, column: 7, scope: !3847)
!3853 = !DILocation(line: 71, column: 10, scope: !3847)
!3854 = !DILocation(line: 70, column: 7, scope: !3797)
!3855 = !DILocation(line: 100, column: 12, scope: !3797)
!3856 = !DILocation(line: 105, column: 7, scope: !3797)
!3857 = !DILocation(line: 72, column: 19, scope: !3847)
!3858 = !DILocation(line: 105, column: 19, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3797, file: !760, line: 105, column: 7)
!3860 = !DILocation(line: 107, column: 13, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3859, file: !760, line: 106, column: 5)
!3862 = !DILocation(line: 109, column: 5, scope: !3861)
!3863 = !DILocation(line: 112, column: 1, scope: !3797)
!3864 = !DISubprogram(name: "fileno", scope: !379, file: !379, line: 809, type: !3798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3865 = !DISubprogram(name: "fclose", scope: !379, file: !379, line: 178, type: !3798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3866 = !DISubprogram(name: "__freading", scope: !1697, file: !1697, line: 51, type: !3798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3867 = !DISubprogram(name: "lseek", scope: !1208, file: !1208, line: 339, type: !3868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!172, !53, !172, !53}
!3870 = distinct !DISubprogram(name: "rpl_fflush", scope: !762, file: !762, line: 130, type: !3871, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3907)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!53, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3875, file: !150, line: 51, baseType: !53, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3875, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3875, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3875, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3875, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3875, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3875, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3875, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3875, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3875, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3875, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3875, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3875, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3875, file: !150, line: 70, baseType: !3891, size: 64, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3875, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3875, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3875, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3875, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3875, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3875, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3875, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3875, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3875, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3875, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3875, file: !150, line: 93, baseType: !3891, size: 64, offset: 1344)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3875, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3875, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3875, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3875, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "stream", arg: 1, scope: !3870, file: !762, line: 130, type: !3873)
!3909 = !DILocation(line: 0, scope: !3870)
!3910 = !DILocation(line: 151, column: 14, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3870, file: !762, line: 151, column: 7)
!3912 = !DILocation(line: 151, column: 22, scope: !3911)
!3913 = !DILocation(line: 151, column: 27, scope: !3911)
!3914 = !DILocation(line: 151, column: 7, scope: !3870)
!3915 = !DILocation(line: 152, column: 12, scope: !3911)
!3916 = !DILocation(line: 152, column: 5, scope: !3911)
!3917 = !DILocalVariable(name: "fp", arg: 1, scope: !3918, file: !762, line: 42, type: !3873)
!3918 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !762, file: !762, line: 42, type: !3919, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3873}
!3921 = !{!3917}
!3922 = !DILocation(line: 0, scope: !3918, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 157, column: 3, scope: !3870)
!3924 = !DILocation(line: 44, column: 12, scope: !3925, inlinedAt: !3923)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !762, line: 44, column: 7)
!3926 = !DILocation(line: 44, column: 19, scope: !3925, inlinedAt: !3923)
!3927 = !DILocation(line: 44, column: 7, scope: !3918, inlinedAt: !3923)
!3928 = !DILocation(line: 46, column: 5, scope: !3925, inlinedAt: !3923)
!3929 = !DILocation(line: 159, column: 10, scope: !3870)
!3930 = !DILocation(line: 159, column: 3, scope: !3870)
!3931 = !DILocation(line: 236, column: 1, scope: !3870)
!3932 = !DISubprogram(name: "fflush", scope: !379, file: !379, line: 230, type: !3871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3933 = distinct !DISubprogram(name: "rpl_fseeko", scope: !764, file: !764, line: 28, type: !3934, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3971)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!53, !3936, !3970, !53}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3938, file: !150, line: 51, baseType: !53, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3938, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3938, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3938, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3938, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3938, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3938, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3938, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3938, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3938, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3938, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3938, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3938, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3938, file: !150, line: 70, baseType: !3954, size: 64, offset: 832)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3938, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3938, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3938, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3938, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3938, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3938, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3938, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3938, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3938, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3938, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3938, file: !150, line: 93, baseType: !3954, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3938, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3938, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3938, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3938, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !379, line: 63, baseType: !172)
!3971 = !{!3972, !3973, !3974, !3975}
!3972 = !DILocalVariable(name: "fp", arg: 1, scope: !3933, file: !764, line: 28, type: !3936)
!3973 = !DILocalVariable(name: "offset", arg: 2, scope: !3933, file: !764, line: 28, type: !3970)
!3974 = !DILocalVariable(name: "whence", arg: 3, scope: !3933, file: !764, line: 28, type: !53)
!3975 = !DILocalVariable(name: "pos", scope: !3976, file: !764, line: 123, type: !3970)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !764, line: 119, column: 5)
!3977 = distinct !DILexicalBlock(scope: !3933, file: !764, line: 55, column: 7)
!3978 = !DILocation(line: 0, scope: !3933)
!3979 = !DILocation(line: 55, column: 12, scope: !3977)
!3980 = !{!1135, !835, i64 16}
!3981 = !DILocation(line: 55, column: 33, scope: !3977)
!3982 = !{!1135, !835, i64 8}
!3983 = !DILocation(line: 55, column: 25, scope: !3977)
!3984 = !DILocation(line: 56, column: 7, scope: !3977)
!3985 = !DILocation(line: 56, column: 15, scope: !3977)
!3986 = !DILocation(line: 56, column: 37, scope: !3977)
!3987 = !{!1135, !835, i64 32}
!3988 = !DILocation(line: 56, column: 29, scope: !3977)
!3989 = !DILocation(line: 57, column: 7, scope: !3977)
!3990 = !DILocation(line: 57, column: 15, scope: !3977)
!3991 = !{!1135, !835, i64 72}
!3992 = !DILocation(line: 57, column: 29, scope: !3977)
!3993 = !DILocation(line: 55, column: 7, scope: !3933)
!3994 = !DILocation(line: 123, column: 26, scope: !3976)
!3995 = !DILocation(line: 123, column: 19, scope: !3976)
!3996 = !DILocation(line: 0, scope: !3976)
!3997 = !DILocation(line: 124, column: 15, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3976, file: !764, line: 124, column: 11)
!3999 = !DILocation(line: 124, column: 11, scope: !3976)
!4000 = !DILocation(line: 135, column: 19, scope: !3976)
!4001 = !DILocation(line: 136, column: 12, scope: !3976)
!4002 = !DILocation(line: 136, column: 20, scope: !3976)
!4003 = !{!1135, !1136, i64 144}
!4004 = !DILocation(line: 167, column: 7, scope: !3976)
!4005 = !DILocation(line: 169, column: 10, scope: !3933)
!4006 = !DILocation(line: 169, column: 3, scope: !3933)
!4007 = !DILocation(line: 170, column: 1, scope: !3933)
!4008 = !DISubprogram(name: "fseeko", scope: !379, file: !379, line: 736, type: !4009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!53, !3936, !172, !53}
!4011 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !680, file: !680, line: 100, type: !4012, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4015)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!77, !1778, !80, !77, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!4015 = !{!4016, !4017, !4018, !4019, !4020}
!4016 = !DILocalVariable(name: "pwc", arg: 1, scope: !4011, file: !680, line: 100, type: !1778)
!4017 = !DILocalVariable(name: "s", arg: 2, scope: !4011, file: !680, line: 100, type: !80)
!4018 = !DILocalVariable(name: "n", arg: 3, scope: !4011, file: !680, line: 100, type: !77)
!4019 = !DILocalVariable(name: "ps", arg: 4, scope: !4011, file: !680, line: 100, type: !4014)
!4020 = !DILocalVariable(name: "ret", scope: !4011, file: !680, line: 130, type: !77)
!4021 = !DILocation(line: 0, scope: !4011)
!4022 = !DILocation(line: 105, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4011, file: !680, line: 105, column: 7)
!4024 = !DILocation(line: 105, column: 7, scope: !4011)
!4025 = !DILocation(line: 117, column: 10, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4011, file: !680, line: 117, column: 7)
!4027 = !DILocation(line: 117, column: 7, scope: !4011)
!4028 = !DILocation(line: 130, column: 16, scope: !4011)
!4029 = !DILocation(line: 135, column: 11, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4011, file: !680, line: 135, column: 7)
!4031 = !DILocation(line: 135, column: 25, scope: !4030)
!4032 = !DILocation(line: 135, column: 30, scope: !4030)
!4033 = !DILocation(line: 135, column: 7, scope: !4011)
!4034 = !DILocalVariable(name: "ps", arg: 1, scope: !4035, file: !1751, line: 1135, type: !4014)
!4035 = distinct !DISubprogram(name: "mbszero", scope: !1751, file: !1751, line: 1135, type: !4036, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !4014}
!4038 = !{!4034}
!4039 = !DILocation(line: 0, scope: !4035, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 137, column: 5, scope: !4030)
!4041 = !DILocalVariable(name: "__dest", arg: 1, scope: !4042, file: !1760, line: 57, type: !75)
!4042 = distinct !DISubprogram(name: "memset", scope: !1760, file: !1760, line: 57, type: !1761, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4043)
!4043 = !{!4041, !4044, !4045}
!4044 = !DILocalVariable(name: "__ch", arg: 2, scope: !4042, file: !1760, line: 57, type: !53)
!4045 = !DILocalVariable(name: "__len", arg: 3, scope: !4042, file: !1760, line: 57, type: !77)
!4046 = !DILocation(line: 0, scope: !4042, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 1137, column: 3, scope: !4035, inlinedAt: !4040)
!4048 = !DILocation(line: 59, column: 10, scope: !4042, inlinedAt: !4047)
!4049 = !DILocation(line: 137, column: 5, scope: !4030)
!4050 = !DILocation(line: 138, column: 11, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4011, file: !680, line: 138, column: 7)
!4052 = !DILocation(line: 138, column: 7, scope: !4011)
!4053 = !DILocation(line: 139, column: 5, scope: !4051)
!4054 = !DILocation(line: 143, column: 26, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4011, file: !680, line: 143, column: 7)
!4056 = !DILocation(line: 143, column: 41, scope: !4055)
!4057 = !DILocation(line: 143, column: 7, scope: !4011)
!4058 = !DILocation(line: 145, column: 15, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !680, line: 145, column: 11)
!4060 = distinct !DILexicalBlock(scope: !4055, file: !680, line: 144, column: 5)
!4061 = !DILocation(line: 145, column: 11, scope: !4060)
!4062 = !DILocation(line: 146, column: 32, scope: !4059)
!4063 = !DILocation(line: 146, column: 16, scope: !4059)
!4064 = !DILocation(line: 146, column: 14, scope: !4059)
!4065 = !DILocation(line: 146, column: 9, scope: !4059)
!4066 = !DILocation(line: 286, column: 1, scope: !4011)
!4067 = !DISubprogram(name: "mbsinit", scope: !4068, file: !4068, line: 293, type: !4069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4068 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!53, !4071}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!4073 = distinct !DIAssignID()
!4074 = !DILocation(line: 0, scope: !782)
!4075 = !DILocation(line: 0, scope: !769)
!4076 = !DILocation(line: 77, column: 7, scope: !783)
!4077 = !DILocation(line: 77, column: 7, scope: !769)
!4078 = !DILocation(line: 80, column: 7, scope: !782)
!4079 = !DILocation(line: 80, column: 11, scope: !782)
!4080 = distinct !DIAssignID()
!4081 = !DILocalVariable(name: "g", arg: 1, scope: !4082, file: !766, line: 43, type: !776)
!4082 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !766, file: !766, line: 43, type: !4083, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!776, !776, !77}
!4085 = !{!4081, !4086}
!4086 = !DILocalVariable(name: "num", arg: 2, scope: !4082, file: !766, line: 43, type: !77)
!4087 = !DILocation(line: 0, scope: !4082, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 82, column: 18, scope: !782)
!4089 = !DILocalVariable(name: "ptr", arg: 1, scope: !4090, file: !3359, line: 2057, type: !75)
!4090 = distinct !DISubprogram(name: "rpl_realloc", scope: !3359, file: !3359, line: 2057, type: !3351, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4091)
!4091 = !{!4089, !4092}
!4092 = !DILocalVariable(name: "size", arg: 2, scope: !4090, file: !3359, line: 2057, type: !77)
!4093 = !DILocation(line: 0, scope: !4090, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 51, column: 10, scope: !4082, inlinedAt: !4088)
!4095 = !DILocation(line: 2059, column: 10, scope: !4090, inlinedAt: !4094)
!4096 = !DILocation(line: 83, column: 13, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !782, file: !766, line: 83, column: 11)
!4098 = !DILocation(line: 83, column: 11, scope: !782)
!4099 = !DILocation(line: 86, column: 7, scope: !782)
!4100 = !DILocation(line: 88, column: 31, scope: !786)
!4101 = !DILocation(line: 82, column: 14, scope: !782)
!4102 = !DILocation(line: 0, scope: !786)
!4103 = !DILocation(line: 91, column: 20, scope: !786)
!4104 = !DILocation(line: 95, column: 18, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !786, file: !766, line: 95, column: 15)
!4106 = !DILocation(line: 98, column: 43, scope: !786)
!4107 = !DILocation(line: 95, column: 22, scope: !4105)
!4108 = !DILocation(line: 96, column: 26, scope: !4105)
!4109 = distinct !DIAssignID()
!4110 = !DILocation(line: 96, column: 13, scope: !4105)
!4111 = !DILocation(line: 0, scope: !4082, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 98, column: 22, scope: !786)
!4113 = !DILocation(line: 45, column: 7, scope: !4114, inlinedAt: !4112)
!4114 = distinct !DILexicalBlock(scope: !4082, file: !766, line: 45, column: 7)
!4115 = !DILocation(line: 45, column: 7, scope: !4082, inlinedAt: !4112)
!4116 = !DILocation(line: 47, column: 7, scope: !4117, inlinedAt: !4112)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !766, line: 46, column: 5)
!4118 = !DILocation(line: 47, column: 13, scope: !4117, inlinedAt: !4112)
!4119 = !DILocation(line: 99, column: 15, scope: !786)
!4120 = !DILocation(line: 51, column: 26, scope: !4082, inlinedAt: !4112)
!4121 = !DILocation(line: 0, scope: !4090, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 51, column: 10, scope: !4082, inlinedAt: !4112)
!4123 = !DILocation(line: 2059, column: 24, scope: !4090, inlinedAt: !4122)
!4124 = !DILocation(line: 2059, column: 10, scope: !4090, inlinedAt: !4122)
!4125 = !DILocation(line: 99, column: 17, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !786, file: !766, line: 99, column: 15)
!4127 = !DILocation(line: 101, column: 15, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4126, file: !766, line: 100, column: 13)
!4129 = !DILocation(line: 102, column: 15, scope: !4128)
!4130 = !DILocation(line: 106, column: 17, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !786, file: !766, line: 106, column: 15)
!4132 = !DILocation(line: 106, column: 15, scope: !786)
!4133 = distinct !{!4133, !4099, !4134}
!4134 = !DILocation(line: 113, column: 9, scope: !782)
!4135 = !DILocation(line: 108, column: 23, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !766, line: 107, column: 13)
!4137 = !DILocation(line: 111, column: 15, scope: !4136)
!4138 = !DILocation(line: 114, column: 5, scope: !783)
!4139 = !DILocation(line: 120, column: 25, scope: !769)
!4140 = !DILocation(line: 125, column: 20, scope: !794)
!4141 = !DILocation(line: 125, column: 7, scope: !769)
!4142 = !DILocation(line: 127, column: 11, scope: !792)
!4143 = !DILocation(line: 127, column: 17, scope: !792)
!4144 = !DILocation(line: 127, column: 11, scope: !793)
!4145 = !DILocation(line: 0, scope: !4082, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 129, column: 22, scope: !791)
!4147 = !DILocation(line: 0, scope: !4090, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 51, column: 10, scope: !4082, inlinedAt: !4146)
!4149 = !DILocation(line: 2059, column: 10, scope: !4090, inlinedAt: !4148)
!4150 = !DILocation(line: 0, scope: !791)
!4151 = !DILocation(line: 130, column: 15, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !791, file: !766, line: 130, column: 15)
!4153 = !DILocation(line: 130, column: 15, scope: !791)
!4154 = !DILocation(line: 132, column: 23, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !766, line: 131, column: 13)
!4156 = !DILocation(line: 133, column: 18, scope: !4155)
!4157 = !DILocation(line: 134, column: 26, scope: !4155)
!4158 = !DILocation(line: 140, column: 20, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !769, file: !766, line: 140, column: 7)
!4160 = !DILocation(line: 140, column: 25, scope: !4159)
!4161 = !DILocation(line: 142, column: 38, scope: !769)
!4162 = !DILocation(line: 0, scope: !4082, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 142, column: 14, scope: !769)
!4164 = !DILocation(line: 51, column: 26, scope: !4082, inlinedAt: !4163)
!4165 = !DILocation(line: 0, scope: !4090, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 51, column: 10, scope: !4082, inlinedAt: !4163)
!4167 = !DILocation(line: 2059, column: 24, scope: !4090, inlinedAt: !4166)
!4168 = !DILocation(line: 2059, column: 10, scope: !4090, inlinedAt: !4166)
!4169 = !DILocation(line: 143, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !769, file: !766, line: 143, column: 7)
!4171 = !DILocation(line: 143, column: 7, scope: !769)
!4172 = !DILocation(line: 148, column: 46, scope: !769)
!4173 = !DILocation(line: 148, column: 39, scope: !769)
!4174 = !DILocation(line: 149, column: 39, scope: !769)
!4175 = !DILocation(line: 148, column: 15, scope: !769)
!4176 = !DILocation(line: 151, column: 10, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !769, file: !766, line: 151, column: 7)
!4178 = !DILocation(line: 151, column: 7, scope: !769)
!4179 = !DILocation(line: 154, column: 7, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !766, line: 152, column: 5)
!4181 = !DILocation(line: 155, column: 7, scope: !4180)
!4182 = !DILocation(line: 158, column: 17, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !769, file: !766, line: 158, column: 7)
!4184 = !DILocation(line: 160, column: 10, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4183, file: !766, line: 159, column: 5)
!4186 = !DILocation(line: 161, column: 9, scope: !4185)
!4187 = !DILocation(line: 162, column: 5, scope: !4185)
!4188 = !DILocation(line: 163, column: 11, scope: !769)
!4189 = !DILocation(line: 181, column: 9, scope: !799)
!4190 = !DILocation(line: 181, column: 7, scope: !769)
!4191 = !DILocation(line: 183, column: 21, scope: !798)
!4192 = !DILocation(line: 0, scope: !798)
!4193 = !DILocation(line: 184, column: 29, scope: !798)
!4194 = !DILocation(line: 0, scope: !802)
!4195 = !DILocation(line: 186, scope: !802)
!4196 = !DILocation(line: 186, column: 7, scope: !802)
!4197 = !DILocation(line: 188, column: 15, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !766, line: 188, column: 15)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !766, line: 187, column: 9)
!4200 = distinct !DILexicalBlock(scope: !802, file: !766, line: 186, column: 7)
!4201 = !DILocation(line: 188, column: 21, scope: !4198)
!4202 = !DILocation(line: 188, column: 30, scope: !4198)
!4203 = !DILocation(line: 189, column: 15, scope: !4198)
!4204 = !DILocation(line: 189, column: 13, scope: !4198)
!4205 = !DILocation(line: 191, column: 14, scope: !4198)
!4206 = !DILocation(line: 191, column: 18, scope: !4198)
!4207 = !DILocation(line: 186, column: 38, scope: !4200)
!4208 = distinct !{!4208, !4196, !4209, !941}
!4209 = !DILocation(line: 192, column: 9, scope: !802)
!4210 = !DILocation(line: 196, column: 1, scope: !769)
!4211 = !DISubprogram(name: "getgrouplist", scope: !1272, file: !1272, line: 186, type: !4212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!53, !80, !774, !4214, !321}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!4215 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !807, file: !807, line: 27, type: !3267, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4216)
!4216 = !{!4217, !4218, !4219, !4220}
!4217 = !DILocalVariable(name: "ptr", arg: 1, scope: !4215, file: !807, line: 27, type: !75)
!4218 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4215, file: !807, line: 27, type: !77)
!4219 = !DILocalVariable(name: "size", arg: 3, scope: !4215, file: !807, line: 27, type: !77)
!4220 = !DILocalVariable(name: "nbytes", scope: !4215, file: !807, line: 29, type: !77)
!4221 = !DILocation(line: 0, scope: !4215)
!4222 = !DILocation(line: 30, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4215, file: !807, line: 30, column: 7)
!4224 = !DILocation(line: 30, column: 7, scope: !4215)
!4225 = !DILocation(line: 32, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4223, file: !807, line: 31, column: 5)
!4227 = !DILocation(line: 32, column: 13, scope: !4226)
!4228 = !DILocation(line: 33, column: 7, scope: !4226)
!4229 = !DILocalVariable(name: "ptr", arg: 1, scope: !4230, file: !3359, line: 2057, type: !75)
!4230 = distinct !DISubprogram(name: "rpl_realloc", scope: !3359, file: !3359, line: 2057, type: !3351, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4231)
!4231 = !{!4229, !4232}
!4232 = !DILocalVariable(name: "size", arg: 2, scope: !4230, file: !3359, line: 2057, type: !77)
!4233 = !DILocation(line: 0, scope: !4230, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 37, column: 10, scope: !4215)
!4235 = !DILocation(line: 2059, column: 24, scope: !4230, inlinedAt: !4234)
!4236 = !DILocation(line: 2059, column: 10, scope: !4230, inlinedAt: !4234)
!4237 = !DILocation(line: 37, column: 3, scope: !4215)
!4238 = !DILocation(line: 38, column: 1, scope: !4215)
!4239 = distinct !DISubprogram(name: "hard_locale", scope: !698, file: !698, line: 28, type: !4240, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!133, !53}
!4242 = !{!4243, !4244}
!4243 = !DILocalVariable(name: "category", arg: 1, scope: !4239, file: !698, line: 28, type: !53)
!4244 = !DILocalVariable(name: "locale", scope: !4239, file: !698, line: 30, type: !4245)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4246)
!4246 = !{!4247}
!4247 = !DISubrange(count: 257)
!4248 = distinct !DIAssignID()
!4249 = !DILocation(line: 0, scope: !4239)
!4250 = !DILocation(line: 30, column: 3, scope: !4239)
!4251 = !DILocation(line: 32, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4239, file: !698, line: 32, column: 7)
!4253 = !DILocation(line: 32, column: 7, scope: !4239)
!4254 = !DILocalVariable(name: "__s1", arg: 1, scope: !4255, file: !907, line: 1359, type: !80)
!4255 = distinct !DISubprogram(name: "streq", scope: !907, file: !907, line: 1359, type: !908, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4256)
!4256 = !{!4254, !4257}
!4257 = !DILocalVariable(name: "__s2", arg: 2, scope: !4255, file: !907, line: 1359, type: !80)
!4258 = !DILocation(line: 0, scope: !4255, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 35, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4239, file: !698, line: 35, column: 7)
!4261 = !DILocation(line: 1361, column: 11, scope: !4255, inlinedAt: !4259)
!4262 = !DILocation(line: 1361, column: 10, scope: !4255, inlinedAt: !4259)
!4263 = !DILocation(line: 35, column: 29, scope: !4260)
!4264 = !DILocation(line: 0, scope: !4255, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 35, column: 32, scope: !4260)
!4266 = !DILocation(line: 1361, column: 11, scope: !4255, inlinedAt: !4265)
!4267 = !DILocation(line: 1361, column: 10, scope: !4255, inlinedAt: !4265)
!4268 = !DILocation(line: 35, column: 7, scope: !4239)
!4269 = !DILocation(line: 46, column: 3, scope: !4239)
!4270 = !DILocation(line: 47, column: 1, scope: !4239)
!4271 = distinct !DISubprogram(name: "setlocale_null_r", scope: !811, file: !811, line: 154, type: !4272, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!53, !53, !74, !77}
!4274 = !{!4275, !4276, !4277}
!4275 = !DILocalVariable(name: "category", arg: 1, scope: !4271, file: !811, line: 154, type: !53)
!4276 = !DILocalVariable(name: "buf", arg: 2, scope: !4271, file: !811, line: 154, type: !74)
!4277 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4271, file: !811, line: 154, type: !77)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 159, column: 10, scope: !4271)
!4280 = !DILocation(line: 159, column: 3, scope: !4271)
!4281 = distinct !DISubprogram(name: "setlocale_null", scope: !811, file: !811, line: 186, type: !4282, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!80, !53}
!4284 = !{!4285}
!4285 = !DILocalVariable(name: "category", arg: 1, scope: !4281, file: !811, line: 186, type: !53)
!4286 = !DILocation(line: 0, scope: !4281)
!4287 = !DILocation(line: 189, column: 10, scope: !4281)
!4288 = !DILocation(line: 189, column: 3, scope: !4281)
!4289 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !813, file: !813, line: 35, type: !4282, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4290)
!4290 = !{!4291, !4292}
!4291 = !DILocalVariable(name: "category", arg: 1, scope: !4289, file: !813, line: 35, type: !53)
!4292 = !DILocalVariable(name: "result", scope: !4289, file: !813, line: 37, type: !80)
!4293 = !DILocation(line: 0, scope: !4289)
!4294 = !DILocation(line: 37, column: 24, scope: !4289)
!4295 = !DILocation(line: 62, column: 3, scope: !4289)
!4296 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !813, file: !813, line: 66, type: !4272, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4297)
!4297 = !{!4298, !4299, !4300, !4301, !4302}
!4298 = !DILocalVariable(name: "category", arg: 1, scope: !4296, file: !813, line: 66, type: !53)
!4299 = !DILocalVariable(name: "buf", arg: 2, scope: !4296, file: !813, line: 66, type: !74)
!4300 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4296, file: !813, line: 66, type: !77)
!4301 = !DILocalVariable(name: "result", scope: !4296, file: !813, line: 111, type: !80)
!4302 = !DILocalVariable(name: "length", scope: !4303, file: !813, line: 125, type: !77)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !813, line: 124, column: 5)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !813, line: 113, column: 7)
!4305 = !DILocation(line: 0, scope: !4296)
!4306 = !DILocation(line: 0, scope: !4289, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 111, column: 24, scope: !4296)
!4308 = !DILocation(line: 37, column: 24, scope: !4289, inlinedAt: !4307)
!4309 = !DILocation(line: 113, column: 14, scope: !4304)
!4310 = !DILocation(line: 113, column: 7, scope: !4296)
!4311 = !DILocation(line: 116, column: 19, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !813, line: 116, column: 11)
!4313 = distinct !DILexicalBlock(scope: !4304, file: !813, line: 114, column: 5)
!4314 = !DILocation(line: 116, column: 11, scope: !4313)
!4315 = !DILocation(line: 120, column: 16, scope: !4312)
!4316 = !DILocation(line: 120, column: 9, scope: !4312)
!4317 = !DILocation(line: 125, column: 23, scope: !4303)
!4318 = !DILocation(line: 0, scope: !4303)
!4319 = !DILocation(line: 126, column: 18, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4303, file: !813, line: 126, column: 11)
!4321 = !DILocation(line: 126, column: 11, scope: !4303)
!4322 = !DILocation(line: 128, column: 39, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4320, file: !813, line: 127, column: 9)
!4324 = !DILocalVariable(name: "__dest", arg: 1, scope: !4325, file: !1760, line: 26, type: !3629)
!4325 = distinct !DISubprogram(name: "memcpy", scope: !1760, file: !1760, line: 26, type: !3627, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4326)
!4326 = !{!4324, !4327, !4328}
!4327 = !DILocalVariable(name: "__src", arg: 2, scope: !4325, file: !1760, line: 26, type: !1038)
!4328 = !DILocalVariable(name: "__len", arg: 3, scope: !4325, file: !1760, line: 26, type: !77)
!4329 = !DILocation(line: 0, scope: !4325, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 128, column: 11, scope: !4323)
!4331 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4330)
!4332 = !DILocation(line: 129, column: 11, scope: !4323)
!4333 = !DILocation(line: 133, column: 23, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !813, line: 133, column: 15)
!4335 = distinct !DILexicalBlock(scope: !4320, file: !813, line: 132, column: 9)
!4336 = !DILocation(line: 133, column: 15, scope: !4335)
!4337 = !DILocation(line: 138, column: 44, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4334, file: !813, line: 134, column: 13)
!4339 = !DILocation(line: 0, scope: !4325, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 138, column: 15, scope: !4338)
!4341 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4340)
!4342 = !DILocation(line: 139, column: 15, scope: !4338)
!4343 = !DILocation(line: 139, column: 32, scope: !4338)
!4344 = !DILocation(line: 140, column: 13, scope: !4338)
!4345 = !DILocation(line: 0, scope: !4304)
!4346 = !DILocation(line: 145, column: 1, scope: !4296)
