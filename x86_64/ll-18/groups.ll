; ModuleID = 'src/groups.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"groups\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@longopts = internal constant [3 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !47
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
@.str.2.5 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1, !dbg !334
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !339
@.str.4.3 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1, !dbg !341
@.str.25 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !343
@Version = dso_local local_unnamed_addr global ptr @.str.25, align 8, !dbg !346
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !350
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !363
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !355
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !357
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !359
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !361
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !365
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !371
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !402
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !373
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !392
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !394
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !396
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !398
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !400
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !404
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !406
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !411
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !416
@.str.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !422
@.str.1.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !424
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !426
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !457
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !460
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !462
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !467
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !469
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !471
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !473
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !475
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !477
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !479
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.59, ptr @.str.1.60, ptr @.str.2.61, ptr @.str.3.62, ptr @.str.4.63, ptr @.str.5.64, ptr @.str.6.65, ptr @.str.7.66, ptr @.str.8.67, ptr @.str.9.68, ptr null], align 16, !dbg !481
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !506
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !520
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !558
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !565
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !522
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !567
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !510
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !527
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !529
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !531
@.str.13.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !533
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !535
@.str.77 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !573
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !576
@.str.2.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !578
@.str.3.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !580
@.str.4.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !582
@.str.5.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !584
@.str.6.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !589
@.str.7.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !591
@.str.8.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !593
@.str.9.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.10.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !603
@.str.11.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !608
@.str.12.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !613
@.str.13.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !615
@.str.14.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !620
@.str.15.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !625
@.str.16.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !630
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !635
@.str.18.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !637
@.str.19.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !639
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !641
@.str.21.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !643
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !645
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !647
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !652
@exit_failure = dso_local global i32 1, align 4, !dbg !660
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !666
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !669
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !671
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !673
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !676
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !691

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !817 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !821, metadata !DIExpression()), !dbg !822
  %2 = icmp eq i32 %0, 0, !dbg !823
  br i1 %2, label %8, label %3, !dbg !825

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !826, !tbaa !828
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !826
  %6 = load ptr, ptr @program_name, align 8, !dbg !826, !tbaa !828
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !826
  br label %31, !dbg !826

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !832
  %10 = load ptr, ptr @program_name, align 8, !dbg !832, !tbaa !828
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !832
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !834
  %13 = load ptr, ptr @stdout, align 8, !dbg !834, !tbaa !828
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !834
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !835
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !835
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !836
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !837, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata !856, metadata !850, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr poison, metadata !849, metadata !DIExpression()), !dbg !854
  tail call void @emit_bug_reporting_address() #37, !dbg !857
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !858
  call void @llvm.dbg.value(metadata ptr %17, metadata !852, metadata !DIExpression()), !dbg !854
  %18 = icmp eq ptr %17, null, !dbg !859
  br i1 %18, label %26, label %19, !dbg !861

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #38, !dbg !862
  %21 = icmp eq i32 %20, 0, !dbg !862
  br i1 %21, label %26, label %22, !dbg !863

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !864
  %24 = load ptr, ptr @stdout, align 8, !dbg !864, !tbaa !828
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !864
  br label %26, !dbg !866

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !849, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !853, metadata !DIExpression()), !dbg !854
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !867
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #37, !dbg !867
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !868
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #37, !dbg !868
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !869
  unreachable, !dbg !869
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !870 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !874 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !880 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !883 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !123 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !127, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !887
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !888, !tbaa !889
  %3 = icmp eq i32 %2, -1, !dbg !891
  br i1 %3, label %4, label %16, !dbg !892

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #37, !dbg !893
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !129, metadata !DIExpression()), !dbg !894
  %6 = icmp eq ptr %5, null, !dbg !895
  br i1 %6, label %14, label %7, !dbg !896

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !897, !tbaa !898
  %9 = icmp eq i8 %8, 0, !dbg !897
  br i1 %9, label %14, label %10, !dbg !899

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !900, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !906, metadata !DIExpression()), !dbg !907
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #38, !dbg !909
  %12 = icmp eq i32 %11, 0, !dbg !910
  %13 = zext i1 %12 to i32, !dbg !899
  br label %14, !dbg !899

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !911, !tbaa !889
  br label %16, !dbg !912

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !913
  %18 = icmp eq i32 %17, 0, !dbg !913
  br i1 %18, label %22, label %19, !dbg !915

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !916, !tbaa !828
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !916
  br label %124, !dbg !918

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !132, metadata !DIExpression()), !dbg !887
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #38, !dbg !919
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !920
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !887
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !921
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !887
  %26 = icmp eq ptr %25, null, !dbg !922
  br i1 %26, label %54, label %27, !dbg !923

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !924
  br i1 %28, label %54, label %29, !dbg !925

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !926
  %30 = icmp ult ptr %24, %25, !dbg !927
  br i1 %30, label %31, label %54, !dbg !928

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !887
  %33 = load ptr, ptr %32, align 8, !tbaa !828
  br label %34, !dbg !928

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !926
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !929
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !926
  %38 = load i8, ptr %35, align 1, !dbg !929, !tbaa !898
  %39 = sext i8 %38 to i64, !dbg !929
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !929
  %41 = load i16, ptr %40, align 2, !dbg !929, !tbaa !930
  %42 = freeze i16 %41, !dbg !932
  %43 = lshr i16 %42, 13, !dbg !932
  %44 = and i16 %43, 1, !dbg !932
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !933
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !926
  %47 = icmp ult ptr %37, %25, !dbg !927
  %48 = icmp ult i64 %46, 2, !dbg !934
  %49 = select i1 %47, i1 %48, i1 false, !dbg !934
  br i1 %49, label %34, label %50, !dbg !928, !llvm.loop !935

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !937
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !939
  %53 = zext i1 %51 to i8, !dbg !939
  br label %54, !dbg !939

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !887
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !887
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !132, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !135, metadata !DIExpression()), !dbg !887
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #38, !dbg !940
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !141, metadata !DIExpression()), !dbg !887
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !142, metadata !DIExpression()), !dbg !887
  br label %59, !dbg !942

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !887
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !887
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !132, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !142, metadata !DIExpression()), !dbg !887
  %62 = load i8, ptr %60, align 1, !dbg !943, !tbaa !898
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !944

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !945
  %65 = load i8, ptr %64, align 1, !dbg !948, !tbaa !898
  %66 = icmp eq i8 %65, 45, !dbg !949
  %67 = select i1 %66, i8 0, i8 %61, !dbg !950
  br label %68, !dbg !950

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !887
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !132, metadata !DIExpression()), !dbg !887
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !951
  %71 = load ptr, ptr %70, align 8, !dbg !951, !tbaa !828
  %72 = sext i8 %62 to i64, !dbg !951
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !951
  %74 = load i16, ptr %73, align 2, !dbg !951, !tbaa !930
  %75 = and i16 %74, 8192, !dbg !951
  %76 = icmp eq i16 %75, 0, !dbg !951
  br i1 %76, label %92, label %77, !dbg !953

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !954
  br i1 %78, label %94, label %79, !dbg !957

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !958
  %81 = load i8, ptr %80, align 1, !dbg !958, !tbaa !898
  %82 = sext i8 %81 to i64, !dbg !958
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !958
  %84 = load i16, ptr %83, align 2, !dbg !958, !tbaa !930
  %85 = and i16 %84, 8192, !dbg !958
  %86 = icmp eq i16 %85, 0, !dbg !958
  br i1 %86, label %87, label %94, !dbg !959

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !960
  %89 = icmp ne i8 %88, 0, !dbg !960
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !962
  br i1 %91, label %92, label %94, !dbg !962

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !963
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !142, metadata !DIExpression()), !dbg !887
  br label %59, !dbg !942, !llvm.loop !964

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !966
  %96 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !828
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata !856, metadata !906, metadata !DIExpression()), !dbg !985
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !887
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !987
  %99 = icmp eq i32 %98, 0, !dbg !987
  br i1 %99, label %103, label %100, !dbg !989

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #38, !dbg !990
  %102 = icmp eq i32 %101, 0, !dbg !990
  br i1 %102, label %103, label %106, !dbg !991

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !992
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !992
  br label %109, !dbg !994

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !995
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !995
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !828
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !997
  %112 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !828
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %112), !dbg !998
  %114 = ptrtoint ptr %60 to i64, !dbg !999
  %115 = sub i64 %114, %95, !dbg !999
  %116 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !828
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !999
  %118 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !828
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !1000
  %120 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !828
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %120), !dbg !1001
  %122 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !828
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1002
  br label %124, !dbg !1003

124:                                              ; preds = %109, %19
  ret void, !dbg !1003
}

; Function Attrs: nounwind
declare !dbg !1004 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1008 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1012 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1014 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1017 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1020 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1023 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1026 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1032 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1033 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1039 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1044, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1045, metadata !DIExpression()), !dbg !1076
  %3 = load ptr, ptr %1, align 8, !dbg !1077, !tbaa !828
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1078
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !1079
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !1080
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !1081
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1082
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1046, metadata !DIExpression()), !dbg !1076
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !1084

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #41, !dbg !1085
  unreachable, !dbg !1085

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !1088, !tbaa !828
  %12 = load ptr, ptr @Version, align 8, !dbg !1088, !tbaa !828
  %13 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !1088
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #37, !dbg !1088
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef null) #37, !dbg !1088
  tail call void @exit(i32 noundef 0) #39, !dbg !1088
  unreachable, !dbg !1088

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #41, !dbg !1089
  unreachable, !dbg !1089

16:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1076
  %17 = load i32, ptr @optind, align 4, !dbg !1090, !tbaa !889
  %18 = icmp eq i32 %17, %0, !dbg !1091
  br i1 %18, label %21, label %19, !dbg !1092

19:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1076
  %20 = icmp slt i32 %17, %0, !dbg !1093
  br i1 %20, label %59, label %118, !dbg !1094

21:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1048, metadata !DIExpression()), !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1053, metadata !DIExpression()), !dbg !1095
  %22 = tail call ptr @__errno_location() #40, !dbg !1096
  store i32 0, ptr %22, align 4, !dbg !1097, !tbaa !889
  %23 = tail call i32 @getuid() #37, !dbg !1098
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !1054, metadata !DIExpression()), !dbg !1095
  %24 = icmp eq i32 %23, -1, !dbg !1099
  br i1 %24, label %25, label %30, !dbg !1101

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 4, !dbg !1102, !tbaa !889
  %27 = icmp eq i32 %26, 0, !dbg !1102
  br i1 %27, label %30, label %28, !dbg !1103

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !1104
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %26, ptr noundef %29) #37, !dbg !1104
  unreachable, !dbg !1104

30:                                               ; preds = %25, %21
  store i32 0, ptr %22, align 4, !dbg !1105, !tbaa !889
  %31 = tail call i32 @getegid() #37, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1055, metadata !DIExpression()), !dbg !1095
  %32 = icmp eq i32 %31, -1, !dbg !1107
  br i1 %32, label %33, label %38, !dbg !1109

33:                                               ; preds = %30
  %34 = load i32, ptr %22, align 4, !dbg !1110, !tbaa !889
  %35 = icmp eq i32 %34, 0, !dbg !1110
  br i1 %35, label %38, label %36, !dbg !1111

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1112
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %34, ptr noundef %37) #37, !dbg !1112
  unreachable, !dbg !1112

38:                                               ; preds = %33, %30
  store i32 0, ptr %22, align 4, !dbg !1113, !tbaa !889
  %39 = tail call i32 @getgid() #37, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1056, metadata !DIExpression()), !dbg !1095
  %40 = icmp eq i32 %39, -1, !dbg !1115
  br i1 %40, label %41, label %46, !dbg !1117

41:                                               ; preds = %38
  %42 = load i32, ptr %22, align 4, !dbg !1118, !tbaa !889
  %43 = icmp eq i32 %42, 0, !dbg !1118
  br i1 %43, label %46, label %44, !dbg !1119

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1120
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %45) #37, !dbg !1120
  unreachable, !dbg !1120

46:                                               ; preds = %41, %38
  %47 = tail call zeroext i1 @print_group_list(ptr noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef zeroext true, i8 noundef signext 32) #37, !dbg !1121
  %48 = zext i1 %47 to i8, !dbg !1123
  tail call void @llvm.dbg.value(metadata i8 %48, metadata !1047, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 10, metadata !1124, metadata !DIExpression()), !dbg !1130
  %49 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !828
  %50 = getelementptr inbounds %struct._IO_FILE, ptr %49, i64 0, i32 5, !dbg !1132
  %51 = load ptr, ptr %50, align 8, !dbg !1132, !tbaa !1133
  %52 = getelementptr inbounds %struct._IO_FILE, ptr %49, i64 0, i32 6, !dbg !1132
  %53 = load ptr, ptr %52, align 8, !dbg !1132, !tbaa !1136
  %54 = icmp ult ptr %51, %53, !dbg !1132
  br i1 %54, label %57, label %55, !dbg !1132, !prof !1137

55:                                               ; preds = %46
  %56 = tail call i32 @__overflow(ptr noundef nonnull %49, i32 noundef 10) #37, !dbg !1132
  br label %118, !dbg !1132

57:                                               ; preds = %46
  %58 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1132
  store ptr %58, ptr %50, align 8, !dbg !1132, !tbaa !1133
  store i8 10, ptr %51, align 1, !dbg !1132, !tbaa !898
  br label %118, !dbg !1132

59:                                               ; preds = %19, %113
  %60 = phi i32 [ %116, %113 ], [ %17, %19 ]
  %61 = phi i8 [ %114, %113 ], [ 1, %19 ]
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !1047, metadata !DIExpression()), !dbg !1076
  %62 = sext i32 %60 to i64, !dbg !1138
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1138
  %64 = load ptr, ptr %63, align 8, !dbg !1138, !tbaa !828
  %65 = tail call ptr @getpwnam(ptr noundef %64), !dbg !1139
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1057, metadata !DIExpression()), !dbg !1140
  %66 = icmp eq ptr %65, null, !dbg !1141
  br i1 %66, label %67, label %74, !dbg !1143

67:                                               ; preds = %59
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1144
  %69 = load i32, ptr @optind, align 4, !dbg !1144, !tbaa !889
  %70 = sext i32 %69 to i64, !dbg !1144
  %71 = getelementptr inbounds ptr, ptr %1, i64 %70, !dbg !1144
  %72 = load ptr, ptr %71, align 8, !dbg !1144, !tbaa !828
  %73 = tail call ptr @quote(ptr noundef %72) #37, !dbg !1144
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %68, ptr noundef %73) #37, !dbg !1144
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1076
  br label %113, !dbg !1146

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.passwd, ptr %65, i64 0, i32 2, !dbg !1147
  %76 = load i32, ptr %75, align 8, !dbg !1147, !tbaa !1148
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1073, metadata !DIExpression()), !dbg !1140
  %77 = getelementptr inbounds %struct.passwd, ptr %65, i64 0, i32 3, !dbg !1150
  %78 = load i32, ptr %77, align 4, !dbg !1150, !tbaa !1151
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1074, metadata !DIExpression()), !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1075, metadata !DIExpression()), !dbg !1140
  %79 = load i32, ptr @optind, align 4, !dbg !1152, !tbaa !889
  %80 = sext i32 %79 to i64, !dbg !1152
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80, !dbg !1152
  %82 = load ptr, ptr %81, align 8, !dbg !1152, !tbaa !828
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef %82) #37, !dbg !1152
  %84 = load i32, ptr @optind, align 4, !dbg !1153, !tbaa !889
  %85 = sext i32 %84 to i64, !dbg !1155
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85, !dbg !1155
  %87 = load ptr, ptr %86, align 8, !dbg !1155, !tbaa !828
  %88 = tail call zeroext i1 @print_group_list(ptr noundef %87, i32 noundef %76, i32 noundef %78, i32 noundef %78, i1 noundef zeroext true, i8 noundef signext 32) #37, !dbg !1156
  %89 = select i1 %88, i8 %61, i8 0, !dbg !1157
  tail call void @llvm.dbg.value(metadata i8 %89, metadata !1047, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 10, metadata !1124, metadata !DIExpression()), !dbg !1158
  %90 = load ptr, ptr @stdout, align 8, !dbg !1160, !tbaa !828
  %91 = getelementptr inbounds %struct._IO_FILE, ptr %90, i64 0, i32 5, !dbg !1160
  %92 = load ptr, ptr %91, align 8, !dbg !1160, !tbaa !1133
  %93 = getelementptr inbounds %struct._IO_FILE, ptr %90, i64 0, i32 6, !dbg !1160
  %94 = load ptr, ptr %93, align 8, !dbg !1160, !tbaa !1136
  %95 = icmp ult ptr %92, %94, !dbg !1160
  br i1 %95, label %98, label %96, !dbg !1160, !prof !1137

96:                                               ; preds = %74
  %97 = tail call i32 @__overflow(ptr noundef nonnull %90, i32 noundef 10) #37, !dbg !1160
  br label %100, !dbg !1160

98:                                               ; preds = %74
  %99 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !1160
  store ptr %99, ptr %91, align 8, !dbg !1160, !tbaa !1133
  store i8 10, ptr %92, align 1, !dbg !1160, !tbaa !898
  br label %100, !dbg !1160

100:                                              ; preds = %96, %98
  %101 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !828
  tail call void @llvm.dbg.value(metadata ptr %101, metadata !1163, metadata !DIExpression()), !dbg !1168
  %102 = load i32, ptr %101, align 8, !dbg !1170, !tbaa !1171
  %103 = and i32 %102, 32, !dbg !1161
  %104 = icmp eq i32 %103, 0, !dbg !1161
  br i1 %104, label %113, label %105, !dbg !1172

105:                                              ; preds = %100
  %106 = tail call ptr @__errno_location() #40, !dbg !1173
  %107 = load i32, ptr %106, align 4, !dbg !1173, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %107, metadata !1176, metadata !DIExpression()), !dbg !1178
  %108 = tail call i32 @fflush_unlocked(ptr noundef nonnull %101) #37, !dbg !1179
  %109 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !828
  %110 = tail call i32 @fpurge(ptr noundef %109) #37, !dbg !1181
  %111 = load ptr, ptr @stdout, align 8, !dbg !1182, !tbaa !828
  tail call void @clearerr_unlocked(ptr noundef %111) #37, !dbg !1182
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !1183
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %107, ptr noundef %112) #37, !dbg !1183
  unreachable, !dbg !1183

113:                                              ; preds = %100, %67
  %114 = phi i8 [ 0, %67 ], [ %89, %100 ], !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 %114, metadata !1047, metadata !DIExpression()), !dbg !1076
  %115 = load i32, ptr @optind, align 4, !dbg !1184, !tbaa !889
  %116 = add nsw i32 %115, 1, !dbg !1184
  store i32 %116, ptr @optind, align 4, !dbg !1184, !tbaa !889
  %117 = icmp slt i32 %116, %0, !dbg !1093
  br i1 %117, label %59, label %118, !dbg !1094, !llvm.loop !1185

118:                                              ; preds = %113, %19, %57, %55
  %119 = phi i8 [ %48, %55 ], [ %48, %57 ], [ 1, %19 ], [ %114, %113 ], !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 %119, metadata !1047, metadata !DIExpression()), !dbg !1076
  %120 = and i8 %119, 1, !dbg !1188
  %121 = xor i8 %120, 1, !dbg !1188
  %122 = zext nneg i8 %121 to i32, !dbg !1188
  ret i32 %122, !dbg !1189
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
define dso_local zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #10 !dbg !1225 {
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
  br i1 %8, label %13, label %9, !dbg !1257

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #37, !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1236, metadata !DIExpression()), !dbg !1254
  %11 = icmp ne ptr %10, null, !dbg !1260
  %12 = zext i1 %11 to i8, !dbg !1262
  br label %13, !dbg !1262

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1254
  %15 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1254
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1236, metadata !DIExpression()), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %2, metadata !1263, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1286
  br i1 %4, label %19, label %16, !dbg !1289

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1290
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1286
  %18 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %17) #37, !dbg !1290
  br label %29, !dbg !1292

19:                                               ; preds = %13
  %20 = tail call ptr @getgrgid(i32 noundef %2) #37, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %20, metadata !1269, metadata !DIExpression()), !dbg !1286
  %21 = icmp eq ptr %20, null, !dbg !1294
  br i1 %21, label %25, label %22, !dbg !1295

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1286
  %23 = load ptr, ptr %20, align 8, !dbg !1296, !tbaa !1297
  %24 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %23) #37, !dbg !1296
  br label %29, !dbg !1292

25:                                               ; preds = %19
  %26 = zext i32 %2 to i64, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %26, metadata !1279, metadata !DIExpression()), !dbg !1300
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #37, !dbg !1301
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %27, i64 noundef %26) #37, !dbg !1301
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1286
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %26) #37, !dbg !1290
  br label %29

29:                                               ; preds = %22, %16, %25
  %30 = phi i8 [ 0, %25 ], [ %14, %16 ], [ %14, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %30, metadata !1235, metadata !DIExpression()), !dbg !1254
  %31 = icmp eq i32 %3, %2, !dbg !1302
  br i1 %31, label %58, label %32, !dbg !1304

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1308
  %33 = load ptr, ptr @stdout, align 8, !dbg !1311, !tbaa !828
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1311
  %35 = load ptr, ptr %34, align 8, !dbg !1311, !tbaa !1133
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1311
  %37 = load ptr, ptr %36, align 8, !dbg !1311, !tbaa !1136
  %38 = icmp ult ptr %35, %37, !dbg !1311
  br i1 %38, label %42, label %39, !dbg !1311, !prof !1137

39:                                               ; preds = %32
  %40 = zext i8 %5 to i32, !dbg !1312
  call void @llvm.dbg.value(metadata i8 %5, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1308
  %41 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %40) #37, !dbg !1311
  br label %44, !dbg !1311

42:                                               ; preds = %32
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1311
  store ptr %43, ptr %34, align 8, !dbg !1311, !tbaa !1133
  store i8 %5, ptr %35, align 1, !dbg !1311, !tbaa !898
  br label %44, !dbg !1311

44:                                               ; preds = %39, %42
  call void @llvm.dbg.value(metadata i32 %3, metadata !1263, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1313
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1313
  br i1 %4, label %48, label %45, !dbg !1316

45:                                               ; preds = %44
  %46 = zext i32 %3 to i64, !dbg !1317
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1313
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %46) #37, !dbg !1317
  br label %58, !dbg !1318

48:                                               ; preds = %44
  %49 = tail call ptr @getgrgid(i32 noundef %3) #37, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %49, metadata !1269, metadata !DIExpression()), !dbg !1313
  %50 = icmp eq ptr %49, null, !dbg !1320
  br i1 %50, label %54, label %51, !dbg !1321

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata ptr %49, metadata !1269, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1313
  %52 = load ptr, ptr %49, align 8, !dbg !1322, !tbaa !1297
  %53 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %52) #37, !dbg !1322
  br label %58, !dbg !1318

54:                                               ; preds = %48
  %55 = zext i32 %3 to i64, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %55, metadata !1279, metadata !DIExpression()), !dbg !1324
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #37, !dbg !1325
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, i64 noundef %55) #37, !dbg !1325
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1313
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %55) #37, !dbg !1317
  br label %58

58:                                               ; preds = %54, %45, %51, %29
  %59 = phi i8 [ %30, %29 ], [ 0, %54 ], [ %30, %45 ], [ %30, %51 ], !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 %59, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37, !dbg !1326
  %60 = icmp eq ptr %15, null, !dbg !1327
  br i1 %60, label %64, label %61, !dbg !1327

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.passwd, ptr %15, i64 0, i32 3, !dbg !1328
  %63 = load i32, ptr %62, align 4, !dbg !1328, !tbaa !1151
  br label %64, !dbg !1327

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %3, %58 ], !dbg !1327
  %66 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %7) #37, !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1249, metadata !DIExpression()), !dbg !1253
  %67 = icmp sgt i32 %66, -1, !dbg !1330
  br i1 %67, label %68, label %73, !dbg !1332

68:                                               ; preds = %64
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1250, metadata !DIExpression()), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 %59, metadata !1235, metadata !DIExpression()), !dbg !1254
  %69 = icmp eq i32 %66, 0, !dbg !1334
  br i1 %69, label %81, label %70, !dbg !1336

70:                                               ; preds = %68
  %71 = zext i8 %5 to i32
  %72 = zext nneg i32 %66 to i64, !dbg !1334
  br label %84, !dbg !1336

73:                                               ; preds = %64
  %74 = tail call ptr @__errno_location() #40, !dbg !1337
  %75 = load i32, ptr %74, align 4, !dbg !1337, !tbaa !889
  br i1 %8, label %79, label %76, !dbg !1340

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !1341
  %78 = call ptr @quote(ptr noundef nonnull %0) #37, !dbg !1341
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %77, ptr noundef %78) #37, !dbg !1341
  br label %125, !dbg !1343

79:                                               ; preds = %73
  %80 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1344
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %80) #37, !dbg !1344
  br label %125

81:                                               ; preds = %121, %68
  %82 = phi i8 [ %59, %68 ], [ %122, %121 ], !dbg !1346
  %83 = load ptr, ptr %7, align 8, !dbg !1347, !tbaa !828
  call void @free(ptr noundef %83) #37, !dbg !1348
  br label %125, !dbg !1349

84:                                               ; preds = %70, %121
  %85 = phi i64 [ 0, %70 ], [ %123, %121 ]
  %86 = phi i8 [ %59, %70 ], [ %122, %121 ]
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1250, metadata !DIExpression()), !dbg !1333
  tail call void @llvm.dbg.value(metadata i8 %86, metadata !1235, metadata !DIExpression()), !dbg !1254
  %87 = load ptr, ptr %7, align 8, !dbg !1350, !tbaa !828
  %88 = getelementptr inbounds i32, ptr %87, i64 %85, !dbg !1350
  %89 = load i32, ptr %88, align 4, !dbg !1350, !tbaa !889
  %90 = icmp eq i32 %89, %2, !dbg !1352
  %91 = icmp eq i32 %89, %3
  %92 = or i1 %90, %91, !dbg !1353
  br i1 %92, label %121, label %93, !dbg !1353

93:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8 %5, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1354
  %94 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !828
  %95 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 5, !dbg !1357
  %96 = load ptr, ptr %95, align 8, !dbg !1357, !tbaa !1133
  %97 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 6, !dbg !1357
  %98 = load ptr, ptr %97, align 8, !dbg !1357, !tbaa !1136
  %99 = icmp ult ptr %96, %98, !dbg !1357
  br i1 %99, label %102, label %100, !dbg !1357, !prof !1137

100:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i8 %5, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1354
  %101 = call i32 @__overflow(ptr noundef nonnull %94, i32 noundef %71) #37, !dbg !1357
  br label %104, !dbg !1357

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1357
  store ptr %103, ptr %95, align 8, !dbg !1357, !tbaa !1133
  store i8 %5, ptr %96, align 1, !dbg !1357, !tbaa !898
  br label %104, !dbg !1357

104:                                              ; preds = %100, %102
  %105 = load ptr, ptr %7, align 8, !dbg !1358, !tbaa !828
  %106 = getelementptr inbounds i32, ptr %105, i64 %85, !dbg !1358
  %107 = load i32, ptr %106, align 4, !dbg !1358, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %107, metadata !1263, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i1 %4, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1360
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1360
  br i1 %4, label %111, label %108, !dbg !1362

108:                                              ; preds = %104
  %109 = zext i32 %107 to i64, !dbg !1363
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1360
  %110 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %109) #37, !dbg !1363
  br label %121, !dbg !1364

111:                                              ; preds = %104
  %112 = call ptr @getgrgid(i32 noundef %107) #37, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %112, metadata !1269, metadata !DIExpression()), !dbg !1360
  %113 = icmp eq ptr %112, null, !dbg !1366
  br i1 %113, label %117, label %114, !dbg !1367

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %112, metadata !1269, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1360
  %115 = load ptr, ptr %112, align 8, !dbg !1368, !tbaa !1297
  %116 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %115) #37, !dbg !1368
  br label %121, !dbg !1364

117:                                              ; preds = %111
  %118 = zext i32 %107 to i64, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %118, metadata !1279, metadata !DIExpression()), !dbg !1370
  %119 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #37, !dbg !1371
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %119, i64 noundef %118) #37, !dbg !1371
  call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1360
  %120 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %118) #37, !dbg !1363
  br label %121

121:                                              ; preds = %117, %108, %114, %84
  %122 = phi i8 [ %86, %84 ], [ 0, %117 ], [ %86, %108 ], [ %86, %114 ], !dbg !1254
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1235, metadata !DIExpression()), !dbg !1254
  %123 = add nuw nsw i64 %85, 1, !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1250, metadata !DIExpression()), !dbg !1333
  %124 = icmp eq i64 %123, %72, !dbg !1334
  br i1 %124, label %81, label %84, !dbg !1336, !llvm.loop !1373

125:                                              ; preds = %76, %79, %81
  %126 = phi i8 [ %82, %81 ], [ %59, %79 ], [ %59, %76 ], !dbg !1346
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !1235, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37, !dbg !1349
  %127 = and i8 %126, 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %67, i1 %128, i1 false
  ret i1 %129, !dbg !1375
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

declare !dbg !1376 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1379 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1382 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @print_group(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #10 !dbg !1264 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1385
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1385
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1385
  br i1 %1, label %5, label %3, !dbg !1386

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1387
  br label %14, !dbg !1386

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #37, !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1269, metadata !DIExpression()), !dbg !1385
  %7 = icmp eq ptr %6, null, !dbg !1389
  br i1 %7, label %8, label %11, !dbg !1390

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1391
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1279, metadata !DIExpression()), !dbg !1392
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #37, !dbg !1393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #37, !dbg !1393
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1385
  br label %14, !dbg !1394

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1269, metadata !DIExpression()), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1385
  %12 = load ptr, ptr %6, align 8, !dbg !1395, !tbaa !1297
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #37, !dbg !1395
  br label %18, !dbg !1395

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1387
  %16 = xor i1 %1, true, !dbg !1387
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1269, metadata !DIExpression()), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1385
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %15) #37, !dbg !1387
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1397 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1399, metadata !DIExpression()), !dbg !1400
  store ptr %0, ptr @file_name, align 8, !dbg !1401, !tbaa !828
  ret void, !dbg !1402
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1403 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1409, !tbaa !1410
  ret void, !dbg !1412
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1413 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1418, !tbaa !828
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1419
  %3 = icmp eq i32 %2, 0, !dbg !1420
  br i1 %3, label %22, label %4, !dbg !1421

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1422, !tbaa !1410, !range !1423, !noundef !856
  %6 = icmp eq i8 %5, 0, !dbg !1422
  br i1 %6, label %11, label %7, !dbg !1424

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1425
  %9 = load i32, ptr %8, align 4, !dbg !1425, !tbaa !889
  %10 = icmp eq i32 %9, 32, !dbg !1426
  br i1 %10, label %22, label %11, !dbg !1427

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #37, !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1415, metadata !DIExpression()), !dbg !1429
  %13 = load ptr, ptr @file_name, align 8, !dbg !1430, !tbaa !828
  %14 = icmp eq ptr %13, null, !dbg !1430
  %15 = tail call ptr @__errno_location() #40, !dbg !1432
  %16 = load i32, ptr %15, align 4, !dbg !1432, !tbaa !889
  br i1 %14, label %19, label %17, !dbg !1433

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1434
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #37, !dbg !1434
  br label %20, !dbg !1434

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #37, !dbg !1435
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1436, !tbaa !889
  tail call void @_exit(i32 noundef %21) #39, !dbg !1437
  unreachable, !dbg !1437

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1438, !tbaa !828
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1440
  %25 = icmp eq i32 %24, 0, !dbg !1441
  br i1 %25, label %28, label %26, !dbg !1442

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1443, !tbaa !889
  tail call void @_exit(i32 noundef %27) #39, !dbg !1444
  unreachable, !dbg !1444

28:                                               ; preds = %22
  ret void, !dbg !1445
}

; Function Attrs: noreturn
declare !dbg !1446 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1447 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1451, metadata !DIExpression()), !dbg !1455
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1452, metadata !DIExpression()), !dbg !1455
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1453, metadata !DIExpression()), !dbg !1455
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !1455
  tail call fastcc void @flush_stdout(), !dbg !1456
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1457, !tbaa !828
  %6 = icmp eq ptr %5, null, !dbg !1457
  br i1 %6, label %8, label %7, !dbg !1459

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1460
  br label %12, !dbg !1460

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1461, !tbaa !828
  %10 = tail call ptr @getprogname() #38, !dbg !1461
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %10) #37, !dbg !1461
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1463
  ret void, !dbg !1464
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1465 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 1, metadata !1469, metadata !DIExpression()), !dbg !1472
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1475
  %2 = icmp slt i32 %1, 0, !dbg !1476
  br i1 %2, label %6, label %3, !dbg !1477

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1478, !tbaa !828
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1478
  br label %6, !dbg !1478

6:                                                ; preds = %3, %0
  ret void, !dbg !1479
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1480 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1486
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1482, metadata !DIExpression()), !dbg !1487
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1487
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1484, metadata !DIExpression()), !dbg !1487
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1485, metadata !DIExpression()), !dbg !1487
  %6 = load ptr, ptr @stderr, align 8, !dbg !1488, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %6, metadata !1489, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %2, metadata !1529, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %3, metadata !1530, metadata !DIExpression()), !dbg !1531
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1533
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1534, !tbaa !889
  %9 = add i32 %8, 1, !dbg !1534
  store i32 %9, ptr @error_message_count, align 4, !dbg !1534, !tbaa !889
  %10 = icmp eq i32 %1, 0, !dbg !1535
  br i1 %10, label %20, label %11, !dbg !1537

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1538, metadata !DIExpression(), metadata !1486, metadata ptr %5, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %1, metadata !1541, metadata !DIExpression()), !dbg !1546
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1548
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %12, metadata !1542, metadata !DIExpression()), !dbg !1546
  %13 = icmp eq ptr %12, null, !dbg !1550
  br i1 %13, label %14, label %16, !dbg !1552

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #37, !dbg !1553
  call void @llvm.dbg.value(metadata ptr %15, metadata !1542, metadata !DIExpression()), !dbg !1546
  br label %16, !dbg !1554

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1546
  call void @llvm.dbg.value(metadata ptr %17, metadata !1542, metadata !DIExpression()), !dbg !1546
  %18 = load ptr, ptr @stderr, align 8, !dbg !1555, !tbaa !828
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %17) #37, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1556
  br label %20, !dbg !1557

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1558, !tbaa !828
  call void @llvm.dbg.value(metadata i32 10, metadata !1559, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %21, metadata !1564, metadata !DIExpression()), !dbg !1565
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1567
  %23 = load ptr, ptr %22, align 8, !dbg !1567, !tbaa !1133
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1567
  %25 = load ptr, ptr %24, align 8, !dbg !1567, !tbaa !1136
  %26 = icmp ult ptr %23, %25, !dbg !1567
  br i1 %26, label %29, label %27, !dbg !1567, !prof !1137

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1567
  br label %31, !dbg !1567

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1567
  store ptr %30, ptr %22, align 8, !dbg !1567, !tbaa !1133
  store i8 10, ptr %23, align 1, !dbg !1567, !tbaa !898
  br label %31, !dbg !1567

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1568, !tbaa !828
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1568
  %34 = icmp eq i32 %0, 0, !dbg !1569
  br i1 %34, label %36, label %35, !dbg !1571

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1572
  unreachable, !dbg !1572

36:                                               ; preds = %31
  ret void, !dbg !1573
}

declare !dbg !1574 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1577 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1580 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1584 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1591, metadata !DIExpression(), metadata !1597, metadata ptr %4, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1588, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1589, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1598
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1599
  call void @llvm.va_start(ptr nonnull %4), !dbg !1600
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1601
  call void @llvm.va_end(ptr nonnull %4), !dbg !1602
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !375 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !386, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !387, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !388, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !389, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !390, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !391, metadata !DIExpression()), !dbg !1604
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1605, !tbaa !889
  %8 = icmp eq i32 %7, 0, !dbg !1605
  br i1 %8, label %23, label %9, !dbg !1607

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1608, !tbaa !889
  %11 = icmp eq i32 %10, %3, !dbg !1611
  br i1 %11, label %12, label %22, !dbg !1612

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1613, !tbaa !828
  %14 = icmp eq ptr %13, %2, !dbg !1614
  br i1 %14, label %36, label %15, !dbg !1615

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1616
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1617
  br i1 %18, label %19, label %22, !dbg !1617

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1618
  %21 = icmp eq i32 %20, 0, !dbg !1619
  br i1 %21, label %36, label %22, !dbg !1620

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1621, !tbaa !828
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1622, !tbaa !889
  br label %23, !dbg !1623

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1624
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1625, !tbaa !828
  %25 = icmp eq ptr %24, null, !dbg !1625
  br i1 %25, label %27, label %26, !dbg !1627

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1628
  br label %31, !dbg !1628

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1629, !tbaa !828
  %29 = tail call ptr @getprogname() #38, !dbg !1629
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %29) #37, !dbg !1629
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1631, !tbaa !828
  %33 = icmp eq ptr %2, null, !dbg !1631
  %34 = select i1 %33, ptr @.str.3.39, ptr @.str.2.40, !dbg !1631
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1631
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1632
  br label %36, !dbg !1633

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1633
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1634 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1643, metadata !DIExpression(), metadata !1644, metadata ptr %6, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1638, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1639, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1640, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1641, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1646
  call void @llvm.va_start(ptr nonnull %6), !dbg !1647
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1648
  call void @llvm.va_end(ptr nonnull %6), !dbg !1649
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1650
  ret void, !dbg !1650
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1651 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1689, metadata !DIExpression()), !dbg !1690
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !1691
  ret i32 0, !dbg !1692
}

; Function Attrs: nounwind
declare !dbg !1693 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1697 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1700, !tbaa !828
  ret ptr %1, !dbg !1701
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1704, metadata !DIExpression()), !dbg !1707
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1708
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1705, metadata !DIExpression()), !dbg !1707
  %3 = icmp eq ptr %2, null, !dbg !1709
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1709
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1709
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !1707
  %6 = ptrtoint ptr %5 to i64, !dbg !1710
  %7 = ptrtoint ptr %0 to i64, !dbg !1710
  %8 = sub i64 %6, %7, !dbg !1710
  %9 = icmp sgt i64 %8, 6, !dbg !1712
  br i1 %9, label %10, label %19, !dbg !1713

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %11, metadata !1715, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1720, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i64 7, metadata !1721, metadata !DIExpression()), !dbg !1722
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.55, i64 7), !dbg !1724
  %13 = icmp eq i32 %12, 0, !dbg !1725
  br i1 %13, label %14, label %19, !dbg !1726

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !1707
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.56, i64 noundef 3) #38, !dbg !1727
  %16 = icmp eq i32 %15, 0, !dbg !1730
  %17 = select i1 %16, i64 3, i64 0, !dbg !1731
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1731
  br label %19, !dbg !1731

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1706, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1704, metadata !DIExpression()), !dbg !1707
  store ptr %20, ptr @program_name, align 8, !dbg !1732, !tbaa !828
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1733, !tbaa !828
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1734, !tbaa !828
  ret void, !dbg !1735
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1736 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !428 {
  %3 = alloca i32, align 4, !DIAssignID !1737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !438, metadata !DIExpression(), metadata !1737, metadata ptr %3, metadata !DIExpression()), !dbg !1738
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1739
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !1739, metadata ptr %4, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !435, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !436, metadata !DIExpression()), !dbg !1738
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1740
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !437, metadata !DIExpression()), !dbg !1738
  %6 = icmp eq ptr %5, %0, !dbg !1741
  br i1 %6, label %7, label %14, !dbg !1743

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1744
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %4, metadata !1746, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata ptr %4, metadata !1755, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 8, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i64 0, ptr %4, align 8, !dbg !1765
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1766
  %9 = icmp eq i64 %8, 2, !dbg !1768
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1769
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1738
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1770
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1770
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1738
  ret ptr %15, !dbg !1770
}

; Function Attrs: nounwind
declare !dbg !1771 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1782, metadata !DIExpression()), !dbg !1785
  %2 = tail call ptr @__errno_location() #40, !dbg !1786
  %3 = load i32, ptr %2, align 4, !dbg !1786, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1783, metadata !DIExpression()), !dbg !1785
  %4 = icmp eq ptr %0, null, !dbg !1787
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1787
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1788
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1784, metadata !DIExpression()), !dbg !1785
  store i32 %3, ptr %2, align 4, !dbg !1789, !tbaa !889
  ret ptr %6, !dbg !1790
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1797, metadata !DIExpression()), !dbg !1798
  %2 = icmp eq ptr %0, null, !dbg !1799
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1799
  %4 = load i32, ptr %3, align 8, !dbg !1800, !tbaa !1801
  ret i32 %4, !dbg !1803
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1804 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1808, metadata !DIExpression()), !dbg !1810
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1809, metadata !DIExpression()), !dbg !1810
  %3 = icmp eq ptr %0, null, !dbg !1811
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1811
  store i32 %1, ptr %4, align 8, !dbg !1812, !tbaa !1801
  ret void, !dbg !1813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1814 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1818, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1819, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1820, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1821, metadata !DIExpression()), !dbg !1826
  %4 = icmp eq ptr %0, null, !dbg !1827
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1827
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1828
  %7 = lshr i8 %1, 5, !dbg !1829
  %8 = zext nneg i8 %7 to i64, !dbg !1829
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1830
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1822, metadata !DIExpression()), !dbg !1826
  %10 = and i8 %1, 31, !dbg !1831
  %11 = zext nneg i8 %10 to i32, !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1824, metadata !DIExpression()), !dbg !1826
  %12 = load i32, ptr %9, align 4, !dbg !1832, !tbaa !889
  %13 = lshr i32 %12, %11, !dbg !1833
  %14 = and i32 %13, 1, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1825, metadata !DIExpression()), !dbg !1826
  %15 = xor i32 %13, %2, !dbg !1835
  %16 = and i32 %15, 1, !dbg !1835
  %17 = shl nuw i32 %16, %11, !dbg !1836
  %18 = xor i32 %17, %12, !dbg !1837
  store i32 %18, ptr %9, align 4, !dbg !1837, !tbaa !889
  ret i32 %14, !dbg !1838
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1839 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1843, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1844, metadata !DIExpression()), !dbg !1846
  %3 = icmp eq ptr %0, null, !dbg !1847
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1849
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1843, metadata !DIExpression()), !dbg !1846
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1850
  %6 = load i32, ptr %5, align 4, !dbg !1850, !tbaa !1851
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i32 %1, ptr %5, align 4, !dbg !1852, !tbaa !1851
  ret i32 %6, !dbg !1853
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1854 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !1861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1859, metadata !DIExpression()), !dbg !1861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1860, metadata !DIExpression()), !dbg !1861
  %4 = icmp eq ptr %0, null, !dbg !1862
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !1861
  store i32 10, ptr %5, align 8, !dbg !1865, !tbaa !1801
  %6 = icmp ne ptr %1, null, !dbg !1866
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1868
  br i1 %8, label %10, label %9, !dbg !1868

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1869
  unreachable, !dbg !1869

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1870
  store ptr %1, ptr %11, align 8, !dbg !1871, !tbaa !1872
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1873
  store ptr %2, ptr %12, align 8, !dbg !1874, !tbaa !1875
  ret void, !dbg !1876
}

; Function Attrs: noreturn nounwind
declare !dbg !1877 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1878 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1882, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1883, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1884, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1885, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1886, metadata !DIExpression()), !dbg !1890
  %6 = icmp eq ptr %4, null, !dbg !1891
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1887, metadata !DIExpression()), !dbg !1890
  %8 = tail call ptr @__errno_location() #40, !dbg !1892
  %9 = load i32, ptr %8, align 4, !dbg !1892, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1888, metadata !DIExpression()), !dbg !1890
  %10 = load i32, ptr %7, align 8, !dbg !1893, !tbaa !1801
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1894
  %12 = load i32, ptr %11, align 4, !dbg !1894, !tbaa !1851
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1895
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1896
  %15 = load ptr, ptr %14, align 8, !dbg !1896, !tbaa !1872
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1897
  %17 = load ptr, ptr %16, align 8, !dbg !1897, !tbaa !1875
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i32 %9, ptr %8, align 4, !dbg !1899, !tbaa !889
  ret i64 %18, !dbg !1900
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1901 {
  %10 = alloca i32, align 4, !DIAssignID !1969
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1970
  %12 = alloca i32, align 4, !DIAssignID !1971
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1972
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1973
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1947, metadata !DIExpression(), metadata !1973, metadata ptr %14, metadata !DIExpression()), !dbg !1974
  %15 = alloca i32, align 4, !DIAssignID !1975
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1950, metadata !DIExpression(), metadata !1975, metadata ptr %15, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1907, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1909, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1910, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1911, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1912, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1913, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1914, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1915, metadata !DIExpression()), !dbg !1977
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1978
  %17 = icmp eq i64 %16, 1, !dbg !1979
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1919, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1920, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !1977
  %18 = trunc i32 %5 to i8, !dbg !1980
  %19 = lshr i8 %18, 1, !dbg !1980
  %20 = and i8 %19, 1, !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !1977
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1981

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1982
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1983
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1984
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1985
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1977
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1986
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1987
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1924, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1921, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1920, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1919, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1910, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1915, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1914, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1911, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.label(metadata !1925), !dbg !1988
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1977
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
  ], !dbg !1989

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1911, metadata !DIExpression()), !dbg !1977
  br label %114, !dbg !1990

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1911, metadata !DIExpression()), !dbg !1977
  %43 = and i8 %37, 1, !dbg !1991
  %44 = icmp eq i8 %43, 0, !dbg !1991
  br i1 %44, label %45, label %114, !dbg !1990

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1993
  br i1 %46, label %114, label %47, !dbg !1996

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1993, !tbaa !898
  br label %114, !dbg !1993

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !544, metadata !DIExpression(), metadata !1971, metadata ptr %12, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !545, metadata !DIExpression(), metadata !1972, metadata ptr %13, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata ptr @.str.11.69, metadata !541, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %29, metadata !542, metadata !DIExpression()), !dbg !1997
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.11.69, i32 noundef 5) #37, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %49, metadata !543, metadata !DIExpression()), !dbg !1997
  %50 = icmp eq ptr %49, @.str.11.69, !dbg !2002
  br i1 %50, label %51, label %60, !dbg !2004

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2005
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %13, metadata !2007, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %13, metadata !2015, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 8, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i64 0, ptr %13, align 8, !dbg !2022
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2023
  %53 = icmp eq i64 %52, 3, !dbg !2025
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2026
  %57 = icmp eq i32 %29, 9, !dbg !2026
  %58 = select i1 %57, ptr @.str.10.71, ptr @.str.12.72, !dbg !2026
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2026
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2027
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2027
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1997
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1914, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !544, metadata !DIExpression(), metadata !1969, metadata ptr %10, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !545, metadata !DIExpression(), metadata !1970, metadata ptr %11, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata ptr @.str.12.72, metadata !541, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i32 %29, metadata !542, metadata !DIExpression()), !dbg !2028
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.12.72, i32 noundef 5) #37, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %62, metadata !543, metadata !DIExpression()), !dbg !2028
  %63 = icmp eq ptr %62, @.str.12.72, !dbg !2031
  br i1 %63, label %64, label %73, !dbg !2032

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2033
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %11, metadata !2007, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata ptr %11, metadata !2015, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 8, metadata !2019, metadata !DIExpression()), !dbg !2037
  store i64 0, ptr %11, align 8, !dbg !2039
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2040
  %66 = icmp eq i64 %65, 3, !dbg !2041
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2042
  %70 = icmp eq i32 %29, 9, !dbg !2042
  %71 = select i1 %70, ptr @.str.10.71, ptr @.str.12.72, !dbg !2042
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2043
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1915, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1914, metadata !DIExpression()), !dbg !1977
  %76 = and i8 %37, 1, !dbg !2044
  %77 = icmp eq i8 %76, 0, !dbg !2044
  br i1 %77, label %78, label %93, !dbg !2045

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1927, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1977
  %79 = load i8, ptr %74, align 1, !dbg !2047, !tbaa !898
  %80 = icmp eq i8 %79, 0, !dbg !2049
  br i1 %80, label %93, label %81, !dbg !2049

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1927, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1917, metadata !DIExpression()), !dbg !1977
  %85 = icmp ult i64 %84, %40, !dbg !2050
  br i1 %85, label %86, label %88, !dbg !2053

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2050
  store i8 %82, ptr %87, align 1, !dbg !2050, !tbaa !898
  br label %88, !dbg !2050

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1917, metadata !DIExpression()), !dbg !1977
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1927, metadata !DIExpression()), !dbg !2046
  %91 = load i8, ptr %90, align 1, !dbg !2047, !tbaa !898
  %92 = icmp eq i8 %91, 0, !dbg !2049
  br i1 %92, label %93, label %81, !dbg !2049, !llvm.loop !2055

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1919, metadata !DIExpression()), !dbg !1977
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1920, metadata !DIExpression()), !dbg !1977
  br label %114, !dbg !2059

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !1977
  br label %98, !dbg !2060

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1921, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !1977
  br label %98, !dbg !2061

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1985
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1921, metadata !DIExpression()), !dbg !1977
  %101 = and i8 %100, 1, !dbg !2062
  %102 = icmp eq i8 %101, 0, !dbg !2062
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2064
  br label %104, !dbg !2064

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1977
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1921, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1911, metadata !DIExpression()), !dbg !1977
  %107 = and i8 %106, 1, !dbg !2065
  %108 = icmp eq i8 %107, 0, !dbg !2065
  br i1 %108, label %109, label %114, !dbg !2067

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2068
  br i1 %110, label %114, label %111, !dbg !2071

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2068, !tbaa !898
  br label %114, !dbg !2068

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1977
  br label %114, !dbg !2072

113:                                              ; preds = %28
  call void @abort() #39, !dbg !2073
  unreachable, !dbg !2073

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2057
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.71, %45 ], [ @.str.10.71, %47 ], [ @.str.10.71, %42 ], [ %34, %28 ], [ @.str.12.72, %109 ], [ @.str.12.72, %111 ], [ @.str.12.72, %104 ], [ @.str.10.71, %41 ], !dbg !1977
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1977
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1977
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1922, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1921, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1920, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1919, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1915, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1914, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1911, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1932, metadata !DIExpression()), !dbg !2074
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
  br label %138, !dbg !2075

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2057
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1982
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1986
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1987
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2076
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2077
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1924, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1910, metadata !DIExpression()), !dbg !1977
  %147 = icmp eq i64 %139, -1, !dbg !2078
  br i1 %147, label %148, label %152, !dbg !2079

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2080
  %150 = load i8, ptr %149, align 1, !dbg !2080, !tbaa !898
  %151 = icmp eq i8 %150, 0, !dbg !2081
  br i1 %151, label %612, label %154, !dbg !2082

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2083
  br i1 %153, label %612, label %154, !dbg !2082

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1938, metadata !DIExpression()), !dbg !2084
  br i1 %128, label %155, label %170, !dbg !2085

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2087
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2088
  br i1 %157, label %158, label %160, !dbg !2088

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1910, metadata !DIExpression()), !dbg !1977
  br label %160, !dbg !2090

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1910, metadata !DIExpression()), !dbg !1977
  %162 = icmp ugt i64 %156, %161, !dbg !2091
  br i1 %162, label %170, label %163, !dbg !2092

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %164, metadata !2094, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata ptr %119, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %120, metadata !2098, metadata !DIExpression()), !dbg !2099
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2101
  %166 = icmp ne i32 %165, 0, !dbg !2102
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2103
  %168 = xor i1 %166, true, !dbg !2103
  %169 = zext i1 %168 to i8, !dbg !2103
  br i1 %167, label %170, label %666, !dbg !2103

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2084
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1910, metadata !DIExpression()), !dbg !1977
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2104
  %175 = load i8, ptr %174, align 1, !dbg !2104, !tbaa !898
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1939, metadata !DIExpression()), !dbg !2084
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
  ], !dbg !2105

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2106

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2107

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1937, metadata !DIExpression()), !dbg !2084
  %179 = and i8 %144, 1, !dbg !2111
  %180 = icmp eq i8 %179, 0, !dbg !2111
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2111
  br i1 %181, label %182, label %198, !dbg !2111

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2113
  br i1 %183, label %184, label %186, !dbg !2117

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2113
  store i8 39, ptr %185, align 1, !dbg !2113, !tbaa !898
  br label %186, !dbg !2113

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1917, metadata !DIExpression()), !dbg !1977
  %188 = icmp ult i64 %187, %146, !dbg !2118
  br i1 %188, label %189, label %191, !dbg !2121

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2118
  store i8 36, ptr %190, align 1, !dbg !2118, !tbaa !898
  br label %191, !dbg !2118

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2121
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1917, metadata !DIExpression()), !dbg !1977
  %193 = icmp ult i64 %192, %146, !dbg !2122
  br i1 %193, label %194, label %196, !dbg !2125

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2122
  store i8 39, ptr %195, align 1, !dbg !2122, !tbaa !898
  br label %196, !dbg !2122

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2125
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %198, !dbg !2126

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1977
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1917, metadata !DIExpression()), !dbg !1977
  %201 = icmp ult i64 %199, %146, !dbg !2127
  br i1 %201, label %202, label %204, !dbg !2130

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2127
  store i8 92, ptr %203, align 1, !dbg !2127, !tbaa !898
  br label %204, !dbg !2127

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2130
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1917, metadata !DIExpression()), !dbg !1977
  br i1 %125, label %206, label %476, !dbg !2131

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2133
  %208 = icmp ult i64 %207, %171, !dbg !2134
  br i1 %208, label %209, label %465, !dbg !2135

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2136
  %211 = load i8, ptr %210, align 1, !dbg !2136, !tbaa !898
  %212 = add i8 %211, -48, !dbg !2137
  %213 = icmp ult i8 %212, 10, !dbg !2137
  br i1 %213, label %214, label %465, !dbg !2137

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2138
  br i1 %215, label %216, label %218, !dbg !2142

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2138
  store i8 48, ptr %217, align 1, !dbg !2138, !tbaa !898
  br label %218, !dbg !2138

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2142
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1917, metadata !DIExpression()), !dbg !1977
  %220 = icmp ult i64 %219, %146, !dbg !2143
  br i1 %220, label %221, label %223, !dbg !2146

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2143
  store i8 48, ptr %222, align 1, !dbg !2143, !tbaa !898
  br label %223, !dbg !2143

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1917, metadata !DIExpression()), !dbg !1977
  br label %465, !dbg !2147

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2148

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2149

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2150

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2152

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2154
  %231 = icmp ult i64 %230, %171, !dbg !2155
  br i1 %231, label %232, label %465, !dbg !2156

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2157
  %234 = load i8, ptr %233, align 1, !dbg !2157, !tbaa !898
  %235 = icmp eq i8 %234, 63, !dbg !2158
  br i1 %235, label %236, label %465, !dbg !2159

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2160
  %238 = load i8, ptr %237, align 1, !dbg !2160, !tbaa !898
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
  ], !dbg !2161

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2162

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1932, metadata !DIExpression()), !dbg !2074
  %241 = icmp ult i64 %140, %146, !dbg !2164
  br i1 %241, label %242, label %244, !dbg !2167

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2164
  store i8 63, ptr %243, align 1, !dbg !2164, !tbaa !898
  br label %244, !dbg !2164

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1917, metadata !DIExpression()), !dbg !1977
  %246 = icmp ult i64 %245, %146, !dbg !2168
  br i1 %246, label %247, label %249, !dbg !2171

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2168
  store i8 34, ptr %248, align 1, !dbg !2168, !tbaa !898
  br label %249, !dbg !2168

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1917, metadata !DIExpression()), !dbg !1977
  %251 = icmp ult i64 %250, %146, !dbg !2172
  br i1 %251, label %252, label %254, !dbg !2175

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2172
  store i8 34, ptr %253, align 1, !dbg !2172, !tbaa !898
  br label %254, !dbg !2172

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1917, metadata !DIExpression()), !dbg !1977
  %256 = icmp ult i64 %255, %146, !dbg !2176
  br i1 %256, label %257, label %259, !dbg !2179

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2176
  store i8 63, ptr %258, align 1, !dbg !2176, !tbaa !898
  br label %259, !dbg !2176

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1917, metadata !DIExpression()), !dbg !1977
  br label %465, !dbg !2180

261:                                              ; preds = %170
  br label %272, !dbg !2181

262:                                              ; preds = %170
  br label %272, !dbg !2182

263:                                              ; preds = %170
  br label %270, !dbg !2183

264:                                              ; preds = %170
  br label %270, !dbg !2184

265:                                              ; preds = %170
  br label %272, !dbg !2185

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2186

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2187

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2190

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2192

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2193
  call void @llvm.dbg.label(metadata !1940), !dbg !2194
  br i1 %133, label %272, label %655, !dbg !2195

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2193
  call void @llvm.dbg.label(metadata !1943), !dbg !2197
  br i1 %124, label %520, label %476, !dbg !2198

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2199

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2200, !tbaa !898
  %277 = icmp eq i8 %276, 0, !dbg !2202
  br i1 %277, label %278, label %465, !dbg !2203

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2204
  br i1 %279, label %280, label %465, !dbg !2206

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1938, metadata !DIExpression()), !dbg !2084
  br label %281, !dbg !2207

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1938, metadata !DIExpression()), !dbg !2084
  br i1 %133, label %465, label %655, !dbg !2208

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1938, metadata !DIExpression()), !dbg !2084
  br i1 %132, label %284, label %465, !dbg !2210

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2211

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2214
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2216
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2216
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1918, metadata !DIExpression()), !dbg !1977
  %291 = icmp ult i64 %140, %290, !dbg !2217
  br i1 %291, label %292, label %294, !dbg !2220

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2217
  store i8 39, ptr %293, align 1, !dbg !2217, !tbaa !898
  br label %294, !dbg !2217

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1917, metadata !DIExpression()), !dbg !1977
  %296 = icmp ult i64 %295, %290, !dbg !2221
  br i1 %296, label %297, label %299, !dbg !2224

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2221
  store i8 92, ptr %298, align 1, !dbg !2221, !tbaa !898
  br label %299, !dbg !2221

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1917, metadata !DIExpression()), !dbg !1977
  %301 = icmp ult i64 %300, %290, !dbg !2225
  br i1 %301, label %302, label %304, !dbg !2228

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2225
  store i8 39, ptr %303, align 1, !dbg !2225, !tbaa !898
  br label %304, !dbg !2225

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %465, !dbg !2229

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2230

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1944, metadata !DIExpression()), !dbg !2231
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2232
  %309 = load ptr, ptr %308, align 8, !dbg !2232, !tbaa !828
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2232
  %312 = load i16, ptr %311, align 2, !dbg !2232, !tbaa !930
  %313 = and i16 %312, 16384, !dbg !2234
  %314 = icmp ne i16 %313, 0, !dbg !2234
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1946, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2231
  br label %355, !dbg !2235

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2236
  call void @llvm.dbg.value(metadata ptr %14, metadata !2007, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata ptr %14, metadata !2015, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 8, metadata !2019, metadata !DIExpression()), !dbg !2239
  store i64 0, ptr %14, align 8, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1946, metadata !DIExpression()), !dbg !2231
  %316 = icmp eq i64 %171, -1, !dbg !2242
  br i1 %316, label %317, label %319, !dbg !2244

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2245
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1910, metadata !DIExpression()), !dbg !1977
  br label %319, !dbg !2246

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1910, metadata !DIExpression()), !dbg !1977
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2247
  %321 = sub i64 %320, %145, !dbg !2248
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !2249
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1954, metadata !DIExpression()), !dbg !1976
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2250

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2231
  %324 = icmp ult i64 %145, %320, !dbg !2251
  br i1 %324, label %326, label %351, !dbg !2253

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !2231
  br label %351, !dbg !2254

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1944, metadata !DIExpression()), !dbg !2231
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2256
  %330 = load i8, ptr %329, align 1, !dbg !2256, !tbaa !898
  %331 = icmp eq i8 %330, 0, !dbg !2253
  br i1 %331, label %351, label %332, !dbg !2257

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1944, metadata !DIExpression()), !dbg !2231
  %334 = add i64 %333, %145, !dbg !2259
  %335 = icmp eq i64 %333, %321, !dbg !2251
  br i1 %335, label %351, label %326, !dbg !2253, !llvm.loop !2260

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1955, metadata !DIExpression()), !dbg !2261
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2262
  %339 = and i1 %338, %132, !dbg !2262
  br i1 %339, label %340, label %347, !dbg !2262

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1955, metadata !DIExpression()), !dbg !2261
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2263
  %343 = load i8, ptr %342, align 1, !dbg !2263, !tbaa !898
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2265

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1955, metadata !DIExpression()), !dbg !2261
  %346 = icmp eq i64 %345, %322, !dbg !2267
  br i1 %346, label %347, label %340, !dbg !2268, !llvm.loop !2269

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2271, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %348, metadata !2273, metadata !DIExpression()), !dbg !2281
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !2283
  %350 = icmp ne i32 %349, 0, !dbg !2284
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1946, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1944, metadata !DIExpression()), !dbg !2231
  br label %351, !dbg !2285

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1946, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1944, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2286
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2287
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1946, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2286
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2287
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2084
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2288
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2288
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1946, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1944, metadata !DIExpression()), !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1910, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2084
  %359 = icmp ult i64 %357, 2, !dbg !2289
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2290
  br i1 %361, label %461, label %362, !dbg !2290

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1963, metadata !DIExpression()), !dbg !2292
  br label %364, !dbg !2293

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1977
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2076
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2074
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2084
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2294
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1917, metadata !DIExpression()), !dbg !1977
  br i1 %360, label %417, label %371, !dbg !2295

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2300

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1937, metadata !DIExpression()), !dbg !2084
  %373 = and i8 %366, 1, !dbg !2303
  %374 = icmp eq i8 %373, 0, !dbg !2303
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2303
  br i1 %375, label %376, label %392, !dbg !2303

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2305
  br i1 %377, label %378, label %380, !dbg !2309

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2305
  store i8 39, ptr %379, align 1, !dbg !2305, !tbaa !898
  br label %380, !dbg !2305

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1917, metadata !DIExpression()), !dbg !1977
  %382 = icmp ult i64 %381, %146, !dbg !2310
  br i1 %382, label %383, label %385, !dbg !2313

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2310
  store i8 36, ptr %384, align 1, !dbg !2310, !tbaa !898
  br label %385, !dbg !2310

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2313
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1917, metadata !DIExpression()), !dbg !1977
  %387 = icmp ult i64 %386, %146, !dbg !2314
  br i1 %387, label %388, label %390, !dbg !2317

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2314
  store i8 39, ptr %389, align 1, !dbg !2314, !tbaa !898
  br label %390, !dbg !2314

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %392, !dbg !2318

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1977
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1917, metadata !DIExpression()), !dbg !1977
  %395 = icmp ult i64 %393, %146, !dbg !2319
  br i1 %395, label %396, label %398, !dbg !2322

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2319
  store i8 92, ptr %397, align 1, !dbg !2319, !tbaa !898
  br label %398, !dbg !2319

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1917, metadata !DIExpression()), !dbg !1977
  %400 = icmp ult i64 %399, %146, !dbg !2323
  br i1 %400, label %401, label %405, !dbg !2326

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2323
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2323
  store i8 %403, ptr %404, align 1, !dbg !2323, !tbaa !898
  br label %405, !dbg !2323

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1917, metadata !DIExpression()), !dbg !1977
  %407 = icmp ult i64 %406, %146, !dbg !2327
  br i1 %407, label %408, label %413, !dbg !2330

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2327
  %411 = or disjoint i8 %410, 48, !dbg !2327
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2327
  store i8 %411, ptr %412, align 1, !dbg !2327, !tbaa !898
  br label %413, !dbg !2327

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1917, metadata !DIExpression()), !dbg !1977
  %415 = and i8 %370, 7, !dbg !2331
  %416 = or disjoint i8 %415, 48, !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1939, metadata !DIExpression()), !dbg !2084
  br label %426, !dbg !2333

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2334
  %419 = icmp eq i8 %418, 0, !dbg !2334
  br i1 %419, label %426, label %420, !dbg !2336

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2337
  br i1 %421, label %422, label %424, !dbg !2341

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2337
  store i8 92, ptr %423, align 1, !dbg !2337, !tbaa !898
  br label %424, !dbg !2337

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !2084
  br label %426, !dbg !2342

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1977
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2076
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2084
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2084
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1917, metadata !DIExpression()), !dbg !1977
  %432 = add i64 %367, 1, !dbg !2343
  %433 = icmp ugt i64 %363, %432, !dbg !2345
  br i1 %433, label %434, label %463, !dbg !2346

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2347
  %436 = icmp ne i8 %435, 0, !dbg !2347
  %437 = and i8 %430, 1, !dbg !2347
  %438 = icmp eq i8 %437, 0, !dbg !2347
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2347
  br i1 %439, label %440, label %451, !dbg !2347

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2350
  br i1 %441, label %442, label %444, !dbg !2354

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2350
  store i8 39, ptr %443, align 1, !dbg !2350, !tbaa !898
  br label %444, !dbg !2350

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2354
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1917, metadata !DIExpression()), !dbg !1977
  %446 = icmp ult i64 %445, %146, !dbg !2355
  br i1 %446, label %447, label %449, !dbg !2358

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2355
  store i8 39, ptr %448, align 1, !dbg !2355, !tbaa !898
  br label %449, !dbg !2355

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %451, !dbg !2359

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2360
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1917, metadata !DIExpression()), !dbg !1977
  %454 = icmp ult i64 %452, %146, !dbg !2361
  br i1 %454, label %455, label %457, !dbg !2364

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2361
  store i8 %431, ptr %456, align 1, !dbg !2361, !tbaa !898
  br label %457, !dbg !2361

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1932, metadata !DIExpression()), !dbg !2074
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2365
  %460 = load i8, ptr %459, align 1, !dbg !2365, !tbaa !898
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1939, metadata !DIExpression()), !dbg !2084
  br label %364, !dbg !2366, !llvm.loop !2367

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1910, metadata !DIExpression()), !dbg !1977
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1910, metadata !DIExpression()), !dbg !1977
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2370
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1977
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1982
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1977
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1977
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2074
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2084
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2084
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2084
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1934, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1910, metadata !DIExpression()), !dbg !1977
  br i1 %126, label %487, label %476, !dbg !2371

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
  br i1 %137, label %488, label %509, !dbg !2373

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2374

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
  %499 = lshr i8 %490, 5, !dbg !2375
  %500 = zext nneg i8 %499 to i64, !dbg !2375
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2376
  %502 = load i32, ptr %501, align 4, !dbg !2376, !tbaa !889
  %503 = and i8 %490, 31, !dbg !2377
  %504 = zext nneg i8 %503 to i32, !dbg !2377
  %505 = shl nuw i32 1, %504, !dbg !2378
  %506 = and i32 %502, %505, !dbg !2378
  %507 = icmp eq i32 %506, 0, !dbg !2378
  %508 = and i1 %172, %507, !dbg !2379
  br i1 %508, label %558, label %520, !dbg !2379

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
  br i1 %172, label %558, label %520, !dbg !2380

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2370
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1977
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1982
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1986
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2076
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2381
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2084
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2084
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1910, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.label(metadata !1966), !dbg !2382
  br i1 %131, label %530, label %659, !dbg !2383

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1937, metadata !DIExpression()), !dbg !2084
  %531 = and i8 %525, 1, !dbg !2385
  %532 = icmp eq i8 %531, 0, !dbg !2385
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2385
  br i1 %533, label %534, label %550, !dbg !2385

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2387
  br i1 %535, label %536, label %538, !dbg !2391

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2387
  store i8 39, ptr %537, align 1, !dbg !2387, !tbaa !898
  br label %538, !dbg !2387

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1917, metadata !DIExpression()), !dbg !1977
  %540 = icmp ult i64 %539, %529, !dbg !2392
  br i1 %540, label %541, label %543, !dbg !2395

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2392
  store i8 36, ptr %542, align 1, !dbg !2392, !tbaa !898
  br label %543, !dbg !2392

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2395
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1917, metadata !DIExpression()), !dbg !1977
  %545 = icmp ult i64 %544, %529, !dbg !2396
  br i1 %545, label %546, label %548, !dbg !2399

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2396
  store i8 39, ptr %547, align 1, !dbg !2396, !tbaa !898
  br label %548, !dbg !2396

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2399
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %550, !dbg !2400

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2084
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1917, metadata !DIExpression()), !dbg !1977
  %553 = icmp ult i64 %551, %529, !dbg !2401
  br i1 %553, label %554, label %556, !dbg !2404

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2401
  store i8 92, ptr %555, align 1, !dbg !2401, !tbaa !898
  br label %556, !dbg !2401

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1910, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.label(metadata !1967), !dbg !2405
  br label %585, !dbg !2406

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2370
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1977
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1982
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1986
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2076
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2381
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2084
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2084
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2409
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1939, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1938, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1937, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1910, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.label(metadata !1967), !dbg !2405
  %569 = and i8 %563, 1, !dbg !2406
  %570 = icmp ne i8 %569, 0, !dbg !2406
  %571 = and i8 %565, 1, !dbg !2406
  %572 = icmp eq i8 %571, 0, !dbg !2406
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2406
  br i1 %573, label %574, label %585, !dbg !2406

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2410
  br i1 %575, label %576, label %578, !dbg !2414

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2410
  store i8 39, ptr %577, align 1, !dbg !2410, !tbaa !898
  br label %578, !dbg !2410

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1917, metadata !DIExpression()), !dbg !1977
  %580 = icmp ult i64 %579, %568, !dbg !2415
  br i1 %580, label %581, label %583, !dbg !2418

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2415
  store i8 39, ptr %582, align 1, !dbg !2415, !tbaa !898
  br label %583, !dbg !2415

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1977
  br label %585, !dbg !2419

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2084
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1917, metadata !DIExpression()), !dbg !1977
  %595 = icmp ult i64 %593, %586, !dbg !2420
  br i1 %595, label %596, label %598, !dbg !2423

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2420
  store i8 %587, ptr %597, align 1, !dbg !2420, !tbaa !898
  br label %598, !dbg !2420

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1917, metadata !DIExpression()), !dbg !1977
  %600 = icmp eq i8 %588, 0, !dbg !2424
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2426
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1924, metadata !DIExpression()), !dbg !1977
  br label %602, !dbg !2427

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2370
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1977
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1982
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1986
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1987
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2076
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2381
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1932, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1926, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1924, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1910, metadata !DIExpression()), !dbg !1977
  %611 = add i64 %609, 1, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1932, metadata !DIExpression()), !dbg !2074
  br label %138, !dbg !2429, !llvm.loop !2430

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1908, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1924, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1923, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1918, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1917, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1910, metadata !DIExpression()), !dbg !1977
  %613 = icmp eq i64 %140, 0, !dbg !2432
  %614 = and i1 %132, %613, !dbg !2434
  %615 = xor i1 %614, true, !dbg !2434
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2434
  br i1 %616, label %617, label %655, !dbg !2434

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2435
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2435
  br i1 %621, label %622, label %631, !dbg !2435

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2437
  %624 = icmp eq i8 %623, 0, !dbg !2437
  br i1 %624, label %627, label %625, !dbg !2440

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2441
  br label %672, !dbg !2442

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2443
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2445
  br i1 %630, label %28, label %631, !dbg !2445

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2446
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2448
  br i1 %634, label %635, label %650, !dbg !2448

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1919, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1917, metadata !DIExpression()), !dbg !1977
  %636 = load i8, ptr %119, align 1, !dbg !2449, !tbaa !898
  %637 = icmp eq i8 %636, 0, !dbg !2452
  br i1 %637, label %650, label %638, !dbg !2452

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1919, metadata !DIExpression()), !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1917, metadata !DIExpression()), !dbg !1977
  %642 = icmp ult i64 %641, %146, !dbg !2453
  br i1 %642, label %643, label %645, !dbg !2456

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2453
  store i8 %639, ptr %644, align 1, !dbg !2453, !tbaa !898
  br label %645, !dbg !2453

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1917, metadata !DIExpression()), !dbg !1977
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2457
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1919, metadata !DIExpression()), !dbg !1977
  %648 = load i8, ptr %647, align 1, !dbg !2449, !tbaa !898
  %649 = icmp eq i8 %648, 0, !dbg !2452
  br i1 %649, label %650, label %638, !dbg !2452, !llvm.loop !2458

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1917, metadata !DIExpression()), !dbg !1977
  %652 = icmp ult i64 %651, %146, !dbg !2460
  br i1 %652, label %653, label %672, !dbg !2462

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2463
  store i8 0, ptr %654, align 1, !dbg !2464, !tbaa !898
  br label %672, !dbg !2463

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1968), !dbg !2465
  %657 = icmp eq i8 %123, 0, !dbg !2466
  %658 = select i1 %657, i32 2, i32 4, !dbg !2466
  br label %666, !dbg !2466

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1968), !dbg !2465
  %662 = icmp eq i32 %115, 2, !dbg !2468
  %663 = icmp eq i8 %123, 0, !dbg !2466
  %664 = select i1 %663, i32 2, i32 4, !dbg !2466
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2466
  br label %666, !dbg !2466

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1911, metadata !DIExpression()), !dbg !1977
  %670 = and i32 %5, -3, !dbg !2469
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2470
  br label %672, !dbg !2471

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2472
}

; Function Attrs: nounwind
declare !dbg !2473 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2476 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2479 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2485, metadata !DIExpression()), !dbg !2488
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2486, metadata !DIExpression()), !dbg !2488
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr null, metadata !2495, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2502
  %4 = icmp eq ptr %2, null, !dbg !2504
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2504
  call void @llvm.dbg.value(metadata ptr %5, metadata !2497, metadata !DIExpression()), !dbg !2502
  %6 = tail call ptr @__errno_location() #40, !dbg !2505
  %7 = load i32, ptr %6, align 4, !dbg !2505, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %7, metadata !2498, metadata !DIExpression()), !dbg !2502
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2506
  %9 = load i32, ptr %8, align 4, !dbg !2506, !tbaa !1851
  %10 = or i32 %9, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %10, metadata !2499, metadata !DIExpression()), !dbg !2502
  %11 = load i32, ptr %5, align 8, !dbg !2508, !tbaa !1801
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2509
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2510
  %14 = load ptr, ptr %13, align 8, !dbg !2510, !tbaa !1872
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2511
  %16 = load ptr, ptr %15, align 8, !dbg !2511, !tbaa !1875
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2512
  %18 = add i64 %17, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %18, metadata !2500, metadata !DIExpression()), !dbg !2502
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2514
  call void @llvm.dbg.value(metadata ptr %19, metadata !2501, metadata !DIExpression()), !dbg !2502
  %20 = load i32, ptr %5, align 8, !dbg !2515, !tbaa !1801
  %21 = load ptr, ptr %13, align 8, !dbg !2516, !tbaa !1872
  %22 = load ptr, ptr %15, align 8, !dbg !2517, !tbaa !1875
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2518
  store i32 %7, ptr %6, align 4, !dbg !2519, !tbaa !889
  ret ptr %19, !dbg !2520
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2495, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2496, metadata !DIExpression()), !dbg !2521
  %5 = icmp eq ptr %3, null, !dbg !2522
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2522
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2497, metadata !DIExpression()), !dbg !2521
  %7 = tail call ptr @__errno_location() #40, !dbg !2523
  %8 = load i32, ptr %7, align 4, !dbg !2523, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2498, metadata !DIExpression()), !dbg !2521
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2524
  %10 = load i32, ptr %9, align 4, !dbg !2524, !tbaa !1851
  %11 = icmp eq ptr %2, null, !dbg !2525
  %12 = zext i1 %11 to i32, !dbg !2525
  %13 = or i32 %10, %12, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2499, metadata !DIExpression()), !dbg !2521
  %14 = load i32, ptr %6, align 8, !dbg !2527, !tbaa !1801
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2528
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2529
  %17 = load ptr, ptr %16, align 8, !dbg !2529, !tbaa !1872
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2530
  %19 = load ptr, ptr %18, align 8, !dbg !2530, !tbaa !1875
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2531
  %21 = add i64 %20, 1, !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2500, metadata !DIExpression()), !dbg !2521
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2501, metadata !DIExpression()), !dbg !2521
  %23 = load i32, ptr %6, align 8, !dbg !2534, !tbaa !1801
  %24 = load ptr, ptr %16, align 8, !dbg !2535, !tbaa !1872
  %25 = load ptr, ptr %18, align 8, !dbg !2536, !tbaa !1875
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2537
  store i32 %8, ptr %7, align 4, !dbg !2538, !tbaa !889
  br i1 %11, label %28, label %27, !dbg !2539

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2540, !tbaa !2542
  br label %28, !dbg !2543

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2544
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2545 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2550, !tbaa !828
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2547, metadata !DIExpression()), !dbg !2551
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()), !dbg !2552
  %2 = load i32, ptr @nslots, align 4, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()), !dbg !2552
  %3 = icmp sgt i32 %2, 1, !dbg !2553
  br i1 %3, label %4, label %6, !dbg !2555

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2553
  br label %10, !dbg !2555

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2556
  %8 = load ptr, ptr %7, align 8, !dbg !2556, !tbaa !2558
  %9 = icmp eq ptr %8, @slot0, !dbg !2560
  br i1 %9, label %17, label %16, !dbg !2561

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2548, metadata !DIExpression()), !dbg !2552
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2562
  %13 = load ptr, ptr %12, align 8, !dbg !2562, !tbaa !2558
  tail call void @free(ptr noundef %13) #37, !dbg !2563
  %14 = add nuw nsw i64 %11, 1, !dbg !2564
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2548, metadata !DIExpression()), !dbg !2552
  %15 = icmp eq i64 %14, %5, !dbg !2553
  br i1 %15, label %6, label %10, !dbg !2555, !llvm.loop !2565

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2567
  store i64 256, ptr @slotvec0, align 8, !dbg !2569, !tbaa !2570
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2571, !tbaa !2558
  br label %17, !dbg !2572

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2573
  br i1 %18, label %20, label %19, !dbg !2575

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2576
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2578, !tbaa !828
  br label %20, !dbg !2579

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2580, !tbaa !889
  ret void, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2582 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2586
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2585, metadata !DIExpression()), !dbg !2586
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2587
  ret ptr %3, !dbg !2588
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2589 {
  %5 = alloca i64, align 8, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2603, metadata !DIExpression(), metadata !2609, metadata ptr %5, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2594, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2595, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2596, metadata !DIExpression()), !dbg !2611
  %6 = tail call ptr @__errno_location() #40, !dbg !2612
  %7 = load i32, ptr %6, align 4, !dbg !2612, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2597, metadata !DIExpression()), !dbg !2611
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2613, !tbaa !828
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2598, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2599, metadata !DIExpression()), !dbg !2611
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2614
  br i1 %9, label %10, label %11, !dbg !2614

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2616
  unreachable, !dbg !2616

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2617, !tbaa !889
  %13 = icmp sgt i32 %12, %0, !dbg !2618
  br i1 %13, label %32, label %14, !dbg !2619

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2620
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2621
  %16 = sext i32 %12 to i64, !dbg !2622
  store i64 %16, ptr %5, align 8, !dbg !2623, !tbaa !2542, !DIAssignID !2624
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2603, metadata !DIExpression(), metadata !2624, metadata ptr %5, metadata !DIExpression()), !dbg !2610
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2625
  %18 = add nuw nsw i32 %0, 1, !dbg !2626
  %19 = sub i32 %18, %12, !dbg !2627
  %20 = sext i32 %19 to i64, !dbg !2628
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2598, metadata !DIExpression()), !dbg !2611
  store ptr %21, ptr @slotvec, align 8, !dbg !2630, !tbaa !828
  br i1 %15, label %22, label %23, !dbg !2631

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2632, !tbaa.struct !2634
  br label %23, !dbg !2635

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2636, !tbaa !889
  %25 = sext i32 %24 to i64, !dbg !2637
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2637
  %27 = load i64, ptr %5, align 8, !dbg !2638, !tbaa !2542
  %28 = sub nsw i64 %27, %25, !dbg !2639
  %29 = shl i64 %28, 4, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %26, metadata !2015, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %29, metadata !2019, metadata !DIExpression()), !dbg !2641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2643
  %30 = load i64, ptr %5, align 8, !dbg !2644, !tbaa !2542
  %31 = trunc i64 %30 to i32, !dbg !2644
  store i32 %31, ptr @nslots, align 4, !dbg !2645, !tbaa !889
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2646
  br label %32, !dbg !2647

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2598, metadata !DIExpression()), !dbg !2611
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2648
  %36 = load i64, ptr %35, align 8, !dbg !2649, !tbaa !2570
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2604, metadata !DIExpression()), !dbg !2650
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2651
  %38 = load ptr, ptr %37, align 8, !dbg !2651, !tbaa !2558
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2606, metadata !DIExpression()), !dbg !2650
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2652
  %40 = load i32, ptr %39, align 4, !dbg !2652, !tbaa !1851
  %41 = or i32 %40, 1, !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2607, metadata !DIExpression()), !dbg !2650
  %42 = load i32, ptr %3, align 8, !dbg !2654, !tbaa !1801
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2655
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2656
  %45 = load ptr, ptr %44, align 8, !dbg !2656, !tbaa !1872
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2657
  %47 = load ptr, ptr %46, align 8, !dbg !2657, !tbaa !1875
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2608, metadata !DIExpression()), !dbg !2650
  %49 = icmp ugt i64 %36, %48, !dbg !2659
  br i1 %49, label %60, label %50, !dbg !2661

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2604, metadata !DIExpression()), !dbg !2650
  store i64 %51, ptr %35, align 8, !dbg !2664, !tbaa !2570
  %52 = icmp eq ptr %38, @slot0, !dbg !2665
  br i1 %52, label %54, label %53, !dbg !2667

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2668
  br label %54, !dbg !2668

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2606, metadata !DIExpression()), !dbg !2650
  store ptr %55, ptr %37, align 8, !dbg !2670, !tbaa !2558
  %56 = load i32, ptr %3, align 8, !dbg !2671, !tbaa !1801
  %57 = load ptr, ptr %44, align 8, !dbg !2672, !tbaa !1872
  %58 = load ptr, ptr %46, align 8, !dbg !2673, !tbaa !1875
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2674
  br label %60, !dbg !2675

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2606, metadata !DIExpression()), !dbg !2650
  store i32 %7, ptr %6, align 4, !dbg !2676, !tbaa !889
  ret ptr %61, !dbg !2677
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2678 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2683, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2684, metadata !DIExpression()), !dbg !2685
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2686
  ret ptr %4, !dbg !2687
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2688 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2584, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !2692
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2694
  ret ptr %2, !dbg !2695
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2700, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2682, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2683, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2684, metadata !DIExpression()), !dbg !2703
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2705
  ret ptr %3, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2707 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2714, metadata !DIExpression(), metadata !2715, metadata ptr %4, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2711, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2727, metadata !DIExpression()), !dbg !2730
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2730, !alias.scope !2718, !DIAssignID !2731
  call void @llvm.dbg.assign(metadata i8 0, metadata !2714, metadata !DIExpression(), metadata !2731, metadata ptr %4, metadata !DIExpression()), !dbg !2716
  %5 = icmp eq i32 %1, 10, !dbg !2732
  br i1 %5, label %6, label %7, !dbg !2734

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2735, !noalias !2718
  unreachable, !dbg !2735

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2736, !tbaa !1801, !alias.scope !2718, !DIAssignID !2737
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2737, metadata ptr %4, metadata !DIExpression()), !dbg !2716
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2738
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2739
  ret ptr %8, !dbg !2740
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2741 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(), metadata !2750, metadata ptr %5, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2746, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753), !dbg !2756
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2727, metadata !DIExpression()), !dbg !2759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2759, !alias.scope !2753, !DIAssignID !2760
  call void @llvm.dbg.assign(metadata i8 0, metadata !2749, metadata !DIExpression(), metadata !2760, metadata ptr %5, metadata !DIExpression()), !dbg !2751
  %6 = icmp eq i32 %1, 10, !dbg !2761
  br i1 %6, label %7, label %8, !dbg !2762

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2763, !noalias !2753
  unreachable, !dbg !2763

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2764, !tbaa !1801, !alias.scope !2753, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2765, metadata ptr %5, metadata !DIExpression()), !dbg !2751
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2767
  ret ptr %9, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2769 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2775
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2714, metadata !DIExpression(), metadata !2775, metadata ptr %3, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2711, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %1, metadata !2713, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2780), !dbg !2783
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2727, metadata !DIExpression()), !dbg !2786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2786, !alias.scope !2780, !DIAssignID !2787
  call void @llvm.dbg.assign(metadata i8 0, metadata !2714, metadata !DIExpression(), metadata !2787, metadata ptr %3, metadata !DIExpression()), !dbg !2777
  %4 = icmp eq i32 %0, 10, !dbg !2788
  br i1 %4, label %5, label %6, !dbg !2789

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2790, !noalias !2780
  unreachable, !dbg !2790

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2791, !tbaa !1801, !alias.scope !2780, !DIAssignID !2792
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2714, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2792, metadata ptr %3, metadata !DIExpression()), !dbg !2777
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2793
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2794
  ret ptr %7, !dbg !2795
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2796 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2803
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2801, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(), metadata !2803, metadata ptr %4, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %2, metadata !2748, metadata !DIExpression()), !dbg !2805
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2727, metadata !DIExpression()), !dbg !2814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2814, !alias.scope !2808, !DIAssignID !2815
  call void @llvm.dbg.assign(metadata i8 0, metadata !2749, metadata !DIExpression(), metadata !2815, metadata ptr %4, metadata !DIExpression()), !dbg !2805
  %5 = icmp eq i32 %0, 10, !dbg !2816
  br i1 %5, label %6, label %7, !dbg !2817

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2818, !noalias !2808
  unreachable, !dbg !2818

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2819, !tbaa !1801, !alias.scope !2808, !DIAssignID !2820
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2820, metadata ptr %4, metadata !DIExpression()), !dbg !2805
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2822
  ret ptr %8, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2824 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2832, metadata ptr %4, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2835, !tbaa.struct !2836, !DIAssignID !2837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2837, metadata ptr %4, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1818, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1819, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1820, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1821, metadata !DIExpression()), !dbg !2838
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2840
  %6 = lshr i8 %2, 5, !dbg !2841
  %7 = zext nneg i8 %6 to i64, !dbg !2841
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1822, metadata !DIExpression()), !dbg !2838
  %9 = and i8 %2, 31, !dbg !2843
  %10 = zext nneg i8 %9 to i32, !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1824, metadata !DIExpression()), !dbg !2838
  %11 = load i32, ptr %8, align 4, !dbg !2844, !tbaa !889
  %12 = lshr i32 %11, %10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1825, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2838
  %13 = and i32 %12, 1, !dbg !2846
  %14 = xor i32 %13, 1, !dbg !2846
  %15 = shl nuw i32 %14, %10, !dbg !2847
  %16 = xor i32 %15, %11, !dbg !2848
  store i32 %16, ptr %8, align 4, !dbg !2848, !tbaa !889
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2850
  ret ptr %17, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2852 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2858
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2858, metadata ptr %3, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 -1, metadata !2829, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %1, metadata !2830, metadata !DIExpression()), !dbg !2860
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2863, !tbaa.struct !2836, !DIAssignID !2864
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2864, metadata ptr %3, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %3, metadata !1818, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 %1, metadata !1819, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 1, metadata !1820, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 %1, metadata !1821, metadata !DIExpression()), !dbg !2865
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2867
  %5 = lshr i8 %1, 5, !dbg !2868
  %6 = zext nneg i8 %5 to i64, !dbg !2868
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %7, metadata !1822, metadata !DIExpression()), !dbg !2865
  %8 = and i8 %1, 31, !dbg !2870
  %9 = zext nneg i8 %8 to i32, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %9, metadata !1824, metadata !DIExpression()), !dbg !2865
  %10 = load i32, ptr %7, align 4, !dbg !2871, !tbaa !889
  %11 = lshr i32 %10, %9, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %11, metadata !1825, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2865
  %12 = and i32 %11, 1, !dbg !2873
  %13 = xor i32 %12, 1, !dbg !2873
  %14 = shl nuw i32 %13, %9, !dbg !2874
  %15 = xor i32 %14, %10, !dbg !2875
  store i32 %15, ptr %7, align 4, !dbg !2875, !tbaa !889
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2877
  ret ptr %16, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2879 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2882
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !2857, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2882, metadata ptr %2, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 -1, metadata !2829, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 58, metadata !2830, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2889, !tbaa.struct !2836, !DIAssignID !2890
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2890, metadata ptr %2, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %2, metadata !1818, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 58, metadata !1819, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 1, metadata !1820, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 58, metadata !1821, metadata !DIExpression()), !dbg !2891
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %3, metadata !1822, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 26, metadata !1824, metadata !DIExpression()), !dbg !2891
  %4 = load i32, ptr %3, align 4, !dbg !2894, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %4, metadata !1825, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2891
  %5 = or i32 %4, 67108864, !dbg !2895
  store i32 %5, ptr %3, align 4, !dbg !2895, !tbaa !889
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2897
  ret ptr %6, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2899 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2903
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2903, metadata ptr %3, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 58, metadata !2830, metadata !DIExpression()), !dbg !2905
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2908, !tbaa.struct !2836, !DIAssignID !2909
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2831, metadata !DIExpression(), metadata !2909, metadata ptr %3, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %3, metadata !1818, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 58, metadata !1819, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 1, metadata !1820, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 58, metadata !1821, metadata !DIExpression()), !dbg !2910
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %4, metadata !1822, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 26, metadata !1824, metadata !DIExpression()), !dbg !2910
  %5 = load i32, ptr %4, align 4, !dbg !2913, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %5, metadata !1825, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2910
  %6 = or i32 %5, 67108864, !dbg !2914
  store i32 %6, ptr %4, align 4, !dbg !2914, !tbaa !889
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2915
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2916
  ret ptr %7, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2918 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2923, metadata !DIExpression(), metadata !2924, metadata ptr %4, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2727, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2926
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2921, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2929
  %5 = icmp eq i32 %1, 10, !dbg !2930
  br i1 %5, label %6, label %7, !dbg !2931

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2932, !noalias !2933
  unreachable, !dbg !2932

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2727, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2929
  store i32 %1, ptr %4, align 8, !dbg !2936, !tbaa.struct !2836, !DIAssignID !2937
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2936
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2923, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2937, metadata ptr %4, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2923, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2938, metadata ptr %8, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1818, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1819, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1820, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1821, metadata !DIExpression()), !dbg !2939
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2941
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1822, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1824, metadata !DIExpression()), !dbg !2939
  %10 = load i32, ptr %9, align 4, !dbg !2942, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1825, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2939
  %11 = or i32 %10, 67108864, !dbg !2943
  store i32 %11, ptr %9, align 4, !dbg !2943, !tbaa !889, !DIAssignID !2944
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2923, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2944, metadata ptr %9, metadata !DIExpression()), !dbg !2925
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2945
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2946
  ret ptr %12, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2948 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2956
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2953, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2954, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !2956, metadata ptr %5, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %1, metadata !2964, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %3, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 -1, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2971, !tbaa.struct !2836, !DIAssignID !2972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !2972, metadata ptr %5, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2973, metadata ptr undef, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %1, metadata !1859, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %2, metadata !1860, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !2974
  store i32 10, ptr %5, align 8, !dbg !2976, !tbaa !1801, !DIAssignID !2977
  call void @llvm.dbg.assign(metadata i32 10, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2977, metadata ptr %5, metadata !DIExpression()), !dbg !2968
  %6 = icmp ne ptr %1, null, !dbg !2978
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2979
  br i1 %8, label %10, label %9, !dbg !2979

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2980
  unreachable, !dbg !2980

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2981
  store ptr %1, ptr %11, align 8, !dbg !2982, !tbaa !1872, !DIAssignID !2983
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2983, metadata ptr %11, metadata !DIExpression()), !dbg !2968
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2984
  store ptr %2, ptr %12, align 8, !dbg !2985, !tbaa !1875, !DIAssignID !2986
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2986, metadata ptr %12, metadata !DIExpression()), !dbg !2968
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2987
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2988
  ret ptr %13, !dbg !2989
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2959 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2990
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !2990, metadata ptr %6, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2964, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2966, metadata !DIExpression()), !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2967, metadata !DIExpression()), !dbg !2991
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2993, !tbaa.struct !2836, !DIAssignID !2994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !2994, metadata ptr %6, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2995, metadata ptr undef, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %6, metadata !1858, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %1, metadata !1859, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %2, metadata !1860, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %6, metadata !1858, metadata !DIExpression()), !dbg !2996
  store i32 10, ptr %6, align 8, !dbg !2998, !tbaa !1801, !DIAssignID !2999
  call void @llvm.dbg.assign(metadata i32 10, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2999, metadata ptr %6, metadata !DIExpression()), !dbg !2991
  %7 = icmp ne ptr %1, null, !dbg !3000
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3001
  br i1 %9, label %11, label %10, !dbg !3001

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3002
  unreachable, !dbg !3002

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3003
  store ptr %1, ptr %12, align 8, !dbg !3004, !tbaa !1872, !DIAssignID !3005
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3005, metadata ptr %12, metadata !DIExpression()), !dbg !2991
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3006
  store ptr %2, ptr %13, align 8, !dbg !3007, !tbaa !1875, !DIAssignID !3008
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3008, metadata ptr %13, metadata !DIExpression()), !dbg !2991
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3009
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3010
  ret ptr %14, !dbg !3011
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3012 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3019
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3017, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3018, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i32 0, metadata !2952, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %1, metadata !2954, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %2, metadata !2955, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !3019, metadata ptr %4, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !2963, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2965, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %2, metadata !2966, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 -1, metadata !2967, metadata !DIExpression()), !dbg !3023
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3026, !tbaa.struct !2836, !DIAssignID !3027
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !3027, metadata ptr %4, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3028, metadata ptr undef, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %4, metadata !1858, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %0, metadata !1859, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %1, metadata !1860, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %4, metadata !1858, metadata !DIExpression()), !dbg !3029
  store i32 10, ptr %4, align 8, !dbg !3031, !tbaa !1801, !DIAssignID !3032
  call void @llvm.dbg.assign(metadata i32 10, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3032, metadata ptr %4, metadata !DIExpression()), !dbg !3023
  %5 = icmp ne ptr %0, null, !dbg !3033
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3034
  br i1 %7, label %9, label %8, !dbg !3034

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3035
  unreachable, !dbg !3035

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3036
  store ptr %0, ptr %10, align 8, !dbg !3037, !tbaa !1872, !DIAssignID !3038
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3038, metadata ptr %10, metadata !DIExpression()), !dbg !3023
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3039
  store ptr %1, ptr %11, align 8, !dbg !3040, !tbaa !1875, !DIAssignID !3041
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3041, metadata ptr %11, metadata !DIExpression()), !dbg !3023
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3042
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3043
  ret ptr %12, !dbg !3044
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3045 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3053
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !3053, metadata ptr %5, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2963, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %1, metadata !2965, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %2, metadata !2966, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %3, metadata !2967, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3058, !tbaa.struct !2836, !DIAssignID !3059
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !3059, metadata ptr %5, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3060, metadata ptr undef, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %0, metadata !1859, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %1, metadata !1860, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !3061
  store i32 10, ptr %5, align 8, !dbg !3063, !tbaa !1801, !DIAssignID !3064
  call void @llvm.dbg.assign(metadata i32 10, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3064, metadata ptr %5, metadata !DIExpression()), !dbg !3055
  %6 = icmp ne ptr %0, null, !dbg !3065
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3066
  br i1 %8, label %10, label %9, !dbg !3066

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3067
  unreachable, !dbg !3067

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3068
  store ptr %0, ptr %11, align 8, !dbg !3069, !tbaa !1872, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3070, metadata ptr %11, metadata !DIExpression()), !dbg !3055
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3071
  store ptr %1, ptr %12, align 8, !dbg !3072, !tbaa !1875, !DIAssignID !3073
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3073, metadata ptr %12, metadata !DIExpression()), !dbg !3055
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3074
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3075
  ret ptr %13, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3081, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3083, metadata !DIExpression()), !dbg !3084
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3085
  ret ptr %4, !dbg !3086
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !3081, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3094
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3096
  ret ptr %3, !dbg !3097
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i32 %0, metadata !3081, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !3082, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 -1, metadata !3083, metadata !DIExpression()), !dbg !3105
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3107
  ret ptr %3, !dbg !3108
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 0, metadata !3102, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %0, metadata !3103, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3081, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 -1, metadata !3083, metadata !DIExpression()), !dbg !3117
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3119
  ret ptr %2, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3161, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3162, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3163, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3164, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3165, metadata !DIExpression()), !dbg !3166
  %7 = icmp eq ptr %1, null, !dbg !3167
  br i1 %7, label %10, label %8, !dbg !3169

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3170
  br label %12, !dbg !3170

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %2, ptr noundef %3) #37, !dbg !3171
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.3.80, i32 noundef 5) #37, !dbg !3172
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3172
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3173
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.5.82, i32 noundef 5) #37, !dbg !3174
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.83) #37, !dbg !3174
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3175
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
  ], !dbg !3176

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.7.84, i32 noundef 5) #37, !dbg !3177
  %21 = load ptr, ptr %4, align 8, !dbg !3177, !tbaa !828
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3177
  br label %147, !dbg !3179

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.8.85, i32 noundef 5) #37, !dbg !3180
  %25 = load ptr, ptr %4, align 8, !dbg !3180, !tbaa !828
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3180
  %27 = load ptr, ptr %26, align 8, !dbg !3180, !tbaa !828
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3180
  br label %147, !dbg !3181

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.9.86, i32 noundef 5) #37, !dbg !3182
  %31 = load ptr, ptr %4, align 8, !dbg !3182, !tbaa !828
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3182
  %33 = load ptr, ptr %32, align 8, !dbg !3182, !tbaa !828
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3182
  %35 = load ptr, ptr %34, align 8, !dbg !3182, !tbaa !828
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3182
  br label %147, !dbg !3183

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.10.87, i32 noundef 5) #37, !dbg !3184
  %39 = load ptr, ptr %4, align 8, !dbg !3184, !tbaa !828
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3184
  %41 = load ptr, ptr %40, align 8, !dbg !3184, !tbaa !828
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3184
  %43 = load ptr, ptr %42, align 8, !dbg !3184, !tbaa !828
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3184
  %45 = load ptr, ptr %44, align 8, !dbg !3184, !tbaa !828
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3184
  br label %147, !dbg !3185

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.11.88, i32 noundef 5) #37, !dbg !3186
  %49 = load ptr, ptr %4, align 8, !dbg !3186, !tbaa !828
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3186
  %51 = load ptr, ptr %50, align 8, !dbg !3186, !tbaa !828
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3186
  %53 = load ptr, ptr %52, align 8, !dbg !3186, !tbaa !828
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3186
  %55 = load ptr, ptr %54, align 8, !dbg !3186, !tbaa !828
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3186
  %57 = load ptr, ptr %56, align 8, !dbg !3186, !tbaa !828
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3186
  br label %147, !dbg !3187

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.12.89, i32 noundef 5) #37, !dbg !3188
  %61 = load ptr, ptr %4, align 8, !dbg !3188, !tbaa !828
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3188
  %63 = load ptr, ptr %62, align 8, !dbg !3188, !tbaa !828
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3188
  %65 = load ptr, ptr %64, align 8, !dbg !3188, !tbaa !828
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3188
  %67 = load ptr, ptr %66, align 8, !dbg !3188, !tbaa !828
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3188
  %69 = load ptr, ptr %68, align 8, !dbg !3188, !tbaa !828
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3188
  %71 = load ptr, ptr %70, align 8, !dbg !3188, !tbaa !828
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3188
  br label %147, !dbg !3189

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.13.90, i32 noundef 5) #37, !dbg !3190
  %75 = load ptr, ptr %4, align 8, !dbg !3190, !tbaa !828
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3190
  %77 = load ptr, ptr %76, align 8, !dbg !3190, !tbaa !828
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3190
  %79 = load ptr, ptr %78, align 8, !dbg !3190, !tbaa !828
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3190
  %81 = load ptr, ptr %80, align 8, !dbg !3190, !tbaa !828
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3190
  %83 = load ptr, ptr %82, align 8, !dbg !3190, !tbaa !828
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3190
  %85 = load ptr, ptr %84, align 8, !dbg !3190, !tbaa !828
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3190
  %87 = load ptr, ptr %86, align 8, !dbg !3190, !tbaa !828
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3190
  br label %147, !dbg !3191

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.14.91, i32 noundef 5) #37, !dbg !3192
  %91 = load ptr, ptr %4, align 8, !dbg !3192, !tbaa !828
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3192
  %93 = load ptr, ptr %92, align 8, !dbg !3192, !tbaa !828
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3192
  %95 = load ptr, ptr %94, align 8, !dbg !3192, !tbaa !828
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3192
  %97 = load ptr, ptr %96, align 8, !dbg !3192, !tbaa !828
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3192
  %99 = load ptr, ptr %98, align 8, !dbg !3192, !tbaa !828
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3192
  %101 = load ptr, ptr %100, align 8, !dbg !3192, !tbaa !828
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3192
  %103 = load ptr, ptr %102, align 8, !dbg !3192, !tbaa !828
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3192
  %105 = load ptr, ptr %104, align 8, !dbg !3192, !tbaa !828
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3192
  br label %147, !dbg !3193

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.15.92, i32 noundef 5) #37, !dbg !3194
  %109 = load ptr, ptr %4, align 8, !dbg !3194, !tbaa !828
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3194
  %111 = load ptr, ptr %110, align 8, !dbg !3194, !tbaa !828
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3194
  %113 = load ptr, ptr %112, align 8, !dbg !3194, !tbaa !828
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3194
  %115 = load ptr, ptr %114, align 8, !dbg !3194, !tbaa !828
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3194
  %117 = load ptr, ptr %116, align 8, !dbg !3194, !tbaa !828
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3194
  %119 = load ptr, ptr %118, align 8, !dbg !3194, !tbaa !828
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3194
  %121 = load ptr, ptr %120, align 8, !dbg !3194, !tbaa !828
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3194
  %123 = load ptr, ptr %122, align 8, !dbg !3194, !tbaa !828
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3194
  %125 = load ptr, ptr %124, align 8, !dbg !3194, !tbaa !828
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3194
  br label %147, !dbg !3195

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.16.93, i32 noundef 5) #37, !dbg !3196
  %129 = load ptr, ptr %4, align 8, !dbg !3196, !tbaa !828
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3196
  %131 = load ptr, ptr %130, align 8, !dbg !3196, !tbaa !828
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3196
  %133 = load ptr, ptr %132, align 8, !dbg !3196, !tbaa !828
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3196
  %135 = load ptr, ptr %134, align 8, !dbg !3196, !tbaa !828
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3196
  %137 = load ptr, ptr %136, align 8, !dbg !3196, !tbaa !828
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3196
  %139 = load ptr, ptr %138, align 8, !dbg !3196, !tbaa !828
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3196
  %141 = load ptr, ptr %140, align 8, !dbg !3196, !tbaa !828
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3196
  %143 = load ptr, ptr %142, align 8, !dbg !3196, !tbaa !828
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3196
  %145 = load ptr, ptr %144, align 8, !dbg !3196, !tbaa !828
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3196
  br label %147, !dbg !3197

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3198
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3199 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3204, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3205, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3206, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3207, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3208, metadata !DIExpression()), !dbg !3209
  br label %6, !dbg !3210

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3208, metadata !DIExpression()), !dbg !3209
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3213
  %9 = load ptr, ptr %8, align 8, !dbg !3213, !tbaa !828
  %10 = icmp eq ptr %9, null, !dbg !3215
  %11 = add i64 %7, 1, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3208, metadata !DIExpression()), !dbg !3209
  br i1 %10, label %12, label %6, !dbg !3215, !llvm.loop !3217

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3219
  ret void, !dbg !3220
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3221 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3238, metadata !DIExpression(), metadata !3240, metadata ptr %6, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3233, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3234, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3235, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3236, metadata !DIExpression()), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3237, metadata !DIExpression()), !dbg !3241
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3237, metadata !DIExpression()), !dbg !3241
  %10 = icmp ult i32 %9, 41, !dbg !3243
  br i1 %10, label %11, label %16, !dbg !3243

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3243
  %13 = zext nneg i32 %9 to i64, !dbg !3243
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3243
  %15 = add nuw nsw i32 %9, 8, !dbg !3243
  store i32 %15, ptr %4, align 8, !dbg !3243
  br label %19, !dbg !3243

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3243
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3243
  store ptr %18, ptr %7, align 8, !dbg !3243
  br label %19, !dbg !3243

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3243
  %22 = load ptr, ptr %21, align 8, !dbg !3243
  store ptr %22, ptr %6, align 16, !dbg !3246, !tbaa !828
  %23 = icmp eq ptr %22, null, !dbg !3247
  br i1 %23, label %128, label %24, !dbg !3248

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3237, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3237, metadata !DIExpression()), !dbg !3241
  %25 = icmp ult i32 %20, 41, !dbg !3243
  br i1 %25, label %29, label %26, !dbg !3243

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3243
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3243
  store ptr %28, ptr %7, align 8, !dbg !3243
  br label %34, !dbg !3243

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3243
  %31 = zext nneg i32 %20 to i64, !dbg !3243
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3243
  %33 = add nuw nsw i32 %20, 8, !dbg !3243
  store i32 %33, ptr %4, align 8, !dbg !3243
  br label %34, !dbg !3243

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3243
  %37 = load ptr, ptr %36, align 8, !dbg !3243
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3249
  store ptr %37, ptr %38, align 8, !dbg !3246, !tbaa !828
  %39 = icmp eq ptr %37, null, !dbg !3247
  br i1 %39, label %128, label %40, !dbg !3248

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3237, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3237, metadata !DIExpression()), !dbg !3241
  %41 = icmp ult i32 %35, 41, !dbg !3243
  br i1 %41, label %45, label %42, !dbg !3243

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3243
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3243
  store ptr %44, ptr %7, align 8, !dbg !3243
  br label %50, !dbg !3243

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3243
  %47 = zext nneg i32 %35 to i64, !dbg !3243
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3243
  %49 = add nuw nsw i32 %35, 8, !dbg !3243
  store i32 %49, ptr %4, align 8, !dbg !3243
  br label %50, !dbg !3243

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3243
  %53 = load ptr, ptr %52, align 8, !dbg !3243
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3249
  store ptr %53, ptr %54, align 16, !dbg !3246, !tbaa !828
  %55 = icmp eq ptr %53, null, !dbg !3247
  br i1 %55, label %128, label %56, !dbg !3248

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3237, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3237, metadata !DIExpression()), !dbg !3241
  %57 = icmp ult i32 %51, 41, !dbg !3243
  br i1 %57, label %61, label %58, !dbg !3243

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3243
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3243
  store ptr %60, ptr %7, align 8, !dbg !3243
  br label %66, !dbg !3243

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3243
  %63 = zext nneg i32 %51 to i64, !dbg !3243
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3243
  %65 = add nuw nsw i32 %51, 8, !dbg !3243
  store i32 %65, ptr %4, align 8, !dbg !3243
  br label %66, !dbg !3243

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3243
  %69 = load ptr, ptr %68, align 8, !dbg !3243
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3249
  store ptr %69, ptr %70, align 8, !dbg !3246, !tbaa !828
  %71 = icmp eq ptr %69, null, !dbg !3247
  br i1 %71, label %128, label %72, !dbg !3248

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3237, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3237, metadata !DIExpression()), !dbg !3241
  %73 = icmp ult i32 %67, 41, !dbg !3243
  br i1 %73, label %77, label %74, !dbg !3243

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3243
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3243
  store ptr %76, ptr %7, align 8, !dbg !3243
  br label %82, !dbg !3243

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3243
  %79 = zext nneg i32 %67 to i64, !dbg !3243
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3243
  %81 = add nuw nsw i32 %67, 8, !dbg !3243
  store i32 %81, ptr %4, align 8, !dbg !3243
  br label %82, !dbg !3243

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3243
  %85 = load ptr, ptr %84, align 8, !dbg !3243
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3249
  store ptr %85, ptr %86, align 16, !dbg !3246, !tbaa !828
  %87 = icmp eq ptr %85, null, !dbg !3247
  br i1 %87, label %128, label %88, !dbg !3248

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3237, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3237, metadata !DIExpression()), !dbg !3241
  %89 = icmp ult i32 %83, 41, !dbg !3243
  br i1 %89, label %93, label %90, !dbg !3243

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3243
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3243
  store ptr %92, ptr %7, align 8, !dbg !3243
  br label %98, !dbg !3243

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3243
  %95 = zext nneg i32 %83 to i64, !dbg !3243
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3243
  %97 = add nuw nsw i32 %83, 8, !dbg !3243
  store i32 %97, ptr %4, align 8, !dbg !3243
  br label %98, !dbg !3243

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3243
  %100 = load ptr, ptr %99, align 8, !dbg !3243
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3249
  store ptr %100, ptr %101, align 8, !dbg !3246, !tbaa !828
  %102 = icmp eq ptr %100, null, !dbg !3247
  br i1 %102, label %128, label %103, !dbg !3248

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3237, metadata !DIExpression()), !dbg !3241
  %104 = load ptr, ptr %7, align 8, !dbg !3243
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3243
  store ptr %105, ptr %7, align 8, !dbg !3243
  %106 = load ptr, ptr %104, align 8, !dbg !3243
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3249
  store ptr %106, ptr %107, align 16, !dbg !3246, !tbaa !828
  %108 = icmp eq ptr %106, null, !dbg !3247
  br i1 %108, label %128, label %109, !dbg !3248

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3237, metadata !DIExpression()), !dbg !3241
  %110 = load ptr, ptr %7, align 8, !dbg !3243
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3243
  store ptr %111, ptr %7, align 8, !dbg !3243
  %112 = load ptr, ptr %110, align 8, !dbg !3243
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3249
  store ptr %112, ptr %113, align 8, !dbg !3246, !tbaa !828
  %114 = icmp eq ptr %112, null, !dbg !3247
  br i1 %114, label %128, label %115, !dbg !3248

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3237, metadata !DIExpression()), !dbg !3241
  %116 = load ptr, ptr %7, align 8, !dbg !3243
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3243
  store ptr %117, ptr %7, align 8, !dbg !3243
  %118 = load ptr, ptr %116, align 8, !dbg !3243
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3249
  store ptr %118, ptr %119, align 16, !dbg !3246, !tbaa !828
  %120 = icmp eq ptr %118, null, !dbg !3247
  br i1 %120, label %128, label %121, !dbg !3248

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3237, metadata !DIExpression()), !dbg !3241
  %122 = load ptr, ptr %7, align 8, !dbg !3243
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3243
  store ptr %123, ptr %7, align 8, !dbg !3243
  %124 = load ptr, ptr %122, align 8, !dbg !3243
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3249
  store ptr %124, ptr %125, align 8, !dbg !3246, !tbaa !828
  %126 = icmp eq ptr %124, null, !dbg !3247
  %127 = select i1 %126, i64 9, i64 10, !dbg !3248
  br label %128, !dbg !3248

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3250
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3251
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3252
  ret void, !dbg !3252
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3253 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3266, metadata ptr %5, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3257, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3258, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3259, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3260, metadata !DIExpression()), !dbg !3267
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3268
  call void @llvm.va_start(ptr nonnull %5), !dbg !3269
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3270
  call void @llvm.va_end(ptr nonnull %5), !dbg !3271
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3272
  ret void, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3273 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3274, !tbaa !828
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %1), !dbg !3274
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.17.98, i32 noundef 5) #37, !dbg !3275
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.99) #37, !dbg !3275
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.19.100, i32 noundef 5) #37, !dbg !3276
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.101, ptr noundef nonnull @.str.21.102) #37, !dbg !3276
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3277
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3277
  ret void, !dbg !3278
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3293
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3301
  %5 = icmp eq ptr %4, null, !dbg !3303
  br i1 %5, label %6, label %7, !dbg !3305

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3306
  unreachable, !dbg !3306

7:                                                ; preds = %3
  ret ptr %4, !dbg !3307
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3289 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3308
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3310
  %5 = icmp eq ptr %4, null, !dbg !3312
  br i1 %5, label %6, label %7, !dbg !3313

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3314
  unreachable, !dbg !3314

7:                                                ; preds = %3
  ret ptr %4, !dbg !3315
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3316 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3323
  %3 = icmp eq ptr %2, null, !dbg !3325
  br i1 %3, label %4, label %5, !dbg !3326

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3327
  unreachable, !dbg !3327

5:                                                ; preds = %1
  ret ptr %2, !dbg !3328
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3329 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3330 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %0, metadata !3336, metadata !DIExpression()), !dbg !3340
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3343
  %3 = icmp eq ptr %2, null, !dbg !3345
  br i1 %3, label %4, label %5, !dbg !3346

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3347
  unreachable, !dbg !3347

5:                                                ; preds = %1
  ret ptr %2, !dbg !3348
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3349 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3355
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3357
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3358
  %3 = icmp eq ptr %2, null, !dbg !3360
  br i1 %3, label %4, label %5, !dbg !3361

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3362
  unreachable, !dbg !3362

5:                                                ; preds = %1
  ret ptr %2, !dbg !3363
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3368, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3378
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3379
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3380
  %5 = icmp eq ptr %4, null, !dbg !3382
  br i1 %5, label %6, label %7, !dbg !3383

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3384
  unreachable, !dbg !3384

7:                                                ; preds = %2
  ret ptr %4, !dbg !3385
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3386 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3387 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3400
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3402
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3404
  %5 = icmp eq ptr %4, null, !dbg !3406
  br i1 %5, label %6, label %7, !dbg !3407

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3408
  unreachable, !dbg !3408

7:                                                ; preds = %2
  ret ptr %4, !dbg !3409
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3415, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3425
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3426
  %5 = icmp eq ptr %4, null, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3429

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3430
  unreachable, !dbg !3430

7:                                                ; preds = %3
  ret ptr %4, !dbg !3431
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3432 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3436, metadata !DIExpression()), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr null, metadata !3288, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %0, metadata !3291, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3439
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3442
  %4 = icmp eq ptr %3, null, !dbg !3444
  br i1 %4, label %5, label %6, !dbg !3445

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3446
  unreachable, !dbg !3446

6:                                                ; preds = %2
  ret ptr %3, !dbg !3447
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3452, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr null, metadata !3414, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %0, metadata !3415, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3416, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr null, metadata !3418, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3457
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3460
  %4 = icmp eq ptr %3, null, !dbg !3462
  br i1 %4, label %5, label %6, !dbg !3463

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3464
  unreachable, !dbg !3464

6:                                                ; preds = %2
  ret ptr %3, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 1, metadata !722, metadata !DIExpression()), !dbg !3473
  %3 = load i64, ptr %1, align 8, !dbg !3475, !tbaa !2542
  call void @llvm.dbg.value(metadata i64 %3, metadata !723, metadata !DIExpression()), !dbg !3473
  %4 = icmp eq ptr %0, null, !dbg !3476
  br i1 %4, label %5, label %8, !dbg !3478

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3479
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3482
  br label %15, !dbg !3482

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3483
  %10 = add nuw i64 %9, 1, !dbg !3483
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3483
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3483
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %13, metadata !723, metadata !DIExpression()), !dbg !3473
  br i1 %12, label %14, label %15, !dbg !3486

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3487
  unreachable, !dbg !3487

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3473
  call void @llvm.dbg.value(metadata i64 %16, metadata !723, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %16, metadata !3291, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 1, metadata !3292, metadata !DIExpression()), !dbg !3488
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3490
  call void @llvm.dbg.value(metadata ptr %17, metadata !3296, metadata !DIExpression()), !dbg !3491
  %18 = icmp eq ptr %17, null, !dbg !3493
  br i1 %18, label %19, label %20, !dbg !3494

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3495
  unreachable, !dbg !3495

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !720, metadata !DIExpression()), !dbg !3473
  store i64 %16, ptr %1, align 8, !dbg !3496, !tbaa !2542
  ret ptr %17, !dbg !3497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !720, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !722, metadata !DIExpression()), !dbg !3498
  %4 = load i64, ptr %1, align 8, !dbg !3499, !tbaa !2542
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !723, metadata !DIExpression()), !dbg !3498
  %5 = icmp eq ptr %0, null, !dbg !3500
  br i1 %5, label %6, label %13, !dbg !3501

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3502
  br i1 %7, label %8, label %20, !dbg !3503

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !723, metadata !DIExpression()), !dbg !3498
  %10 = icmp ugt i64 %2, 128, !dbg !3506
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !723, metadata !DIExpression()), !dbg !3498
  br label %20, !dbg !3508

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3509
  %15 = add nuw i64 %14, 1, !dbg !3509
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3509
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3509
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !723, metadata !DIExpression()), !dbg !3498
  br i1 %17, label %19, label %20, !dbg !3510

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3511
  unreachable, !dbg !3511

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !723, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %21, metadata !3291, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3512
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3514
  call void @llvm.dbg.value(metadata ptr %22, metadata !3296, metadata !DIExpression()), !dbg !3515
  %23 = icmp eq ptr %22, null, !dbg !3517
  br i1 %23, label %24, label %25, !dbg !3518

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3519
  unreachable, !dbg !3519

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !720, metadata !DIExpression()), !dbg !3498
  store i64 %21, ptr %1, align 8, !dbg !3520, !tbaa !2542
  ret ptr %22, !dbg !3521
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !736, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !737, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !738, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !739, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !740, metadata !DIExpression()), !dbg !3522
  %6 = load i64, ptr %1, align 8, !dbg !3523, !tbaa !2542
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !741, metadata !DIExpression()), !dbg !3522
  %7 = ashr i64 %6, 1, !dbg !3524
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3524
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3524
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3524
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !742, metadata !DIExpression()), !dbg !3522
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !742, metadata !DIExpression()), !dbg !3522
  %12 = icmp sgt i64 %3, -1, !dbg !3527
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3529
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !742, metadata !DIExpression()), !dbg !3522
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3530
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3530
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !743, metadata !DIExpression()), !dbg !3522
  %18 = icmp slt i64 %17, 128, !dbg !3530
  %19 = select i1 %18, i64 128, i64 0, !dbg !3530
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !744, metadata !DIExpression()), !dbg !3522
  %21 = icmp eq i64 %20, 0, !dbg !3531
  br i1 %21, label %26, label %22, !dbg !3533

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !742, metadata !DIExpression()), !dbg !3522
  %24 = srem i64 %20, %4, !dbg !3536
  %25 = sub nsw i64 %20, %24, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !743, metadata !DIExpression()), !dbg !3522
  br label %26, !dbg !3538

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3522
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !743, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !742, metadata !DIExpression()), !dbg !3522
  %29 = icmp eq ptr %0, null, !dbg !3539
  br i1 %29, label %30, label %31, !dbg !3541

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3542, !tbaa !2542
  br label %31, !dbg !3543

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3544
  %33 = icmp slt i64 %32, %2, !dbg !3546
  br i1 %33, label %34, label %46, !dbg !3547

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3548
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3548
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !742, metadata !DIExpression()), !dbg !3522
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3549
  br i1 %40, label %45, label %41, !dbg !3549

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3550
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3550
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !743, metadata !DIExpression()), !dbg !3522
  br i1 %43, label %45, label %46, !dbg !3551

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3552
  unreachable, !dbg !3552

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3522
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !743, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !742, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3368, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %48, metadata !3369, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %48, metadata !3375, metadata !DIExpression()), !dbg !3555
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3557
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %50, metadata !3296, metadata !DIExpression()), !dbg !3559
  %51 = icmp eq ptr %50, null, !dbg !3561
  br i1 %51, label %52, label %53, !dbg !3562

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3563
  unreachable, !dbg !3563

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !736, metadata !DIExpression()), !dbg !3522
  store i64 %47, ptr %1, align 8, !dbg !3564, !tbaa !2542
  ret ptr %50, !dbg !3565
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3566 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %0, metadata !3570, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 1, metadata !3573, metadata !DIExpression()), !dbg !3574
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3577
  %3 = icmp eq ptr %2, null, !dbg !3579
  br i1 %3, label %4, label %5, !dbg !3580

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3581
  unreachable, !dbg !3581

5:                                                ; preds = %1
  ret ptr %2, !dbg !3582
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3583 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3570, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3573, metadata !DIExpression()), !dbg !3584
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3586
  %4 = icmp eq ptr %3, null, !dbg !3588
  br i1 %4, label %5, label %6, !dbg !3589

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3590
  unreachable, !dbg !3590

6:                                                ; preds = %2
  ret ptr %3, !dbg !3591
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3592 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %0, metadata !3596, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 1, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 1, metadata !3605, metadata !DIExpression()), !dbg !3606
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3608
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3609
  %3 = icmp eq ptr %2, null, !dbg !3611
  br i1 %3, label %4, label %5, !dbg !3612

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3613
  unreachable, !dbg !3613

5:                                                ; preds = %1
  ret ptr %2, !dbg !3614
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3597 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3596, metadata !DIExpression()), !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3599, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3616
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3619
  %4 = icmp eq ptr %3, null, !dbg !3621
  br i1 %4, label %5, label %6, !dbg !3622

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3623
  unreachable, !dbg !3623

6:                                                ; preds = %2
  ret ptr %3, !dbg !3624
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3625 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3632
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3634
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3635
  %4 = icmp eq ptr %3, null, !dbg !3637
  br i1 %4, label %5, label %6, !dbg !3638

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3639
  unreachable, !dbg !3639

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3640, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3650
  ret ptr %3, !dbg !3651
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3661
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3663
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3664
  %4 = icmp eq ptr %3, null, !dbg !3666
  br i1 %4, label %5, label %6, !dbg !3667

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3668
  unreachable, !dbg !3668

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3640, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3669
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3671
  ret ptr %3, !dbg !3672
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  %3 = add nsw i64 %1, 1, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %3, metadata !3334, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %3, metadata !3336, metadata !DIExpression()), !dbg !3684
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3686
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3687
  %5 = icmp eq ptr %4, null, !dbg !3689
  br i1 %5, label %6, label %7, !dbg !3690

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3691
  unreachable, !dbg !3691

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3679, metadata !DIExpression()), !dbg !3680
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3692
  store i8 0, ptr %8, align 1, !dbg !3693, !tbaa !898
  call void @llvm.dbg.value(metadata ptr %4, metadata !3640, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3696
  ret ptr %4, !dbg !3697
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3701
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3702
  %3 = add i64 %2, 1, !dbg !3703
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3630, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3706
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3709
  %5 = icmp eq ptr %4, null, !dbg !3711
  br i1 %5, label %6, label %7, !dbg !3712

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3713
  unreachable, !dbg !3713

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3640, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %3, metadata !3647, metadata !DIExpression()), !dbg !3714
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3716
  ret ptr %4, !dbg !3717
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3718 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3723, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3720, metadata !DIExpression()), !dbg !3724
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.113, ptr noundef nonnull @.str.2.114, i32 noundef 5) #37, !dbg !3723
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef %2) #37, !dbg !3723
  %3 = icmp eq i32 %1, 0, !dbg !3723
  tail call void @llvm.assume(i1 %3), !dbg !3723
  tail call void @abort() #39, !dbg !3725
  unreachable, !dbg !3725
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3729, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3730, metadata !DIExpression()), !dbg !3732
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #37, !dbg !3733
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3731, metadata !DIExpression()), !dbg !3732
  %5 = icmp eq i32 %4, -1, !dbg !3734
  br i1 %5, label %6, label %11, !dbg !3736

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3737
  %8 = load i32, ptr %7, align 4, !dbg !3737, !tbaa !889
  %9 = icmp eq i32 %8, 12, !dbg !3738
  br i1 %9, label %10, label %11, !dbg !3739

10:                                               ; preds = %6
  tail call void @xalloc_die() #39, !dbg !3740
  unreachable, !dbg !3740

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3780, metadata !DIExpression()), !dbg !3785
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3786
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3781, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3785
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3790
  %3 = load i32, ptr %0, align 8, !dbg !3792, !tbaa !1171
  %4 = and i32 %3, 32, !dbg !3793
  %5 = icmp eq i32 %4, 0, !dbg !3793
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3783, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3785
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3794
  %7 = icmp eq i32 %6, 0, !dbg !3795
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3785
  br i1 %5, label %8, label %18, !dbg !3796

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3798
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3785
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3799
  %11 = xor i1 %7, true, !dbg !3799
  %12 = sext i1 %11 to i32, !dbg !3799
  br i1 %10, label %21, label %13, !dbg !3799

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3800
  %15 = load i32, ptr %14, align 4, !dbg !3800, !tbaa !889
  %16 = icmp ne i32 %15, 9, !dbg !3801
  %17 = sext i1 %16 to i32, !dbg !3802
  br label %21, !dbg !3802

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3803

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3805
  store i32 0, ptr %20, align 4, !dbg !3807, !tbaa !889
  br label %21, !dbg !3805

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3785
  ret i32 %22, !dbg !3808
}

; Function Attrs: nounwind
declare !dbg !3809 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3812 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3851, metadata !DIExpression()), !dbg !3854
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3855
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3852, metadata !DIExpression()), !dbg !3854
  %3 = icmp slt i32 %2, 0, !dbg !3856
  br i1 %3, label %4, label %6, !dbg !3858

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3859
  br label %24, !dbg !3860

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3861
  %8 = icmp eq i32 %7, 0, !dbg !3861
  br i1 %8, label %13, label %9, !dbg !3863

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3864
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3865
  %12 = icmp eq i64 %11, -1, !dbg !3866
  br i1 %12, label %16, label %13, !dbg !3867

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3868
  %15 = icmp eq i32 %14, 0, !dbg !3868
  br i1 %15, label %16, label %18, !dbg !3869

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3851, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()), !dbg !3854
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3853, metadata !DIExpression()), !dbg !3854
  br label %24, !dbg !3871

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3872
  %20 = load i32, ptr %19, align 4, !dbg !3872, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3851, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()), !dbg !3854
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3853, metadata !DIExpression()), !dbg !3854
  %22 = icmp eq i32 %20, 0, !dbg !3873
  br i1 %22, label %24, label %23, !dbg !3871

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3875, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3853, metadata !DIExpression()), !dbg !3854
  br label %24, !dbg !3877

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3854
  ret i32 %25, !dbg !3878
}

; Function Attrs: nofree nounwind
declare !dbg !3879 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3880 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3881 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3882 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  %2 = icmp eq ptr %0, null, !dbg !3925
  br i1 %2, label %6, label %3, !dbg !3927

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3928
  %5 = icmp eq i32 %4, 0, !dbg !3928
  br i1 %5, label %6, label %8, !dbg !3929

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3930
  br label %16, !dbg !3931

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3932, metadata !DIExpression()), !dbg !3937
  %9 = load i32, ptr %0, align 8, !dbg !3939, !tbaa !1171
  %10 = and i32 %9, 256, !dbg !3941
  %11 = icmp eq i32 %10, 0, !dbg !3941
  br i1 %11, label %14, label %12, !dbg !3942

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3943
  br label %14, !dbg !3943

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3944
  br label %16, !dbg !3945

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3924
  ret i32 %17, !dbg !3946
}

; Function Attrs: nofree nounwind
declare !dbg !3947 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3948 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3989, metadata !DIExpression()), !dbg !3993
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3994
  %5 = load ptr, ptr %4, align 8, !dbg !3994, !tbaa !3995
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3996
  %7 = load ptr, ptr %6, align 8, !dbg !3996, !tbaa !3997
  %8 = icmp eq ptr %5, %7, !dbg !3998
  br i1 %8, label %9, label %27, !dbg !3999

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4000
  %11 = load ptr, ptr %10, align 8, !dbg !4000, !tbaa !1133
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4001
  %13 = load ptr, ptr %12, align 8, !dbg !4001, !tbaa !4002
  %14 = icmp eq ptr %11, %13, !dbg !4003
  br i1 %14, label %15, label %27, !dbg !4004

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4005
  %17 = load ptr, ptr %16, align 8, !dbg !4005, !tbaa !4006
  %18 = icmp eq ptr %17, null, !dbg !4007
  br i1 %18, label %19, label %27, !dbg !4008

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4009
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3990, metadata !DIExpression()), !dbg !4011
  %22 = icmp eq i64 %21, -1, !dbg !4012
  br i1 %22, label %29, label %23, !dbg !4014

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4015, !tbaa !1171
  %25 = and i32 %24, -17, !dbg !4015
  store i32 %25, ptr %0, align 8, !dbg !4015, !tbaa !1171
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4016
  store i64 %21, ptr %26, align 8, !dbg !4017, !tbaa !4018
  br label %29, !dbg !4019

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4020
  br label %29, !dbg !4021

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3993
  ret i32 %30, !dbg !4022
}

; Function Attrs: nofree nounwind
declare !dbg !4023 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4032, metadata !DIExpression()), !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4033, metadata !DIExpression()), !dbg !4036
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4034, metadata !DIExpression()), !dbg !4036
  %5 = icmp eq ptr %1, null, !dbg !4037
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4039
  %7 = select i1 %5, ptr @.str.128, ptr %1, !dbg !4039
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4039
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4033, metadata !DIExpression()), !dbg !4036
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4032, metadata !DIExpression()), !dbg !4036
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4031, metadata !DIExpression()), !dbg !4036
  %9 = icmp eq ptr %3, null, !dbg !4040
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4042
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4034, metadata !DIExpression()), !dbg !4036
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4035, metadata !DIExpression()), !dbg !4036
  %12 = icmp ult i64 %11, -3, !dbg !4044
  br i1 %12, label %13, label %17, !dbg !4046

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4047
  %15 = icmp eq i32 %14, 0, !dbg !4047
  br i1 %15, label %16, label %29, !dbg !4048

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %10, metadata !4056, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 0, metadata !4059, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 8, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i64 0, ptr %10, align 1, !dbg !4063
  br label %29, !dbg !4064

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4065
  br i1 %18, label %19, label %20, !dbg !4067

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4068
  unreachable, !dbg !4068

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4069

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4071
  br i1 %23, label %29, label %24, !dbg !4072

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4073
  br i1 %25, label %29, label %26, !dbg !4076

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4077, !tbaa !898
  %28 = zext i8 %27 to i32, !dbg !4078
  store i32 %28, ptr %6, align 4, !dbg !4079, !tbaa !889
  br label %29, !dbg !4080

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4036
  ret i64 %30, !dbg !4081
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4082 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !762 {
  %4 = alloca i32, align 4, !DIAssignID !4088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !774, metadata !DIExpression(), metadata !4088, metadata ptr %4, metadata !DIExpression()), !dbg !4089
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !771, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !772, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !773, metadata !DIExpression()), !dbg !4090
  %5 = icmp eq ptr %0, null, !dbg !4091
  br i1 %5, label %36, label %6, !dbg !4092

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !4093
  store i32 10, ptr %4, align 4, !dbg !4094, !tbaa !889, !DIAssignID !4095
  call void @llvm.dbg.assign(metadata i32 10, metadata !774, metadata !DIExpression(), metadata !4095, metadata ptr %4, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr null, metadata !4096, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 10, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr null, metadata !4104, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 40, metadata !4107, metadata !DIExpression()), !dbg !4108
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4110
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !777, metadata !DIExpression()), !dbg !4089
  %8 = icmp eq ptr %7, null, !dbg !4111
  br i1 %8, label %34, label %9, !dbg !4113

9:                                                ; preds = %6, %31
  %10 = phi i32 [ %20, %31 ], [ 10, %6 ], !dbg !4114
  %11 = phi ptr [ %28, %31 ], [ %7, %6 ], !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !777, metadata !DIExpression()), !dbg !4089
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !778, metadata !DIExpression()), !dbg !4116
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #37, !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !780, metadata !DIExpression()), !dbg !4116
  %13 = icmp slt i32 %12, 0, !dbg !4118
  %14 = load i32, ptr %4, align 4, !dbg !4120, !tbaa !889
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4121
  br i1 %16, label %17, label %19, !dbg !4121

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4122
  store i32 %18, ptr %4, align 4, !dbg !4122, !tbaa !889, !DIAssignID !4123
  call void @llvm.dbg.assign(metadata i32 %18, metadata !774, metadata !DIExpression(), metadata !4123, metadata ptr %4, metadata !DIExpression()), !dbg !4089
  br label %19, !dbg !4124

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4120
  call void @llvm.dbg.value(metadata ptr %11, metadata !4096, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %20, metadata !4101, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4125
  %21 = icmp slt i32 %20, 0, !dbg !4127
  br i1 %21, label %22, label %24, !dbg !4129

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #40, !dbg !4130
  store i32 12, ptr %23, align 4, !dbg !4132, !tbaa !889
  tail call void @llvm.dbg.value(metadata ptr null, metadata !781, metadata !DIExpression()), !dbg !4116
  br label %30, !dbg !4133

24:                                               ; preds = %19
  %25 = zext nneg i32 %20 to i64, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %20, metadata !4101, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4125
  %26 = shl nuw nsw i64 %25, 2, !dbg !4134
  call void @llvm.dbg.value(metadata ptr %11, metadata !4104, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %26, metadata !4107, metadata !DIExpression()), !dbg !4135
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 1), !dbg !4137
  %28 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %27) #43, !dbg !4138
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !781, metadata !DIExpression()), !dbg !4116
  %29 = icmp eq ptr %28, null, !dbg !4139
  br i1 %29, label %30, label %31, !dbg !4133

30:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #37, !dbg !4141
  br label %34, !dbg !4143

31:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !777, metadata !DIExpression()), !dbg !4089
  %32 = icmp sgt i32 %12, -1, !dbg !4144
  br i1 %32, label %33, label %9, !dbg !4146, !llvm.loop !4147

33:                                               ; preds = %31
  store ptr %28, ptr %2, align 8, !dbg !4150, !tbaa !828
  br label %34, !dbg !4152

34:                                               ; preds = %33, %30, %6
  %35 = phi i32 [ -1, %6 ], [ %20, %33 ], [ -1, %30 ], !dbg !4089
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !4153
  br label %98

36:                                               ; preds = %3
  %37 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #37, !dbg !4154
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !782, metadata !DIExpression()), !dbg !4090
  %38 = icmp slt i32 %37, 0, !dbg !4155
  br i1 %38, label %39, label %49, !dbg !4156

39:                                               ; preds = %36
  %40 = tail call ptr @__errno_location() #40, !dbg !4157
  %41 = load i32, ptr %40, align 4, !dbg !4157, !tbaa !889
  %42 = icmp eq i32 %41, 38, !dbg !4158
  br i1 %42, label %43, label %98, !dbg !4159

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr null, metadata !4096, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 1, metadata !4101, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata ptr null, metadata !4104, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 4, metadata !4107, metadata !DIExpression()), !dbg !4162
  %44 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !783, metadata !DIExpression()), !dbg !4165
  %45 = icmp eq ptr %44, null, !dbg !4166
  br i1 %45, label %98, label %46, !dbg !4168

46:                                               ; preds = %43
  store ptr %44, ptr %2, align 8, !dbg !4169, !tbaa !828
  store i32 %1, ptr %44, align 4, !dbg !4171, !tbaa !889
  %47 = icmp ne i32 %1, -1, !dbg !4172
  %48 = zext i1 %47 to i32, !dbg !4172
  br label %98

49:                                               ; preds = %36
  %50 = icmp eq i32 %37, 0, !dbg !4173
  %51 = icmp ne i32 %1, -1
  %52 = or i1 %51, %50, !dbg !4175
  %53 = zext i1 %52 to i32, !dbg !4175
  %54 = add nuw nsw i32 %37, %53, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !782, metadata !DIExpression()), !dbg !4090
  %55 = zext nneg i32 %54 to i64, !dbg !4176
  call void @llvm.dbg.value(metadata ptr null, metadata !4096, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 %55, metadata !4101, metadata !DIExpression()), !dbg !4177
  %56 = shl nuw nsw i64 %55, 2, !dbg !4179
  call void @llvm.dbg.value(metadata ptr null, metadata !4104, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 %56, metadata !4107, metadata !DIExpression()), !dbg !4180
  %57 = tail call i64 @llvm.umax.i64(i64 %56, i64 1), !dbg !4182
  %58 = tail call ptr @malloc(i64 %57), !dbg !4183
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !788, metadata !DIExpression()), !dbg !4090
  %59 = icmp eq ptr %58, null, !dbg !4184
  br i1 %59, label %98, label %60, !dbg !4186

60:                                               ; preds = %49
  %61 = sext i1 %51 to i32, !dbg !4187
  %62 = add nsw i32 %54, %61, !dbg !4188
  %63 = zext i1 %51 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !4189
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #37, !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !789, metadata !DIExpression()), !dbg !4090
  %66 = icmp slt i32 %65, 0, !dbg !4191
  br i1 %66, label %67, label %68, !dbg !4193

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #37, !dbg !4194
  br label %98, !dbg !4196

68:                                               ; preds = %60
  br i1 %51, label %69, label %71, !dbg !4197

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !4199, !tbaa !889
  %70 = add nuw nsw i32 %65, 1, !dbg !4201
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !789, metadata !DIExpression()), !dbg !4090
  br label %71, !dbg !4202

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !789, metadata !DIExpression()), !dbg !4090
  store ptr %58, ptr %2, align 8, !dbg !4203, !tbaa !828
  %73 = icmp ugt i32 %72, 1, !dbg !4204
  br i1 %73, label %74, label %98, !dbg !4205

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !4206, !tbaa !889
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !790, metadata !DIExpression()), !dbg !4207
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !4208
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !793, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4209
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !789, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !788, metadata !DIExpression()), !dbg !4090
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !4210
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !794, metadata !DIExpression()), !dbg !4209
  br label %79, !dbg !4211

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !789, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !788, metadata !DIExpression()), !dbg !4090
  %84 = load i32, ptr %81, align 4, !dbg !4212, !tbaa !889
  %85 = icmp eq i32 %84, %75, !dbg !4216
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !4217
  br i1 %87, label %88, label %90, !dbg !4217

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !4218
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !789, metadata !DIExpression()), !dbg !4090
  br label %92, !dbg !4219

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !4220
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !788, metadata !DIExpression()), !dbg !4090
  store i32 %84, ptr %91, align 4, !dbg !4221, !tbaa !889
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !4090
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !789, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %94, metadata !788, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4209
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !4210
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !794, metadata !DIExpression()), !dbg !4209
  %97 = icmp ult ptr %96, %77, !dbg !4222
  br i1 %97, label %79, label %98, !dbg !4211, !llvm.loop !4223

98:                                               ; preds = %92, %43, %39, %46, %67, %71, %49, %34
  %99 = phi i32 [ %35, %34 ], [ %48, %46 ], [ -1, %49 ], [ -1, %67 ], [ %72, %71 ], [ -1, %39 ], [ -1, %43 ], [ %95, %92 ], !dbg !4090
  ret i32 %99, !dbg !4225
}

declare !dbg !4226 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4232, metadata !DIExpression()), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4234, metadata !DIExpression()), !dbg !4236
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4237
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4235, metadata !DIExpression()), !dbg !4236
  br i1 %5, label %6, label %8, !dbg !4239

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4240
  store i32 12, ptr %7, align 4, !dbg !4242, !tbaa !889
  br label %12, !dbg !4243

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %9, metadata !4247, metadata !DIExpression()), !dbg !4248
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4250
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4251
  br label %12, !dbg !4252

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4236
  ret ptr %13, !dbg !4253
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4254 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4263
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4259, metadata !DIExpression(), metadata !4263, metadata ptr %2, metadata !DIExpression()), !dbg !4264
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4258, metadata !DIExpression()), !dbg !4264
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4265
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4266
  %4 = icmp eq i32 %3, 0, !dbg !4266
  br i1 %4, label %5, label %12, !dbg !4268

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4269, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata !856, metadata !4272, metadata !DIExpression()), !dbg !4273
  %6 = load i16, ptr %2, align 16, !dbg !4276
  %7 = icmp eq i16 %6, 67, !dbg !4276
  br i1 %7, label %11, label %8, !dbg !4277

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4269, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !4272, metadata !DIExpression()), !dbg !4278
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !4280
  %10 = icmp eq i32 %9, 0, !dbg !4281
  br i1 %10, label %11, label %12, !dbg !4282

11:                                               ; preds = %8, %5
  br label %12, !dbg !4283

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4264
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4284
  ret i1 %13, !dbg !4284
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4289, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4290, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4291, metadata !DIExpression()), !dbg !4292
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4293
  ret i32 %4, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4300
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4301
  ret ptr %2, !dbg !4302
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4303 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4305, metadata !DIExpression()), !dbg !4307
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4308
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4306, metadata !DIExpression()), !dbg !4307
  ret ptr %2, !dbg !4309
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4310 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()), !dbg !4319
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4313, metadata !DIExpression()), !dbg !4319
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4314, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 %0, metadata !4305, metadata !DIExpression()), !dbg !4320
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4322
  call void @llvm.dbg.value(metadata ptr %4, metadata !4306, metadata !DIExpression()), !dbg !4320
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4315, metadata !DIExpression()), !dbg !4319
  %5 = icmp eq ptr %4, null, !dbg !4323
  br i1 %5, label %6, label %9, !dbg !4324

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4325
  br i1 %7, label %19, label %8, !dbg !4328

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4329, !tbaa !898
  br label %19, !dbg !4330

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4316, metadata !DIExpression()), !dbg !4332
  %11 = icmp ult i64 %10, %2, !dbg !4333
  br i1 %11, label %12, label %14, !dbg !4335

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %1, metadata !4338, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %4, metadata !4341, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64 %13, metadata !4342, metadata !DIExpression()), !dbg !4343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4345
  br label %19, !dbg !4346

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4347
  br i1 %15, label %19, label %16, !dbg !4350

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4351
  call void @llvm.dbg.value(metadata ptr %1, metadata !4338, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr %4, metadata !4341, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %17, metadata !4342, metadata !DIExpression()), !dbg !4353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4355
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4356
  store i8 0, ptr %18, align 1, !dbg !4357, !tbaa !898
  br label %19, !dbg !4358

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4359
  ret i32 %20, !dbg !4360
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!49, !694, !348, !352, !367, !662, !700, !702, !418, !432, !483, !704, !654, !711, !746, !748, !750, !752, !754, !756, !678, !758, !799, !801, !805, !807}
!llvm.ident = !{!809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809, !809}
!llvm.module.flags = !{!810, !811, !812, !813, !814, !815, !816}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/groups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d48dc102a9c02fb59e67fc9e395fa6a9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!55 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!56 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!366 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !367, file: !368, line: 66, type: !413, isLocal: false, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !369, globals: !370, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!369 = !{!75, !82}
!370 = !{!371, !373, !392, !394, !396, !398, !365, !400, !402, !404, !406, !411}
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !368, line: 272, type: !203, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "old_file_name", scope: !375, file: !368, line: 304, type: !80, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "verror_at_line", scope: !368, file: !368, line: 298, type: !376, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !385)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !53, !53, !80, !59, !80, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !379, file: !368, baseType: !59, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !379, file: !368, baseType: !59, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !379, file: !368, baseType: !75, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !379, file: !368, baseType: !75, size: 64, offset: 128)
!385 = !{!386, !387, !388, !389, !390, !391}
!386 = !DILocalVariable(name: "status", arg: 1, scope: !375, file: !368, line: 298, type: !53)
!387 = !DILocalVariable(name: "errnum", arg: 2, scope: !375, file: !368, line: 298, type: !53)
!388 = !DILocalVariable(name: "file_name", arg: 3, scope: !375, file: !368, line: 298, type: !80)
!389 = !DILocalVariable(name: "line_number", arg: 4, scope: !375, file: !368, line: 298, type: !59)
!390 = !DILocalVariable(name: "message", arg: 5, scope: !375, file: !368, line: 298, type: !80)
!391 = !DILocalVariable(name: "args", arg: 6, scope: !375, file: !368, line: 298, type: !378)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "old_line_number", scope: !375, file: !368, line: 305, type: !59, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !368, line: 338, type: !210, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !239, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !217, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "error_message_count", scope: !367, file: !368, line: 69, type: !59, isLocal: false, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !367, file: !368, line: 295, type: !53, isLocal: false, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !19, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 21)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !368, line: 214, type: !203, isLocal: true, isDefinition: true)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "program_name", scope: !418, file: !419, line: 31, type: !80, isLocal: false, isDefinition: true)
!418 = distinct !DICompileUnit(language: DW_LANG_C11, file: !419, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, globals: !421, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!420 = !{!75, !74}
!421 = !{!416, !422, !424}
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !419, line: 46, type: !239, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !419, line: 49, type: !210, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "utf07FF", scope: !428, file: !429, line: 46, type: !456, isLocal: true, isDefinition: true)
!428 = distinct !DISubprogram(name: "proper_name_lite", scope: !429, file: !429, line: 38, type: !430, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !434)
!429 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!430 = !DISubroutineType(types: !431)
!431 = !{!80, !80, !80}
!432 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !433, splitDebugInlining: false, nameTableKind: None)
!433 = !{!426}
!434 = !{!435, !436, !437, !438, !443}
!435 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !428, file: !429, line: 38, type: !80)
!436 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !428, file: !429, line: 38, type: !80)
!437 = !DILocalVariable(name: "translation", scope: !428, file: !429, line: 40, type: !80)
!438 = !DILocalVariable(name: "w", scope: !428, file: !429, line: 47, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !440, line: 37, baseType: !441)
!440 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !59)
!443 = !DILocalVariable(name: "mbs", scope: !428, file: !429, line: 48, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !448)
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !448, file: !447, line: 15, baseType: !53, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !448, file: !447, line: 20, baseType: !452, size: 32, offset: 32)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !447, line: 16, size: 32, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !452, file: !447, line: 18, baseType: !59, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !452, file: !447, line: 19, baseType: !210, size: 32)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !218)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !459, line: 78, type: !239, isLocal: true, isDefinition: true)
!459 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !459, line: 79, type: !118, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 80, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 13)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !459, line: 81, type: !464, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !459, line: 82, type: !101, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !459, line: 83, type: !217, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !459, line: 84, type: !239, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !459, line: 85, type: !19, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !459, line: 86, type: !19, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !459, line: 87, type: !239, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !483, file: !459, line: 76, type: !569, isLocal: false, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !484, retainedTypes: !504, globals: !505, splitDebugInlining: false, nameTableKind: None)
!484 = !{!485, !499, !57}
!485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !486, line: 42, baseType: !59, size: 32, elements: !487)
!486 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!488 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!489 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!490 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!491 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!492 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!493 = !DIEnumerator(name: "c_quoting_style", value: 5)
!494 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!495 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!496 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!497 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!498 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!499 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !486, line: 254, baseType: !59, size: 32, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!502 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!503 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!504 = !{!75, !53, !76, !77}
!505 = !{!457, !460, !462, !467, !469, !471, !473, !475, !477, !479, !481, !506, !510, !520, !522, !527, !529, !531, !533, !535, !558, !565, !567}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !483, file: !459, line: 92, type: !508, isLocal: false, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 320, elements: !40)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !483, file: !459, line: 1040, type: !512, isLocal: false, isDefinition: true)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !459, line: 56, size: 448, elements: !513)
!513 = !{!514, !515, !516, !518, !519}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !512, file: !459, line: 59, baseType: !485, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !459, line: 62, baseType: !53, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !512, file: !459, line: 66, baseType: !517, size: 256, offset: 64)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !240)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !512, file: !459, line: 69, baseType: !80, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !512, file: !459, line: 72, baseType: !80, size: 64, offset: 384)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !483, file: !459, line: 107, type: !512, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "slot0", scope: !483, file: !459, line: 831, type: !524, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 256)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !459, line: 321, type: !217, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !459, line: 357, type: !217, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !459, line: 358, type: !217, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !459, line: 199, type: !19, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "quote", scope: !537, file: !459, line: 228, type: !556, isLocal: true, isDefinition: true)
!537 = distinct !DISubprogram(name: "gettext_quote", scope: !459, file: !459, line: 197, type: !538, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!80, !80, !485}
!540 = !{!541, !542, !543, !544, !545}
!541 = !DILocalVariable(name: "msgid", arg: 1, scope: !537, file: !459, line: 197, type: !80)
!542 = !DILocalVariable(name: "s", arg: 2, scope: !537, file: !459, line: 197, type: !485)
!543 = !DILocalVariable(name: "translation", scope: !537, file: !459, line: 199, type: !80)
!544 = !DILocalVariable(name: "w", scope: !537, file: !459, line: 229, type: !439)
!545 = !DILocalVariable(name: "mbs", scope: !537, file: !459, line: 230, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !548, file: !447, line: 15, baseType: !53, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !548, file: !447, line: 20, baseType: !552, size: 32, offset: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !447, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !552, file: !447, line: 18, baseType: !59, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !552, file: !447, line: 19, baseType: !210, size: 32)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !557)
!557 = !{!219, !212}
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "slotvec", scope: !483, file: !459, line: 834, type: !560, isLocal: true, isDefinition: true)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !459, line: 823, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !459, line: 825, baseType: !77, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !561, file: !459, line: 826, baseType: !74, size: 64, offset: 64)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "nslots", scope: !483, file: !459, line: 832, type: !53, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "slotvec0", scope: !483, file: !459, line: 833, type: !561, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 704, elements: !571)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!571 = !{!572}
!572 = !DISubrange(count: 11)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !575, line: 67, type: !304, isLocal: true, isDefinition: true)
!575 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !575, line: 69, type: !19, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !575, line: 83, type: !19, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !575, line: 83, type: !210, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !575, line: 85, type: !217, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !575, line: 88, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 171)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !575, line: 88, type: !336, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !575, line: 105, type: !91, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !575, line: 109, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 23)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !575, line: 113, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 28)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !575, line: 120, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 32)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !575, line: 127, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 36)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !575, line: 134, type: !258, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !575, line: 142, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 44)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !575, line: 150, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 48)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !575, line: 159, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 52)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !575, line: 170, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 60)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !575, line: 248, type: !101, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !575, line: 248, type: !280, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !575, line: 254, type: !101, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !575, line: 254, type: !86, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !575, line: 254, type: !258, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !575, line: 259, type: !3, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !575, line: 259, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 29)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !654, file: !655, line: 26, type: !657, isLocal: false, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !655, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!656 = !{!652}
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 47)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "exit_failure", scope: !662, file: !663, line: 24, type: !665, isLocal: false, isDefinition: true)
!662 = distinct !DICompileUnit(language: DW_LANG_C11, file: !663, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !664, splitDebugInlining: false, nameTableKind: None)
!663 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!664 = !{!660}
!665 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !668, line: 34, type: !226, isLocal: true, isDefinition: true)
!668 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !668, line: 34, type: !19, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !668, line: 34, type: !113, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 108, type: !34, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "internal_state", scope: !678, file: !675, line: 97, type: !681, isLocal: true, isDefinition: true)
!678 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !679, globals: !680, splitDebugInlining: false, nameTableKind: None)
!679 = !{!75, !77, !82}
!680 = !{!673, !676}
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !683, file: !447, line: 15, baseType: !53, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !683, file: !447, line: 20, baseType: !687, size: 32, offset: 32)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !447, line: 16, size: 32, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !687, file: !447, line: 18, baseType: !59, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !687, file: !447, line: 19, baseType: !210, size: 32)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !693, line: 35, type: !118, isLocal: true, isDefinition: true)
!693 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !325, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/group-list.o -MD -MP -MF src/.deps/group-list.Tpo -c src/group-list.c -o src/.group-list.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !695, globals: !699, splitDebugInlining: false, nameTableKind: None)
!695 = !{!75, !696, !82}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !697, line: 102, baseType: !698)
!697 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !173, line: 73, baseType: !79)
!699 = !{!323, !329, !334, !339, !341}
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !575, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !705, retainedTypes: !709, globals: !710, splitDebugInlining: false, nameTableKind: None)
!705 = !{!706}
!706 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !575, line: 40, baseType: !59, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!709 = !{!75}
!710 = !{!573, !576, !578, !580, !582, !584, !589, !591, !593, !598, !603, !608, !613, !615, !620, !625, !630, !635, !637, !639, !641, !643, !645, !647}
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !745, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!713 = !{!714, !726}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !715, file: !712, line: 188, baseType: !59, size: 32, elements: !724)
!715 = distinct !DISubprogram(name: "x2nrealloc", scope: !712, file: !712, line: 176, type: !716, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !719)
!716 = !DISubroutineType(types: !717)
!717 = !{!75, !75, !718, !77}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(name: "p", arg: 1, scope: !715, file: !712, line: 176, type: !75)
!721 = !DILocalVariable(name: "pn", arg: 2, scope: !715, file: !712, line: 176, type: !718)
!722 = !DILocalVariable(name: "s", arg: 3, scope: !715, file: !712, line: 176, type: !77)
!723 = !DILocalVariable(name: "n", scope: !715, file: !712, line: 178, type: !77)
!724 = !{!725}
!725 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !727, file: !712, line: 228, baseType: !59, size: 32, elements: !724)
!727 = distinct !DISubprogram(name: "xpalloc", scope: !712, file: !712, line: 223, type: !728, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !735)
!728 = !DISubroutineType(types: !729)
!729 = !{!75, !75, !730, !731, !733, !731}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !732, line: 130, baseType: !733)
!732 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !734, line: 18, baseType: !174)
!734 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744}
!736 = !DILocalVariable(name: "pa", arg: 1, scope: !727, file: !712, line: 223, type: !75)
!737 = !DILocalVariable(name: "pn", arg: 2, scope: !727, file: !712, line: 223, type: !730)
!738 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !727, file: !712, line: 223, type: !731)
!739 = !DILocalVariable(name: "n_max", arg: 4, scope: !727, file: !712, line: 223, type: !733)
!740 = !DILocalVariable(name: "s", arg: 5, scope: !727, file: !712, line: 223, type: !731)
!741 = !DILocalVariable(name: "n0", scope: !727, file: !712, line: 230, type: !731)
!742 = !DILocalVariable(name: "n", scope: !727, file: !712, line: 237, type: !731)
!743 = !DILocalVariable(name: "nbytes", scope: !727, file: !712, line: 248, type: !731)
!744 = !DILocalVariable(name: "adjusted_nbytes", scope: !727, file: !712, line: 252, type: !731)
!745 = !{!74, !75}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !747, splitDebugInlining: false, nameTableKind: None)
!747 = !{!666, !669, !671}
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetgroups.Tpo -c lib/xgetgroups.c -o lib/.libcoreutils_a-xgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-mgetgroups.Tpo -c lib/mgetgroups.c -o lib/.libcoreutils_a-mgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !760, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!760 = !{!761}
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !762, file: !759, line: 79, baseType: !59, size: 32, elements: !796)
!762 = distinct !DISubprogram(name: "mgetgroups", scope: !759, file: !759, line: 66, type: !763, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !770)
!763 = !DISubroutineType(types: !764)
!764 = !{!53, !80, !765, !768}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !766, line: 64, baseType: !767)
!766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !173, line: 147, baseType: !59)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!770 = !{!771, !772, !773, !774, !777, !778, !780, !781, !782, !783, !788, !789, !790, !793, !794}
!771 = !DILocalVariable(name: "username", arg: 1, scope: !762, file: !759, line: 66, type: !80)
!772 = !DILocalVariable(name: "gid", arg: 2, scope: !762, file: !759, line: 66, type: !765)
!773 = !DILocalVariable(name: "groups", arg: 3, scope: !762, file: !759, line: 66, type: !768)
!774 = !DILocalVariable(name: "max_n_groups", scope: !775, file: !759, line: 80, type: !53)
!775 = distinct !DILexicalBlock(scope: !776, file: !759, line: 78, column: 5)
!776 = distinct !DILexicalBlock(scope: !762, file: !759, line: 77, column: 7)
!777 = !DILocalVariable(name: "g", scope: !775, file: !759, line: 82, type: !769)
!778 = !DILocalVariable(name: "last_n_groups", scope: !779, file: !759, line: 88, type: !53)
!779 = distinct !DILexicalBlock(scope: !775, file: !759, line: 87, column: 9)
!780 = !DILocalVariable(name: "ng", scope: !779, file: !759, line: 91, type: !53)
!781 = !DILocalVariable(name: "h", scope: !779, file: !759, line: 98, type: !769)
!782 = !DILocalVariable(name: "max_n_groups", scope: !762, file: !759, line: 118, type: !53)
!783 = !DILocalVariable(name: "g", scope: !784, file: !759, line: 129, type: !769)
!784 = distinct !DILexicalBlock(scope: !785, file: !759, line: 128, column: 9)
!785 = distinct !DILexicalBlock(scope: !786, file: !759, line: 127, column: 11)
!786 = distinct !DILexicalBlock(scope: !787, file: !759, line: 126, column: 5)
!787 = distinct !DILexicalBlock(scope: !762, file: !759, line: 125, column: 7)
!788 = !DILocalVariable(name: "g", scope: !762, file: !759, line: 142, type: !769)
!789 = !DILocalVariable(name: "ng", scope: !762, file: !759, line: 146, type: !53)
!790 = !DILocalVariable(name: "first", scope: !791, file: !759, line: 183, type: !765)
!791 = distinct !DILexicalBlock(scope: !792, file: !759, line: 182, column: 5)
!792 = distinct !DILexicalBlock(scope: !762, file: !759, line: 181, column: 7)
!793 = !DILocalVariable(name: "groups_end", scope: !791, file: !759, line: 184, type: !769)
!794 = !DILocalVariable(name: "next", scope: !795, file: !759, line: 186, type: !769)
!795 = distinct !DILexicalBlock(scope: !791, file: !759, line: 186, column: 7)
!796 = !{!797}
!797 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!798 = !{!75, !765}
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!801 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !802, splitDebugInlining: false, nameTableKind: None)
!802 = !{!803, !691}
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !693, line: 35, type: !217, isLocal: true, isDefinition: true)
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!809 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!810 = !{i32 7, !"Dwarf Version", i32 5}
!811 = !{i32 2, !"Debug Info Version", i32 3}
!812 = !{i32 1, !"wchar_size", i32 4}
!813 = !{i32 8, !"PIC Level", i32 2}
!814 = !{i32 7, !"PIE Level", i32 2}
!815 = !{i32 7, !"uwtable", i32 2}
!816 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!817 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !818, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !53}
!820 = !{!821}
!821 = !DILocalVariable(name: "status", arg: 1, scope: !817, file: !2, line: 47, type: !53)
!822 = !DILocation(line: 0, scope: !817)
!823 = !DILocation(line: 49, column: 14, scope: !824)
!824 = distinct !DILexicalBlock(scope: !817, file: !2, line: 49, column: 7)
!825 = !DILocation(line: 49, column: 7, scope: !817)
!826 = !DILocation(line: 50, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !2, line: 50, column: 5)
!828 = !{!829, !829, i64 0}
!829 = !{!"any pointer", !830, i64 0}
!830 = !{!"omnipotent char", !831, i64 0}
!831 = !{!"Simple C/C++ TBAA"}
!832 = !DILocation(line: 53, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !824, file: !2, line: 52, column: 5)
!834 = !DILocation(line: 54, column: 7, scope: !833)
!835 = !DILocation(line: 59, column: 7, scope: !833)
!836 = !DILocation(line: 60, column: 7, scope: !833)
!837 = !DILocalVariable(name: "program", arg: 1, scope: !838, file: !52, line: 836, type: !80)
!838 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !52, file: !52, line: 836, type: !839, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !80}
!841 = !{!837, !842, !849, !850, !852, !853}
!842 = !DILocalVariable(name: "infomap", scope: !838, file: !52, line: 838, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 896, elements: !20)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !838, file: !52, line: 838, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !845, file: !52, line: 838, baseType: !80, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !845, file: !52, line: 838, baseType: !80, size: 64, offset: 64)
!849 = !DILocalVariable(name: "node", scope: !838, file: !52, line: 848, type: !80)
!850 = !DILocalVariable(name: "map_prog", scope: !838, file: !52, line: 849, type: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!852 = !DILocalVariable(name: "lc_messages", scope: !838, file: !52, line: 861, type: !80)
!853 = !DILocalVariable(name: "url_program", scope: !838, file: !52, line: 874, type: !80)
!854 = !DILocation(line: 0, scope: !838, inlinedAt: !855)
!855 = distinct !DILocation(line: 61, column: 7, scope: !833)
!856 = !{}
!857 = !DILocation(line: 857, column: 3, scope: !838, inlinedAt: !855)
!858 = !DILocation(line: 861, column: 29, scope: !838, inlinedAt: !855)
!859 = !DILocation(line: 862, column: 7, scope: !860, inlinedAt: !855)
!860 = distinct !DILexicalBlock(scope: !838, file: !52, line: 862, column: 7)
!861 = !DILocation(line: 862, column: 19, scope: !860, inlinedAt: !855)
!862 = !DILocation(line: 862, column: 22, scope: !860, inlinedAt: !855)
!863 = !DILocation(line: 862, column: 7, scope: !838, inlinedAt: !855)
!864 = !DILocation(line: 868, column: 7, scope: !865, inlinedAt: !855)
!865 = distinct !DILexicalBlock(scope: !860, file: !52, line: 863, column: 5)
!866 = !DILocation(line: 870, column: 5, scope: !865, inlinedAt: !855)
!867 = !DILocation(line: 875, column: 3, scope: !838, inlinedAt: !855)
!868 = !DILocation(line: 877, column: 3, scope: !838, inlinedAt: !855)
!869 = !DILocation(line: 63, column: 3, scope: !817)
!870 = !DISubprogram(name: "dcgettext", scope: !871, file: !871, line: 51, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!872 = !DISubroutineType(types: !873)
!873 = !{!74, !80, !80, !53}
!874 = !DISubprogram(name: "__fprintf_chk", scope: !875, file: !875, line: 93, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!876 = !DISubroutineType(types: !877)
!877 = !{!53, !878, !53, !879, null}
!878 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!880 = !DISubprogram(name: "__printf_chk", scope: !875, file: !875, line: 95, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{!53, !53, !879, null}
!883 = !DISubprogram(name: "fputs_unlocked", scope: !884, file: !884, line: 691, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!885 = !DISubroutineType(types: !886)
!886 = !{!53, !879, !878}
!887 = !DILocation(line: 0, scope: !123)
!888 = !DILocation(line: 581, column: 7, scope: !131)
!889 = !{!890, !890, i64 0}
!890 = !{!"int", !830, i64 0}
!891 = !DILocation(line: 581, column: 19, scope: !131)
!892 = !DILocation(line: 581, column: 7, scope: !123)
!893 = !DILocation(line: 585, column: 26, scope: !130)
!894 = !DILocation(line: 0, scope: !130)
!895 = !DILocation(line: 586, column: 23, scope: !130)
!896 = !DILocation(line: 586, column: 28, scope: !130)
!897 = !DILocation(line: 586, column: 32, scope: !130)
!898 = !{!830, !830, i64 0}
!899 = !DILocation(line: 586, column: 38, scope: !130)
!900 = !DILocalVariable(name: "__s1", arg: 1, scope: !901, file: !902, line: 1359, type: !80)
!901 = distinct !DISubprogram(name: "streq", scope: !902, file: !902, line: 1359, type: !903, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !905)
!902 = !DIFile(filename: "./lib/string.h", directory: "/src")
!903 = !DISubroutineType(types: !904)
!904 = !{!133, !80, !80}
!905 = !{!900, !906}
!906 = !DILocalVariable(name: "__s2", arg: 2, scope: !901, file: !902, line: 1359, type: !80)
!907 = !DILocation(line: 0, scope: !901, inlinedAt: !908)
!908 = distinct !DILocation(line: 586, column: 41, scope: !130)
!909 = !DILocation(line: 1361, column: 11, scope: !901, inlinedAt: !908)
!910 = !DILocation(line: 1361, column: 10, scope: !901, inlinedAt: !908)
!911 = !DILocation(line: 586, column: 19, scope: !130)
!912 = !DILocation(line: 587, column: 5, scope: !130)
!913 = !DILocation(line: 588, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !123, file: !52, line: 588, column: 7)
!915 = !DILocation(line: 588, column: 7, scope: !123)
!916 = !DILocation(line: 590, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !52, line: 589, column: 5)
!918 = !DILocation(line: 591, column: 7, scope: !917)
!919 = !DILocation(line: 595, column: 37, scope: !123)
!920 = !DILocation(line: 595, column: 35, scope: !123)
!921 = !DILocation(line: 596, column: 29, scope: !123)
!922 = !DILocation(line: 597, column: 8, scope: !139)
!923 = !DILocation(line: 597, column: 7, scope: !123)
!924 = !DILocation(line: 604, column: 24, scope: !138)
!925 = !DILocation(line: 604, column: 12, scope: !139)
!926 = !DILocation(line: 0, scope: !137)
!927 = !DILocation(line: 610, column: 16, scope: !137)
!928 = !DILocation(line: 610, column: 7, scope: !137)
!929 = !DILocation(line: 611, column: 21, scope: !137)
!930 = !{!931, !931, i64 0}
!931 = !{!"short", !830, i64 0}
!932 = !DILocation(line: 611, column: 19, scope: !137)
!933 = !DILocation(line: 611, column: 16, scope: !137)
!934 = !DILocation(line: 610, column: 30, scope: !137)
!935 = distinct !{!935, !928, !929, !936}
!936 = !{!"llvm.loop.mustprogress"}
!937 = !DILocation(line: 612, column: 18, scope: !938)
!938 = distinct !DILexicalBlock(scope: !137, file: !52, line: 612, column: 11)
!939 = !DILocation(line: 612, column: 11, scope: !137)
!940 = !DILocation(line: 620, column: 23, scope: !123)
!941 = !DILocation(line: 625, column: 39, scope: !123)
!942 = !DILocation(line: 626, column: 3, scope: !123)
!943 = !DILocation(line: 626, column: 10, scope: !123)
!944 = !DILocation(line: 626, column: 21, scope: !123)
!945 = !DILocation(line: 628, column: 44, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !52, line: 628, column: 11)
!947 = distinct !DILexicalBlock(scope: !123, file: !52, line: 627, column: 5)
!948 = !DILocation(line: 628, column: 32, scope: !946)
!949 = !DILocation(line: 628, column: 49, scope: !946)
!950 = !DILocation(line: 628, column: 11, scope: !947)
!951 = !DILocation(line: 630, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !52, line: 630, column: 11)
!953 = !DILocation(line: 630, column: 11, scope: !947)
!954 = !DILocation(line: 632, column: 26, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !52, line: 632, column: 15)
!956 = distinct !DILexicalBlock(scope: !952, file: !52, line: 631, column: 9)
!957 = !DILocation(line: 632, column: 34, scope: !955)
!958 = !DILocation(line: 632, column: 37, scope: !955)
!959 = !DILocation(line: 632, column: 15, scope: !956)
!960 = !DILocation(line: 636, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !52, line: 636, column: 15)
!962 = !DILocation(line: 636, column: 29, scope: !961)
!963 = !DILocation(line: 640, column: 16, scope: !947)
!964 = distinct !{!964, !942, !965, !936}
!965 = !DILocation(line: 641, column: 5, scope: !123)
!966 = !DILocation(line: 644, column: 3, scope: !123)
!967 = !DILocation(line: 0, scope: !901, inlinedAt: !968)
!968 = distinct !DILocation(line: 648, column: 31, scope: !123)
!969 = !DILocation(line: 0, scope: !901, inlinedAt: !970)
!970 = distinct !DILocation(line: 649, column: 31, scope: !123)
!971 = !DILocation(line: 0, scope: !901, inlinedAt: !972)
!972 = distinct !DILocation(line: 650, column: 31, scope: !123)
!973 = !DILocation(line: 0, scope: !901, inlinedAt: !974)
!974 = distinct !DILocation(line: 651, column: 31, scope: !123)
!975 = !DILocation(line: 0, scope: !901, inlinedAt: !976)
!976 = distinct !DILocation(line: 652, column: 31, scope: !123)
!977 = !DILocation(line: 0, scope: !901, inlinedAt: !978)
!978 = distinct !DILocation(line: 653, column: 31, scope: !123)
!979 = !DILocation(line: 0, scope: !901, inlinedAt: !980)
!980 = distinct !DILocation(line: 654, column: 31, scope: !123)
!981 = !DILocation(line: 0, scope: !901, inlinedAt: !982)
!982 = distinct !DILocation(line: 655, column: 31, scope: !123)
!983 = !DILocation(line: 0, scope: !901, inlinedAt: !984)
!984 = distinct !DILocation(line: 656, column: 31, scope: !123)
!985 = !DILocation(line: 0, scope: !901, inlinedAt: !986)
!986 = distinct !DILocation(line: 657, column: 31, scope: !123)
!987 = !DILocation(line: 663, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !123, file: !52, line: 663, column: 7)
!989 = !DILocation(line: 664, column: 7, scope: !988)
!990 = !DILocation(line: 664, column: 10, scope: !988)
!991 = !DILocation(line: 663, column: 7, scope: !123)
!992 = !DILocation(line: 669, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !52, line: 665, column: 5)
!994 = !DILocation(line: 671, column: 5, scope: !993)
!995 = !DILocation(line: 676, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !52, line: 673, column: 5)
!997 = !DILocation(line: 679, column: 3, scope: !123)
!998 = !DILocation(line: 683, column: 3, scope: !123)
!999 = !DILocation(line: 686, column: 3, scope: !123)
!1000 = !DILocation(line: 688, column: 3, scope: !123)
!1001 = !DILocation(line: 691, column: 3, scope: !123)
!1002 = !DILocation(line: 695, column: 3, scope: !123)
!1003 = !DILocation(line: 696, column: 1, scope: !123)
!1004 = !DISubprogram(name: "setlocale", scope: !1005, file: !1005, line: 122, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!74, !53, !80}
!1008 = !DISubprogram(name: "strncmp", scope: !1009, file: !1009, line: 159, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!53, !80, !80, !77}
!1012 = !DISubprogram(name: "exit", scope: !1013, file: !1013, line: 624, type: !818, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1013 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1014 = !DISubprogram(name: "getenv", scope: !1013, file: !1013, line: 641, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!74, !80}
!1017 = !DISubprogram(name: "strcmp", scope: !1009, file: !1009, line: 156, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!53, !80, !80}
!1020 = !DISubprogram(name: "strspn", scope: !1009, file: !1009, line: 297, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!79, !80, !80}
!1023 = !DISubprogram(name: "strchr", scope: !1009, file: !1009, line: 246, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!74, !80, !53}
!1026 = !DISubprogram(name: "__ctype_b_loc", scope: !58, file: !58, line: 79, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1032 = !DISubprogram(name: "strcspn", scope: !1009, file: !1009, line: 293, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DISubprogram(name: "fwrite_unlocked", scope: !884, file: !884, line: 704, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!77, !1036, !77, !77, !878}
!1036 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1039 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 67, type: !1040, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1043)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!53, !53, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1053, !1054, !1055, !1056, !1057, !1073, !1074, !1075}
!1044 = !DILocalVariable(name: "argc", arg: 1, scope: !1039, file: !2, line: 67, type: !53)
!1045 = !DILocalVariable(name: "argv", arg: 2, scope: !1039, file: !2, line: 67, type: !1042)
!1046 = !DILocalVariable(name: "optc", scope: !1039, file: !2, line: 79, type: !53)
!1047 = !DILocalVariable(name: "ok", scope: !1039, file: !2, line: 91, type: !133)
!1048 = !DILocalVariable(name: "NO_UID", scope: !1049, file: !2, line: 95, type: !1051)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 93, column: 5)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 92, column: 7)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !766, line: 79, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !173, line: 146, baseType: !59)
!1053 = !DILocalVariable(name: "NO_GID", scope: !1049, file: !2, line: 96, type: !765)
!1054 = !DILocalVariable(name: "ruid", scope: !1049, file: !2, line: 99, type: !1051)
!1055 = !DILocalVariable(name: "egid", scope: !1049, file: !2, line: 104, type: !765)
!1056 = !DILocalVariable(name: "rgid", scope: !1049, file: !2, line: 109, type: !765)
!1057 = !DILocalVariable(name: "pwd", scope: !1058, file: !2, line: 122, type: !1062)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 121, column: 9)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 120, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 120, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 118, column: 5)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1064, line: 49, size: 384, elements: !1065)
!1064 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1063, file: !1064, line: 51, baseType: !74, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1063, file: !1064, line: 52, baseType: !74, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1063, file: !1064, line: 54, baseType: !1052, size: 32, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1063, file: !1064, line: 55, baseType: !767, size: 32, offset: 160)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1063, file: !1064, line: 56, baseType: !74, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1063, file: !1064, line: 57, baseType: !74, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1063, file: !1064, line: 58, baseType: !74, size: 64, offset: 320)
!1073 = !DILocalVariable(name: "ruid", scope: !1058, file: !2, line: 129, type: !1051)
!1074 = !DILocalVariable(name: "rgid", scope: !1058, file: !2, line: 130, type: !765)
!1075 = !DILocalVariable(name: "egid", scope: !1058, file: !2, line: 131, type: !765)
!1076 = !DILocation(line: 0, scope: !1039)
!1077 = !DILocation(line: 70, column: 21, scope: !1039)
!1078 = !DILocation(line: 70, column: 3, scope: !1039)
!1079 = !DILocation(line: 71, column: 3, scope: !1039)
!1080 = !DILocation(line: 72, column: 3, scope: !1039)
!1081 = !DILocation(line: 73, column: 3, scope: !1039)
!1082 = !DILocation(line: 75, column: 3, scope: !1039)
!1083 = !DILocation(line: 80, column: 18, scope: !1039)
!1084 = !DILocation(line: 80, column: 3, scope: !1039)
!1085 = !DILocation(line: 84, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 83, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 81, column: 5)
!1088 = !DILocation(line: 85, column: 9, scope: !1086)
!1089 = !DILocation(line: 87, column: 11, scope: !1086)
!1090 = !DILocation(line: 92, column: 7, scope: !1050)
!1091 = !DILocation(line: 92, column: 14, scope: !1050)
!1092 = !DILocation(line: 92, column: 7, scope: !1039)
!1093 = !DILocation(line: 120, column: 22, scope: !1059)
!1094 = !DILocation(line: 120, column: 7, scope: !1060)
!1095 = !DILocation(line: 0, scope: !1049)
!1096 = !DILocation(line: 98, column: 7, scope: !1049)
!1097 = !DILocation(line: 98, column: 13, scope: !1049)
!1098 = !DILocation(line: 99, column: 20, scope: !1049)
!1099 = !DILocation(line: 100, column: 16, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 100, column: 11)
!1101 = !DILocation(line: 100, column: 26, scope: !1100)
!1102 = !DILocation(line: 100, column: 29, scope: !1100)
!1103 = !DILocation(line: 100, column: 11, scope: !1049)
!1104 = !DILocation(line: 101, column: 9, scope: !1100)
!1105 = !DILocation(line: 103, column: 13, scope: !1049)
!1106 = !DILocation(line: 104, column: 20, scope: !1049)
!1107 = !DILocation(line: 105, column: 16, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 105, column: 11)
!1109 = !DILocation(line: 105, column: 26, scope: !1108)
!1110 = !DILocation(line: 105, column: 29, scope: !1108)
!1111 = !DILocation(line: 105, column: 11, scope: !1049)
!1112 = !DILocation(line: 106, column: 9, scope: !1108)
!1113 = !DILocation(line: 108, column: 13, scope: !1049)
!1114 = !DILocation(line: 109, column: 20, scope: !1049)
!1115 = !DILocation(line: 110, column: 16, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 110, column: 11)
!1117 = !DILocation(line: 110, column: 26, scope: !1116)
!1118 = !DILocation(line: 110, column: 29, scope: !1116)
!1119 = !DILocation(line: 110, column: 11, scope: !1049)
!1120 = !DILocation(line: 111, column: 9, scope: !1116)
!1121 = !DILocation(line: 113, column: 12, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 113, column: 11)
!1123 = !DILocation(line: 113, column: 11, scope: !1049)
!1124 = !DILocalVariable(name: "__c", arg: 1, scope: !1125, file: !1126, line: 108, type: !53)
!1125 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1126, file: !1126, line: 108, type: !1127, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1129)
!1126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!53, !53}
!1129 = !{!1124}
!1130 = !DILocation(line: 0, scope: !1125, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 115, column: 7, scope: !1049)
!1132 = !DILocation(line: 110, column: 10, scope: !1125, inlinedAt: !1131)
!1133 = !{!1134, !829, i64 40}
!1134 = !{!"_IO_FILE", !890, i64 0, !829, i64 8, !829, i64 16, !829, i64 24, !829, i64 32, !829, i64 40, !829, i64 48, !829, i64 56, !829, i64 64, !829, i64 72, !829, i64 80, !829, i64 88, !829, i64 96, !829, i64 104, !890, i64 112, !890, i64 116, !1135, i64 120, !931, i64 128, !830, i64 130, !830, i64 131, !829, i64 136, !1135, i64 144, !829, i64 152, !829, i64 160, !829, i64 168, !829, i64 176, !1135, i64 184, !890, i64 192, !830, i64 196}
!1135 = !{!"long", !830, i64 0}
!1136 = !{!1134, !829, i64 48}
!1137 = !{!"branch_weights", i32 2000, i32 1}
!1138 = !DILocation(line: 122, column: 42, scope: !1058)
!1139 = !DILocation(line: 122, column: 32, scope: !1058)
!1140 = !DILocation(line: 0, scope: !1058)
!1141 = !DILocation(line: 123, column: 19, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 123, column: 15)
!1143 = !DILocation(line: 123, column: 15, scope: !1058)
!1144 = !DILocation(line: 125, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 124, column: 13)
!1146 = !DILocation(line: 127, column: 15, scope: !1145)
!1147 = !DILocation(line: 129, column: 29, scope: !1058)
!1148 = !{!1149, !890, i64 16}
!1149 = !{!"passwd", !829, i64 0, !829, i64 8, !890, i64 16, !890, i64 20, !829, i64 24, !829, i64 32, !829, i64 40}
!1150 = !DILocation(line: 130, column: 29, scope: !1058)
!1151 = !{!1149, !890, i64 20}
!1152 = !DILocation(line: 133, column: 11, scope: !1058)
!1153 = !DILocation(line: 134, column: 39, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 134, column: 15)
!1155 = !DILocation(line: 134, column: 34, scope: !1154)
!1156 = !DILocation(line: 134, column: 16, scope: !1154)
!1157 = !DILocation(line: 134, column: 15, scope: !1058)
!1158 = !DILocation(line: 0, scope: !1125, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 136, column: 11, scope: !1058)
!1160 = !DILocation(line: 110, column: 10, scope: !1125, inlinedAt: !1159)
!1161 = !DILocation(line: 138, column: 15, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 138, column: 15)
!1163 = !DILocalVariable(name: "__stream", arg: 1, scope: !1164, file: !1126, line: 135, type: !146)
!1164 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1126, file: !1126, line: 135, type: !1165, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!53, !146}
!1167 = !{!1163}
!1168 = !DILocation(line: 0, scope: !1164, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 138, column: 15, scope: !1162)
!1170 = !DILocation(line: 137, column: 10, scope: !1164, inlinedAt: !1169)
!1171 = !{!1134, !890, i64 0}
!1172 = !DILocation(line: 138, column: 15, scope: !1058)
!1173 = !DILocation(line: 948, column: 21, scope: !1174, inlinedAt: !1177)
!1174 = distinct !DISubprogram(name: "write_error", scope: !52, file: !52, line: 946, type: !414, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1175)
!1175 = !{!1176}
!1176 = !DILocalVariable(name: "saved_errno", scope: !1174, file: !52, line: 948, type: !53)
!1177 = distinct !DILocation(line: 139, column: 13, scope: !1162)
!1178 = !DILocation(line: 0, scope: !1174, inlinedAt: !1177)
!1179 = !DILocation(line: 949, column: 3, scope: !1174, inlinedAt: !1177)
!1180 = !DILocation(line: 950, column: 11, scope: !1174, inlinedAt: !1177)
!1181 = !DILocation(line: 950, column: 3, scope: !1174, inlinedAt: !1177)
!1182 = !DILocation(line: 951, column: 3, scope: !1174, inlinedAt: !1177)
!1183 = !DILocation(line: 952, column: 3, scope: !1174, inlinedAt: !1177)
!1184 = !DILocation(line: 120, column: 36, scope: !1059)
!1185 = distinct !{!1185, !1094, !1186, !936}
!1186 = !DILocation(line: 140, column: 9, scope: !1060)
!1187 = !DILocation(line: 91, column: 8, scope: !1039)
!1188 = !DILocation(line: 143, column: 10, scope: !1039)
!1189 = !DILocation(line: 144, column: 1, scope: !1039)
!1190 = !DISubprogram(name: "bindtextdomain", scope: !871, file: !871, line: 86, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!74, !80, !80}
!1193 = !DISubprogram(name: "textdomain", scope: !871, file: !871, line: 82, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubprogram(name: "atexit", scope: !1013, file: !1013, line: 602, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!53, !413}
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
!1210 = !{!1052}
!1211 = !DISubprogram(name: "getegid", scope: !1208, file: !1208, line: 706, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!767}
!1214 = !DISubprogram(name: "getgid", scope: !1208, file: !1208, line: 703, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubprogram(name: "__overflow", scope: !884, file: !884, line: 886, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!53, !146, !53}
!1218 = !DISubprogram(name: "getpwnam", scope: !1064, file: !1064, line: 116, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1062, !80}
!1221 = !DISubprogram(name: "fflush_unlocked", scope: !884, file: !884, line: 239, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DISubprogram(name: "clearerr_unlocked", scope: !884, file: !884, line: 794, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !146}
!1225 = distinct !DISubprogram(name: "print_group_list", scope: !325, file: !325, line: 35, type: !1226, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!133, !80, !1051, !765, !765, !133, !4}
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1247, !1249, !1250}
!1229 = !DILocalVariable(name: "username", arg: 1, scope: !1225, file: !325, line: 35, type: !80)
!1230 = !DILocalVariable(name: "ruid", arg: 2, scope: !1225, file: !325, line: 36, type: !1051)
!1231 = !DILocalVariable(name: "rgid", arg: 3, scope: !1225, file: !325, line: 36, type: !765)
!1232 = !DILocalVariable(name: "egid", arg: 4, scope: !1225, file: !325, line: 36, type: !765)
!1233 = !DILocalVariable(name: "use_names", arg: 5, scope: !1225, file: !325, line: 37, type: !133)
!1234 = !DILocalVariable(name: "delim", arg: 6, scope: !1225, file: !325, line: 37, type: !4)
!1235 = !DILocalVariable(name: "ok", scope: !1225, file: !325, line: 39, type: !133)
!1236 = !DILocalVariable(name: "pwd", scope: !1225, file: !325, line: 40, type: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1064, line: 49, size: 384, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1238, file: !1064, line: 51, baseType: !74, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1238, file: !1064, line: 52, baseType: !74, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1238, file: !1064, line: 54, baseType: !1052, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1238, file: !1064, line: 55, baseType: !767, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1238, file: !1064, line: 56, baseType: !74, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1238, file: !1064, line: 57, baseType: !74, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1238, file: !1064, line: 58, baseType: !74, size: 64, offset: 320)
!1247 = !DILocalVariable(name: "groups", scope: !1248, file: !325, line: 60, type: !769)
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
!1263 = !DILocalVariable(name: "gid", arg: 1, scope: !1264, file: !325, line: 91, type: !765)
!1264 = distinct !DISubprogram(name: "print_group", scope: !325, file: !325, line: 91, type: !1265, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!133, !765, !133}
!1267 = !{!1263, !1268, !1269, !1278, !1279}
!1268 = !DILocalVariable(name: "use_name", arg: 2, scope: !1264, file: !325, line: 91, type: !133)
!1269 = !DILocalVariable(name: "grp", scope: !1264, file: !325, line: 93, type: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1272, line: 42, size: 256, elements: !1273)
!1272 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1271, file: !1272, line: 44, baseType: !74, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1271, file: !1272, line: 45, baseType: !74, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1271, file: !1272, line: 46, baseType: !767, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1271, file: !1272, line: 47, baseType: !1042, size: 64, offset: 192)
!1278 = !DILocalVariable(name: "ok", scope: !1264, file: !325, line: 94, type: !133)
!1279 = !DILocalVariable(name: "g", scope: !1280, file: !325, line: 108, type: !696)
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
!1292 = !DILocation(line: 49, column: 7, scope: !1225)
!1293 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1287)
!1294 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1287)
!1295 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1287)
!1296 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1287)
!1297 = !{!1298, !829, i64 0}
!1298 = !{!"group", !829, i64 0, !829, i64 8, !890, i64 16, !829, i64 24}
!1299 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1287)
!1300 = !DILocation(line: 0, scope: !1280, inlinedAt: !1287)
!1301 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1287)
!1302 = !DILocation(line: 52, column: 12, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 52, column: 7)
!1304 = !DILocation(line: 52, column: 7, scope: !1225)
!1305 = !DILocalVariable(name: "__c", arg: 1, scope: !1306, file: !1126, line: 108, type: !53)
!1306 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1126, file: !1126, line: 108, type: !1127, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !1307)
!1307 = !{!1305}
!1308 = !DILocation(line: 0, scope: !1306, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 54, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1303, file: !325, line: 53, column: 5)
!1311 = !DILocation(line: 110, column: 10, scope: !1306, inlinedAt: !1309)
!1312 = !DILocation(line: 54, column: 7, scope: !1310)
!1313 = !DILocation(line: 0, scope: !1264, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 55, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !325, line: 55, column: 11)
!1316 = !DILocation(line: 96, column: 7, scope: !1264, inlinedAt: !1314)
!1317 = !DILocation(line: 118, column: 5, scope: !1291, inlinedAt: !1314)
!1318 = !DILocation(line: 55, column: 11, scope: !1310)
!1319 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1314)
!1320 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1314)
!1321 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1314)
!1322 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1314)
!1323 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1314)
!1324 = !DILocation(line: 0, scope: !1280, inlinedAt: !1314)
!1325 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1314)
!1326 = !DILocation(line: 60, column: 5, scope: !1248)
!1327 = !DILocation(line: 62, column: 43, scope: !1248)
!1328 = !DILocation(line: 62, column: 54, scope: !1248)
!1329 = !DILocation(line: 62, column: 20, scope: !1248)
!1330 = !DILocation(line: 63, column: 18, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1248, file: !325, line: 63, column: 9)
!1332 = !DILocation(line: 63, column: 9, scope: !1248)
!1333 = !DILocation(line: 0, scope: !1251)
!1334 = !DILocation(line: 77, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1251, file: !325, line: 77, column: 5)
!1336 = !DILocation(line: 77, column: 5, scope: !1251)
!1337 = !DILocation(line: 0, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !325, line: 65, column: 13)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !325, line: 64, column: 7)
!1340 = !DILocation(line: 65, column: 13, scope: !1339)
!1341 = !DILocation(line: 67, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !325, line: 66, column: 11)
!1343 = !DILocation(line: 69, column: 11, scope: !1342)
!1344 = !DILocation(line: 72, column: 13, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !325, line: 71, column: 11)
!1346 = !DILocation(line: 46, column: 12, scope: !1261)
!1347 = !DILocation(line: 84, column: 11, scope: !1248)
!1348 = !DILocation(line: 84, column: 5, scope: !1248)
!1349 = !DILocation(line: 85, column: 3, scope: !1225)
!1350 = !DILocation(line: 78, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1335, file: !325, line: 78, column: 11)
!1352 = !DILocation(line: 78, column: 21, scope: !1351)
!1353 = !DILocation(line: 78, column: 29, scope: !1351)
!1354 = !DILocation(line: 0, scope: !1306, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 80, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !325, line: 79, column: 9)
!1357 = !DILocation(line: 110, column: 10, scope: !1306, inlinedAt: !1355)
!1358 = !DILocation(line: 81, column: 29, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !325, line: 81, column: 15)
!1360 = !DILocation(line: 0, scope: !1264, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 81, column: 16, scope: !1359)
!1362 = !DILocation(line: 96, column: 7, scope: !1264, inlinedAt: !1361)
!1363 = !DILocation(line: 118, column: 5, scope: !1291, inlinedAt: !1361)
!1364 = !DILocation(line: 81, column: 15, scope: !1356)
!1365 = !DILocation(line: 98, column: 13, scope: !1284, inlinedAt: !1361)
!1366 = !DILocation(line: 99, column: 15, scope: !1283, inlinedAt: !1361)
!1367 = !DILocation(line: 99, column: 11, scope: !1284, inlinedAt: !1361)
!1368 = !DILocation(line: 116, column: 5, scope: !1291, inlinedAt: !1361)
!1369 = !DILocation(line: 108, column: 29, scope: !1280, inlinedAt: !1361)
!1370 = !DILocation(line: 0, scope: !1280, inlinedAt: !1361)
!1371 = !DILocation(line: 109, column: 15, scope: !1280, inlinedAt: !1361)
!1372 = !DILocation(line: 77, column: 36, scope: !1335)
!1373 = distinct !{!1373, !1336, !1374, !936}
!1374 = !DILocation(line: 83, column: 9, scope: !1251)
!1375 = !DILocation(line: 87, column: 1, scope: !1225)
!1376 = !DISubprogram(name: "getpwuid", scope: !1064, file: !1064, line: 110, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1237, !1052}
!1379 = !DISubprogram(name: "getgrgid", scope: !1272, file: !1272, line: 101, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1270, !767}
!1382 = !DISubprogram(name: "free", scope: !1013, file: !1013, line: 555, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !75}
!1385 = !DILocation(line: 0, scope: !1264)
!1386 = !DILocation(line: 96, column: 7, scope: !1264)
!1387 = !DILocation(line: 118, column: 5, scope: !1291)
!1388 = !DILocation(line: 98, column: 13, scope: !1284)
!1389 = !DILocation(line: 99, column: 15, scope: !1283)
!1390 = !DILocation(line: 99, column: 11, scope: !1284)
!1391 = !DILocation(line: 108, column: 29, scope: !1280)
!1392 = !DILocation(line: 0, scope: !1280)
!1393 = !DILocation(line: 109, column: 15, scope: !1280)
!1394 = !DILocation(line: 112, column: 9, scope: !1282)
!1395 = !DILocation(line: 116, column: 5, scope: !1291)
!1396 = !DILocation(line: 119, column: 3, scope: !1264)
!1397 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !353, file: !353, line: 50, type: !839, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1398)
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "file", arg: 1, scope: !1397, file: !353, line: 50, type: !80)
!1400 = !DILocation(line: 0, scope: !1397)
!1401 = !DILocation(line: 52, column: 13, scope: !1397)
!1402 = !DILocation(line: 53, column: 1, scope: !1397)
!1403 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !353, file: !353, line: 87, type: !1404, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !133}
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "ignore", arg: 1, scope: !1403, file: !353, line: 87, type: !133)
!1408 = !DILocation(line: 0, scope: !1403)
!1409 = !DILocation(line: 89, column: 16, scope: !1403)
!1410 = !{!1411, !1411, i64 0}
!1411 = !{!"_Bool", !830, i64 0}
!1412 = !DILocation(line: 90, column: 1, scope: !1403)
!1413 = distinct !DISubprogram(name: "close_stdout", scope: !353, file: !353, line: 116, type: !414, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1414)
!1414 = !{!1415}
!1415 = !DILocalVariable(name: "write_error", scope: !1416, file: !353, line: 121, type: !80)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !353, line: 120, column: 5)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !353, line: 118, column: 7)
!1418 = !DILocation(line: 118, column: 21, scope: !1417)
!1419 = !DILocation(line: 118, column: 7, scope: !1417)
!1420 = !DILocation(line: 118, column: 29, scope: !1417)
!1421 = !DILocation(line: 119, column: 7, scope: !1417)
!1422 = !DILocation(line: 119, column: 12, scope: !1417)
!1423 = !{i8 0, i8 2}
!1424 = !DILocation(line: 119, column: 25, scope: !1417)
!1425 = !DILocation(line: 119, column: 28, scope: !1417)
!1426 = !DILocation(line: 119, column: 34, scope: !1417)
!1427 = !DILocation(line: 118, column: 7, scope: !1413)
!1428 = !DILocation(line: 121, column: 33, scope: !1416)
!1429 = !DILocation(line: 0, scope: !1416)
!1430 = !DILocation(line: 122, column: 11, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !353, line: 122, column: 11)
!1432 = !DILocation(line: 0, scope: !1431)
!1433 = !DILocation(line: 122, column: 11, scope: !1416)
!1434 = !DILocation(line: 123, column: 9, scope: !1431)
!1435 = !DILocation(line: 126, column: 9, scope: !1431)
!1436 = !DILocation(line: 128, column: 14, scope: !1416)
!1437 = !DILocation(line: 128, column: 7, scope: !1416)
!1438 = !DILocation(line: 133, column: 42, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1413, file: !353, line: 133, column: 7)
!1440 = !DILocation(line: 133, column: 28, scope: !1439)
!1441 = !DILocation(line: 133, column: 50, scope: !1439)
!1442 = !DILocation(line: 133, column: 7, scope: !1413)
!1443 = !DILocation(line: 134, column: 12, scope: !1439)
!1444 = !DILocation(line: 134, column: 5, scope: !1439)
!1445 = !DILocation(line: 135, column: 1, scope: !1413)
!1446 = !DISubprogram(name: "_exit", scope: !1208, file: !1208, line: 624, type: !818, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1447 = distinct !DISubprogram(name: "verror", scope: !368, file: !368, line: 251, type: !1448, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !53, !53, !80, !378}
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DILocalVariable(name: "status", arg: 1, scope: !1447, file: !368, line: 251, type: !53)
!1452 = !DILocalVariable(name: "errnum", arg: 2, scope: !1447, file: !368, line: 251, type: !53)
!1453 = !DILocalVariable(name: "message", arg: 3, scope: !1447, file: !368, line: 251, type: !80)
!1454 = !DILocalVariable(name: "args", arg: 4, scope: !1447, file: !368, line: 251, type: !378)
!1455 = !DILocation(line: 0, scope: !1447)
!1456 = !DILocation(line: 261, column: 3, scope: !1447)
!1457 = !DILocation(line: 265, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1447, file: !368, line: 265, column: 7)
!1459 = !DILocation(line: 265, column: 7, scope: !1447)
!1460 = !DILocation(line: 266, column: 5, scope: !1458)
!1461 = !DILocation(line: 272, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !368, line: 268, column: 5)
!1463 = !DILocation(line: 276, column: 3, scope: !1447)
!1464 = !DILocation(line: 282, column: 1, scope: !1447)
!1465 = distinct !DISubprogram(name: "flush_stdout", scope: !368, file: !368, line: 163, type: !414, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1466)
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "stdout_fd", scope: !1465, file: !368, line: 166, type: !53)
!1468 = !DILocation(line: 0, scope: !1465)
!1469 = !DILocalVariable(name: "fd", arg: 1, scope: !1470, file: !368, line: 145, type: !53)
!1470 = distinct !DISubprogram(name: "is_open", scope: !368, file: !368, line: 145, type: !1127, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1471)
!1471 = !{!1469}
!1472 = !DILocation(line: 0, scope: !1470, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 182, column: 25, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !368, line: 182, column: 7)
!1475 = !DILocation(line: 157, column: 15, scope: !1470, inlinedAt: !1473)
!1476 = !DILocation(line: 157, column: 12, scope: !1470, inlinedAt: !1473)
!1477 = !DILocation(line: 182, column: 7, scope: !1465)
!1478 = !DILocation(line: 184, column: 5, scope: !1474)
!1479 = !DILocation(line: 185, column: 1, scope: !1465)
!1480 = distinct !DISubprogram(name: "error_tail", scope: !368, file: !368, line: 219, type: !1448, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484, !1485}
!1482 = !DILocalVariable(name: "status", arg: 1, scope: !1480, file: !368, line: 219, type: !53)
!1483 = !DILocalVariable(name: "errnum", arg: 2, scope: !1480, file: !368, line: 219, type: !53)
!1484 = !DILocalVariable(name: "message", arg: 3, scope: !1480, file: !368, line: 219, type: !80)
!1485 = !DILocalVariable(name: "args", arg: 4, scope: !1480, file: !368, line: 219, type: !378)
!1486 = distinct !DIAssignID()
!1487 = !DILocation(line: 0, scope: !1480)
!1488 = !DILocation(line: 229, column: 13, scope: !1480)
!1489 = !DILocalVariable(name: "__stream", arg: 1, scope: !1490, file: !875, line: 132, type: !1493)
!1490 = distinct !DISubprogram(name: "vfprintf", scope: !875, file: !875, line: 132, type: !1491, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1528)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!53, !1493, !879, !378}
!1493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1496, file: !150, line: 51, baseType: !53, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1496, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1496, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1496, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1496, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1496, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1496, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1496, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1496, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1496, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1496, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1496, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1496, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1496, file: !150, line: 70, baseType: !1512, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1496, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1496, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1496, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1496, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1496, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1496, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1496, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1496, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1496, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1496, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1496, file: !150, line: 93, baseType: !1512, size: 64, offset: 1344)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1496, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1496, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1496, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1496, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1528 = !{!1489, !1529, !1530}
!1529 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1490, file: !875, line: 133, type: !879)
!1530 = !DILocalVariable(name: "__ap", arg: 3, scope: !1490, file: !875, line: 133, type: !378)
!1531 = !DILocation(line: 0, scope: !1490, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 229, column: 3, scope: !1480)
!1533 = !DILocation(line: 135, column: 10, scope: !1490, inlinedAt: !1532)
!1534 = !DILocation(line: 232, column: 3, scope: !1480)
!1535 = !DILocation(line: 233, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1480, file: !368, line: 233, column: 7)
!1537 = !DILocation(line: 233, column: 7, scope: !1480)
!1538 = !DILocalVariable(name: "errbuf", scope: !1539, file: !368, line: 193, type: !1543)
!1539 = distinct !DISubprogram(name: "print_errno_message", scope: !368, file: !368, line: 188, type: !818, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1540)
!1540 = !{!1541, !1542, !1538}
!1541 = !DILocalVariable(name: "errnum", arg: 1, scope: !1539, file: !368, line: 188, type: !53)
!1542 = !DILocalVariable(name: "s", scope: !1539, file: !368, line: 190, type: !80)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 1024)
!1546 = !DILocation(line: 0, scope: !1539, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 234, column: 5, scope: !1536)
!1548 = !DILocation(line: 193, column: 3, scope: !1539, inlinedAt: !1547)
!1549 = !DILocation(line: 195, column: 7, scope: !1539, inlinedAt: !1547)
!1550 = !DILocation(line: 207, column: 9, scope: !1551, inlinedAt: !1547)
!1551 = distinct !DILexicalBlock(scope: !1539, file: !368, line: 207, column: 7)
!1552 = !DILocation(line: 207, column: 7, scope: !1539, inlinedAt: !1547)
!1553 = !DILocation(line: 208, column: 9, scope: !1551, inlinedAt: !1547)
!1554 = !DILocation(line: 208, column: 5, scope: !1551, inlinedAt: !1547)
!1555 = !DILocation(line: 214, column: 3, scope: !1539, inlinedAt: !1547)
!1556 = !DILocation(line: 216, column: 1, scope: !1539, inlinedAt: !1547)
!1557 = !DILocation(line: 234, column: 5, scope: !1536)
!1558 = !DILocation(line: 238, column: 3, scope: !1480)
!1559 = !DILocalVariable(name: "__c", arg: 1, scope: !1560, file: !1126, line: 101, type: !53)
!1560 = distinct !DISubprogram(name: "putc_unlocked", scope: !1126, file: !1126, line: 101, type: !1561, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!53, !53, !1494}
!1563 = !{!1559, !1564}
!1564 = !DILocalVariable(name: "__stream", arg: 2, scope: !1560, file: !1126, line: 101, type: !1494)
!1565 = !DILocation(line: 0, scope: !1560, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 238, column: 3, scope: !1480)
!1567 = !DILocation(line: 103, column: 10, scope: !1560, inlinedAt: !1566)
!1568 = !DILocation(line: 240, column: 3, scope: !1480)
!1569 = !DILocation(line: 241, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1480, file: !368, line: 241, column: 7)
!1571 = !DILocation(line: 241, column: 7, scope: !1480)
!1572 = !DILocation(line: 242, column: 5, scope: !1570)
!1573 = !DILocation(line: 243, column: 1, scope: !1480)
!1574 = !DISubprogram(name: "__vfprintf_chk", scope: !875, file: !875, line: 96, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!53, !1493, !53, !879, !378}
!1577 = !DISubprogram(name: "strerror_r", scope: !1009, file: !1009, line: 444, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!74, !53, !74, !77}
!1580 = !DISubprogram(name: "fcntl", scope: !1581, file: !1581, line: 149, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!53, !53, !53, null}
!1584 = distinct !DISubprogram(name: "error", scope: !368, file: !368, line: 285, type: !1585, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !53, !53, !80, null}
!1587 = !{!1588, !1589, !1590, !1591}
!1588 = !DILocalVariable(name: "status", arg: 1, scope: !1584, file: !368, line: 285, type: !53)
!1589 = !DILocalVariable(name: "errnum", arg: 2, scope: !1584, file: !368, line: 285, type: !53)
!1590 = !DILocalVariable(name: "message", arg: 3, scope: !1584, file: !368, line: 285, type: !80)
!1591 = !DILocalVariable(name: "ap", scope: !1584, file: !368, line: 287, type: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !884, line: 52, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1594, line: 12, baseType: !1595)
!1594 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !368, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !35)
!1597 = distinct !DIAssignID()
!1598 = !DILocation(line: 0, scope: !1584)
!1599 = !DILocation(line: 287, column: 3, scope: !1584)
!1600 = !DILocation(line: 288, column: 3, scope: !1584)
!1601 = !DILocation(line: 289, column: 3, scope: !1584)
!1602 = !DILocation(line: 290, column: 3, scope: !1584)
!1603 = !DILocation(line: 291, column: 1, scope: !1584)
!1604 = !DILocation(line: 0, scope: !375)
!1605 = !DILocation(line: 302, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !375, file: !368, line: 302, column: 7)
!1607 = !DILocation(line: 302, column: 7, scope: !375)
!1608 = !DILocation(line: 307, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !368, line: 307, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !368, line: 303, column: 5)
!1611 = !DILocation(line: 307, column: 27, scope: !1609)
!1612 = !DILocation(line: 308, column: 11, scope: !1609)
!1613 = !DILocation(line: 308, column: 28, scope: !1609)
!1614 = !DILocation(line: 308, column: 25, scope: !1609)
!1615 = !DILocation(line: 309, column: 15, scope: !1609)
!1616 = !DILocation(line: 309, column: 33, scope: !1609)
!1617 = !DILocation(line: 310, column: 19, scope: !1609)
!1618 = !DILocation(line: 311, column: 22, scope: !1609)
!1619 = !DILocation(line: 311, column: 56, scope: !1609)
!1620 = !DILocation(line: 307, column: 11, scope: !1610)
!1621 = !DILocation(line: 316, column: 21, scope: !1610)
!1622 = !DILocation(line: 317, column: 23, scope: !1610)
!1623 = !DILocation(line: 318, column: 5, scope: !1610)
!1624 = !DILocation(line: 327, column: 3, scope: !375)
!1625 = !DILocation(line: 331, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !375, file: !368, line: 331, column: 7)
!1627 = !DILocation(line: 331, column: 7, scope: !375)
!1628 = !DILocation(line: 332, column: 5, scope: !1626)
!1629 = !DILocation(line: 338, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !368, line: 334, column: 5)
!1631 = !DILocation(line: 346, column: 3, scope: !375)
!1632 = !DILocation(line: 350, column: 3, scope: !375)
!1633 = !DILocation(line: 356, column: 1, scope: !375)
!1634 = distinct !DISubprogram(name: "error_at_line", scope: !368, file: !368, line: 359, type: !1635, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !53, !53, !80, !59, !80, null}
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643}
!1638 = !DILocalVariable(name: "status", arg: 1, scope: !1634, file: !368, line: 359, type: !53)
!1639 = !DILocalVariable(name: "errnum", arg: 2, scope: !1634, file: !368, line: 359, type: !53)
!1640 = !DILocalVariable(name: "file_name", arg: 3, scope: !1634, file: !368, line: 359, type: !80)
!1641 = !DILocalVariable(name: "line_number", arg: 4, scope: !1634, file: !368, line: 360, type: !59)
!1642 = !DILocalVariable(name: "message", arg: 5, scope: !1634, file: !368, line: 360, type: !80)
!1643 = !DILocalVariable(name: "ap", scope: !1634, file: !368, line: 362, type: !1592)
!1644 = distinct !DIAssignID()
!1645 = !DILocation(line: 0, scope: !1634)
!1646 = !DILocation(line: 362, column: 3, scope: !1634)
!1647 = !DILocation(line: 363, column: 3, scope: !1634)
!1648 = !DILocation(line: 364, column: 3, scope: !1634)
!1649 = !DILocation(line: 366, column: 3, scope: !1634)
!1650 = !DILocation(line: 367, column: 1, scope: !1634)
!1651 = distinct !DISubprogram(name: "fpurge", scope: !701, file: !701, line: 32, type: !1652, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !1688)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!53, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1656, file: !150, line: 51, baseType: !53, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1656, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1656, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1656, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1656, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1656, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1656, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1656, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1656, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1656, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1656, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1656, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1656, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1656, file: !150, line: 70, baseType: !1672, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1656, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1656, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1656, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1656, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1656, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1656, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1656, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1656, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1656, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1656, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1656, file: !150, line: 93, baseType: !1672, size: 64, offset: 1344)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1656, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1656, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1656, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1656, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "fp", arg: 1, scope: !1651, file: !701, line: 32, type: !1654)
!1690 = !DILocation(line: 0, scope: !1651)
!1691 = !DILocation(line: 36, column: 3, scope: !1651)
!1692 = !DILocation(line: 38, column: 3, scope: !1651)
!1693 = !DISubprogram(name: "__fpurge", scope: !1694, file: !1694, line: 72, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1694 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1654}
!1697 = distinct !DISubprogram(name: "getprogname", scope: !703, file: !703, line: 54, type: !1698, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!80}
!1700 = !DILocation(line: 58, column: 10, scope: !1697)
!1701 = !DILocation(line: 58, column: 3, scope: !1697)
!1702 = distinct !DISubprogram(name: "set_program_name", scope: !419, file: !419, line: 37, type: !839, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DILocalVariable(name: "argv0", arg: 1, scope: !1702, file: !419, line: 37, type: !80)
!1705 = !DILocalVariable(name: "slash", scope: !1702, file: !419, line: 44, type: !80)
!1706 = !DILocalVariable(name: "base", scope: !1702, file: !419, line: 45, type: !80)
!1707 = !DILocation(line: 0, scope: !1702)
!1708 = !DILocation(line: 44, column: 23, scope: !1702)
!1709 = !DILocation(line: 45, column: 22, scope: !1702)
!1710 = !DILocation(line: 46, column: 17, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !419, line: 46, column: 7)
!1712 = !DILocation(line: 46, column: 9, scope: !1711)
!1713 = !DILocation(line: 46, column: 25, scope: !1711)
!1714 = !DILocation(line: 46, column: 40, scope: !1711)
!1715 = !DILocalVariable(name: "__s1", arg: 1, scope: !1716, file: !902, line: 974, type: !1037)
!1716 = distinct !DISubprogram(name: "memeq", scope: !902, file: !902, line: 974, type: !1717, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!133, !1037, !1037, !77}
!1719 = !{!1715, !1720, !1721}
!1720 = !DILocalVariable(name: "__s2", arg: 2, scope: !1716, file: !902, line: 974, type: !1037)
!1721 = !DILocalVariable(name: "__n", arg: 3, scope: !1716, file: !902, line: 974, type: !77)
!1722 = !DILocation(line: 0, scope: !1716, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 46, column: 28, scope: !1711)
!1724 = !DILocation(line: 976, column: 11, scope: !1716, inlinedAt: !1723)
!1725 = !DILocation(line: 976, column: 10, scope: !1716, inlinedAt: !1723)
!1726 = !DILocation(line: 46, column: 7, scope: !1702)
!1727 = !DILocation(line: 49, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !419, line: 49, column: 11)
!1729 = distinct !DILexicalBlock(scope: !1711, file: !419, line: 47, column: 5)
!1730 = !DILocation(line: 49, column: 36, scope: !1728)
!1731 = !DILocation(line: 49, column: 11, scope: !1729)
!1732 = !DILocation(line: 65, column: 16, scope: !1702)
!1733 = !DILocation(line: 71, column: 27, scope: !1702)
!1734 = !DILocation(line: 74, column: 33, scope: !1702)
!1735 = !DILocation(line: 76, column: 1, scope: !1702)
!1736 = !DISubprogram(name: "strrchr", scope: !1009, file: !1009, line: 273, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = distinct !DIAssignID()
!1738 = !DILocation(line: 0, scope: !428)
!1739 = distinct !DIAssignID()
!1740 = !DILocation(line: 40, column: 29, scope: !428)
!1741 = !DILocation(line: 41, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !428, file: !429, line: 41, column: 7)
!1743 = !DILocation(line: 41, column: 7, scope: !428)
!1744 = !DILocation(line: 47, column: 3, scope: !428)
!1745 = !DILocation(line: 48, column: 3, scope: !428)
!1746 = !DILocalVariable(name: "ps", arg: 1, scope: !1747, file: !1748, line: 1135, type: !1751)
!1747 = distinct !DISubprogram(name: "mbszero", scope: !1748, file: !1748, line: 1135, type: !1749, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1752)
!1748 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1752 = !{!1746}
!1753 = !DILocation(line: 0, scope: !1747, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 48, column: 18, scope: !428)
!1755 = !DILocalVariable(name: "__dest", arg: 1, scope: !1756, file: !1757, line: 57, type: !75)
!1756 = distinct !DISubprogram(name: "memset", scope: !1757, file: !1757, line: 57, type: !1758, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1760)
!1757 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!75, !75, !53, !77}
!1760 = !{!1755, !1761, !1762}
!1761 = !DILocalVariable(name: "__ch", arg: 2, scope: !1756, file: !1757, line: 57, type: !53)
!1762 = !DILocalVariable(name: "__len", arg: 3, scope: !1756, file: !1757, line: 57, type: !77)
!1763 = !DILocation(line: 0, scope: !1756, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 1137, column: 3, scope: !1747, inlinedAt: !1754)
!1765 = !DILocation(line: 59, column: 10, scope: !1756, inlinedAt: !1764)
!1766 = !DILocation(line: 49, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !428, file: !429, line: 49, column: 7)
!1768 = !DILocation(line: 49, column: 39, scope: !1767)
!1769 = !DILocation(line: 49, column: 44, scope: !1767)
!1770 = !DILocation(line: 54, column: 1, scope: !428)
!1771 = !DISubprogram(name: "mbrtoc32", scope: !440, file: !440, line: 57, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!77, !1774, !879, !77, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1751)
!1777 = distinct !DISubprogram(name: "clone_quoting_options", scope: !459, file: !459, line: 113, type: !1778, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1781)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1781 = !{!1782, !1783, !1784}
!1782 = !DILocalVariable(name: "o", arg: 1, scope: !1777, file: !459, line: 113, type: !1780)
!1783 = !DILocalVariable(name: "saved_errno", scope: !1777, file: !459, line: 115, type: !53)
!1784 = !DILocalVariable(name: "p", scope: !1777, file: !459, line: 116, type: !1780)
!1785 = !DILocation(line: 0, scope: !1777)
!1786 = !DILocation(line: 115, column: 21, scope: !1777)
!1787 = !DILocation(line: 116, column: 40, scope: !1777)
!1788 = !DILocation(line: 116, column: 31, scope: !1777)
!1789 = !DILocation(line: 118, column: 9, scope: !1777)
!1790 = !DILocation(line: 119, column: 3, scope: !1777)
!1791 = distinct !DISubprogram(name: "get_quoting_style", scope: !459, file: !459, line: 124, type: !1792, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1796)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!485, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "o", arg: 1, scope: !1791, file: !459, line: 124, type: !1794)
!1798 = !DILocation(line: 0, scope: !1791)
!1799 = !DILocation(line: 126, column: 11, scope: !1791)
!1800 = !DILocation(line: 126, column: 46, scope: !1791)
!1801 = !{!1802, !890, i64 0}
!1802 = !{!"quoting_options", !890, i64 0, !890, i64 4, !830, i64 8, !829, i64 40, !829, i64 48}
!1803 = !DILocation(line: 126, column: 3, scope: !1791)
!1804 = distinct !DISubprogram(name: "set_quoting_style", scope: !459, file: !459, line: 132, type: !1805, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1780, !485}
!1807 = !{!1808, !1809}
!1808 = !DILocalVariable(name: "o", arg: 1, scope: !1804, file: !459, line: 132, type: !1780)
!1809 = !DILocalVariable(name: "s", arg: 2, scope: !1804, file: !459, line: 132, type: !485)
!1810 = !DILocation(line: 0, scope: !1804)
!1811 = !DILocation(line: 134, column: 4, scope: !1804)
!1812 = !DILocation(line: 134, column: 45, scope: !1804)
!1813 = !DILocation(line: 135, column: 1, scope: !1804)
!1814 = distinct !DISubprogram(name: "set_char_quoting", scope: !459, file: !459, line: 143, type: !1815, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!53, !1780, !4, !53}
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1824, !1825}
!1818 = !DILocalVariable(name: "o", arg: 1, scope: !1814, file: !459, line: 143, type: !1780)
!1819 = !DILocalVariable(name: "c", arg: 2, scope: !1814, file: !459, line: 143, type: !4)
!1820 = !DILocalVariable(name: "i", arg: 3, scope: !1814, file: !459, line: 143, type: !53)
!1821 = !DILocalVariable(name: "uc", scope: !1814, file: !459, line: 145, type: !82)
!1822 = !DILocalVariable(name: "p", scope: !1814, file: !459, line: 146, type: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1824 = !DILocalVariable(name: "shift", scope: !1814, file: !459, line: 148, type: !53)
!1825 = !DILocalVariable(name: "r", scope: !1814, file: !459, line: 149, type: !59)
!1826 = !DILocation(line: 0, scope: !1814)
!1827 = !DILocation(line: 147, column: 6, scope: !1814)
!1828 = !DILocation(line: 147, column: 41, scope: !1814)
!1829 = !DILocation(line: 147, column: 62, scope: !1814)
!1830 = !DILocation(line: 147, column: 57, scope: !1814)
!1831 = !DILocation(line: 148, column: 15, scope: !1814)
!1832 = !DILocation(line: 149, column: 21, scope: !1814)
!1833 = !DILocation(line: 149, column: 24, scope: !1814)
!1834 = !DILocation(line: 149, column: 34, scope: !1814)
!1835 = !DILocation(line: 150, column: 19, scope: !1814)
!1836 = !DILocation(line: 150, column: 24, scope: !1814)
!1837 = !DILocation(line: 150, column: 6, scope: !1814)
!1838 = !DILocation(line: 151, column: 3, scope: !1814)
!1839 = distinct !DISubprogram(name: "set_quoting_flags", scope: !459, file: !459, line: 159, type: !1840, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!53, !1780, !53}
!1842 = !{!1843, !1844, !1845}
!1843 = !DILocalVariable(name: "o", arg: 1, scope: !1839, file: !459, line: 159, type: !1780)
!1844 = !DILocalVariable(name: "i", arg: 2, scope: !1839, file: !459, line: 159, type: !53)
!1845 = !DILocalVariable(name: "r", scope: !1839, file: !459, line: 163, type: !53)
!1846 = !DILocation(line: 0, scope: !1839)
!1847 = !DILocation(line: 161, column: 8, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1839, file: !459, line: 161, column: 7)
!1849 = !DILocation(line: 161, column: 7, scope: !1839)
!1850 = !DILocation(line: 163, column: 14, scope: !1839)
!1851 = !{!1802, !890, i64 4}
!1852 = !DILocation(line: 164, column: 12, scope: !1839)
!1853 = !DILocation(line: 165, column: 3, scope: !1839)
!1854 = distinct !DISubprogram(name: "set_custom_quoting", scope: !459, file: !459, line: 169, type: !1855, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1780, !80, !80}
!1857 = !{!1858, !1859, !1860}
!1858 = !DILocalVariable(name: "o", arg: 1, scope: !1854, file: !459, line: 169, type: !1780)
!1859 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1854, file: !459, line: 170, type: !80)
!1860 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1854, file: !459, line: 170, type: !80)
!1861 = !DILocation(line: 0, scope: !1854)
!1862 = !DILocation(line: 172, column: 8, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1854, file: !459, line: 172, column: 7)
!1864 = !DILocation(line: 172, column: 7, scope: !1854)
!1865 = !DILocation(line: 174, column: 12, scope: !1854)
!1866 = !DILocation(line: 175, column: 8, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1854, file: !459, line: 175, column: 7)
!1868 = !DILocation(line: 175, column: 19, scope: !1867)
!1869 = !DILocation(line: 176, column: 5, scope: !1867)
!1870 = !DILocation(line: 177, column: 6, scope: !1854)
!1871 = !DILocation(line: 177, column: 17, scope: !1854)
!1872 = !{!1802, !829, i64 40}
!1873 = !DILocation(line: 178, column: 6, scope: !1854)
!1874 = !DILocation(line: 178, column: 18, scope: !1854)
!1875 = !{!1802, !829, i64 48}
!1876 = !DILocation(line: 179, column: 1, scope: !1854)
!1877 = !DISubprogram(name: "abort", scope: !1013, file: !1013, line: 598, type: !414, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1878 = distinct !DISubprogram(name: "quotearg_buffer", scope: !459, file: !459, line: 774, type: !1879, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!77, !74, !77, !80, !77, !1794}
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1882 = !DILocalVariable(name: "buffer", arg: 1, scope: !1878, file: !459, line: 774, type: !74)
!1883 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1878, file: !459, line: 774, type: !77)
!1884 = !DILocalVariable(name: "arg", arg: 3, scope: !1878, file: !459, line: 775, type: !80)
!1885 = !DILocalVariable(name: "argsize", arg: 4, scope: !1878, file: !459, line: 775, type: !77)
!1886 = !DILocalVariable(name: "o", arg: 5, scope: !1878, file: !459, line: 776, type: !1794)
!1887 = !DILocalVariable(name: "p", scope: !1878, file: !459, line: 778, type: !1794)
!1888 = !DILocalVariable(name: "saved_errno", scope: !1878, file: !459, line: 779, type: !53)
!1889 = !DILocalVariable(name: "r", scope: !1878, file: !459, line: 780, type: !77)
!1890 = !DILocation(line: 0, scope: !1878)
!1891 = !DILocation(line: 778, column: 37, scope: !1878)
!1892 = !DILocation(line: 779, column: 21, scope: !1878)
!1893 = !DILocation(line: 781, column: 43, scope: !1878)
!1894 = !DILocation(line: 781, column: 53, scope: !1878)
!1895 = !DILocation(line: 781, column: 63, scope: !1878)
!1896 = !DILocation(line: 782, column: 43, scope: !1878)
!1897 = !DILocation(line: 782, column: 58, scope: !1878)
!1898 = !DILocation(line: 780, column: 14, scope: !1878)
!1899 = !DILocation(line: 783, column: 9, scope: !1878)
!1900 = !DILocation(line: 784, column: 3, scope: !1878)
!1901 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !459, file: !459, line: 251, type: !1902, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1906)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!77, !74, !77, !80, !77, !485, !53, !1904, !80, !80}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1932, !1934, !1937, !1938, !1939, !1940, !1943, !1944, !1946, !1947, !1950, !1954, !1955, !1963, !1966, !1967, !1968}
!1907 = !DILocalVariable(name: "buffer", arg: 1, scope: !1901, file: !459, line: 251, type: !74)
!1908 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1901, file: !459, line: 251, type: !77)
!1909 = !DILocalVariable(name: "arg", arg: 3, scope: !1901, file: !459, line: 252, type: !80)
!1910 = !DILocalVariable(name: "argsize", arg: 4, scope: !1901, file: !459, line: 252, type: !77)
!1911 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1901, file: !459, line: 253, type: !485)
!1912 = !DILocalVariable(name: "flags", arg: 6, scope: !1901, file: !459, line: 253, type: !53)
!1913 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1901, file: !459, line: 254, type: !1904)
!1914 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1901, file: !459, line: 255, type: !80)
!1915 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1901, file: !459, line: 256, type: !80)
!1916 = !DILocalVariable(name: "unibyte_locale", scope: !1901, file: !459, line: 258, type: !133)
!1917 = !DILocalVariable(name: "len", scope: !1901, file: !459, line: 260, type: !77)
!1918 = !DILocalVariable(name: "orig_buffersize", scope: !1901, file: !459, line: 261, type: !77)
!1919 = !DILocalVariable(name: "quote_string", scope: !1901, file: !459, line: 262, type: !80)
!1920 = !DILocalVariable(name: "quote_string_len", scope: !1901, file: !459, line: 263, type: !77)
!1921 = !DILocalVariable(name: "backslash_escapes", scope: !1901, file: !459, line: 264, type: !133)
!1922 = !DILocalVariable(name: "elide_outer_quotes", scope: !1901, file: !459, line: 265, type: !133)
!1923 = !DILocalVariable(name: "encountered_single_quote", scope: !1901, file: !459, line: 266, type: !133)
!1924 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1901, file: !459, line: 267, type: !133)
!1925 = !DILabel(scope: !1901, name: "process_input", file: !459, line: 308)
!1926 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1901, file: !459, line: 309, type: !133)
!1927 = !DILocalVariable(name: "lq", scope: !1928, file: !459, line: 361, type: !80)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !459, line: 361, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !459, line: 360, column: 13)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !459, line: 333, column: 7)
!1931 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 312, column: 5)
!1932 = !DILocalVariable(name: "i", scope: !1933, file: !459, line: 395, type: !77)
!1933 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 395, column: 3)
!1934 = !DILocalVariable(name: "is_right_quote", scope: !1935, file: !459, line: 397, type: !133)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !459, line: 396, column: 5)
!1936 = distinct !DILexicalBlock(scope: !1933, file: !459, line: 395, column: 3)
!1937 = !DILocalVariable(name: "escaping", scope: !1935, file: !459, line: 398, type: !133)
!1938 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1935, file: !459, line: 399, type: !133)
!1939 = !DILocalVariable(name: "c", scope: !1935, file: !459, line: 417, type: !82)
!1940 = !DILabel(scope: !1941, name: "c_and_shell_escape", file: !459, line: 502)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 478, column: 9)
!1942 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 419, column: 9)
!1943 = !DILabel(scope: !1941, name: "c_escape", file: !459, line: 507)
!1944 = !DILocalVariable(name: "m", scope: !1945, file: !459, line: 598, type: !77)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 596, column: 11)
!1946 = !DILocalVariable(name: "printable", scope: !1945, file: !459, line: 600, type: !133)
!1947 = !DILocalVariable(name: "mbs", scope: !1948, file: !459, line: 609, type: !546)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !459, line: 608, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !459, line: 602, column: 17)
!1950 = !DILocalVariable(name: "w", scope: !1951, file: !459, line: 618, type: !439)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !459, line: 617, column: 19)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !459, line: 616, column: 17)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !459, line: 616, column: 17)
!1954 = !DILocalVariable(name: "bytes", scope: !1951, file: !459, line: 619, type: !77)
!1955 = !DILocalVariable(name: "j", scope: !1956, file: !459, line: 648, type: !77)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !459, line: 648, column: 29)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !459, line: 647, column: 27)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !459, line: 645, column: 29)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !459, line: 636, column: 23)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !459, line: 628, column: 30)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !459, line: 623, column: 30)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !459, line: 621, column: 25)
!1963 = !DILocalVariable(name: "ilim", scope: !1964, file: !459, line: 674, type: !77)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !459, line: 671, column: 15)
!1965 = distinct !DILexicalBlock(scope: !1945, file: !459, line: 670, column: 17)
!1966 = !DILabel(scope: !1935, name: "store_escape", file: !459, line: 709)
!1967 = !DILabel(scope: !1935, name: "store_c", file: !459, line: 712)
!1968 = !DILabel(scope: !1901, name: "force_outer_quoting_style", file: !459, line: 753)
!1969 = distinct !DIAssignID()
!1970 = distinct !DIAssignID()
!1971 = distinct !DIAssignID()
!1972 = distinct !DIAssignID()
!1973 = distinct !DIAssignID()
!1974 = !DILocation(line: 0, scope: !1948)
!1975 = distinct !DIAssignID()
!1976 = !DILocation(line: 0, scope: !1951)
!1977 = !DILocation(line: 0, scope: !1901)
!1978 = !DILocation(line: 258, column: 25, scope: !1901)
!1979 = !DILocation(line: 258, column: 36, scope: !1901)
!1980 = !DILocation(line: 265, column: 8, scope: !1901)
!1981 = !DILocation(line: 267, column: 3, scope: !1901)
!1982 = !DILocation(line: 261, column: 10, scope: !1901)
!1983 = !DILocation(line: 262, column: 15, scope: !1901)
!1984 = !DILocation(line: 263, column: 10, scope: !1901)
!1985 = !DILocation(line: 264, column: 8, scope: !1901)
!1986 = !DILocation(line: 266, column: 8, scope: !1901)
!1987 = !DILocation(line: 267, column: 8, scope: !1901)
!1988 = !DILocation(line: 308, column: 2, scope: !1901)
!1989 = !DILocation(line: 311, column: 3, scope: !1901)
!1990 = !DILocation(line: 318, column: 11, scope: !1931)
!1991 = !DILocation(line: 318, column: 12, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1931, file: !459, line: 318, column: 11)
!1993 = !DILocation(line: 319, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !459, line: 319, column: 9)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !459, line: 319, column: 9)
!1996 = !DILocation(line: 319, column: 9, scope: !1995)
!1997 = !DILocation(line: 0, scope: !537, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 357, column: 26, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !459, line: 335, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1930, file: !459, line: 334, column: 13)
!2001 = !DILocation(line: 199, column: 29, scope: !537, inlinedAt: !1998)
!2002 = !DILocation(line: 201, column: 19, scope: !2003, inlinedAt: !1998)
!2003 = distinct !DILexicalBlock(scope: !537, file: !459, line: 201, column: 7)
!2004 = !DILocation(line: 201, column: 7, scope: !537, inlinedAt: !1998)
!2005 = !DILocation(line: 229, column: 3, scope: !537, inlinedAt: !1998)
!2006 = !DILocation(line: 230, column: 3, scope: !537, inlinedAt: !1998)
!2007 = !DILocalVariable(name: "ps", arg: 1, scope: !2008, file: !1748, line: 1135, type: !2011)
!2008 = distinct !DISubprogram(name: "mbszero", scope: !1748, file: !1748, line: 1135, type: !2009, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2012)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2012 = !{!2007}
!2013 = !DILocation(line: 0, scope: !2008, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !1998)
!2015 = !DILocalVariable(name: "__dest", arg: 1, scope: !2016, file: !1757, line: 57, type: !75)
!2016 = distinct !DISubprogram(name: "memset", scope: !1757, file: !1757, line: 57, type: !1758, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2017)
!2017 = !{!2015, !2018, !2019}
!2018 = !DILocalVariable(name: "__ch", arg: 2, scope: !2016, file: !1757, line: 57, type: !53)
!2019 = !DILocalVariable(name: "__len", arg: 3, scope: !2016, file: !1757, line: 57, type: !77)
!2020 = !DILocation(line: 0, scope: !2016, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 1137, column: 3, scope: !2008, inlinedAt: !2014)
!2022 = !DILocation(line: 59, column: 10, scope: !2016, inlinedAt: !2021)
!2023 = !DILocation(line: 231, column: 7, scope: !2024, inlinedAt: !1998)
!2024 = distinct !DILexicalBlock(scope: !537, file: !459, line: 231, column: 7)
!2025 = !DILocation(line: 231, column: 40, scope: !2024, inlinedAt: !1998)
!2026 = !DILocation(line: 231, column: 45, scope: !2024, inlinedAt: !1998)
!2027 = !DILocation(line: 235, column: 1, scope: !537, inlinedAt: !1998)
!2028 = !DILocation(line: 0, scope: !537, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 358, column: 27, scope: !1999)
!2030 = !DILocation(line: 199, column: 29, scope: !537, inlinedAt: !2029)
!2031 = !DILocation(line: 201, column: 19, scope: !2003, inlinedAt: !2029)
!2032 = !DILocation(line: 201, column: 7, scope: !537, inlinedAt: !2029)
!2033 = !DILocation(line: 229, column: 3, scope: !537, inlinedAt: !2029)
!2034 = !DILocation(line: 230, column: 3, scope: !537, inlinedAt: !2029)
!2035 = !DILocation(line: 0, scope: !2008, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !2029)
!2037 = !DILocation(line: 0, scope: !2016, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 1137, column: 3, scope: !2008, inlinedAt: !2036)
!2039 = !DILocation(line: 59, column: 10, scope: !2016, inlinedAt: !2038)
!2040 = !DILocation(line: 231, column: 7, scope: !2024, inlinedAt: !2029)
!2041 = !DILocation(line: 231, column: 40, scope: !2024, inlinedAt: !2029)
!2042 = !DILocation(line: 231, column: 45, scope: !2024, inlinedAt: !2029)
!2043 = !DILocation(line: 235, column: 1, scope: !537, inlinedAt: !2029)
!2044 = !DILocation(line: 360, column: 14, scope: !1929)
!2045 = !DILocation(line: 360, column: 13, scope: !1930)
!2046 = !DILocation(line: 0, scope: !1928)
!2047 = !DILocation(line: 361, column: 45, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1928, file: !459, line: 361, column: 11)
!2049 = !DILocation(line: 361, column: 11, scope: !1928)
!2050 = !DILocation(line: 362, column: 13, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !459, line: 362, column: 13)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !459, line: 362, column: 13)
!2053 = !DILocation(line: 362, column: 13, scope: !2052)
!2054 = !DILocation(line: 361, column: 52, scope: !2048)
!2055 = distinct !{!2055, !2049, !2056, !936}
!2056 = !DILocation(line: 362, column: 13, scope: !1928)
!2057 = !DILocation(line: 260, column: 10, scope: !1901)
!2058 = !DILocation(line: 365, column: 28, scope: !1930)
!2059 = !DILocation(line: 367, column: 7, scope: !1931)
!2060 = !DILocation(line: 370, column: 7, scope: !1931)
!2061 = !DILocation(line: 373, column: 7, scope: !1931)
!2062 = !DILocation(line: 376, column: 12, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1931, file: !459, line: 376, column: 11)
!2064 = !DILocation(line: 376, column: 11, scope: !1931)
!2065 = !DILocation(line: 381, column: 12, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1931, file: !459, line: 381, column: 11)
!2067 = !DILocation(line: 381, column: 11, scope: !1931)
!2068 = !DILocation(line: 382, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !459, line: 382, column: 9)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !459, line: 382, column: 9)
!2071 = !DILocation(line: 382, column: 9, scope: !2070)
!2072 = !DILocation(line: 389, column: 7, scope: !1931)
!2073 = !DILocation(line: 392, column: 7, scope: !1931)
!2074 = !DILocation(line: 0, scope: !1933)
!2075 = !DILocation(line: 395, column: 8, scope: !1933)
!2076 = !DILocation(line: 309, column: 8, scope: !1901)
!2077 = !DILocation(line: 395, scope: !1933)
!2078 = !DILocation(line: 395, column: 34, scope: !1936)
!2079 = !DILocation(line: 395, column: 26, scope: !1936)
!2080 = !DILocation(line: 395, column: 48, scope: !1936)
!2081 = !DILocation(line: 395, column: 55, scope: !1936)
!2082 = !DILocation(line: 395, column: 3, scope: !1933)
!2083 = !DILocation(line: 395, column: 67, scope: !1936)
!2084 = !DILocation(line: 0, scope: !1935)
!2085 = !DILocation(line: 402, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 401, column: 11)
!2087 = !DILocation(line: 404, column: 17, scope: !2086)
!2088 = !DILocation(line: 405, column: 39, scope: !2086)
!2089 = !DILocation(line: 409, column: 32, scope: !2086)
!2090 = !DILocation(line: 405, column: 19, scope: !2086)
!2091 = !DILocation(line: 405, column: 15, scope: !2086)
!2092 = !DILocation(line: 410, column: 11, scope: !2086)
!2093 = !DILocation(line: 410, column: 25, scope: !2086)
!2094 = !DILocalVariable(name: "__s1", arg: 1, scope: !2095, file: !902, line: 974, type: !1037)
!2095 = distinct !DISubprogram(name: "memeq", scope: !902, file: !902, line: 974, type: !1717, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2096)
!2096 = !{!2094, !2097, !2098}
!2097 = !DILocalVariable(name: "__s2", arg: 2, scope: !2095, file: !902, line: 974, type: !1037)
!2098 = !DILocalVariable(name: "__n", arg: 3, scope: !2095, file: !902, line: 974, type: !77)
!2099 = !DILocation(line: 0, scope: !2095, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 410, column: 14, scope: !2086)
!2101 = !DILocation(line: 976, column: 11, scope: !2095, inlinedAt: !2100)
!2102 = !DILocation(line: 976, column: 10, scope: !2095, inlinedAt: !2100)
!2103 = !DILocation(line: 401, column: 11, scope: !1935)
!2104 = !DILocation(line: 417, column: 25, scope: !1935)
!2105 = !DILocation(line: 418, column: 7, scope: !1935)
!2106 = !DILocation(line: 421, column: 15, scope: !1942)
!2107 = !DILocation(line: 423, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !459, line: 423, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !459, line: 422, column: 13)
!2110 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 421, column: 15)
!2111 = !DILocation(line: 423, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !459, line: 423, column: 15)
!2113 = !DILocation(line: 423, column: 15, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !459, line: 423, column: 15)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !459, line: 423, column: 15)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !459, line: 423, column: 15)
!2117 = !DILocation(line: 423, column: 15, scope: !2115)
!2118 = !DILocation(line: 423, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !459, line: 423, column: 15)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !459, line: 423, column: 15)
!2121 = !DILocation(line: 423, column: 15, scope: !2120)
!2122 = !DILocation(line: 423, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !459, line: 423, column: 15)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !459, line: 423, column: 15)
!2125 = !DILocation(line: 423, column: 15, scope: !2124)
!2126 = !DILocation(line: 423, column: 15, scope: !2116)
!2127 = !DILocation(line: 423, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !459, line: 423, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2108, file: !459, line: 423, column: 15)
!2130 = !DILocation(line: 423, column: 15, scope: !2129)
!2131 = !DILocation(line: 431, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2109, file: !459, line: 430, column: 19)
!2133 = !DILocation(line: 431, column: 24, scope: !2132)
!2134 = !DILocation(line: 431, column: 28, scope: !2132)
!2135 = !DILocation(line: 431, column: 38, scope: !2132)
!2136 = !DILocation(line: 431, column: 48, scope: !2132)
!2137 = !DILocation(line: 431, column: 59, scope: !2132)
!2138 = !DILocation(line: 433, column: 19, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !459, line: 433, column: 19)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !459, line: 433, column: 19)
!2141 = distinct !DILexicalBlock(scope: !2132, file: !459, line: 432, column: 17)
!2142 = !DILocation(line: 433, column: 19, scope: !2140)
!2143 = !DILocation(line: 434, column: 19, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !459, line: 434, column: 19)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !459, line: 434, column: 19)
!2146 = !DILocation(line: 434, column: 19, scope: !2145)
!2147 = !DILocation(line: 435, column: 17, scope: !2141)
!2148 = !DILocation(line: 442, column: 20, scope: !2110)
!2149 = !DILocation(line: 447, column: 11, scope: !1942)
!2150 = !DILocation(line: 450, column: 19, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 448, column: 13)
!2152 = !DILocation(line: 456, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !459, line: 455, column: 19)
!2154 = !DILocation(line: 456, column: 24, scope: !2153)
!2155 = !DILocation(line: 456, column: 28, scope: !2153)
!2156 = !DILocation(line: 456, column: 38, scope: !2153)
!2157 = !DILocation(line: 456, column: 41, scope: !2153)
!2158 = !DILocation(line: 456, column: 52, scope: !2153)
!2159 = !DILocation(line: 455, column: 19, scope: !2151)
!2160 = !DILocation(line: 457, column: 25, scope: !2153)
!2161 = !DILocation(line: 457, column: 17, scope: !2153)
!2162 = !DILocation(line: 464, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2153, file: !459, line: 458, column: 19)
!2164 = !DILocation(line: 468, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !459, line: 468, column: 21)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !459, line: 468, column: 21)
!2167 = !DILocation(line: 468, column: 21, scope: !2166)
!2168 = !DILocation(line: 469, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !459, line: 469, column: 21)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !459, line: 469, column: 21)
!2171 = !DILocation(line: 469, column: 21, scope: !2170)
!2172 = !DILocation(line: 470, column: 21, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !459, line: 470, column: 21)
!2174 = distinct !DILexicalBlock(scope: !2163, file: !459, line: 470, column: 21)
!2175 = !DILocation(line: 470, column: 21, scope: !2174)
!2176 = !DILocation(line: 471, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !459, line: 471, column: 21)
!2178 = distinct !DILexicalBlock(scope: !2163, file: !459, line: 471, column: 21)
!2179 = !DILocation(line: 471, column: 21, scope: !2178)
!2180 = !DILocation(line: 472, column: 21, scope: !2163)
!2181 = !DILocation(line: 482, column: 33, scope: !1941)
!2182 = !DILocation(line: 483, column: 33, scope: !1941)
!2183 = !DILocation(line: 485, column: 33, scope: !1941)
!2184 = !DILocation(line: 486, column: 33, scope: !1941)
!2185 = !DILocation(line: 487, column: 33, scope: !1941)
!2186 = !DILocation(line: 490, column: 17, scope: !1941)
!2187 = !DILocation(line: 492, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !459, line: 491, column: 15)
!2189 = distinct !DILexicalBlock(scope: !1941, file: !459, line: 490, column: 17)
!2190 = !DILocation(line: 499, column: 35, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1941, file: !459, line: 499, column: 17)
!2192 = !DILocation(line: 499, column: 57, scope: !2191)
!2193 = !DILocation(line: 0, scope: !1941)
!2194 = !DILocation(line: 502, column: 11, scope: !1941)
!2195 = !DILocation(line: 504, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1941, file: !459, line: 503, column: 17)
!2197 = !DILocation(line: 507, column: 11, scope: !1941)
!2198 = !DILocation(line: 508, column: 17, scope: !1941)
!2199 = !DILocation(line: 517, column: 15, scope: !1942)
!2200 = !DILocation(line: 517, column: 40, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 517, column: 15)
!2202 = !DILocation(line: 517, column: 47, scope: !2201)
!2203 = !DILocation(line: 517, column: 18, scope: !2201)
!2204 = !DILocation(line: 521, column: 17, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 521, column: 15)
!2206 = !DILocation(line: 521, column: 15, scope: !1942)
!2207 = !DILocation(line: 525, column: 11, scope: !1942)
!2208 = !DILocation(line: 537, column: 15, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 536, column: 15)
!2210 = !DILocation(line: 544, column: 15, scope: !1942)
!2211 = !DILocation(line: 546, column: 19, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !459, line: 545, column: 13)
!2213 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 544, column: 15)
!2214 = !DILocation(line: 549, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !459, line: 549, column: 19)
!2216 = !DILocation(line: 549, column: 30, scope: !2215)
!2217 = !DILocation(line: 558, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !459, line: 558, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2212, file: !459, line: 558, column: 15)
!2220 = !DILocation(line: 558, column: 15, scope: !2219)
!2221 = !DILocation(line: 559, column: 15, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !459, line: 559, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2212, file: !459, line: 559, column: 15)
!2224 = !DILocation(line: 559, column: 15, scope: !2223)
!2225 = !DILocation(line: 560, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !459, line: 560, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2212, file: !459, line: 560, column: 15)
!2228 = !DILocation(line: 560, column: 15, scope: !2227)
!2229 = !DILocation(line: 562, column: 13, scope: !2212)
!2230 = !DILocation(line: 602, column: 17, scope: !1945)
!2231 = !DILocation(line: 0, scope: !1945)
!2232 = !DILocation(line: 605, column: 29, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1949, file: !459, line: 603, column: 15)
!2234 = !DILocation(line: 605, column: 27, scope: !2233)
!2235 = !DILocation(line: 606, column: 15, scope: !2233)
!2236 = !DILocation(line: 609, column: 17, scope: !1948)
!2237 = !DILocation(line: 0, scope: !2008, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 609, column: 32, scope: !1948)
!2239 = !DILocation(line: 0, scope: !2016, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 1137, column: 3, scope: !2008, inlinedAt: !2238)
!2241 = !DILocation(line: 59, column: 10, scope: !2016, inlinedAt: !2240)
!2242 = !DILocation(line: 613, column: 29, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1948, file: !459, line: 613, column: 21)
!2244 = !DILocation(line: 613, column: 21, scope: !1948)
!2245 = !DILocation(line: 614, column: 29, scope: !2243)
!2246 = !DILocation(line: 614, column: 19, scope: !2243)
!2247 = !DILocation(line: 618, column: 21, scope: !1951)
!2248 = !DILocation(line: 620, column: 54, scope: !1951)
!2249 = !DILocation(line: 619, column: 36, scope: !1951)
!2250 = !DILocation(line: 621, column: 25, scope: !1951)
!2251 = !DILocation(line: 631, column: 38, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1960, file: !459, line: 629, column: 23)
!2253 = !DILocation(line: 631, column: 48, scope: !2252)
!2254 = !DILocation(line: 626, column: 25, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1961, file: !459, line: 624, column: 23)
!2256 = !DILocation(line: 631, column: 51, scope: !2252)
!2257 = !DILocation(line: 631, column: 25, scope: !2252)
!2258 = !DILocation(line: 632, column: 28, scope: !2252)
!2259 = !DILocation(line: 631, column: 34, scope: !2252)
!2260 = distinct !{!2260, !2257, !2258, !936}
!2261 = !DILocation(line: 0, scope: !1956)
!2262 = !DILocation(line: 646, column: 29, scope: !1958)
!2263 = !DILocation(line: 649, column: 39, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1956, file: !459, line: 648, column: 29)
!2265 = !DILocation(line: 649, column: 31, scope: !2264)
!2266 = !DILocation(line: 648, column: 60, scope: !2264)
!2267 = !DILocation(line: 648, column: 50, scope: !2264)
!2268 = !DILocation(line: 648, column: 29, scope: !1956)
!2269 = distinct !{!2269, !2268, !2270, !936}
!2270 = !DILocation(line: 654, column: 33, scope: !1956)
!2271 = !DILocation(line: 657, column: 43, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1959, file: !459, line: 657, column: 29)
!2273 = !DILocalVariable(name: "wc", arg: 1, scope: !2274, file: !2275, line: 865, type: !2278)
!2274 = distinct !DISubprogram(name: "c32isprint", scope: !2275, file: !2275, line: 865, type: !2276, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2280)
!2275 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!53, !2278}
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2279, line: 20, baseType: !59)
!2279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2280 = !{!2273}
!2281 = !DILocation(line: 0, scope: !2274, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 657, column: 31, scope: !2272)
!2283 = !DILocation(line: 871, column: 10, scope: !2274, inlinedAt: !2282)
!2284 = !DILocation(line: 657, column: 31, scope: !2272)
!2285 = !DILocation(line: 664, column: 23, scope: !1951)
!2286 = !DILocation(line: 665, column: 19, scope: !1952)
!2287 = !DILocation(line: 666, column: 15, scope: !1949)
!2288 = !DILocation(line: 0, scope: !1949)
!2289 = !DILocation(line: 670, column: 19, scope: !1965)
!2290 = !DILocation(line: 670, column: 23, scope: !1965)
!2291 = !DILocation(line: 674, column: 33, scope: !1964)
!2292 = !DILocation(line: 0, scope: !1964)
!2293 = !DILocation(line: 676, column: 17, scope: !1964)
!2294 = !DILocation(line: 398, column: 12, scope: !1935)
!2295 = !DILocation(line: 678, column: 43, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !459, line: 678, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !459, line: 677, column: 19)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !459, line: 676, column: 17)
!2299 = distinct !DILexicalBlock(scope: !1964, file: !459, line: 676, column: 17)
!2300 = !DILocation(line: 680, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !459, line: 680, column: 25)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !459, line: 679, column: 23)
!2303 = !DILocation(line: 680, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !459, line: 680, column: 25)
!2305 = !DILocation(line: 680, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !459, line: 680, column: 25)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !459, line: 680, column: 25)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !459, line: 680, column: 25)
!2309 = !DILocation(line: 680, column: 25, scope: !2307)
!2310 = !DILocation(line: 680, column: 25, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !459, line: 680, column: 25)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !459, line: 680, column: 25)
!2313 = !DILocation(line: 680, column: 25, scope: !2312)
!2314 = !DILocation(line: 680, column: 25, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !459, line: 680, column: 25)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !459, line: 680, column: 25)
!2317 = !DILocation(line: 680, column: 25, scope: !2316)
!2318 = !DILocation(line: 680, column: 25, scope: !2308)
!2319 = !DILocation(line: 680, column: 25, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !459, line: 680, column: 25)
!2321 = distinct !DILexicalBlock(scope: !2301, file: !459, line: 680, column: 25)
!2322 = !DILocation(line: 680, column: 25, scope: !2321)
!2323 = !DILocation(line: 681, column: 25, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !459, line: 681, column: 25)
!2325 = distinct !DILexicalBlock(scope: !2302, file: !459, line: 681, column: 25)
!2326 = !DILocation(line: 681, column: 25, scope: !2325)
!2327 = !DILocation(line: 682, column: 25, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !459, line: 682, column: 25)
!2329 = distinct !DILexicalBlock(scope: !2302, file: !459, line: 682, column: 25)
!2330 = !DILocation(line: 682, column: 25, scope: !2329)
!2331 = !DILocation(line: 683, column: 38, scope: !2302)
!2332 = !DILocation(line: 683, column: 33, scope: !2302)
!2333 = !DILocation(line: 684, column: 23, scope: !2302)
!2334 = !DILocation(line: 685, column: 30, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2296, file: !459, line: 685, column: 30)
!2336 = !DILocation(line: 685, column: 30, scope: !2296)
!2337 = !DILocation(line: 687, column: 25, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !459, line: 687, column: 25)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !459, line: 687, column: 25)
!2340 = distinct !DILexicalBlock(scope: !2335, file: !459, line: 686, column: 23)
!2341 = !DILocation(line: 687, column: 25, scope: !2339)
!2342 = !DILocation(line: 689, column: 23, scope: !2340)
!2343 = !DILocation(line: 690, column: 35, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2297, file: !459, line: 690, column: 25)
!2345 = !DILocation(line: 690, column: 30, scope: !2344)
!2346 = !DILocation(line: 690, column: 25, scope: !2297)
!2347 = !DILocation(line: 692, column: 21, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !459, line: 692, column: 21)
!2349 = distinct !DILexicalBlock(scope: !2297, file: !459, line: 692, column: 21)
!2350 = !DILocation(line: 692, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !459, line: 692, column: 21)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !459, line: 692, column: 21)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !459, line: 692, column: 21)
!2354 = !DILocation(line: 692, column: 21, scope: !2352)
!2355 = !DILocation(line: 692, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !459, line: 692, column: 21)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !459, line: 692, column: 21)
!2358 = !DILocation(line: 692, column: 21, scope: !2357)
!2359 = !DILocation(line: 692, column: 21, scope: !2353)
!2360 = !DILocation(line: 0, scope: !2297)
!2361 = !DILocation(line: 693, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !459, line: 693, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2297, file: !459, line: 693, column: 21)
!2364 = !DILocation(line: 693, column: 21, scope: !2363)
!2365 = !DILocation(line: 694, column: 25, scope: !2297)
!2366 = !DILocation(line: 676, column: 17, scope: !2298)
!2367 = distinct !{!2367, !2368, !2369}
!2368 = !DILocation(line: 676, column: 17, scope: !2299)
!2369 = !DILocation(line: 695, column: 19, scope: !2299)
!2370 = !DILocation(line: 409, column: 30, scope: !2086)
!2371 = !DILocation(line: 702, column: 34, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 702, column: 11)
!2373 = !DILocation(line: 704, column: 14, scope: !2372)
!2374 = !DILocation(line: 705, column: 14, scope: !2372)
!2375 = !DILocation(line: 705, column: 35, scope: !2372)
!2376 = !DILocation(line: 705, column: 17, scope: !2372)
!2377 = !DILocation(line: 705, column: 47, scope: !2372)
!2378 = !DILocation(line: 705, column: 65, scope: !2372)
!2379 = !DILocation(line: 706, column: 11, scope: !2372)
!2380 = !DILocation(line: 702, column: 11, scope: !1935)
!2381 = !DILocation(line: 395, column: 15, scope: !1933)
!2382 = !DILocation(line: 709, column: 5, scope: !1935)
!2383 = !DILocation(line: 710, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 710, column: 7)
!2385 = !DILocation(line: 710, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2384, file: !459, line: 710, column: 7)
!2387 = !DILocation(line: 710, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !459, line: 710, column: 7)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !459, line: 710, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !459, line: 710, column: 7)
!2391 = !DILocation(line: 710, column: 7, scope: !2389)
!2392 = !DILocation(line: 710, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !459, line: 710, column: 7)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !459, line: 710, column: 7)
!2395 = !DILocation(line: 710, column: 7, scope: !2394)
!2396 = !DILocation(line: 710, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !459, line: 710, column: 7)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !459, line: 710, column: 7)
!2399 = !DILocation(line: 710, column: 7, scope: !2398)
!2400 = !DILocation(line: 710, column: 7, scope: !2390)
!2401 = !DILocation(line: 710, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !459, line: 710, column: 7)
!2403 = distinct !DILexicalBlock(scope: !2384, file: !459, line: 710, column: 7)
!2404 = !DILocation(line: 710, column: 7, scope: !2403)
!2405 = !DILocation(line: 712, column: 5, scope: !1935)
!2406 = !DILocation(line: 713, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !459, line: 713, column: 7)
!2408 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 713, column: 7)
!2409 = !DILocation(line: 417, column: 21, scope: !1935)
!2410 = !DILocation(line: 713, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !459, line: 713, column: 7)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !459, line: 713, column: 7)
!2413 = distinct !DILexicalBlock(scope: !2407, file: !459, line: 713, column: 7)
!2414 = !DILocation(line: 713, column: 7, scope: !2412)
!2415 = !DILocation(line: 713, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !459, line: 713, column: 7)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !459, line: 713, column: 7)
!2418 = !DILocation(line: 713, column: 7, scope: !2417)
!2419 = !DILocation(line: 713, column: 7, scope: !2413)
!2420 = !DILocation(line: 714, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !459, line: 714, column: 7)
!2422 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 714, column: 7)
!2423 = !DILocation(line: 714, column: 7, scope: !2422)
!2424 = !DILocation(line: 716, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1935, file: !459, line: 716, column: 11)
!2426 = !DILocation(line: 716, column: 11, scope: !1935)
!2427 = !DILocation(line: 718, column: 5, scope: !1936)
!2428 = !DILocation(line: 395, column: 82, scope: !1936)
!2429 = !DILocation(line: 395, column: 3, scope: !1936)
!2430 = distinct !{!2430, !2082, !2431, !936}
!2431 = !DILocation(line: 718, column: 5, scope: !1933)
!2432 = !DILocation(line: 720, column: 11, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 720, column: 7)
!2434 = !DILocation(line: 720, column: 16, scope: !2433)
!2435 = !DILocation(line: 728, column: 51, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 728, column: 7)
!2437 = !DILocation(line: 731, column: 11, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !459, line: 731, column: 11)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !459, line: 730, column: 5)
!2440 = !DILocation(line: 731, column: 11, scope: !2439)
!2441 = !DILocation(line: 732, column: 16, scope: !2438)
!2442 = !DILocation(line: 732, column: 9, scope: !2438)
!2443 = !DILocation(line: 736, column: 18, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !459, line: 736, column: 16)
!2445 = !DILocation(line: 736, column: 29, scope: !2444)
!2446 = !DILocation(line: 745, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 745, column: 7)
!2448 = !DILocation(line: 745, column: 20, scope: !2447)
!2449 = !DILocation(line: 746, column: 12, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !459, line: 746, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !459, line: 746, column: 5)
!2452 = !DILocation(line: 746, column: 5, scope: !2451)
!2453 = !DILocation(line: 747, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !459, line: 747, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !459, line: 747, column: 7)
!2456 = !DILocation(line: 747, column: 7, scope: !2455)
!2457 = !DILocation(line: 746, column: 39, scope: !2450)
!2458 = distinct !{!2458, !2452, !2459, !936}
!2459 = !DILocation(line: 747, column: 7, scope: !2451)
!2460 = !DILocation(line: 749, column: 11, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 749, column: 7)
!2462 = !DILocation(line: 749, column: 7, scope: !1901)
!2463 = !DILocation(line: 750, column: 5, scope: !2461)
!2464 = !DILocation(line: 750, column: 17, scope: !2461)
!2465 = !DILocation(line: 753, column: 2, scope: !1901)
!2466 = !DILocation(line: 756, column: 51, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !1901, file: !459, line: 756, column: 7)
!2468 = !DILocation(line: 756, column: 21, scope: !2467)
!2469 = !DILocation(line: 760, column: 42, scope: !1901)
!2470 = !DILocation(line: 758, column: 10, scope: !1901)
!2471 = !DILocation(line: 758, column: 3, scope: !1901)
!2472 = !DILocation(line: 762, column: 1, scope: !1901)
!2473 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1013, file: !1013, line: 98, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!77}
!2476 = !DISubprogram(name: "strlen", scope: !1009, file: !1009, line: 407, type: !2477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!79, !80}
!2479 = !DISubprogram(name: "iswprint", scope: !2480, file: !2480, line: 120, type: !2276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2480 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2481 = distinct !DISubprogram(name: "quotearg_alloc", scope: !459, file: !459, line: 788, type: !2482, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!74, !80, !77, !1794}
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "arg", arg: 1, scope: !2481, file: !459, line: 788, type: !80)
!2486 = !DILocalVariable(name: "argsize", arg: 2, scope: !2481, file: !459, line: 788, type: !77)
!2487 = !DILocalVariable(name: "o", arg: 3, scope: !2481, file: !459, line: 789, type: !1794)
!2488 = !DILocation(line: 0, scope: !2481)
!2489 = !DILocalVariable(name: "arg", arg: 1, scope: !2490, file: !459, line: 801, type: !80)
!2490 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !459, file: !459, line: 801, type: !2491, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!74, !80, !77, !718, !1794}
!2493 = !{!2489, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2494 = !DILocalVariable(name: "argsize", arg: 2, scope: !2490, file: !459, line: 801, type: !77)
!2495 = !DILocalVariable(name: "size", arg: 3, scope: !2490, file: !459, line: 801, type: !718)
!2496 = !DILocalVariable(name: "o", arg: 4, scope: !2490, file: !459, line: 802, type: !1794)
!2497 = !DILocalVariable(name: "p", scope: !2490, file: !459, line: 804, type: !1794)
!2498 = !DILocalVariable(name: "saved_errno", scope: !2490, file: !459, line: 805, type: !53)
!2499 = !DILocalVariable(name: "flags", scope: !2490, file: !459, line: 807, type: !53)
!2500 = !DILocalVariable(name: "bufsize", scope: !2490, file: !459, line: 808, type: !77)
!2501 = !DILocalVariable(name: "buf", scope: !2490, file: !459, line: 812, type: !74)
!2502 = !DILocation(line: 0, scope: !2490, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 791, column: 10, scope: !2481)
!2504 = !DILocation(line: 804, column: 37, scope: !2490, inlinedAt: !2503)
!2505 = !DILocation(line: 805, column: 21, scope: !2490, inlinedAt: !2503)
!2506 = !DILocation(line: 807, column: 18, scope: !2490, inlinedAt: !2503)
!2507 = !DILocation(line: 807, column: 24, scope: !2490, inlinedAt: !2503)
!2508 = !DILocation(line: 808, column: 72, scope: !2490, inlinedAt: !2503)
!2509 = !DILocation(line: 809, column: 56, scope: !2490, inlinedAt: !2503)
!2510 = !DILocation(line: 810, column: 49, scope: !2490, inlinedAt: !2503)
!2511 = !DILocation(line: 811, column: 49, scope: !2490, inlinedAt: !2503)
!2512 = !DILocation(line: 808, column: 20, scope: !2490, inlinedAt: !2503)
!2513 = !DILocation(line: 811, column: 62, scope: !2490, inlinedAt: !2503)
!2514 = !DILocation(line: 812, column: 15, scope: !2490, inlinedAt: !2503)
!2515 = !DILocation(line: 813, column: 60, scope: !2490, inlinedAt: !2503)
!2516 = !DILocation(line: 815, column: 32, scope: !2490, inlinedAt: !2503)
!2517 = !DILocation(line: 815, column: 47, scope: !2490, inlinedAt: !2503)
!2518 = !DILocation(line: 813, column: 3, scope: !2490, inlinedAt: !2503)
!2519 = !DILocation(line: 816, column: 9, scope: !2490, inlinedAt: !2503)
!2520 = !DILocation(line: 791, column: 3, scope: !2481)
!2521 = !DILocation(line: 0, scope: !2490)
!2522 = !DILocation(line: 804, column: 37, scope: !2490)
!2523 = !DILocation(line: 805, column: 21, scope: !2490)
!2524 = !DILocation(line: 807, column: 18, scope: !2490)
!2525 = !DILocation(line: 807, column: 27, scope: !2490)
!2526 = !DILocation(line: 807, column: 24, scope: !2490)
!2527 = !DILocation(line: 808, column: 72, scope: !2490)
!2528 = !DILocation(line: 809, column: 56, scope: !2490)
!2529 = !DILocation(line: 810, column: 49, scope: !2490)
!2530 = !DILocation(line: 811, column: 49, scope: !2490)
!2531 = !DILocation(line: 808, column: 20, scope: !2490)
!2532 = !DILocation(line: 811, column: 62, scope: !2490)
!2533 = !DILocation(line: 812, column: 15, scope: !2490)
!2534 = !DILocation(line: 813, column: 60, scope: !2490)
!2535 = !DILocation(line: 815, column: 32, scope: !2490)
!2536 = !DILocation(line: 815, column: 47, scope: !2490)
!2537 = !DILocation(line: 813, column: 3, scope: !2490)
!2538 = !DILocation(line: 816, column: 9, scope: !2490)
!2539 = !DILocation(line: 817, column: 7, scope: !2490)
!2540 = !DILocation(line: 818, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2490, file: !459, line: 817, column: 7)
!2542 = !{!1135, !1135, i64 0}
!2543 = !DILocation(line: 818, column: 5, scope: !2541)
!2544 = !DILocation(line: 819, column: 3, scope: !2490)
!2545 = distinct !DISubprogram(name: "quotearg_free", scope: !459, file: !459, line: 837, type: !414, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2546)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "sv", scope: !2545, file: !459, line: 839, type: !560)
!2548 = !DILocalVariable(name: "i", scope: !2549, file: !459, line: 840, type: !53)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !459, line: 840, column: 3)
!2550 = !DILocation(line: 839, column: 24, scope: !2545)
!2551 = !DILocation(line: 0, scope: !2545)
!2552 = !DILocation(line: 0, scope: !2549)
!2553 = !DILocation(line: 840, column: 21, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !459, line: 840, column: 3)
!2555 = !DILocation(line: 840, column: 3, scope: !2549)
!2556 = !DILocation(line: 842, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !459, line: 842, column: 7)
!2558 = !{!2559, !829, i64 8}
!2559 = !{!"slotvec", !1135, i64 0, !829, i64 8}
!2560 = !DILocation(line: 842, column: 17, scope: !2557)
!2561 = !DILocation(line: 842, column: 7, scope: !2545)
!2562 = !DILocation(line: 841, column: 17, scope: !2554)
!2563 = !DILocation(line: 841, column: 5, scope: !2554)
!2564 = !DILocation(line: 840, column: 32, scope: !2554)
!2565 = distinct !{!2565, !2555, !2566, !936}
!2566 = !DILocation(line: 841, column: 20, scope: !2549)
!2567 = !DILocation(line: 844, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !459, line: 843, column: 5)
!2569 = !DILocation(line: 845, column: 21, scope: !2568)
!2570 = !{!2559, !1135, i64 0}
!2571 = !DILocation(line: 846, column: 20, scope: !2568)
!2572 = !DILocation(line: 847, column: 5, scope: !2568)
!2573 = !DILocation(line: 848, column: 10, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2545, file: !459, line: 848, column: 7)
!2575 = !DILocation(line: 848, column: 7, scope: !2545)
!2576 = !DILocation(line: 850, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !459, line: 849, column: 5)
!2578 = !DILocation(line: 851, column: 15, scope: !2577)
!2579 = !DILocation(line: 852, column: 5, scope: !2577)
!2580 = !DILocation(line: 853, column: 10, scope: !2545)
!2581 = !DILocation(line: 854, column: 1, scope: !2545)
!2582 = distinct !DISubprogram(name: "quotearg_n", scope: !459, file: !459, line: 919, type: !1006, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2583)
!2583 = !{!2584, !2585}
!2584 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !459, line: 919, type: !53)
!2585 = !DILocalVariable(name: "arg", arg: 2, scope: !2582, file: !459, line: 919, type: !80)
!2586 = !DILocation(line: 0, scope: !2582)
!2587 = !DILocation(line: 921, column: 10, scope: !2582)
!2588 = !DILocation(line: 921, column: 3, scope: !2582)
!2589 = distinct !DISubprogram(name: "quotearg_n_options", scope: !459, file: !459, line: 866, type: !2590, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!74, !53, !80, !77, !1794}
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2603, !2604, !2606, !2607, !2608}
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2589, file: !459, line: 866, type: !53)
!2594 = !DILocalVariable(name: "arg", arg: 2, scope: !2589, file: !459, line: 866, type: !80)
!2595 = !DILocalVariable(name: "argsize", arg: 3, scope: !2589, file: !459, line: 866, type: !77)
!2596 = !DILocalVariable(name: "options", arg: 4, scope: !2589, file: !459, line: 867, type: !1794)
!2597 = !DILocalVariable(name: "saved_errno", scope: !2589, file: !459, line: 869, type: !53)
!2598 = !DILocalVariable(name: "sv", scope: !2589, file: !459, line: 871, type: !560)
!2599 = !DILocalVariable(name: "nslots_max", scope: !2589, file: !459, line: 873, type: !53)
!2600 = !DILocalVariable(name: "preallocated", scope: !2601, file: !459, line: 879, type: !133)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !459, line: 878, column: 5)
!2602 = distinct !DILexicalBlock(scope: !2589, file: !459, line: 877, column: 7)
!2603 = !DILocalVariable(name: "new_nslots", scope: !2601, file: !459, line: 880, type: !731)
!2604 = !DILocalVariable(name: "size", scope: !2605, file: !459, line: 891, type: !77)
!2605 = distinct !DILexicalBlock(scope: !2589, file: !459, line: 890, column: 3)
!2606 = !DILocalVariable(name: "val", scope: !2605, file: !459, line: 892, type: !74)
!2607 = !DILocalVariable(name: "flags", scope: !2605, file: !459, line: 894, type: !53)
!2608 = !DILocalVariable(name: "qsize", scope: !2605, file: !459, line: 895, type: !77)
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 0, scope: !2601)
!2611 = !DILocation(line: 0, scope: !2589)
!2612 = !DILocation(line: 869, column: 21, scope: !2589)
!2613 = !DILocation(line: 871, column: 24, scope: !2589)
!2614 = !DILocation(line: 874, column: 17, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2589, file: !459, line: 874, column: 7)
!2616 = !DILocation(line: 875, column: 5, scope: !2615)
!2617 = !DILocation(line: 877, column: 7, scope: !2602)
!2618 = !DILocation(line: 877, column: 14, scope: !2602)
!2619 = !DILocation(line: 877, column: 7, scope: !2589)
!2620 = !DILocation(line: 879, column: 31, scope: !2601)
!2621 = !DILocation(line: 880, column: 7, scope: !2601)
!2622 = !DILocation(line: 880, column: 26, scope: !2601)
!2623 = !DILocation(line: 880, column: 13, scope: !2601)
!2624 = distinct !DIAssignID()
!2625 = !DILocation(line: 882, column: 31, scope: !2601)
!2626 = !DILocation(line: 883, column: 33, scope: !2601)
!2627 = !DILocation(line: 883, column: 42, scope: !2601)
!2628 = !DILocation(line: 883, column: 31, scope: !2601)
!2629 = !DILocation(line: 882, column: 22, scope: !2601)
!2630 = !DILocation(line: 882, column: 15, scope: !2601)
!2631 = !DILocation(line: 884, column: 11, scope: !2601)
!2632 = !DILocation(line: 885, column: 15, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2601, file: !459, line: 884, column: 11)
!2634 = !{i64 0, i64 8, !2542, i64 8, i64 8, !828}
!2635 = !DILocation(line: 885, column: 9, scope: !2633)
!2636 = !DILocation(line: 886, column: 20, scope: !2601)
!2637 = !DILocation(line: 886, column: 18, scope: !2601)
!2638 = !DILocation(line: 886, column: 32, scope: !2601)
!2639 = !DILocation(line: 886, column: 43, scope: !2601)
!2640 = !DILocation(line: 886, column: 53, scope: !2601)
!2641 = !DILocation(line: 0, scope: !2016, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 886, column: 7, scope: !2601)
!2643 = !DILocation(line: 59, column: 10, scope: !2016, inlinedAt: !2642)
!2644 = !DILocation(line: 887, column: 16, scope: !2601)
!2645 = !DILocation(line: 887, column: 14, scope: !2601)
!2646 = !DILocation(line: 888, column: 5, scope: !2602)
!2647 = !DILocation(line: 888, column: 5, scope: !2601)
!2648 = !DILocation(line: 891, column: 19, scope: !2605)
!2649 = !DILocation(line: 891, column: 25, scope: !2605)
!2650 = !DILocation(line: 0, scope: !2605)
!2651 = !DILocation(line: 892, column: 23, scope: !2605)
!2652 = !DILocation(line: 894, column: 26, scope: !2605)
!2653 = !DILocation(line: 894, column: 32, scope: !2605)
!2654 = !DILocation(line: 896, column: 55, scope: !2605)
!2655 = !DILocation(line: 897, column: 55, scope: !2605)
!2656 = !DILocation(line: 898, column: 55, scope: !2605)
!2657 = !DILocation(line: 899, column: 55, scope: !2605)
!2658 = !DILocation(line: 895, column: 20, scope: !2605)
!2659 = !DILocation(line: 901, column: 14, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2605, file: !459, line: 901, column: 9)
!2661 = !DILocation(line: 901, column: 9, scope: !2605)
!2662 = !DILocation(line: 903, column: 35, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !459, line: 902, column: 7)
!2664 = !DILocation(line: 903, column: 20, scope: !2663)
!2665 = !DILocation(line: 904, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !459, line: 904, column: 13)
!2667 = !DILocation(line: 904, column: 13, scope: !2663)
!2668 = !DILocation(line: 905, column: 11, scope: !2666)
!2669 = !DILocation(line: 906, column: 27, scope: !2663)
!2670 = !DILocation(line: 906, column: 19, scope: !2663)
!2671 = !DILocation(line: 907, column: 69, scope: !2663)
!2672 = !DILocation(line: 909, column: 44, scope: !2663)
!2673 = !DILocation(line: 910, column: 44, scope: !2663)
!2674 = !DILocation(line: 907, column: 9, scope: !2663)
!2675 = !DILocation(line: 911, column: 7, scope: !2663)
!2676 = !DILocation(line: 913, column: 11, scope: !2605)
!2677 = !DILocation(line: 914, column: 5, scope: !2605)
!2678 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !459, file: !459, line: 925, type: !2679, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!74, !53, !80, !77}
!2681 = !{!2682, !2683, !2684}
!2682 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !459, line: 925, type: !53)
!2683 = !DILocalVariable(name: "arg", arg: 2, scope: !2678, file: !459, line: 925, type: !80)
!2684 = !DILocalVariable(name: "argsize", arg: 3, scope: !2678, file: !459, line: 925, type: !77)
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 927, column: 10, scope: !2678)
!2687 = !DILocation(line: 927, column: 3, scope: !2678)
!2688 = distinct !DISubprogram(name: "quotearg", scope: !459, file: !459, line: 931, type: !1015, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2689)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "arg", arg: 1, scope: !2688, file: !459, line: 931, type: !80)
!2691 = !DILocation(line: 0, scope: !2688)
!2692 = !DILocation(line: 0, scope: !2582, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 933, column: 10, scope: !2688)
!2694 = !DILocation(line: 921, column: 10, scope: !2582, inlinedAt: !2693)
!2695 = !DILocation(line: 933, column: 3, scope: !2688)
!2696 = distinct !DISubprogram(name: "quotearg_mem", scope: !459, file: !459, line: 937, type: !2697, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!74, !80, !77}
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "arg", arg: 1, scope: !2696, file: !459, line: 937, type: !80)
!2701 = !DILocalVariable(name: "argsize", arg: 2, scope: !2696, file: !459, line: 937, type: !77)
!2702 = !DILocation(line: 0, scope: !2696)
!2703 = !DILocation(line: 0, scope: !2678, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 939, column: 10, scope: !2696)
!2705 = !DILocation(line: 927, column: 10, scope: !2678, inlinedAt: !2704)
!2706 = !DILocation(line: 939, column: 3, scope: !2696)
!2707 = distinct !DISubprogram(name: "quotearg_n_style", scope: !459, file: !459, line: 943, type: !2708, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!74, !53, !485, !80}
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2707, file: !459, line: 943, type: !53)
!2712 = !DILocalVariable(name: "s", arg: 2, scope: !2707, file: !459, line: 943, type: !485)
!2713 = !DILocalVariable(name: "arg", arg: 3, scope: !2707, file: !459, line: 943, type: !80)
!2714 = !DILocalVariable(name: "o", scope: !2707, file: !459, line: 945, type: !1795)
!2715 = distinct !DIAssignID()
!2716 = !DILocation(line: 0, scope: !2707)
!2717 = !DILocation(line: 945, column: 3, scope: !2707)
!2718 = !{!2719}
!2719 = distinct !{!2719, !2720, !"quoting_options_from_style: argument 0"}
!2720 = distinct !{!2720, !"quoting_options_from_style"}
!2721 = !DILocation(line: 945, column: 36, scope: !2707)
!2722 = !DILocalVariable(name: "style", arg: 1, scope: !2723, file: !459, line: 183, type: !485)
!2723 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !459, file: !459, line: 183, type: !2724, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!512, !485}
!2726 = !{!2722, !2727}
!2727 = !DILocalVariable(name: "o", scope: !2723, file: !459, line: 185, type: !512)
!2728 = !DILocation(line: 0, scope: !2723, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 945, column: 36, scope: !2707)
!2730 = !DILocation(line: 185, column: 26, scope: !2723, inlinedAt: !2729)
!2731 = distinct !DIAssignID()
!2732 = !DILocation(line: 186, column: 13, scope: !2733, inlinedAt: !2729)
!2733 = distinct !DILexicalBlock(scope: !2723, file: !459, line: 186, column: 7)
!2734 = !DILocation(line: 186, column: 7, scope: !2723, inlinedAt: !2729)
!2735 = !DILocation(line: 187, column: 5, scope: !2733, inlinedAt: !2729)
!2736 = !DILocation(line: 188, column: 11, scope: !2723, inlinedAt: !2729)
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 946, column: 10, scope: !2707)
!2739 = !DILocation(line: 947, column: 1, scope: !2707)
!2740 = !DILocation(line: 946, column: 3, scope: !2707)
!2741 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !459, file: !459, line: 950, type: !2742, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!74, !53, !485, !80, !77}
!2744 = !{!2745, !2746, !2747, !2748, !2749}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !459, line: 950, type: !53)
!2746 = !DILocalVariable(name: "s", arg: 2, scope: !2741, file: !459, line: 950, type: !485)
!2747 = !DILocalVariable(name: "arg", arg: 3, scope: !2741, file: !459, line: 951, type: !80)
!2748 = !DILocalVariable(name: "argsize", arg: 4, scope: !2741, file: !459, line: 951, type: !77)
!2749 = !DILocalVariable(name: "o", scope: !2741, file: !459, line: 953, type: !1795)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !2741)
!2752 = !DILocation(line: 953, column: 3, scope: !2741)
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"quoting_options_from_style: argument 0"}
!2755 = distinct !{!2755, !"quoting_options_from_style"}
!2756 = !DILocation(line: 953, column: 36, scope: !2741)
!2757 = !DILocation(line: 0, scope: !2723, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 953, column: 36, scope: !2741)
!2759 = !DILocation(line: 185, column: 26, scope: !2723, inlinedAt: !2758)
!2760 = distinct !DIAssignID()
!2761 = !DILocation(line: 186, column: 13, scope: !2733, inlinedAt: !2758)
!2762 = !DILocation(line: 186, column: 7, scope: !2723, inlinedAt: !2758)
!2763 = !DILocation(line: 187, column: 5, scope: !2733, inlinedAt: !2758)
!2764 = !DILocation(line: 188, column: 11, scope: !2723, inlinedAt: !2758)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 954, column: 10, scope: !2741)
!2767 = !DILocation(line: 955, column: 1, scope: !2741)
!2768 = !DILocation(line: 954, column: 3, scope: !2741)
!2769 = distinct !DISubprogram(name: "quotearg_style", scope: !459, file: !459, line: 958, type: !2770, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!74, !485, !80}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "s", arg: 1, scope: !2769, file: !459, line: 958, type: !485)
!2774 = !DILocalVariable(name: "arg", arg: 2, scope: !2769, file: !459, line: 958, type: !80)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocation(line: 0, scope: !2707, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 960, column: 10, scope: !2769)
!2779 = !DILocation(line: 945, column: 3, scope: !2707, inlinedAt: !2778)
!2780 = !{!2781}
!2781 = distinct !{!2781, !2782, !"quoting_options_from_style: argument 0"}
!2782 = distinct !{!2782, !"quoting_options_from_style"}
!2783 = !DILocation(line: 945, column: 36, scope: !2707, inlinedAt: !2778)
!2784 = !DILocation(line: 0, scope: !2723, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 945, column: 36, scope: !2707, inlinedAt: !2778)
!2786 = !DILocation(line: 185, column: 26, scope: !2723, inlinedAt: !2785)
!2787 = distinct !DIAssignID()
!2788 = !DILocation(line: 186, column: 13, scope: !2733, inlinedAt: !2785)
!2789 = !DILocation(line: 186, column: 7, scope: !2723, inlinedAt: !2785)
!2790 = !DILocation(line: 187, column: 5, scope: !2733, inlinedAt: !2785)
!2791 = !DILocation(line: 188, column: 11, scope: !2723, inlinedAt: !2785)
!2792 = distinct !DIAssignID()
!2793 = !DILocation(line: 946, column: 10, scope: !2707, inlinedAt: !2778)
!2794 = !DILocation(line: 947, column: 1, scope: !2707, inlinedAt: !2778)
!2795 = !DILocation(line: 960, column: 3, scope: !2769)
!2796 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !459, file: !459, line: 964, type: !2797, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!74, !485, !80, !77}
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "s", arg: 1, scope: !2796, file: !459, line: 964, type: !485)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !459, line: 964, type: !80)
!2802 = !DILocalVariable(name: "argsize", arg: 3, scope: !2796, file: !459, line: 964, type: !77)
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 0, scope: !2796)
!2805 = !DILocation(line: 0, scope: !2741, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 966, column: 10, scope: !2796)
!2807 = !DILocation(line: 953, column: 3, scope: !2741, inlinedAt: !2806)
!2808 = !{!2809}
!2809 = distinct !{!2809, !2810, !"quoting_options_from_style: argument 0"}
!2810 = distinct !{!2810, !"quoting_options_from_style"}
!2811 = !DILocation(line: 953, column: 36, scope: !2741, inlinedAt: !2806)
!2812 = !DILocation(line: 0, scope: !2723, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 953, column: 36, scope: !2741, inlinedAt: !2806)
!2814 = !DILocation(line: 185, column: 26, scope: !2723, inlinedAt: !2813)
!2815 = distinct !DIAssignID()
!2816 = !DILocation(line: 186, column: 13, scope: !2733, inlinedAt: !2813)
!2817 = !DILocation(line: 186, column: 7, scope: !2723, inlinedAt: !2813)
!2818 = !DILocation(line: 187, column: 5, scope: !2733, inlinedAt: !2813)
!2819 = !DILocation(line: 188, column: 11, scope: !2723, inlinedAt: !2813)
!2820 = distinct !DIAssignID()
!2821 = !DILocation(line: 954, column: 10, scope: !2741, inlinedAt: !2806)
!2822 = !DILocation(line: 955, column: 1, scope: !2741, inlinedAt: !2806)
!2823 = !DILocation(line: 966, column: 3, scope: !2796)
!2824 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !459, file: !459, line: 970, type: !2825, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!74, !80, !77, !4}
!2827 = !{!2828, !2829, !2830, !2831}
!2828 = !DILocalVariable(name: "arg", arg: 1, scope: !2824, file: !459, line: 970, type: !80)
!2829 = !DILocalVariable(name: "argsize", arg: 2, scope: !2824, file: !459, line: 970, type: !77)
!2830 = !DILocalVariable(name: "ch", arg: 3, scope: !2824, file: !459, line: 970, type: !4)
!2831 = !DILocalVariable(name: "options", scope: !2824, file: !459, line: 972, type: !512)
!2832 = distinct !DIAssignID()
!2833 = !DILocation(line: 0, scope: !2824)
!2834 = !DILocation(line: 972, column: 3, scope: !2824)
!2835 = !DILocation(line: 973, column: 13, scope: !2824)
!2836 = !{i64 0, i64 4, !889, i64 4, i64 4, !889, i64 8, i64 32, !898, i64 40, i64 8, !828, i64 48, i64 8, !828}
!2837 = distinct !DIAssignID()
!2838 = !DILocation(line: 0, scope: !1814, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 974, column: 3, scope: !2824)
!2840 = !DILocation(line: 147, column: 41, scope: !1814, inlinedAt: !2839)
!2841 = !DILocation(line: 147, column: 62, scope: !1814, inlinedAt: !2839)
!2842 = !DILocation(line: 147, column: 57, scope: !1814, inlinedAt: !2839)
!2843 = !DILocation(line: 148, column: 15, scope: !1814, inlinedAt: !2839)
!2844 = !DILocation(line: 149, column: 21, scope: !1814, inlinedAt: !2839)
!2845 = !DILocation(line: 149, column: 24, scope: !1814, inlinedAt: !2839)
!2846 = !DILocation(line: 150, column: 19, scope: !1814, inlinedAt: !2839)
!2847 = !DILocation(line: 150, column: 24, scope: !1814, inlinedAt: !2839)
!2848 = !DILocation(line: 150, column: 6, scope: !1814, inlinedAt: !2839)
!2849 = !DILocation(line: 975, column: 10, scope: !2824)
!2850 = !DILocation(line: 976, column: 1, scope: !2824)
!2851 = !DILocation(line: 975, column: 3, scope: !2824)
!2852 = distinct !DISubprogram(name: "quotearg_char", scope: !459, file: !459, line: 979, type: !2853, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!74, !80, !4}
!2855 = !{!2856, !2857}
!2856 = !DILocalVariable(name: "arg", arg: 1, scope: !2852, file: !459, line: 979, type: !80)
!2857 = !DILocalVariable(name: "ch", arg: 2, scope: !2852, file: !459, line: 979, type: !4)
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 0, scope: !2852)
!2860 = !DILocation(line: 0, scope: !2824, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 981, column: 10, scope: !2852)
!2862 = !DILocation(line: 972, column: 3, scope: !2824, inlinedAt: !2861)
!2863 = !DILocation(line: 973, column: 13, scope: !2824, inlinedAt: !2861)
!2864 = distinct !DIAssignID()
!2865 = !DILocation(line: 0, scope: !1814, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 974, column: 3, scope: !2824, inlinedAt: !2861)
!2867 = !DILocation(line: 147, column: 41, scope: !1814, inlinedAt: !2866)
!2868 = !DILocation(line: 147, column: 62, scope: !1814, inlinedAt: !2866)
!2869 = !DILocation(line: 147, column: 57, scope: !1814, inlinedAt: !2866)
!2870 = !DILocation(line: 148, column: 15, scope: !1814, inlinedAt: !2866)
!2871 = !DILocation(line: 149, column: 21, scope: !1814, inlinedAt: !2866)
!2872 = !DILocation(line: 149, column: 24, scope: !1814, inlinedAt: !2866)
!2873 = !DILocation(line: 150, column: 19, scope: !1814, inlinedAt: !2866)
!2874 = !DILocation(line: 150, column: 24, scope: !1814, inlinedAt: !2866)
!2875 = !DILocation(line: 150, column: 6, scope: !1814, inlinedAt: !2866)
!2876 = !DILocation(line: 975, column: 10, scope: !2824, inlinedAt: !2861)
!2877 = !DILocation(line: 976, column: 1, scope: !2824, inlinedAt: !2861)
!2878 = !DILocation(line: 981, column: 3, scope: !2852)
!2879 = distinct !DISubprogram(name: "quotearg_colon", scope: !459, file: !459, line: 985, type: !1015, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2880)
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "arg", arg: 1, scope: !2879, file: !459, line: 985, type: !80)
!2882 = distinct !DIAssignID()
!2883 = !DILocation(line: 0, scope: !2879)
!2884 = !DILocation(line: 0, scope: !2852, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 987, column: 10, scope: !2879)
!2886 = !DILocation(line: 0, scope: !2824, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 981, column: 10, scope: !2852, inlinedAt: !2885)
!2888 = !DILocation(line: 972, column: 3, scope: !2824, inlinedAt: !2887)
!2889 = !DILocation(line: 973, column: 13, scope: !2824, inlinedAt: !2887)
!2890 = distinct !DIAssignID()
!2891 = !DILocation(line: 0, scope: !1814, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 974, column: 3, scope: !2824, inlinedAt: !2887)
!2893 = !DILocation(line: 147, column: 57, scope: !1814, inlinedAt: !2892)
!2894 = !DILocation(line: 149, column: 21, scope: !1814, inlinedAt: !2892)
!2895 = !DILocation(line: 150, column: 6, scope: !1814, inlinedAt: !2892)
!2896 = !DILocation(line: 975, column: 10, scope: !2824, inlinedAt: !2887)
!2897 = !DILocation(line: 976, column: 1, scope: !2824, inlinedAt: !2887)
!2898 = !DILocation(line: 987, column: 3, scope: !2879)
!2899 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !459, file: !459, line: 991, type: !2697, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2900)
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "arg", arg: 1, scope: !2899, file: !459, line: 991, type: !80)
!2902 = !DILocalVariable(name: "argsize", arg: 2, scope: !2899, file: !459, line: 991, type: !77)
!2903 = distinct !DIAssignID()
!2904 = !DILocation(line: 0, scope: !2899)
!2905 = !DILocation(line: 0, scope: !2824, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 993, column: 10, scope: !2899)
!2907 = !DILocation(line: 972, column: 3, scope: !2824, inlinedAt: !2906)
!2908 = !DILocation(line: 973, column: 13, scope: !2824, inlinedAt: !2906)
!2909 = distinct !DIAssignID()
!2910 = !DILocation(line: 0, scope: !1814, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 974, column: 3, scope: !2824, inlinedAt: !2906)
!2912 = !DILocation(line: 147, column: 57, scope: !1814, inlinedAt: !2911)
!2913 = !DILocation(line: 149, column: 21, scope: !1814, inlinedAt: !2911)
!2914 = !DILocation(line: 150, column: 6, scope: !1814, inlinedAt: !2911)
!2915 = !DILocation(line: 975, column: 10, scope: !2824, inlinedAt: !2906)
!2916 = !DILocation(line: 976, column: 1, scope: !2824, inlinedAt: !2906)
!2917 = !DILocation(line: 993, column: 3, scope: !2899)
!2918 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !459, file: !459, line: 997, type: !2708, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2918, file: !459, line: 997, type: !53)
!2921 = !DILocalVariable(name: "s", arg: 2, scope: !2918, file: !459, line: 997, type: !485)
!2922 = !DILocalVariable(name: "arg", arg: 3, scope: !2918, file: !459, line: 997, type: !80)
!2923 = !DILocalVariable(name: "options", scope: !2918, file: !459, line: 999, type: !512)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocation(line: 185, column: 26, scope: !2723, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 1000, column: 13, scope: !2918)
!2928 = !DILocation(line: 999, column: 3, scope: !2918)
!2929 = !DILocation(line: 0, scope: !2723, inlinedAt: !2927)
!2930 = !DILocation(line: 186, column: 13, scope: !2733, inlinedAt: !2927)
!2931 = !DILocation(line: 186, column: 7, scope: !2723, inlinedAt: !2927)
!2932 = !DILocation(line: 187, column: 5, scope: !2733, inlinedAt: !2927)
!2933 = !{!2934}
!2934 = distinct !{!2934, !2935, !"quoting_options_from_style: argument 0"}
!2935 = distinct !{!2935, !"quoting_options_from_style"}
!2936 = !DILocation(line: 1000, column: 13, scope: !2918)
!2937 = distinct !DIAssignID()
!2938 = distinct !DIAssignID()
!2939 = !DILocation(line: 0, scope: !1814, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 1001, column: 3, scope: !2918)
!2941 = !DILocation(line: 147, column: 57, scope: !1814, inlinedAt: !2940)
!2942 = !DILocation(line: 149, column: 21, scope: !1814, inlinedAt: !2940)
!2943 = !DILocation(line: 150, column: 6, scope: !1814, inlinedAt: !2940)
!2944 = distinct !DIAssignID()
!2945 = !DILocation(line: 1002, column: 10, scope: !2918)
!2946 = !DILocation(line: 1003, column: 1, scope: !2918)
!2947 = !DILocation(line: 1002, column: 3, scope: !2918)
!2948 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !459, file: !459, line: 1006, type: !2949, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!74, !53, !80, !80, !80}
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !459, line: 1006, type: !53)
!2953 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2948, file: !459, line: 1006, type: !80)
!2954 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2948, file: !459, line: 1007, type: !80)
!2955 = !DILocalVariable(name: "arg", arg: 4, scope: !2948, file: !459, line: 1007, type: !80)
!2956 = distinct !DIAssignID()
!2957 = !DILocation(line: 0, scope: !2948)
!2958 = !DILocalVariable(name: "o", scope: !2959, file: !459, line: 1018, type: !512)
!2959 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !459, file: !459, line: 1014, type: !2960, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!74, !53, !80, !80, !80, !77}
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2958}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !459, line: 1014, type: !53)
!2964 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2959, file: !459, line: 1014, type: !80)
!2965 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2959, file: !459, line: 1015, type: !80)
!2966 = !DILocalVariable(name: "arg", arg: 4, scope: !2959, file: !459, line: 1016, type: !80)
!2967 = !DILocalVariable(name: "argsize", arg: 5, scope: !2959, file: !459, line: 1016, type: !77)
!2968 = !DILocation(line: 0, scope: !2959, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1009, column: 10, scope: !2948)
!2970 = !DILocation(line: 1018, column: 3, scope: !2959, inlinedAt: !2969)
!2971 = !DILocation(line: 1018, column: 30, scope: !2959, inlinedAt: !2969)
!2972 = distinct !DIAssignID()
!2973 = distinct !DIAssignID()
!2974 = !DILocation(line: 0, scope: !1854, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1019, column: 3, scope: !2959, inlinedAt: !2969)
!2976 = !DILocation(line: 174, column: 12, scope: !1854, inlinedAt: !2975)
!2977 = distinct !DIAssignID()
!2978 = !DILocation(line: 175, column: 8, scope: !1867, inlinedAt: !2975)
!2979 = !DILocation(line: 175, column: 19, scope: !1867, inlinedAt: !2975)
!2980 = !DILocation(line: 176, column: 5, scope: !1867, inlinedAt: !2975)
!2981 = !DILocation(line: 177, column: 6, scope: !1854, inlinedAt: !2975)
!2982 = !DILocation(line: 177, column: 17, scope: !1854, inlinedAt: !2975)
!2983 = distinct !DIAssignID()
!2984 = !DILocation(line: 178, column: 6, scope: !1854, inlinedAt: !2975)
!2985 = !DILocation(line: 178, column: 18, scope: !1854, inlinedAt: !2975)
!2986 = distinct !DIAssignID()
!2987 = !DILocation(line: 1020, column: 10, scope: !2959, inlinedAt: !2969)
!2988 = !DILocation(line: 1021, column: 1, scope: !2959, inlinedAt: !2969)
!2989 = !DILocation(line: 1009, column: 3, scope: !2948)
!2990 = distinct !DIAssignID()
!2991 = !DILocation(line: 0, scope: !2959)
!2992 = !DILocation(line: 1018, column: 3, scope: !2959)
!2993 = !DILocation(line: 1018, column: 30, scope: !2959)
!2994 = distinct !DIAssignID()
!2995 = distinct !DIAssignID()
!2996 = !DILocation(line: 0, scope: !1854, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 1019, column: 3, scope: !2959)
!2998 = !DILocation(line: 174, column: 12, scope: !1854, inlinedAt: !2997)
!2999 = distinct !DIAssignID()
!3000 = !DILocation(line: 175, column: 8, scope: !1867, inlinedAt: !2997)
!3001 = !DILocation(line: 175, column: 19, scope: !1867, inlinedAt: !2997)
!3002 = !DILocation(line: 176, column: 5, scope: !1867, inlinedAt: !2997)
!3003 = !DILocation(line: 177, column: 6, scope: !1854, inlinedAt: !2997)
!3004 = !DILocation(line: 177, column: 17, scope: !1854, inlinedAt: !2997)
!3005 = distinct !DIAssignID()
!3006 = !DILocation(line: 178, column: 6, scope: !1854, inlinedAt: !2997)
!3007 = !DILocation(line: 178, column: 18, scope: !1854, inlinedAt: !2997)
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 1020, column: 10, scope: !2959)
!3010 = !DILocation(line: 1021, column: 1, scope: !2959)
!3011 = !DILocation(line: 1020, column: 3, scope: !2959)
!3012 = distinct !DISubprogram(name: "quotearg_custom", scope: !459, file: !459, line: 1024, type: !3013, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!74, !80, !80, !80}
!3015 = !{!3016, !3017, !3018}
!3016 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3012, file: !459, line: 1024, type: !80)
!3017 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3012, file: !459, line: 1024, type: !80)
!3018 = !DILocalVariable(name: "arg", arg: 3, scope: !3012, file: !459, line: 1025, type: !80)
!3019 = distinct !DIAssignID()
!3020 = !DILocation(line: 0, scope: !3012)
!3021 = !DILocation(line: 0, scope: !2948, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1027, column: 10, scope: !3012)
!3023 = !DILocation(line: 0, scope: !2959, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1009, column: 10, scope: !2948, inlinedAt: !3022)
!3025 = !DILocation(line: 1018, column: 3, scope: !2959, inlinedAt: !3024)
!3026 = !DILocation(line: 1018, column: 30, scope: !2959, inlinedAt: !3024)
!3027 = distinct !DIAssignID()
!3028 = distinct !DIAssignID()
!3029 = !DILocation(line: 0, scope: !1854, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1019, column: 3, scope: !2959, inlinedAt: !3024)
!3031 = !DILocation(line: 174, column: 12, scope: !1854, inlinedAt: !3030)
!3032 = distinct !DIAssignID()
!3033 = !DILocation(line: 175, column: 8, scope: !1867, inlinedAt: !3030)
!3034 = !DILocation(line: 175, column: 19, scope: !1867, inlinedAt: !3030)
!3035 = !DILocation(line: 176, column: 5, scope: !1867, inlinedAt: !3030)
!3036 = !DILocation(line: 177, column: 6, scope: !1854, inlinedAt: !3030)
!3037 = !DILocation(line: 177, column: 17, scope: !1854, inlinedAt: !3030)
!3038 = distinct !DIAssignID()
!3039 = !DILocation(line: 178, column: 6, scope: !1854, inlinedAt: !3030)
!3040 = !DILocation(line: 178, column: 18, scope: !1854, inlinedAt: !3030)
!3041 = distinct !DIAssignID()
!3042 = !DILocation(line: 1020, column: 10, scope: !2959, inlinedAt: !3024)
!3043 = !DILocation(line: 1021, column: 1, scope: !2959, inlinedAt: !3024)
!3044 = !DILocation(line: 1027, column: 3, scope: !3012)
!3045 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !459, file: !459, line: 1031, type: !3046, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!74, !80, !80, !80, !77}
!3048 = !{!3049, !3050, !3051, !3052}
!3049 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3045, file: !459, line: 1031, type: !80)
!3050 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3045, file: !459, line: 1031, type: !80)
!3051 = !DILocalVariable(name: "arg", arg: 3, scope: !3045, file: !459, line: 1032, type: !80)
!3052 = !DILocalVariable(name: "argsize", arg: 4, scope: !3045, file: !459, line: 1032, type: !77)
!3053 = distinct !DIAssignID()
!3054 = !DILocation(line: 0, scope: !3045)
!3055 = !DILocation(line: 0, scope: !2959, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1034, column: 10, scope: !3045)
!3057 = !DILocation(line: 1018, column: 3, scope: !2959, inlinedAt: !3056)
!3058 = !DILocation(line: 1018, column: 30, scope: !2959, inlinedAt: !3056)
!3059 = distinct !DIAssignID()
!3060 = distinct !DIAssignID()
!3061 = !DILocation(line: 0, scope: !1854, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 1019, column: 3, scope: !2959, inlinedAt: !3056)
!3063 = !DILocation(line: 174, column: 12, scope: !1854, inlinedAt: !3062)
!3064 = distinct !DIAssignID()
!3065 = !DILocation(line: 175, column: 8, scope: !1867, inlinedAt: !3062)
!3066 = !DILocation(line: 175, column: 19, scope: !1867, inlinedAt: !3062)
!3067 = !DILocation(line: 176, column: 5, scope: !1867, inlinedAt: !3062)
!3068 = !DILocation(line: 177, column: 6, scope: !1854, inlinedAt: !3062)
!3069 = !DILocation(line: 177, column: 17, scope: !1854, inlinedAt: !3062)
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 178, column: 6, scope: !1854, inlinedAt: !3062)
!3072 = !DILocation(line: 178, column: 18, scope: !1854, inlinedAt: !3062)
!3073 = distinct !DIAssignID()
!3074 = !DILocation(line: 1020, column: 10, scope: !2959, inlinedAt: !3056)
!3075 = !DILocation(line: 1021, column: 1, scope: !2959, inlinedAt: !3056)
!3076 = !DILocation(line: 1034, column: 3, scope: !3045)
!3077 = distinct !DISubprogram(name: "quote_n_mem", scope: !459, file: !459, line: 1049, type: !3078, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!80, !53, !80, !77}
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !459, line: 1049, type: !53)
!3082 = !DILocalVariable(name: "arg", arg: 2, scope: !3077, file: !459, line: 1049, type: !80)
!3083 = !DILocalVariable(name: "argsize", arg: 3, scope: !3077, file: !459, line: 1049, type: !77)
!3084 = !DILocation(line: 0, scope: !3077)
!3085 = !DILocation(line: 1051, column: 10, scope: !3077)
!3086 = !DILocation(line: 1051, column: 3, scope: !3077)
!3087 = distinct !DISubprogram(name: "quote_mem", scope: !459, file: !459, line: 1055, type: !3088, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!80, !80, !77}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "arg", arg: 1, scope: !3087, file: !459, line: 1055, type: !80)
!3092 = !DILocalVariable(name: "argsize", arg: 2, scope: !3087, file: !459, line: 1055, type: !77)
!3093 = !DILocation(line: 0, scope: !3087)
!3094 = !DILocation(line: 0, scope: !3077, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 1057, column: 10, scope: !3087)
!3096 = !DILocation(line: 1051, column: 10, scope: !3077, inlinedAt: !3095)
!3097 = !DILocation(line: 1057, column: 3, scope: !3087)
!3098 = distinct !DISubprogram(name: "quote_n", scope: !459, file: !459, line: 1061, type: !3099, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!80, !53, !80}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !459, line: 1061, type: !53)
!3103 = !DILocalVariable(name: "arg", arg: 2, scope: !3098, file: !459, line: 1061, type: !80)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocation(line: 0, scope: !3077, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1063, column: 10, scope: !3098)
!3107 = !DILocation(line: 1051, column: 10, scope: !3077, inlinedAt: !3106)
!3108 = !DILocation(line: 1063, column: 3, scope: !3098)
!3109 = distinct !DISubprogram(name: "quote", scope: !459, file: !459, line: 1067, type: !3110, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!80, !80}
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "arg", arg: 1, scope: !3109, file: !459, line: 1067, type: !80)
!3114 = !DILocation(line: 0, scope: !3109)
!3115 = !DILocation(line: 0, scope: !3098, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 1069, column: 10, scope: !3109)
!3117 = !DILocation(line: 0, scope: !3077, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 1063, column: 10, scope: !3098, inlinedAt: !3116)
!3119 = !DILocation(line: 1051, column: 10, scope: !3077, inlinedAt: !3118)
!3120 = !DILocation(line: 1069, column: 3, scope: !3109)
!3121 = distinct !DISubprogram(name: "version_etc_arn", scope: !575, file: !575, line: 61, type: !3122, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3159)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3124, !80, !80, !80, !3158, !77}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3126, file: !150, line: 51, baseType: !53, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3126, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3126, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3126, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3126, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3126, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3126, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3126, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3126, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3126, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3126, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3126, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3126, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3126, file: !150, line: 70, baseType: !3142, size: 64, offset: 832)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3126, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3126, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3126, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3126, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3126, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3126, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3126, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3126, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3126, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3126, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3126, file: !150, line: 93, baseType: !3142, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3126, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3126, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3126, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3126, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165}
!3160 = !DILocalVariable(name: "stream", arg: 1, scope: !3121, file: !575, line: 61, type: !3124)
!3161 = !DILocalVariable(name: "command_name", arg: 2, scope: !3121, file: !575, line: 62, type: !80)
!3162 = !DILocalVariable(name: "package", arg: 3, scope: !3121, file: !575, line: 62, type: !80)
!3163 = !DILocalVariable(name: "version", arg: 4, scope: !3121, file: !575, line: 63, type: !80)
!3164 = !DILocalVariable(name: "authors", arg: 5, scope: !3121, file: !575, line: 64, type: !3158)
!3165 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3121, file: !575, line: 64, type: !77)
!3166 = !DILocation(line: 0, scope: !3121)
!3167 = !DILocation(line: 66, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3121, file: !575, line: 66, column: 7)
!3169 = !DILocation(line: 66, column: 7, scope: !3121)
!3170 = !DILocation(line: 67, column: 5, scope: !3168)
!3171 = !DILocation(line: 69, column: 5, scope: !3168)
!3172 = !DILocation(line: 83, column: 3, scope: !3121)
!3173 = !DILocation(line: 85, column: 3, scope: !3121)
!3174 = !DILocation(line: 88, column: 3, scope: !3121)
!3175 = !DILocation(line: 95, column: 3, scope: !3121)
!3176 = !DILocation(line: 97, column: 3, scope: !3121)
!3177 = !DILocation(line: 105, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3121, file: !575, line: 98, column: 5)
!3179 = !DILocation(line: 106, column: 7, scope: !3178)
!3180 = !DILocation(line: 109, column: 7, scope: !3178)
!3181 = !DILocation(line: 110, column: 7, scope: !3178)
!3182 = !DILocation(line: 113, column: 7, scope: !3178)
!3183 = !DILocation(line: 115, column: 7, scope: !3178)
!3184 = !DILocation(line: 120, column: 7, scope: !3178)
!3185 = !DILocation(line: 122, column: 7, scope: !3178)
!3186 = !DILocation(line: 127, column: 7, scope: !3178)
!3187 = !DILocation(line: 129, column: 7, scope: !3178)
!3188 = !DILocation(line: 134, column: 7, scope: !3178)
!3189 = !DILocation(line: 137, column: 7, scope: !3178)
!3190 = !DILocation(line: 142, column: 7, scope: !3178)
!3191 = !DILocation(line: 145, column: 7, scope: !3178)
!3192 = !DILocation(line: 150, column: 7, scope: !3178)
!3193 = !DILocation(line: 154, column: 7, scope: !3178)
!3194 = !DILocation(line: 159, column: 7, scope: !3178)
!3195 = !DILocation(line: 163, column: 7, scope: !3178)
!3196 = !DILocation(line: 170, column: 7, scope: !3178)
!3197 = !DILocation(line: 174, column: 7, scope: !3178)
!3198 = !DILocation(line: 176, column: 1, scope: !3121)
!3199 = distinct !DISubprogram(name: "version_etc_ar", scope: !575, file: !575, line: 183, type: !3200, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !3124, !80, !80, !80, !3158}
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DILocalVariable(name: "stream", arg: 1, scope: !3199, file: !575, line: 183, type: !3124)
!3204 = !DILocalVariable(name: "command_name", arg: 2, scope: !3199, file: !575, line: 184, type: !80)
!3205 = !DILocalVariable(name: "package", arg: 3, scope: !3199, file: !575, line: 184, type: !80)
!3206 = !DILocalVariable(name: "version", arg: 4, scope: !3199, file: !575, line: 185, type: !80)
!3207 = !DILocalVariable(name: "authors", arg: 5, scope: !3199, file: !575, line: 185, type: !3158)
!3208 = !DILocalVariable(name: "n_authors", scope: !3199, file: !575, line: 187, type: !77)
!3209 = !DILocation(line: 0, scope: !3199)
!3210 = !DILocation(line: 189, column: 8, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3199, file: !575, line: 189, column: 3)
!3212 = !DILocation(line: 189, scope: !3211)
!3213 = !DILocation(line: 189, column: 23, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !575, line: 189, column: 3)
!3215 = !DILocation(line: 189, column: 3, scope: !3211)
!3216 = !DILocation(line: 189, column: 52, scope: !3214)
!3217 = distinct !{!3217, !3215, !3218, !936}
!3218 = !DILocation(line: 190, column: 5, scope: !3211)
!3219 = !DILocation(line: 191, column: 3, scope: !3199)
!3220 = !DILocation(line: 192, column: 1, scope: !3199)
!3221 = distinct !DISubprogram(name: "version_etc_va", scope: !575, file: !575, line: 199, type: !3222, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3231)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !3124, !80, !80, !80, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3225, file: !575, line: 192, baseType: !59, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3225, file: !575, line: 192, baseType: !59, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3225, file: !575, line: 192, baseType: !75, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3225, file: !575, line: 192, baseType: !75, size: 64, offset: 128)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3232 = !DILocalVariable(name: "stream", arg: 1, scope: !3221, file: !575, line: 199, type: !3124)
!3233 = !DILocalVariable(name: "command_name", arg: 2, scope: !3221, file: !575, line: 200, type: !80)
!3234 = !DILocalVariable(name: "package", arg: 3, scope: !3221, file: !575, line: 200, type: !80)
!3235 = !DILocalVariable(name: "version", arg: 4, scope: !3221, file: !575, line: 201, type: !80)
!3236 = !DILocalVariable(name: "authors", arg: 5, scope: !3221, file: !575, line: 201, type: !3224)
!3237 = !DILocalVariable(name: "n_authors", scope: !3221, file: !575, line: 203, type: !77)
!3238 = !DILocalVariable(name: "authtab", scope: !3221, file: !575, line: 204, type: !3239)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!3240 = distinct !DIAssignID()
!3241 = !DILocation(line: 0, scope: !3221)
!3242 = !DILocation(line: 204, column: 3, scope: !3221)
!3243 = !DILocation(line: 208, column: 35, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !575, line: 206, column: 3)
!3245 = distinct !DILexicalBlock(scope: !3221, file: !575, line: 206, column: 3)
!3246 = !DILocation(line: 208, column: 33, scope: !3244)
!3247 = !DILocation(line: 208, column: 67, scope: !3244)
!3248 = !DILocation(line: 206, column: 3, scope: !3245)
!3249 = !DILocation(line: 208, column: 14, scope: !3244)
!3250 = !DILocation(line: 0, scope: !3245)
!3251 = !DILocation(line: 211, column: 3, scope: !3221)
!3252 = !DILocation(line: 213, column: 1, scope: !3221)
!3253 = distinct !DISubprogram(name: "version_etc", scope: !575, file: !575, line: 230, type: !3254, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3124, !80, !80, !80, null}
!3256 = !{!3257, !3258, !3259, !3260, !3261}
!3257 = !DILocalVariable(name: "stream", arg: 1, scope: !3253, file: !575, line: 230, type: !3124)
!3258 = !DILocalVariable(name: "command_name", arg: 2, scope: !3253, file: !575, line: 231, type: !80)
!3259 = !DILocalVariable(name: "package", arg: 3, scope: !3253, file: !575, line: 231, type: !80)
!3260 = !DILocalVariable(name: "version", arg: 4, scope: !3253, file: !575, line: 232, type: !80)
!3261 = !DILocalVariable(name: "authors", scope: !3253, file: !575, line: 234, type: !3262)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !884, line: 52, baseType: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1594, line: 12, baseType: !3264)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !575, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 192, elements: !35)
!3266 = distinct !DIAssignID()
!3267 = !DILocation(line: 0, scope: !3253)
!3268 = !DILocation(line: 234, column: 3, scope: !3253)
!3269 = !DILocation(line: 235, column: 3, scope: !3253)
!3270 = !DILocation(line: 236, column: 3, scope: !3253)
!3271 = !DILocation(line: 237, column: 3, scope: !3253)
!3272 = !DILocation(line: 238, column: 1, scope: !3253)
!3273 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !575, file: !575, line: 241, type: !414, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704)
!3274 = !DILocation(line: 243, column: 3, scope: !3273)
!3275 = !DILocation(line: 248, column: 3, scope: !3273)
!3276 = !DILocation(line: 254, column: 3, scope: !3273)
!3277 = !DILocation(line: 259, column: 3, scope: !3273)
!3278 = !DILocation(line: 261, column: 1, scope: !3273)
!3279 = distinct !DISubprogram(name: "xnrealloc", scope: !3280, file: !3280, line: 147, type: !3281, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3283)
!3280 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!75, !75, !77, !77}
!3283 = !{!3284, !3285, !3286}
!3284 = !DILocalVariable(name: "p", arg: 1, scope: !3279, file: !3280, line: 147, type: !75)
!3285 = !DILocalVariable(name: "n", arg: 2, scope: !3279, file: !3280, line: 147, type: !77)
!3286 = !DILocalVariable(name: "s", arg: 3, scope: !3279, file: !3280, line: 147, type: !77)
!3287 = !DILocation(line: 0, scope: !3279)
!3288 = !DILocalVariable(name: "p", arg: 1, scope: !3289, file: !712, line: 83, type: !75)
!3289 = distinct !DISubprogram(name: "xreallocarray", scope: !712, file: !712, line: 83, type: !3281, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3290)
!3290 = !{!3288, !3291, !3292}
!3291 = !DILocalVariable(name: "n", arg: 2, scope: !3289, file: !712, line: 83, type: !77)
!3292 = !DILocalVariable(name: "s", arg: 3, scope: !3289, file: !712, line: 83, type: !77)
!3293 = !DILocation(line: 0, scope: !3289, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 149, column: 10, scope: !3279)
!3295 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3294)
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3297, file: !712, line: 37, type: !75)
!3297 = distinct !DISubprogram(name: "check_nonnull", scope: !712, file: !712, line: 37, type: !3298, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!75, !75}
!3300 = !{!3296}
!3301 = !DILocation(line: 0, scope: !3297, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3294)
!3303 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3302)
!3304 = distinct !DILexicalBlock(scope: !3297, file: !712, line: 39, column: 7)
!3305 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3302)
!3306 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3302)
!3307 = !DILocation(line: 149, column: 3, scope: !3279)
!3308 = !DILocation(line: 0, scope: !3289)
!3309 = !DILocation(line: 85, column: 25, scope: !3289)
!3310 = !DILocation(line: 0, scope: !3297, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 85, column: 10, scope: !3289)
!3312 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3311)
!3313 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3311)
!3314 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3311)
!3315 = !DILocation(line: 85, column: 3, scope: !3289)
!3316 = distinct !DISubprogram(name: "xmalloc", scope: !712, file: !712, line: 47, type: !3317, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!75, !77}
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "s", arg: 1, scope: !3316, file: !712, line: 47, type: !77)
!3321 = !DILocation(line: 0, scope: !3316)
!3322 = !DILocation(line: 49, column: 25, scope: !3316)
!3323 = !DILocation(line: 0, scope: !3297, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 49, column: 10, scope: !3316)
!3325 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3324)
!3326 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3324)
!3327 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3324)
!3328 = !DILocation(line: 49, column: 3, scope: !3316)
!3329 = !DISubprogram(name: "malloc", scope: !1013, file: !1013, line: 540, type: !3317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3330 = distinct !DISubprogram(name: "ximalloc", scope: !712, file: !712, line: 53, type: !3331, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!75, !731}
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "s", arg: 1, scope: !3330, file: !712, line: 53, type: !731)
!3335 = !DILocation(line: 0, scope: !3330)
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3337, file: !3338, line: 55, type: !731)
!3337 = distinct !DISubprogram(name: "imalloc", scope: !3338, file: !3338, line: 55, type: !3331, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3339)
!3338 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3339 = !{!3336}
!3340 = !DILocation(line: 0, scope: !3337, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 55, column: 25, scope: !3330)
!3342 = !DILocation(line: 57, column: 26, scope: !3337, inlinedAt: !3341)
!3343 = !DILocation(line: 0, scope: !3297, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 55, column: 10, scope: !3330)
!3345 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3344)
!3346 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3344)
!3347 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3344)
!3348 = !DILocation(line: 55, column: 3, scope: !3330)
!3349 = distinct !DISubprogram(name: "xcharalloc", scope: !712, file: !712, line: 59, type: !3350, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!74, !77}
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !712, line: 59, type: !77)
!3354 = !DILocation(line: 0, scope: !3349)
!3355 = !DILocation(line: 0, scope: !3316, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 61, column: 10, scope: !3349)
!3357 = !DILocation(line: 49, column: 25, scope: !3316, inlinedAt: !3356)
!3358 = !DILocation(line: 0, scope: !3297, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 49, column: 10, scope: !3316, inlinedAt: !3356)
!3360 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3359)
!3361 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3359)
!3362 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3359)
!3363 = !DILocation(line: 61, column: 3, scope: !3349)
!3364 = distinct !DISubprogram(name: "xrealloc", scope: !712, file: !712, line: 68, type: !3365, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!75, !75, !77}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "p", arg: 1, scope: !3364, file: !712, line: 68, type: !75)
!3369 = !DILocalVariable(name: "s", arg: 2, scope: !3364, file: !712, line: 68, type: !77)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocalVariable(name: "ptr", arg: 1, scope: !3372, file: !3373, line: 2057, type: !75)
!3372 = distinct !DISubprogram(name: "rpl_realloc", scope: !3373, file: !3373, line: 2057, type: !3365, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3374)
!3373 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3374 = !{!3371, !3375}
!3375 = !DILocalVariable(name: "size", arg: 2, scope: !3372, file: !3373, line: 2057, type: !77)
!3376 = !DILocation(line: 0, scope: !3372, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 70, column: 25, scope: !3364)
!3378 = !DILocation(line: 2059, column: 24, scope: !3372, inlinedAt: !3377)
!3379 = !DILocation(line: 2059, column: 10, scope: !3372, inlinedAt: !3377)
!3380 = !DILocation(line: 0, scope: !3297, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 70, column: 10, scope: !3364)
!3382 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3381)
!3383 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3381)
!3384 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3381)
!3385 = !DILocation(line: 70, column: 3, scope: !3364)
!3386 = !DISubprogram(name: "realloc", scope: !1013, file: !1013, line: 551, type: !3365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3387 = distinct !DISubprogram(name: "xirealloc", scope: !712, file: !712, line: 74, type: !3388, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!75, !75, !731}
!3390 = !{!3391, !3392}
!3391 = !DILocalVariable(name: "p", arg: 1, scope: !3387, file: !712, line: 74, type: !75)
!3392 = !DILocalVariable(name: "s", arg: 2, scope: !3387, file: !712, line: 74, type: !731)
!3393 = !DILocation(line: 0, scope: !3387)
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !3395, file: !3338, line: 66, type: !75)
!3395 = distinct !DISubprogram(name: "irealloc", scope: !3338, file: !3338, line: 66, type: !3388, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3396)
!3396 = !{!3394, !3397}
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3395, file: !3338, line: 66, type: !731)
!3398 = !DILocation(line: 0, scope: !3395, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 76, column: 25, scope: !3387)
!3400 = !DILocation(line: 0, scope: !3372, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 68, column: 26, scope: !3395, inlinedAt: !3399)
!3402 = !DILocation(line: 2059, column: 24, scope: !3372, inlinedAt: !3401)
!3403 = !DILocation(line: 2059, column: 10, scope: !3372, inlinedAt: !3401)
!3404 = !DILocation(line: 0, scope: !3297, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 76, column: 10, scope: !3387)
!3406 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3405)
!3407 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3405)
!3408 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3405)
!3409 = !DILocation(line: 76, column: 3, scope: !3387)
!3410 = distinct !DISubprogram(name: "xireallocarray", scope: !712, file: !712, line: 89, type: !3411, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!75, !75, !731, !731}
!3413 = !{!3414, !3415, !3416}
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !712, line: 89, type: !75)
!3415 = !DILocalVariable(name: "n", arg: 2, scope: !3410, file: !712, line: 89, type: !731)
!3416 = !DILocalVariable(name: "s", arg: 3, scope: !3410, file: !712, line: 89, type: !731)
!3417 = !DILocation(line: 0, scope: !3410)
!3418 = !DILocalVariable(name: "p", arg: 1, scope: !3419, file: !3338, line: 98, type: !75)
!3419 = distinct !DISubprogram(name: "ireallocarray", scope: !3338, file: !3338, line: 98, type: !3411, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3420)
!3420 = !{!3418, !3421, !3422}
!3421 = !DILocalVariable(name: "n", arg: 2, scope: !3419, file: !3338, line: 98, type: !731)
!3422 = !DILocalVariable(name: "s", arg: 3, scope: !3419, file: !3338, line: 98, type: !731)
!3423 = !DILocation(line: 0, scope: !3419, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 91, column: 25, scope: !3410)
!3425 = !DILocation(line: 101, column: 13, scope: !3419, inlinedAt: !3424)
!3426 = !DILocation(line: 0, scope: !3297, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 91, column: 10, scope: !3410)
!3428 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3427)
!3429 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3427)
!3430 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3427)
!3431 = !DILocation(line: 91, column: 3, scope: !3410)
!3432 = distinct !DISubprogram(name: "xnmalloc", scope: !712, file: !712, line: 98, type: !3433, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!75, !77, !77}
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !712, line: 98, type: !77)
!3437 = !DILocalVariable(name: "s", arg: 2, scope: !3432, file: !712, line: 98, type: !77)
!3438 = !DILocation(line: 0, scope: !3432)
!3439 = !DILocation(line: 0, scope: !3289, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 100, column: 10, scope: !3432)
!3441 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3440)
!3442 = !DILocation(line: 0, scope: !3297, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3440)
!3444 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3443)
!3445 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3443)
!3446 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3443)
!3447 = !DILocation(line: 100, column: 3, scope: !3432)
!3448 = distinct !DISubprogram(name: "xinmalloc", scope: !712, file: !712, line: 104, type: !3449, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!75, !731, !731}
!3451 = !{!3452, !3453}
!3452 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !712, line: 104, type: !731)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !712, line: 104, type: !731)
!3454 = !DILocation(line: 0, scope: !3448)
!3455 = !DILocation(line: 0, scope: !3410, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 106, column: 10, scope: !3448)
!3457 = !DILocation(line: 0, scope: !3419, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 91, column: 25, scope: !3410, inlinedAt: !3456)
!3459 = !DILocation(line: 101, column: 13, scope: !3419, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !3297, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 91, column: 10, scope: !3410, inlinedAt: !3456)
!3462 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3461)
!3465 = !DILocation(line: 106, column: 3, scope: !3448)
!3466 = distinct !DISubprogram(name: "x2realloc", scope: !712, file: !712, line: 116, type: !3467, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!75, !75, !718}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3466, file: !712, line: 116, type: !75)
!3471 = !DILocalVariable(name: "ps", arg: 2, scope: !3466, file: !712, line: 116, type: !718)
!3472 = !DILocation(line: 0, scope: !3466)
!3473 = !DILocation(line: 0, scope: !715, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 118, column: 10, scope: !3466)
!3475 = !DILocation(line: 178, column: 14, scope: !715, inlinedAt: !3474)
!3476 = !DILocation(line: 180, column: 9, scope: !3477, inlinedAt: !3474)
!3477 = distinct !DILexicalBlock(scope: !715, file: !712, line: 180, column: 7)
!3478 = !DILocation(line: 180, column: 7, scope: !715, inlinedAt: !3474)
!3479 = !DILocation(line: 182, column: 13, scope: !3480, inlinedAt: !3474)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !712, line: 182, column: 11)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !712, line: 181, column: 5)
!3482 = !DILocation(line: 182, column: 11, scope: !3481, inlinedAt: !3474)
!3483 = !DILocation(line: 197, column: 11, scope: !3484, inlinedAt: !3474)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !712, line: 197, column: 11)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !712, line: 195, column: 5)
!3486 = !DILocation(line: 197, column: 11, scope: !3485, inlinedAt: !3474)
!3487 = !DILocation(line: 198, column: 9, scope: !3484, inlinedAt: !3474)
!3488 = !DILocation(line: 0, scope: !3289, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 201, column: 7, scope: !715, inlinedAt: !3474)
!3490 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3489)
!3491 = !DILocation(line: 0, scope: !3297, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3489)
!3493 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3492)
!3494 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3492)
!3495 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3492)
!3496 = !DILocation(line: 202, column: 7, scope: !715, inlinedAt: !3474)
!3497 = !DILocation(line: 118, column: 3, scope: !3466)
!3498 = !DILocation(line: 0, scope: !715)
!3499 = !DILocation(line: 178, column: 14, scope: !715)
!3500 = !DILocation(line: 180, column: 9, scope: !3477)
!3501 = !DILocation(line: 180, column: 7, scope: !715)
!3502 = !DILocation(line: 182, column: 13, scope: !3480)
!3503 = !DILocation(line: 182, column: 11, scope: !3481)
!3504 = !DILocation(line: 190, column: 30, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3480, file: !712, line: 183, column: 9)
!3506 = !DILocation(line: 191, column: 16, scope: !3505)
!3507 = !DILocation(line: 191, column: 13, scope: !3505)
!3508 = !DILocation(line: 192, column: 9, scope: !3505)
!3509 = !DILocation(line: 197, column: 11, scope: !3484)
!3510 = !DILocation(line: 197, column: 11, scope: !3485)
!3511 = !DILocation(line: 198, column: 9, scope: !3484)
!3512 = !DILocation(line: 0, scope: !3289, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 201, column: 7, scope: !715)
!3514 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3513)
!3515 = !DILocation(line: 0, scope: !3297, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3513)
!3517 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3516)
!3518 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3516)
!3519 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3516)
!3520 = !DILocation(line: 202, column: 7, scope: !715)
!3521 = !DILocation(line: 203, column: 3, scope: !715)
!3522 = !DILocation(line: 0, scope: !727)
!3523 = !DILocation(line: 230, column: 14, scope: !727)
!3524 = !DILocation(line: 238, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !727, file: !712, line: 238, column: 7)
!3526 = !DILocation(line: 238, column: 7, scope: !727)
!3527 = !DILocation(line: 240, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !727, file: !712, line: 240, column: 7)
!3529 = !DILocation(line: 240, column: 18, scope: !3528)
!3530 = !DILocation(line: 253, column: 8, scope: !727)
!3531 = !DILocation(line: 256, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !727, file: !712, line: 256, column: 7)
!3533 = !DILocation(line: 256, column: 7, scope: !727)
!3534 = !DILocation(line: 258, column: 27, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !712, line: 257, column: 5)
!3536 = !DILocation(line: 259, column: 50, scope: !3535)
!3537 = !DILocation(line: 259, column: 32, scope: !3535)
!3538 = !DILocation(line: 260, column: 5, scope: !3535)
!3539 = !DILocation(line: 262, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !727, file: !712, line: 262, column: 7)
!3541 = !DILocation(line: 262, column: 7, scope: !727)
!3542 = !DILocation(line: 263, column: 9, scope: !3540)
!3543 = !DILocation(line: 263, column: 5, scope: !3540)
!3544 = !DILocation(line: 264, column: 9, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !727, file: !712, line: 264, column: 7)
!3546 = !DILocation(line: 264, column: 14, scope: !3545)
!3547 = !DILocation(line: 265, column: 7, scope: !3545)
!3548 = !DILocation(line: 265, column: 11, scope: !3545)
!3549 = !DILocation(line: 266, column: 11, scope: !3545)
!3550 = !DILocation(line: 267, column: 14, scope: !3545)
!3551 = !DILocation(line: 264, column: 7, scope: !727)
!3552 = !DILocation(line: 268, column: 5, scope: !3545)
!3553 = !DILocation(line: 0, scope: !3364, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 269, column: 8, scope: !727)
!3555 = !DILocation(line: 0, scope: !3372, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 70, column: 25, scope: !3364, inlinedAt: !3554)
!3557 = !DILocation(line: 2059, column: 24, scope: !3372, inlinedAt: !3556)
!3558 = !DILocation(line: 2059, column: 10, scope: !3372, inlinedAt: !3556)
!3559 = !DILocation(line: 0, scope: !3297, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 70, column: 10, scope: !3364, inlinedAt: !3554)
!3561 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3560)
!3562 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3560)
!3563 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3560)
!3564 = !DILocation(line: 270, column: 7, scope: !727)
!3565 = !DILocation(line: 271, column: 3, scope: !727)
!3566 = distinct !DISubprogram(name: "xzalloc", scope: !712, file: !712, line: 279, type: !3317, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3567)
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "s", arg: 1, scope: !3566, file: !712, line: 279, type: !77)
!3569 = !DILocation(line: 0, scope: !3566)
!3570 = !DILocalVariable(name: "n", arg: 1, scope: !3571, file: !712, line: 294, type: !77)
!3571 = distinct !DISubprogram(name: "xcalloc", scope: !712, file: !712, line: 294, type: !3433, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3572)
!3572 = !{!3570, !3573}
!3573 = !DILocalVariable(name: "s", arg: 2, scope: !3571, file: !712, line: 294, type: !77)
!3574 = !DILocation(line: 0, scope: !3571, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 281, column: 10, scope: !3566)
!3576 = !DILocation(line: 296, column: 25, scope: !3571, inlinedAt: !3575)
!3577 = !DILocation(line: 0, scope: !3297, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 296, column: 10, scope: !3571, inlinedAt: !3575)
!3579 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3578)
!3580 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3578)
!3581 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3578)
!3582 = !DILocation(line: 281, column: 3, scope: !3566)
!3583 = !DISubprogram(name: "calloc", scope: !1013, file: !1013, line: 543, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3584 = !DILocation(line: 0, scope: !3571)
!3585 = !DILocation(line: 296, column: 25, scope: !3571)
!3586 = !DILocation(line: 0, scope: !3297, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 296, column: 10, scope: !3571)
!3588 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3587)
!3589 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3587)
!3590 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3587)
!3591 = !DILocation(line: 296, column: 3, scope: !3571)
!3592 = distinct !DISubprogram(name: "xizalloc", scope: !712, file: !712, line: 285, type: !3331, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3593)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "s", arg: 1, scope: !3592, file: !712, line: 285, type: !731)
!3595 = !DILocation(line: 0, scope: !3592)
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !712, line: 300, type: !731)
!3597 = distinct !DISubprogram(name: "xicalloc", scope: !712, file: !712, line: 300, type: !3449, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3598)
!3598 = !{!3596, !3599}
!3599 = !DILocalVariable(name: "s", arg: 2, scope: !3597, file: !712, line: 300, type: !731)
!3600 = !DILocation(line: 0, scope: !3597, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 287, column: 10, scope: !3592)
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3603, file: !3338, line: 77, type: !731)
!3603 = distinct !DISubprogram(name: "icalloc", scope: !3338, file: !3338, line: 77, type: !3449, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3604)
!3604 = !{!3602, !3605}
!3605 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !3338, line: 77, type: !731)
!3606 = !DILocation(line: 0, scope: !3603, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 302, column: 25, scope: !3597, inlinedAt: !3601)
!3608 = !DILocation(line: 91, column: 10, scope: !3603, inlinedAt: !3607)
!3609 = !DILocation(line: 0, scope: !3297, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 302, column: 10, scope: !3597, inlinedAt: !3601)
!3611 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3610)
!3612 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3610)
!3613 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3610)
!3614 = !DILocation(line: 287, column: 3, scope: !3592)
!3615 = !DILocation(line: 0, scope: !3597)
!3616 = !DILocation(line: 0, scope: !3603, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 302, column: 25, scope: !3597)
!3618 = !DILocation(line: 91, column: 10, scope: !3603, inlinedAt: !3617)
!3619 = !DILocation(line: 0, scope: !3297, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 302, column: 10, scope: !3597)
!3621 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3620)
!3622 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3620)
!3623 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3620)
!3624 = !DILocation(line: 302, column: 3, scope: !3597)
!3625 = distinct !DISubprogram(name: "xmemdup", scope: !712, file: !712, line: 310, type: !3626, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!75, !1037, !77}
!3628 = !{!3629, !3630}
!3629 = !DILocalVariable(name: "p", arg: 1, scope: !3625, file: !712, line: 310, type: !1037)
!3630 = !DILocalVariable(name: "s", arg: 2, scope: !3625, file: !712, line: 310, type: !77)
!3631 = !DILocation(line: 0, scope: !3625)
!3632 = !DILocation(line: 0, scope: !3316, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 312, column: 18, scope: !3625)
!3634 = !DILocation(line: 49, column: 25, scope: !3316, inlinedAt: !3633)
!3635 = !DILocation(line: 0, scope: !3297, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 49, column: 10, scope: !3316, inlinedAt: !3633)
!3637 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3636)
!3638 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3636)
!3639 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3636)
!3640 = !DILocalVariable(name: "__dest", arg: 1, scope: !3641, file: !1757, line: 26, type: !3644)
!3641 = distinct !DISubprogram(name: "memcpy", scope: !1757, file: !1757, line: 26, type: !3642, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3645)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!75, !3644, !1036, !77}
!3644 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!3645 = !{!3640, !3646, !3647}
!3646 = !DILocalVariable(name: "__src", arg: 2, scope: !3641, file: !1757, line: 26, type: !1036)
!3647 = !DILocalVariable(name: "__len", arg: 3, scope: !3641, file: !1757, line: 26, type: !77)
!3648 = !DILocation(line: 0, scope: !3641, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 312, column: 10, scope: !3625)
!3650 = !DILocation(line: 29, column: 10, scope: !3641, inlinedAt: !3649)
!3651 = !DILocation(line: 312, column: 3, scope: !3625)
!3652 = distinct !DISubprogram(name: "ximemdup", scope: !712, file: !712, line: 316, type: !3653, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!75, !1037, !731}
!3655 = !{!3656, !3657}
!3656 = !DILocalVariable(name: "p", arg: 1, scope: !3652, file: !712, line: 316, type: !1037)
!3657 = !DILocalVariable(name: "s", arg: 2, scope: !3652, file: !712, line: 316, type: !731)
!3658 = !DILocation(line: 0, scope: !3652)
!3659 = !DILocation(line: 0, scope: !3330, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 318, column: 18, scope: !3652)
!3661 = !DILocation(line: 0, scope: !3337, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 55, column: 25, scope: !3330, inlinedAt: !3660)
!3663 = !DILocation(line: 57, column: 26, scope: !3337, inlinedAt: !3662)
!3664 = !DILocation(line: 0, scope: !3297, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 55, column: 10, scope: !3330, inlinedAt: !3660)
!3666 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3665)
!3667 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3665)
!3668 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3665)
!3669 = !DILocation(line: 0, scope: !3641, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 318, column: 10, scope: !3652)
!3671 = !DILocation(line: 29, column: 10, scope: !3641, inlinedAt: !3670)
!3672 = !DILocation(line: 318, column: 3, scope: !3652)
!3673 = distinct !DISubprogram(name: "ximemdup0", scope: !712, file: !712, line: 325, type: !3674, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!74, !1037, !731}
!3676 = !{!3677, !3678, !3679}
!3677 = !DILocalVariable(name: "p", arg: 1, scope: !3673, file: !712, line: 325, type: !1037)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !712, line: 325, type: !731)
!3679 = !DILocalVariable(name: "result", scope: !3673, file: !712, line: 327, type: !74)
!3680 = !DILocation(line: 0, scope: !3673)
!3681 = !DILocation(line: 327, column: 30, scope: !3673)
!3682 = !DILocation(line: 0, scope: !3330, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 327, column: 18, scope: !3673)
!3684 = !DILocation(line: 0, scope: !3337, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 55, column: 25, scope: !3330, inlinedAt: !3683)
!3686 = !DILocation(line: 57, column: 26, scope: !3337, inlinedAt: !3685)
!3687 = !DILocation(line: 0, scope: !3297, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 55, column: 10, scope: !3330, inlinedAt: !3683)
!3689 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3688)
!3690 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3688)
!3691 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3688)
!3692 = !DILocation(line: 328, column: 3, scope: !3673)
!3693 = !DILocation(line: 328, column: 13, scope: !3673)
!3694 = !DILocation(line: 0, scope: !3641, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 329, column: 10, scope: !3673)
!3696 = !DILocation(line: 29, column: 10, scope: !3641, inlinedAt: !3695)
!3697 = !DILocation(line: 329, column: 3, scope: !3673)
!3698 = distinct !DISubprogram(name: "xstrdup", scope: !712, file: !712, line: 335, type: !1015, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "string", arg: 1, scope: !3698, file: !712, line: 335, type: !80)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocation(line: 337, column: 27, scope: !3698)
!3703 = !DILocation(line: 337, column: 43, scope: !3698)
!3704 = !DILocation(line: 0, scope: !3625, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 337, column: 10, scope: !3698)
!3706 = !DILocation(line: 0, scope: !3316, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 312, column: 18, scope: !3625, inlinedAt: !3705)
!3708 = !DILocation(line: 49, column: 25, scope: !3316, inlinedAt: !3707)
!3709 = !DILocation(line: 0, scope: !3297, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 49, column: 10, scope: !3316, inlinedAt: !3707)
!3711 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3710)
!3712 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3710)
!3713 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3710)
!3714 = !DILocation(line: 0, scope: !3641, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 312, column: 10, scope: !3625, inlinedAt: !3705)
!3716 = !DILocation(line: 29, column: 10, scope: !3641, inlinedAt: !3715)
!3717 = !DILocation(line: 337, column: 3, scope: !3698)
!3718 = distinct !DISubprogram(name: "xalloc_die", scope: !668, file: !668, line: 32, type: !414, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3719)
!3719 = !{!3720}
!3720 = !DILocalVariable(name: "__errstatus", scope: !3721, file: !668, line: 34, type: !3722)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !668, line: 34, column: 3)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3723 = !DILocation(line: 34, column: 3, scope: !3721)
!3724 = !DILocation(line: 0, scope: !3721)
!3725 = !DILocation(line: 40, column: 3, scope: !3718)
!3726 = distinct !DISubprogram(name: "xgetgroups", scope: !749, file: !749, line: 31, type: !763, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3727)
!3727 = !{!3728, !3729, !3730, !3731}
!3728 = !DILocalVariable(name: "username", arg: 1, scope: !3726, file: !749, line: 31, type: !80)
!3729 = !DILocalVariable(name: "gid", arg: 2, scope: !3726, file: !749, line: 31, type: !765)
!3730 = !DILocalVariable(name: "groups", arg: 3, scope: !3726, file: !749, line: 31, type: !768)
!3731 = !DILocalVariable(name: "result", scope: !3726, file: !749, line: 33, type: !53)
!3732 = !DILocation(line: 0, scope: !3726)
!3733 = !DILocation(line: 33, column: 16, scope: !3726)
!3734 = !DILocation(line: 34, column: 14, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3726, file: !749, line: 34, column: 7)
!3736 = !DILocation(line: 34, column: 20, scope: !3735)
!3737 = !DILocation(line: 34, column: 23, scope: !3735)
!3738 = !DILocation(line: 34, column: 29, scope: !3735)
!3739 = !DILocation(line: 34, column: 7, scope: !3726)
!3740 = !DILocation(line: 35, column: 5, scope: !3735)
!3741 = !DILocation(line: 36, column: 3, scope: !3726)
!3742 = distinct !DISubprogram(name: "close_stream", scope: !751, file: !751, line: 55, type: !3743, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3779)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!53, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3748)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3747, file: !150, line: 51, baseType: !53, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3747, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3747, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3747, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3747, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3747, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3747, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3747, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3747, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3747, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3747, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3747, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3747, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3747, file: !150, line: 70, baseType: !3763, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3747, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3747, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3747, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3747, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3747, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3747, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3747, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3747, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3747, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3747, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3747, file: !150, line: 93, baseType: !3763, size: 64, offset: 1344)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3747, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3747, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3747, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3747, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3779 = !{!3780, !3781, !3783, !3784}
!3780 = !DILocalVariable(name: "stream", arg: 1, scope: !3742, file: !751, line: 55, type: !3745)
!3781 = !DILocalVariable(name: "some_pending", scope: !3742, file: !751, line: 57, type: !3782)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3783 = !DILocalVariable(name: "prev_fail", scope: !3742, file: !751, line: 58, type: !3782)
!3784 = !DILocalVariable(name: "fclose_fail", scope: !3742, file: !751, line: 59, type: !3782)
!3785 = !DILocation(line: 0, scope: !3742)
!3786 = !DILocation(line: 57, column: 30, scope: !3742)
!3787 = !DILocalVariable(name: "__stream", arg: 1, scope: !3788, file: !1126, line: 135, type: !3745)
!3788 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1126, file: !1126, line: 135, type: !3743, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3789)
!3789 = !{!3787}
!3790 = !DILocation(line: 0, scope: !3788, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 58, column: 27, scope: !3742)
!3792 = !DILocation(line: 137, column: 10, scope: !3788, inlinedAt: !3791)
!3793 = !DILocation(line: 58, column: 43, scope: !3742)
!3794 = !DILocation(line: 59, column: 29, scope: !3742)
!3795 = !DILocation(line: 59, column: 45, scope: !3742)
!3796 = !DILocation(line: 69, column: 17, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3742, file: !751, line: 69, column: 7)
!3798 = !DILocation(line: 57, column: 50, scope: !3742)
!3799 = !DILocation(line: 69, column: 33, scope: !3797)
!3800 = !DILocation(line: 69, column: 53, scope: !3797)
!3801 = !DILocation(line: 69, column: 59, scope: !3797)
!3802 = !DILocation(line: 69, column: 7, scope: !3742)
!3803 = !DILocation(line: 71, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !751, line: 70, column: 5)
!3805 = !DILocation(line: 72, column: 9, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3804, file: !751, line: 71, column: 11)
!3807 = !DILocation(line: 72, column: 15, scope: !3806)
!3808 = !DILocation(line: 77, column: 1, scope: !3742)
!3809 = !DISubprogram(name: "__fpending", scope: !1694, file: !1694, line: 75, type: !3810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!77, !3745}
!3812 = distinct !DISubprogram(name: "rpl_fclose", scope: !753, file: !753, line: 58, type: !3813, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3849)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!53, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3817)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3817, file: !150, line: 51, baseType: !53, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3817, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3817, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3817, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3817, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3817, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3817, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3817, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3817, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3817, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3817, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3817, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3817, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3817, file: !150, line: 70, baseType: !3833, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3817, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3817, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3817, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3817, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3817, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3817, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3817, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3817, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3817, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3817, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3817, file: !150, line: 93, baseType: !3833, size: 64, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3817, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3817, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3817, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3817, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3849 = !{!3850, !3851, !3852, !3853}
!3850 = !DILocalVariable(name: "fp", arg: 1, scope: !3812, file: !753, line: 58, type: !3815)
!3851 = !DILocalVariable(name: "saved_errno", scope: !3812, file: !753, line: 60, type: !53)
!3852 = !DILocalVariable(name: "fd", scope: !3812, file: !753, line: 63, type: !53)
!3853 = !DILocalVariable(name: "result", scope: !3812, file: !753, line: 74, type: !53)
!3854 = !DILocation(line: 0, scope: !3812)
!3855 = !DILocation(line: 63, column: 12, scope: !3812)
!3856 = !DILocation(line: 64, column: 10, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3812, file: !753, line: 64, column: 7)
!3858 = !DILocation(line: 64, column: 7, scope: !3812)
!3859 = !DILocation(line: 65, column: 12, scope: !3857)
!3860 = !DILocation(line: 65, column: 5, scope: !3857)
!3861 = !DILocation(line: 70, column: 9, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3812, file: !753, line: 70, column: 7)
!3863 = !DILocation(line: 70, column: 23, scope: !3862)
!3864 = !DILocation(line: 70, column: 33, scope: !3862)
!3865 = !DILocation(line: 70, column: 26, scope: !3862)
!3866 = !DILocation(line: 70, column: 59, scope: !3862)
!3867 = !DILocation(line: 71, column: 7, scope: !3862)
!3868 = !DILocation(line: 71, column: 10, scope: !3862)
!3869 = !DILocation(line: 70, column: 7, scope: !3812)
!3870 = !DILocation(line: 100, column: 12, scope: !3812)
!3871 = !DILocation(line: 105, column: 7, scope: !3812)
!3872 = !DILocation(line: 72, column: 19, scope: !3862)
!3873 = !DILocation(line: 105, column: 19, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3812, file: !753, line: 105, column: 7)
!3875 = !DILocation(line: 107, column: 13, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3874, file: !753, line: 106, column: 5)
!3877 = !DILocation(line: 109, column: 5, scope: !3876)
!3878 = !DILocation(line: 112, column: 1, scope: !3812)
!3879 = !DISubprogram(name: "fileno", scope: !884, file: !884, line: 809, type: !3813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3880 = !DISubprogram(name: "fclose", scope: !884, file: !884, line: 178, type: !3813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3881 = !DISubprogram(name: "__freading", scope: !1694, file: !1694, line: 51, type: !3813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3882 = !DISubprogram(name: "lseek", scope: !1208, file: !1208, line: 339, type: !3883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!172, !53, !172, !53}
!3885 = distinct !DISubprogram(name: "rpl_fflush", scope: !755, file: !755, line: 130, type: !3886, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3922)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!53, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3890)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3890, file: !150, line: 51, baseType: !53, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3890, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3890, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3890, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3890, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3890, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3890, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3890, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3890, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3890, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3890, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3890, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3890, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3890, file: !150, line: 70, baseType: !3906, size: 64, offset: 832)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3890, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3890, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3890, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3890, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3890, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3890, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3890, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3890, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3890, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3890, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3890, file: !150, line: 93, baseType: !3906, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3890, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3890, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3890, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3890, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "stream", arg: 1, scope: !3885, file: !755, line: 130, type: !3888)
!3924 = !DILocation(line: 0, scope: !3885)
!3925 = !DILocation(line: 151, column: 14, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3885, file: !755, line: 151, column: 7)
!3927 = !DILocation(line: 151, column: 22, scope: !3926)
!3928 = !DILocation(line: 151, column: 27, scope: !3926)
!3929 = !DILocation(line: 151, column: 7, scope: !3885)
!3930 = !DILocation(line: 152, column: 12, scope: !3926)
!3931 = !DILocation(line: 152, column: 5, scope: !3926)
!3932 = !DILocalVariable(name: "fp", arg: 1, scope: !3933, file: !755, line: 42, type: !3888)
!3933 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !755, file: !755, line: 42, type: !3934, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3888}
!3936 = !{!3932}
!3937 = !DILocation(line: 0, scope: !3933, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 157, column: 3, scope: !3885)
!3939 = !DILocation(line: 44, column: 12, scope: !3940, inlinedAt: !3938)
!3940 = distinct !DILexicalBlock(scope: !3933, file: !755, line: 44, column: 7)
!3941 = !DILocation(line: 44, column: 19, scope: !3940, inlinedAt: !3938)
!3942 = !DILocation(line: 44, column: 7, scope: !3933, inlinedAt: !3938)
!3943 = !DILocation(line: 46, column: 5, scope: !3940, inlinedAt: !3938)
!3944 = !DILocation(line: 159, column: 10, scope: !3885)
!3945 = !DILocation(line: 159, column: 3, scope: !3885)
!3946 = !DILocation(line: 236, column: 1, scope: !3885)
!3947 = !DISubprogram(name: "fflush", scope: !884, file: !884, line: 230, type: !3886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3948 = distinct !DISubprogram(name: "rpl_fseeko", scope: !757, file: !757, line: 28, type: !3949, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3986)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!53, !3951, !3985, !53}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3953, file: !150, line: 51, baseType: !53, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3953, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3953, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3953, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3953, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3953, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3953, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3953, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3953, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3953, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3953, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3953, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3953, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3953, file: !150, line: 70, baseType: !3969, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3953, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3953, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3953, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3953, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3953, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3953, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3953, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3953, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3953, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3953, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3953, file: !150, line: 93, baseType: !3969, size: 64, offset: 1344)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3953, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3953, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3953, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3953, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !884, line: 63, baseType: !172)
!3986 = !{!3987, !3988, !3989, !3990}
!3987 = !DILocalVariable(name: "fp", arg: 1, scope: !3948, file: !757, line: 28, type: !3951)
!3988 = !DILocalVariable(name: "offset", arg: 2, scope: !3948, file: !757, line: 28, type: !3985)
!3989 = !DILocalVariable(name: "whence", arg: 3, scope: !3948, file: !757, line: 28, type: !53)
!3990 = !DILocalVariable(name: "pos", scope: !3991, file: !757, line: 123, type: !3985)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !757, line: 119, column: 5)
!3992 = distinct !DILexicalBlock(scope: !3948, file: !757, line: 55, column: 7)
!3993 = !DILocation(line: 0, scope: !3948)
!3994 = !DILocation(line: 55, column: 12, scope: !3992)
!3995 = !{!1134, !829, i64 16}
!3996 = !DILocation(line: 55, column: 33, scope: !3992)
!3997 = !{!1134, !829, i64 8}
!3998 = !DILocation(line: 55, column: 25, scope: !3992)
!3999 = !DILocation(line: 56, column: 7, scope: !3992)
!4000 = !DILocation(line: 56, column: 15, scope: !3992)
!4001 = !DILocation(line: 56, column: 37, scope: !3992)
!4002 = !{!1134, !829, i64 32}
!4003 = !DILocation(line: 56, column: 29, scope: !3992)
!4004 = !DILocation(line: 57, column: 7, scope: !3992)
!4005 = !DILocation(line: 57, column: 15, scope: !3992)
!4006 = !{!1134, !829, i64 72}
!4007 = !DILocation(line: 57, column: 29, scope: !3992)
!4008 = !DILocation(line: 55, column: 7, scope: !3948)
!4009 = !DILocation(line: 123, column: 26, scope: !3991)
!4010 = !DILocation(line: 123, column: 19, scope: !3991)
!4011 = !DILocation(line: 0, scope: !3991)
!4012 = !DILocation(line: 124, column: 15, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3991, file: !757, line: 124, column: 11)
!4014 = !DILocation(line: 124, column: 11, scope: !3991)
!4015 = !DILocation(line: 135, column: 19, scope: !3991)
!4016 = !DILocation(line: 136, column: 12, scope: !3991)
!4017 = !DILocation(line: 136, column: 20, scope: !3991)
!4018 = !{!1134, !1135, i64 144}
!4019 = !DILocation(line: 167, column: 7, scope: !3991)
!4020 = !DILocation(line: 169, column: 10, scope: !3948)
!4021 = !DILocation(line: 169, column: 3, scope: !3948)
!4022 = !DILocation(line: 170, column: 1, scope: !3948)
!4023 = !DISubprogram(name: "fseeko", scope: !884, file: !884, line: 736, type: !4024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!53, !3951, !172, !53}
!4026 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !675, file: !675, line: 100, type: !4027, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !4030)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!77, !1775, !80, !77, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!4030 = !{!4031, !4032, !4033, !4034, !4035}
!4031 = !DILocalVariable(name: "pwc", arg: 1, scope: !4026, file: !675, line: 100, type: !1775)
!4032 = !DILocalVariable(name: "s", arg: 2, scope: !4026, file: !675, line: 100, type: !80)
!4033 = !DILocalVariable(name: "n", arg: 3, scope: !4026, file: !675, line: 100, type: !77)
!4034 = !DILocalVariable(name: "ps", arg: 4, scope: !4026, file: !675, line: 100, type: !4029)
!4035 = !DILocalVariable(name: "ret", scope: !4026, file: !675, line: 130, type: !77)
!4036 = !DILocation(line: 0, scope: !4026)
!4037 = !DILocation(line: 105, column: 9, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4026, file: !675, line: 105, column: 7)
!4039 = !DILocation(line: 105, column: 7, scope: !4026)
!4040 = !DILocation(line: 117, column: 10, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4026, file: !675, line: 117, column: 7)
!4042 = !DILocation(line: 117, column: 7, scope: !4026)
!4043 = !DILocation(line: 130, column: 16, scope: !4026)
!4044 = !DILocation(line: 135, column: 11, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4026, file: !675, line: 135, column: 7)
!4046 = !DILocation(line: 135, column: 25, scope: !4045)
!4047 = !DILocation(line: 135, column: 30, scope: !4045)
!4048 = !DILocation(line: 135, column: 7, scope: !4026)
!4049 = !DILocalVariable(name: "ps", arg: 1, scope: !4050, file: !1748, line: 1135, type: !4029)
!4050 = distinct !DISubprogram(name: "mbszero", scope: !1748, file: !1748, line: 1135, type: !4051, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !4029}
!4053 = !{!4049}
!4054 = !DILocation(line: 0, scope: !4050, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 137, column: 5, scope: !4045)
!4056 = !DILocalVariable(name: "__dest", arg: 1, scope: !4057, file: !1757, line: 57, type: !75)
!4057 = distinct !DISubprogram(name: "memset", scope: !1757, file: !1757, line: 57, type: !1758, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !4058)
!4058 = !{!4056, !4059, !4060}
!4059 = !DILocalVariable(name: "__ch", arg: 2, scope: !4057, file: !1757, line: 57, type: !53)
!4060 = !DILocalVariable(name: "__len", arg: 3, scope: !4057, file: !1757, line: 57, type: !77)
!4061 = !DILocation(line: 0, scope: !4057, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 1137, column: 3, scope: !4050, inlinedAt: !4055)
!4063 = !DILocation(line: 59, column: 10, scope: !4057, inlinedAt: !4062)
!4064 = !DILocation(line: 137, column: 5, scope: !4045)
!4065 = !DILocation(line: 138, column: 11, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4026, file: !675, line: 138, column: 7)
!4067 = !DILocation(line: 138, column: 7, scope: !4026)
!4068 = !DILocation(line: 139, column: 5, scope: !4066)
!4069 = !DILocation(line: 143, column: 26, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4026, file: !675, line: 143, column: 7)
!4071 = !DILocation(line: 143, column: 41, scope: !4070)
!4072 = !DILocation(line: 143, column: 7, scope: !4026)
!4073 = !DILocation(line: 145, column: 15, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !675, line: 145, column: 11)
!4075 = distinct !DILexicalBlock(scope: !4070, file: !675, line: 144, column: 5)
!4076 = !DILocation(line: 145, column: 11, scope: !4075)
!4077 = !DILocation(line: 146, column: 32, scope: !4074)
!4078 = !DILocation(line: 146, column: 16, scope: !4074)
!4079 = !DILocation(line: 146, column: 14, scope: !4074)
!4080 = !DILocation(line: 146, column: 9, scope: !4074)
!4081 = !DILocation(line: 286, column: 1, scope: !4026)
!4082 = !DISubprogram(name: "mbsinit", scope: !4083, file: !4083, line: 293, type: !4084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4083 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!53, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!4088 = distinct !DIAssignID()
!4089 = !DILocation(line: 0, scope: !775)
!4090 = !DILocation(line: 0, scope: !762)
!4091 = !DILocation(line: 77, column: 7, scope: !776)
!4092 = !DILocation(line: 77, column: 7, scope: !762)
!4093 = !DILocation(line: 80, column: 7, scope: !775)
!4094 = !DILocation(line: 80, column: 11, scope: !775)
!4095 = distinct !DIAssignID()
!4096 = !DILocalVariable(name: "g", arg: 1, scope: !4097, file: !759, line: 43, type: !769)
!4097 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !759, file: !759, line: 43, type: !4098, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!769, !769, !77}
!4100 = !{!4096, !4101}
!4101 = !DILocalVariable(name: "num", arg: 2, scope: !4097, file: !759, line: 43, type: !77)
!4102 = !DILocation(line: 0, scope: !4097, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 82, column: 18, scope: !775)
!4104 = !DILocalVariable(name: "ptr", arg: 1, scope: !4105, file: !3373, line: 2057, type: !75)
!4105 = distinct !DISubprogram(name: "rpl_realloc", scope: !3373, file: !3373, line: 2057, type: !3365, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !4106)
!4106 = !{!4104, !4107}
!4107 = !DILocalVariable(name: "size", arg: 2, scope: !4105, file: !3373, line: 2057, type: !77)
!4108 = !DILocation(line: 0, scope: !4105, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 51, column: 10, scope: !4097, inlinedAt: !4103)
!4110 = !DILocation(line: 2059, column: 10, scope: !4105, inlinedAt: !4109)
!4111 = !DILocation(line: 83, column: 13, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !775, file: !759, line: 83, column: 11)
!4113 = !DILocation(line: 83, column: 11, scope: !775)
!4114 = !DILocation(line: 88, column: 31, scope: !779)
!4115 = !DILocation(line: 82, column: 14, scope: !775)
!4116 = !DILocation(line: 0, scope: !779)
!4117 = !DILocation(line: 91, column: 20, scope: !779)
!4118 = !DILocation(line: 95, column: 18, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !779, file: !759, line: 95, column: 15)
!4120 = !DILocation(line: 98, column: 43, scope: !779)
!4121 = !DILocation(line: 95, column: 22, scope: !4119)
!4122 = !DILocation(line: 96, column: 26, scope: !4119)
!4123 = distinct !DIAssignID()
!4124 = !DILocation(line: 96, column: 13, scope: !4119)
!4125 = !DILocation(line: 0, scope: !4097, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 98, column: 22, scope: !779)
!4127 = !DILocation(line: 45, column: 7, scope: !4128, inlinedAt: !4126)
!4128 = distinct !DILexicalBlock(scope: !4097, file: !759, line: 45, column: 7)
!4129 = !DILocation(line: 45, column: 7, scope: !4097, inlinedAt: !4126)
!4130 = !DILocation(line: 47, column: 7, scope: !4131, inlinedAt: !4126)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !759, line: 46, column: 5)
!4132 = !DILocation(line: 47, column: 13, scope: !4131, inlinedAt: !4126)
!4133 = !DILocation(line: 99, column: 15, scope: !779)
!4134 = !DILocation(line: 51, column: 26, scope: !4097, inlinedAt: !4126)
!4135 = !DILocation(line: 0, scope: !4105, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 51, column: 10, scope: !4097, inlinedAt: !4126)
!4137 = !DILocation(line: 2059, column: 24, scope: !4105, inlinedAt: !4136)
!4138 = !DILocation(line: 2059, column: 10, scope: !4105, inlinedAt: !4136)
!4139 = !DILocation(line: 99, column: 17, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !779, file: !759, line: 99, column: 15)
!4141 = !DILocation(line: 101, column: 15, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4140, file: !759, line: 100, column: 13)
!4143 = !DILocation(line: 102, column: 15, scope: !4142)
!4144 = !DILocation(line: 106, column: 17, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !779, file: !759, line: 106, column: 15)
!4146 = !DILocation(line: 106, column: 15, scope: !779)
!4147 = distinct !{!4147, !4148, !4149}
!4148 = !DILocation(line: 86, column: 7, scope: !775)
!4149 = !DILocation(line: 113, column: 9, scope: !775)
!4150 = !DILocation(line: 108, column: 23, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4145, file: !759, line: 107, column: 13)
!4152 = !DILocation(line: 111, column: 15, scope: !4151)
!4153 = !DILocation(line: 114, column: 5, scope: !776)
!4154 = !DILocation(line: 120, column: 25, scope: !762)
!4155 = !DILocation(line: 125, column: 20, scope: !787)
!4156 = !DILocation(line: 125, column: 7, scope: !762)
!4157 = !DILocation(line: 127, column: 11, scope: !785)
!4158 = !DILocation(line: 127, column: 17, scope: !785)
!4159 = !DILocation(line: 127, column: 11, scope: !786)
!4160 = !DILocation(line: 0, scope: !4097, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 129, column: 22, scope: !784)
!4162 = !DILocation(line: 0, scope: !4105, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 51, column: 10, scope: !4097, inlinedAt: !4161)
!4164 = !DILocation(line: 2059, column: 10, scope: !4105, inlinedAt: !4163)
!4165 = !DILocation(line: 0, scope: !784)
!4166 = !DILocation(line: 130, column: 15, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !784, file: !759, line: 130, column: 15)
!4168 = !DILocation(line: 130, column: 15, scope: !784)
!4169 = !DILocation(line: 132, column: 23, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4167, file: !759, line: 131, column: 13)
!4171 = !DILocation(line: 133, column: 18, scope: !4170)
!4172 = !DILocation(line: 134, column: 26, scope: !4170)
!4173 = !DILocation(line: 140, column: 20, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !762, file: !759, line: 140, column: 7)
!4175 = !DILocation(line: 140, column: 25, scope: !4174)
!4176 = !DILocation(line: 142, column: 38, scope: !762)
!4177 = !DILocation(line: 0, scope: !4097, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 142, column: 14, scope: !762)
!4179 = !DILocation(line: 51, column: 26, scope: !4097, inlinedAt: !4178)
!4180 = !DILocation(line: 0, scope: !4105, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 51, column: 10, scope: !4097, inlinedAt: !4178)
!4182 = !DILocation(line: 2059, column: 24, scope: !4105, inlinedAt: !4181)
!4183 = !DILocation(line: 2059, column: 10, scope: !4105, inlinedAt: !4181)
!4184 = !DILocation(line: 143, column: 9, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !762, file: !759, line: 143, column: 7)
!4186 = !DILocation(line: 143, column: 7, scope: !762)
!4187 = !DILocation(line: 148, column: 46, scope: !762)
!4188 = !DILocation(line: 148, column: 39, scope: !762)
!4189 = !DILocation(line: 149, column: 39, scope: !762)
!4190 = !DILocation(line: 148, column: 15, scope: !762)
!4191 = !DILocation(line: 151, column: 10, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !762, file: !759, line: 151, column: 7)
!4193 = !DILocation(line: 151, column: 7, scope: !762)
!4194 = !DILocation(line: 154, column: 7, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4192, file: !759, line: 152, column: 5)
!4196 = !DILocation(line: 155, column: 7, scope: !4195)
!4197 = !DILocation(line: 158, column: 17, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !762, file: !759, line: 158, column: 7)
!4199 = !DILocation(line: 160, column: 10, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4198, file: !759, line: 159, column: 5)
!4201 = !DILocation(line: 161, column: 9, scope: !4200)
!4202 = !DILocation(line: 162, column: 5, scope: !4200)
!4203 = !DILocation(line: 163, column: 11, scope: !762)
!4204 = !DILocation(line: 181, column: 9, scope: !792)
!4205 = !DILocation(line: 181, column: 7, scope: !762)
!4206 = !DILocation(line: 183, column: 21, scope: !791)
!4207 = !DILocation(line: 0, scope: !791)
!4208 = !DILocation(line: 184, column: 29, scope: !791)
!4209 = !DILocation(line: 0, scope: !795)
!4210 = !DILocation(line: 186, scope: !795)
!4211 = !DILocation(line: 186, column: 7, scope: !795)
!4212 = !DILocation(line: 188, column: 15, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !759, line: 188, column: 15)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !759, line: 187, column: 9)
!4215 = distinct !DILexicalBlock(scope: !795, file: !759, line: 186, column: 7)
!4216 = !DILocation(line: 188, column: 21, scope: !4213)
!4217 = !DILocation(line: 188, column: 30, scope: !4213)
!4218 = !DILocation(line: 189, column: 15, scope: !4213)
!4219 = !DILocation(line: 189, column: 13, scope: !4213)
!4220 = !DILocation(line: 191, column: 14, scope: !4213)
!4221 = !DILocation(line: 191, column: 18, scope: !4213)
!4222 = !DILocation(line: 186, column: 38, scope: !4215)
!4223 = distinct !{!4223, !4211, !4224, !936}
!4224 = !DILocation(line: 192, column: 9, scope: !795)
!4225 = !DILocation(line: 196, column: 1, scope: !762)
!4226 = !DISubprogram(name: "getgrouplist", scope: !1272, file: !1272, line: 186, type: !4227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!53, !80, !767, !4229, !321}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!4230 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !800, file: !800, line: 27, type: !3281, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4231)
!4231 = !{!4232, !4233, !4234, !4235}
!4232 = !DILocalVariable(name: "ptr", arg: 1, scope: !4230, file: !800, line: 27, type: !75)
!4233 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4230, file: !800, line: 27, type: !77)
!4234 = !DILocalVariable(name: "size", arg: 3, scope: !4230, file: !800, line: 27, type: !77)
!4235 = !DILocalVariable(name: "nbytes", scope: !4230, file: !800, line: 29, type: !77)
!4236 = !DILocation(line: 0, scope: !4230)
!4237 = !DILocation(line: 30, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4230, file: !800, line: 30, column: 7)
!4239 = !DILocation(line: 30, column: 7, scope: !4230)
!4240 = !DILocation(line: 32, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !800, line: 31, column: 5)
!4242 = !DILocation(line: 32, column: 13, scope: !4241)
!4243 = !DILocation(line: 33, column: 7, scope: !4241)
!4244 = !DILocalVariable(name: "ptr", arg: 1, scope: !4245, file: !3373, line: 2057, type: !75)
!4245 = distinct !DISubprogram(name: "rpl_realloc", scope: !3373, file: !3373, line: 2057, type: !3365, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4246)
!4246 = !{!4244, !4247}
!4247 = !DILocalVariable(name: "size", arg: 2, scope: !4245, file: !3373, line: 2057, type: !77)
!4248 = !DILocation(line: 0, scope: !4245, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 37, column: 10, scope: !4230)
!4250 = !DILocation(line: 2059, column: 24, scope: !4245, inlinedAt: !4249)
!4251 = !DILocation(line: 2059, column: 10, scope: !4245, inlinedAt: !4249)
!4252 = !DILocation(line: 37, column: 3, scope: !4230)
!4253 = !DILocation(line: 38, column: 1, scope: !4230)
!4254 = distinct !DISubprogram(name: "hard_locale", scope: !693, file: !693, line: 28, type: !4255, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!133, !53}
!4257 = !{!4258, !4259}
!4258 = !DILocalVariable(name: "category", arg: 1, scope: !4254, file: !693, line: 28, type: !53)
!4259 = !DILocalVariable(name: "locale", scope: !4254, file: !693, line: 30, type: !4260)
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4261)
!4261 = !{!4262}
!4262 = !DISubrange(count: 257)
!4263 = distinct !DIAssignID()
!4264 = !DILocation(line: 0, scope: !4254)
!4265 = !DILocation(line: 30, column: 3, scope: !4254)
!4266 = !DILocation(line: 32, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4254, file: !693, line: 32, column: 7)
!4268 = !DILocation(line: 32, column: 7, scope: !4254)
!4269 = !DILocalVariable(name: "__s1", arg: 1, scope: !4270, file: !902, line: 1359, type: !80)
!4270 = distinct !DISubprogram(name: "streq", scope: !902, file: !902, line: 1359, type: !903, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !4271)
!4271 = !{!4269, !4272}
!4272 = !DILocalVariable(name: "__s2", arg: 2, scope: !4270, file: !902, line: 1359, type: !80)
!4273 = !DILocation(line: 0, scope: !4270, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 35, column: 9, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4254, file: !693, line: 35, column: 7)
!4276 = !DILocation(line: 1361, column: 11, scope: !4270, inlinedAt: !4274)
!4277 = !DILocation(line: 35, column: 29, scope: !4275)
!4278 = !DILocation(line: 0, scope: !4270, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 35, column: 32, scope: !4275)
!4280 = !DILocation(line: 1361, column: 11, scope: !4270, inlinedAt: !4279)
!4281 = !DILocation(line: 1361, column: 10, scope: !4270, inlinedAt: !4279)
!4282 = !DILocation(line: 35, column: 7, scope: !4254)
!4283 = !DILocation(line: 46, column: 3, scope: !4254)
!4284 = !DILocation(line: 47, column: 1, scope: !4254)
!4285 = distinct !DISubprogram(name: "setlocale_null_r", scope: !806, file: !806, line: 154, type: !4286, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!53, !53, !74, !77}
!4288 = !{!4289, !4290, !4291}
!4289 = !DILocalVariable(name: "category", arg: 1, scope: !4285, file: !806, line: 154, type: !53)
!4290 = !DILocalVariable(name: "buf", arg: 2, scope: !4285, file: !806, line: 154, type: !74)
!4291 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4285, file: !806, line: 154, type: !77)
!4292 = !DILocation(line: 0, scope: !4285)
!4293 = !DILocation(line: 159, column: 10, scope: !4285)
!4294 = !DILocation(line: 159, column: 3, scope: !4285)
!4295 = distinct !DISubprogram(name: "setlocale_null", scope: !806, file: !806, line: 186, type: !4296, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!80, !53}
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "category", arg: 1, scope: !4295, file: !806, line: 186, type: !53)
!4300 = !DILocation(line: 0, scope: !4295)
!4301 = !DILocation(line: 189, column: 10, scope: !4295)
!4302 = !DILocation(line: 189, column: 3, scope: !4295)
!4303 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !808, file: !808, line: 35, type: !4296, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4304)
!4304 = !{!4305, !4306}
!4305 = !DILocalVariable(name: "category", arg: 1, scope: !4303, file: !808, line: 35, type: !53)
!4306 = !DILocalVariable(name: "result", scope: !4303, file: !808, line: 37, type: !80)
!4307 = !DILocation(line: 0, scope: !4303)
!4308 = !DILocation(line: 37, column: 24, scope: !4303)
!4309 = !DILocation(line: 62, column: 3, scope: !4303)
!4310 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !808, file: !808, line: 66, type: !4286, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316}
!4312 = !DILocalVariable(name: "category", arg: 1, scope: !4310, file: !808, line: 66, type: !53)
!4313 = !DILocalVariable(name: "buf", arg: 2, scope: !4310, file: !808, line: 66, type: !74)
!4314 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4310, file: !808, line: 66, type: !77)
!4315 = !DILocalVariable(name: "result", scope: !4310, file: !808, line: 111, type: !80)
!4316 = !DILocalVariable(name: "length", scope: !4317, file: !808, line: 125, type: !77)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !808, line: 124, column: 5)
!4318 = distinct !DILexicalBlock(scope: !4310, file: !808, line: 113, column: 7)
!4319 = !DILocation(line: 0, scope: !4310)
!4320 = !DILocation(line: 0, scope: !4303, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 111, column: 24, scope: !4310)
!4322 = !DILocation(line: 37, column: 24, scope: !4303, inlinedAt: !4321)
!4323 = !DILocation(line: 113, column: 14, scope: !4318)
!4324 = !DILocation(line: 113, column: 7, scope: !4310)
!4325 = !DILocation(line: 116, column: 19, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !808, line: 116, column: 11)
!4327 = distinct !DILexicalBlock(scope: !4318, file: !808, line: 114, column: 5)
!4328 = !DILocation(line: 116, column: 11, scope: !4327)
!4329 = !DILocation(line: 120, column: 16, scope: !4326)
!4330 = !DILocation(line: 120, column: 9, scope: !4326)
!4331 = !DILocation(line: 125, column: 23, scope: !4317)
!4332 = !DILocation(line: 0, scope: !4317)
!4333 = !DILocation(line: 126, column: 18, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4317, file: !808, line: 126, column: 11)
!4335 = !DILocation(line: 126, column: 11, scope: !4317)
!4336 = !DILocation(line: 128, column: 39, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !808, line: 127, column: 9)
!4338 = !DILocalVariable(name: "__dest", arg: 1, scope: !4339, file: !1757, line: 26, type: !3644)
!4339 = distinct !DISubprogram(name: "memcpy", scope: !1757, file: !1757, line: 26, type: !3642, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4340)
!4340 = !{!4338, !4341, !4342}
!4341 = !DILocalVariable(name: "__src", arg: 2, scope: !4339, file: !1757, line: 26, type: !1036)
!4342 = !DILocalVariable(name: "__len", arg: 3, scope: !4339, file: !1757, line: 26, type: !77)
!4343 = !DILocation(line: 0, scope: !4339, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 128, column: 11, scope: !4337)
!4345 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4344)
!4346 = !DILocation(line: 129, column: 11, scope: !4337)
!4347 = !DILocation(line: 133, column: 23, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !808, line: 133, column: 15)
!4349 = distinct !DILexicalBlock(scope: !4334, file: !808, line: 132, column: 9)
!4350 = !DILocation(line: 133, column: 15, scope: !4349)
!4351 = !DILocation(line: 138, column: 44, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4348, file: !808, line: 134, column: 13)
!4353 = !DILocation(line: 0, scope: !4339, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 138, column: 15, scope: !4352)
!4355 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4354)
!4356 = !DILocation(line: 139, column: 15, scope: !4352)
!4357 = !DILocation(line: 139, column: 32, scope: !4352)
!4358 = !DILocation(line: 140, column: 13, scope: !4352)
!4359 = !DILocation(line: 0, scope: !4318)
!4360 = !DILocation(line: 145, column: 1, scope: !4310)
