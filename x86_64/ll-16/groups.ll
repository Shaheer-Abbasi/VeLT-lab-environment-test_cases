; ModuleID = 'src/groups.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !403
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !373
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !393
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !395
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !397
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !399
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !401
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !405
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !407
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !412
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !417
@.str.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !423
@.str.1.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !425
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !427
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !458
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !461
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !463
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !468
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !470
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !472
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !474
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !476
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !478
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !480
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.59, ptr @.str.1.60, ptr @.str.2.61, ptr @.str.3.62, ptr @.str.4.63, ptr @.str.5.64, ptr @.str.6.65, ptr @.str.7.66, ptr @.str.8.67, ptr @.str.9.68, ptr null], align 16, !dbg !482
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !507
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !521
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !559
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !566
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !523
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !568
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !511
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !528
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !530
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !532
@.str.13.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !534
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !536
@.str.77 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !574
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !577
@.str.2.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !579
@.str.3.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !581
@.str.4.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !583
@.str.5.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !585
@.str.6.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !590
@.str.7.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !592
@.str.8.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !594
@.str.9.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !599
@.str.10.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !604
@.str.11.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !609
@.str.12.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !614
@.str.13.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !616
@.str.14.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !621
@.str.15.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !626
@.str.16.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !631
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !636
@.str.18.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !638
@.str.19.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !640
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !642
@.str.21.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !644
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !646
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !648
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !653
@exit_failure = dso_local global i32 1, align 4, !dbg !661
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !667
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !670
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !672
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !674
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !677
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !692

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !821, metadata !DIExpression()), !dbg !822
  %2 = icmp eq i32 %0, 0, !dbg !823
  br i1 %2, label %8, label %3, !dbg !825

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !826, !tbaa !828
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !826
  %6 = load ptr, ptr @program_name, align 8, !dbg !826, !tbaa !828
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !826
  br label %31, !dbg !826

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !832
  %10 = load ptr, ptr @program_name, align 8, !dbg !832, !tbaa !828
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !832
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !834
  %13 = load ptr, ptr @stdout, align 8, !dbg !834, !tbaa !828
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !834
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !835
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !835
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !836
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !837, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !849, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr poison, metadata !849, metadata !DIExpression()), !dbg !854
  tail call void @emit_bug_reporting_address() #36, !dbg !856
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !857
  call void @llvm.dbg.value(metadata ptr %17, metadata !852, metadata !DIExpression()), !dbg !854
  %18 = icmp eq ptr %17, null, !dbg !858
  br i1 %18, label %26, label %19, !dbg !860

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #37, !dbg !861
  %21 = icmp eq i32 %20, 0, !dbg !861
  br i1 %21, label %26, label %22, !dbg !862

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !863
  %24 = load ptr, ptr @stdout, align 8, !dbg !863, !tbaa !828
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !863
  br label %26, !dbg !865

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !849, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !853, metadata !DIExpression()), !dbg !854
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !866
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #36, !dbg !866
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #36, !dbg !867
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #36, !dbg !867
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !868
  unreachable, !dbg !868
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !869 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !874 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !880 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !883 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !123 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !127, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !887
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !888, !tbaa !889
  %3 = icmp eq i32 %2, -1, !dbg !891
  br i1 %3, label %4, label %16, !dbg !892

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #36, !dbg !893
  call void @llvm.dbg.value(metadata ptr %5, metadata !129, metadata !DIExpression()), !dbg !894
  %6 = icmp eq ptr %5, null, !dbg !895
  br i1 %6, label %14, label %7, !dbg !896

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !897, !tbaa !898
  %9 = icmp eq i8 %8, 0, !dbg !897
  br i1 %9, label %14, label %10, !dbg !899

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !900, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !906, metadata !DIExpression()), !dbg !907
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #37, !dbg !909
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
  br label %128, !dbg !918

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !132, metadata !DIExpression()), !dbg !887
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #37, !dbg !919
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !920
  call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !887
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !921
  call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !887
  %26 = icmp eq ptr %25, null, !dbg !922
  br i1 %26, label %58, label %27, !dbg !923

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !924
  br i1 %28, label %58, label %29, !dbg !925

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !926
  %30 = icmp ult ptr %24, %25, !dbg !927
  br i1 %30, label %31, label %52, !dbg !928

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !887
  %33 = load ptr, ptr %32, align 8, !tbaa !828
  br label %34, !dbg !928

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !926
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !929
  call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !926
  %38 = load i8, ptr %35, align 1, !dbg !929, !tbaa !898
  %39 = sext i8 %38 to i64, !dbg !929
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !929
  %41 = load i16, ptr %40, align 2, !dbg !929, !tbaa !930
  %42 = freeze i16 %41, !dbg !932
  %43 = lshr i16 %42, 13, !dbg !932
  %44 = and i16 %43, 1, !dbg !932
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !933
  call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !926
  %47 = icmp ult ptr %37, %25, !dbg !927
  %48 = icmp ult i64 %46, 2, !dbg !934
  %49 = select i1 %47, i1 %48, i1 false, !dbg !934
  br i1 %49, label %34, label %50, !dbg !928, !llvm.loop !935

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !937
  br i1 %51, label %52, label %54, !dbg !939

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !939

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !939
  call void @llvm.dbg.value(metadata i8 %57, metadata !132, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %56, metadata !135, metadata !DIExpression()), !dbg !887
  br label %58, !dbg !940

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !887
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !887
  call void @llvm.dbg.value(metadata i8 %60, metadata !132, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %59, metadata !135, metadata !DIExpression()), !dbg !887
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.20) #37, !dbg !941
  call void @llvm.dbg.value(metadata i64 %61, metadata !141, metadata !DIExpression()), !dbg !887
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !942
  call void @llvm.dbg.value(metadata ptr %62, metadata !142, metadata !DIExpression()), !dbg !887
  br label %63, !dbg !943

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !887
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !887
  call void @llvm.dbg.value(metadata i8 %65, metadata !132, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %64, metadata !142, metadata !DIExpression()), !dbg !887
  %66 = load i8, ptr %64, align 1, !dbg !944, !tbaa !898
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !945

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !946
  %69 = load i8, ptr %68, align 1, !dbg !949, !tbaa !898
  %70 = icmp eq i8 %69, 45, !dbg !950
  %71 = select i1 %70, i8 0, i8 %65, !dbg !951
  br label %72, !dbg !951

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !887
  call void @llvm.dbg.value(metadata i8 %73, metadata !132, metadata !DIExpression()), !dbg !887
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !952
  %75 = load ptr, ptr %74, align 8, !dbg !952, !tbaa !828
  %76 = sext i8 %66 to i64, !dbg !952
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !952
  %78 = load i16, ptr %77, align 2, !dbg !952, !tbaa !930
  %79 = and i16 %78, 8192, !dbg !952
  %80 = icmp eq i16 %79, 0, !dbg !952
  br i1 %80, label %96, label %81, !dbg !954

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !955
  br i1 %82, label %98, label %83, !dbg !958

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !959
  %85 = load i8, ptr %84, align 1, !dbg !959, !tbaa !898
  %86 = sext i8 %85 to i64, !dbg !959
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !959
  %88 = load i16, ptr %87, align 2, !dbg !959, !tbaa !930
  %89 = and i16 %88, 8192, !dbg !959
  %90 = icmp eq i16 %89, 0, !dbg !959
  br i1 %90, label %91, label %98, !dbg !960

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !961
  %93 = icmp ne i8 %92, 0, !dbg !961
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !963
  br i1 %95, label %96, label %98, !dbg !963

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !964
  call void @llvm.dbg.value(metadata ptr %97, metadata !142, metadata !DIExpression()), !dbg !887
  br label %63, !dbg !943, !llvm.loop !965

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !967
  %100 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !828
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !900, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !887
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #37, !dbg !988
  %103 = icmp eq i32 %102, 0, !dbg !988
  br i1 %103, label %107, label %104, !dbg !990

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #37, !dbg !991
  %106 = icmp eq i32 %105, 0, !dbg !991
  br i1 %106, label %107, label %110, !dbg !992

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !993
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !993
  br label %113, !dbg !995

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !996
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !996
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !828
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %114), !dbg !998
  %116 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !828
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !999
  %118 = ptrtoint ptr %64 to i64, !dbg !1000
  %119 = sub i64 %118, %99, !dbg !1000
  %120 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !828
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1000
  %122 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !828
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %122), !dbg !1001
  %124 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !828
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %124), !dbg !1002
  %126 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !828
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1003
  br label %128, !dbg !1004

128:                                              ; preds = %113, %19
  ret void, !dbg !1004
}

; Function Attrs: nounwind
declare !dbg !1005 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1009 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1013 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1015 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1018 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1021 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1024 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1027 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1033 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1034 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1040 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1045, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr %1, metadata !1046, metadata !DIExpression()), !dbg !1077
  %3 = load ptr, ptr %1, align 8, !dbg !1078, !tbaa !828
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1079
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !1080
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !1081
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !1082
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1083
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %8, metadata !1047, metadata !DIExpression()), !dbg !1077
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !1085

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #40, !dbg !1086
  unreachable, !dbg !1086

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !828
  %12 = load ptr, ptr @Version, align 8, !dbg !1089, !tbaa !828
  %13 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !1089
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #36, !dbg !1089
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef null) #36, !dbg !1089
  tail call void @exit(i32 noundef 0) #38, !dbg !1089
  unreachable, !dbg !1089

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #40, !dbg !1090
  unreachable, !dbg !1090

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1077
  %17 = load i32, ptr @optind, align 4, !dbg !1091, !tbaa !889
  %18 = icmp eq i32 %17, %0, !dbg !1092
  br i1 %18, label %21, label %19, !dbg !1093

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1077
  %20 = icmp slt i32 %17, %0, !dbg !1094
  br i1 %20, label %59, label %118, !dbg !1095

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 -1, metadata !1049, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 -1, metadata !1054, metadata !DIExpression()), !dbg !1096
  %22 = tail call ptr @__errno_location() #39, !dbg !1097
  store i32 0, ptr %22, align 4, !dbg !1098, !tbaa !889
  %23 = tail call i32 @getuid() #36, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %23, metadata !1055, metadata !DIExpression()), !dbg !1096
  %24 = icmp eq i32 %23, -1, !dbg !1100
  br i1 %24, label %25, label %30, !dbg !1102

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 4, !dbg !1103, !tbaa !889
  %27 = icmp eq i32 %26, 0, !dbg !1103
  br i1 %27, label %30, label %28, !dbg !1104

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !1105
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %26, ptr noundef %29) #36, !dbg !1105
  unreachable, !dbg !1105

30:                                               ; preds = %25, %21
  store i32 0, ptr %22, align 4, !dbg !1106, !tbaa !889
  %31 = tail call i32 @getegid() #36, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %31, metadata !1056, metadata !DIExpression()), !dbg !1096
  %32 = icmp eq i32 %31, -1, !dbg !1108
  br i1 %32, label %33, label %38, !dbg !1110

33:                                               ; preds = %30
  %34 = load i32, ptr %22, align 4, !dbg !1111, !tbaa !889
  %35 = icmp eq i32 %34, 0, !dbg !1111
  br i1 %35, label %38, label %36, !dbg !1112

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1113
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %34, ptr noundef %37) #36, !dbg !1113
  unreachable, !dbg !1113

38:                                               ; preds = %33, %30
  store i32 0, ptr %22, align 4, !dbg !1114, !tbaa !889
  %39 = tail call i32 @getgid() #36, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %39, metadata !1057, metadata !DIExpression()), !dbg !1096
  %40 = icmp eq i32 %39, -1, !dbg !1116
  br i1 %40, label %41, label %46, !dbg !1118

41:                                               ; preds = %38
  %42 = load i32, ptr %22, align 4, !dbg !1119, !tbaa !889
  %43 = icmp eq i32 %42, 0, !dbg !1119
  br i1 %43, label %46, label %44, !dbg !1120

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1121
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %45) #36, !dbg !1121
  unreachable, !dbg !1121

46:                                               ; preds = %41, %38
  %47 = tail call zeroext i1 @print_group_list(ptr noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef zeroext true, i8 noundef signext 32) #36, !dbg !1122
  %48 = zext i1 %47 to i8, !dbg !1124
  call void @llvm.dbg.value(metadata i8 %48, metadata !1048, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1131
  %49 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !828
  %50 = getelementptr inbounds %struct._IO_FILE, ptr %49, i64 0, i32 5, !dbg !1133
  %51 = load ptr, ptr %50, align 8, !dbg !1133, !tbaa !1134
  %52 = getelementptr inbounds %struct._IO_FILE, ptr %49, i64 0, i32 6, !dbg !1133
  %53 = load ptr, ptr %52, align 8, !dbg !1133, !tbaa !1137
  %54 = icmp ult ptr %51, %53, !dbg !1133
  br i1 %54, label %57, label %55, !dbg !1133, !prof !1138

55:                                               ; preds = %46
  %56 = tail call i32 @__overflow(ptr noundef nonnull %49, i32 noundef 10) #36, !dbg !1133
  br label %118, !dbg !1133

57:                                               ; preds = %46
  %58 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1133
  store ptr %58, ptr %50, align 8, !dbg !1133, !tbaa !1134
  store i8 10, ptr %51, align 1, !dbg !1133, !tbaa !898
  br label %118, !dbg !1133

59:                                               ; preds = %19, %113
  %60 = phi i32 [ %116, %113 ], [ %17, %19 ]
  %61 = phi i8 [ %114, %113 ], [ 1, %19 ]
  call void @llvm.dbg.value(metadata i8 %61, metadata !1048, metadata !DIExpression()), !dbg !1077
  %62 = sext i32 %60 to i64, !dbg !1139
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1139
  %64 = load ptr, ptr %63, align 8, !dbg !1139, !tbaa !828
  %65 = tail call ptr @getpwnam(ptr noundef %64), !dbg !1140
  call void @llvm.dbg.value(metadata ptr %65, metadata !1058, metadata !DIExpression()), !dbg !1141
  %66 = icmp eq ptr %65, null, !dbg !1142
  br i1 %66, label %67, label %74, !dbg !1144

67:                                               ; preds = %59
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !1145
  %69 = load i32, ptr @optind, align 4, !dbg !1145, !tbaa !889
  %70 = sext i32 %69 to i64, !dbg !1145
  %71 = getelementptr inbounds ptr, ptr %1, i64 %70, !dbg !1145
  %72 = load ptr, ptr %71, align 8, !dbg !1145, !tbaa !828
  %73 = tail call ptr @quote(ptr noundef %72) #36, !dbg !1145
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %68, ptr noundef %73) #36, !dbg !1145
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1077
  br label %113, !dbg !1147

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.passwd, ptr %65, i64 0, i32 2, !dbg !1148
  %76 = load i32, ptr %75, align 8, !dbg !1148, !tbaa !1149
  call void @llvm.dbg.value(metadata i32 %76, metadata !1074, metadata !DIExpression()), !dbg !1141
  %77 = getelementptr inbounds %struct.passwd, ptr %65, i64 0, i32 3, !dbg !1151
  %78 = load i32, ptr %77, align 4, !dbg !1151, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %78, metadata !1075, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %78, metadata !1076, metadata !DIExpression()), !dbg !1141
  %79 = load i32, ptr @optind, align 4, !dbg !1153, !tbaa !889
  %80 = sext i32 %79 to i64, !dbg !1153
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80, !dbg !1153
  %82 = load ptr, ptr %81, align 8, !dbg !1153, !tbaa !828
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef %82) #36, !dbg !1153
  %84 = load i32, ptr @optind, align 4, !dbg !1154, !tbaa !889
  %85 = sext i32 %84 to i64, !dbg !1156
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85, !dbg !1156
  %87 = load ptr, ptr %86, align 8, !dbg !1156, !tbaa !828
  %88 = tail call zeroext i1 @print_group_list(ptr noundef %87, i32 noundef %76, i32 noundef %78, i32 noundef %78, i1 noundef zeroext true, i8 noundef signext 32) #36, !dbg !1157
  %89 = select i1 %88, i8 %61, i8 0, !dbg !1158
  call void @llvm.dbg.value(metadata i8 %89, metadata !1048, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1159
  %90 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !828
  %91 = getelementptr inbounds %struct._IO_FILE, ptr %90, i64 0, i32 5, !dbg !1161
  %92 = load ptr, ptr %91, align 8, !dbg !1161, !tbaa !1134
  %93 = getelementptr inbounds %struct._IO_FILE, ptr %90, i64 0, i32 6, !dbg !1161
  %94 = load ptr, ptr %93, align 8, !dbg !1161, !tbaa !1137
  %95 = icmp ult ptr %92, %94, !dbg !1161
  br i1 %95, label %98, label %96, !dbg !1161, !prof !1138

96:                                               ; preds = %74
  %97 = tail call i32 @__overflow(ptr noundef nonnull %90, i32 noundef 10) #36, !dbg !1161
  br label %100, !dbg !1161

98:                                               ; preds = %74
  %99 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !1161
  store ptr %99, ptr %91, align 8, !dbg !1161, !tbaa !1134
  store i8 10, ptr %92, align 1, !dbg !1161, !tbaa !898
  br label %100, !dbg !1161

100:                                              ; preds = %96, %98
  %101 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %101, metadata !1164, metadata !DIExpression()), !dbg !1169
  %102 = load i32, ptr %101, align 8, !dbg !1171, !tbaa !1172
  %103 = and i32 %102, 32, !dbg !1162
  %104 = icmp eq i32 %103, 0, !dbg !1162
  br i1 %104, label %113, label %105, !dbg !1173

105:                                              ; preds = %100
  %106 = tail call ptr @__errno_location() #39, !dbg !1174
  %107 = load i32, ptr %106, align 4, !dbg !1174, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %107, metadata !1177, metadata !DIExpression()), !dbg !1179
  %108 = tail call i32 @fflush_unlocked(ptr noundef nonnull %101) #36, !dbg !1180
  %109 = load ptr, ptr @stdout, align 8, !dbg !1181, !tbaa !828
  %110 = tail call i32 @fpurge(ptr noundef %109) #36, !dbg !1182
  %111 = load ptr, ptr @stdout, align 8, !dbg !1183, !tbaa !828
  tail call void @clearerr_unlocked(ptr noundef %111) #36, !dbg !1183
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #36, !dbg !1184
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %107, ptr noundef %112) #36, !dbg !1184
  unreachable, !dbg !1184

113:                                              ; preds = %100, %67
  %114 = phi i8 [ 0, %67 ], [ %89, %100 ], !dbg !1077
  call void @llvm.dbg.value(metadata i8 %114, metadata !1048, metadata !DIExpression()), !dbg !1077
  %115 = load i32, ptr @optind, align 4, !dbg !1185, !tbaa !889
  %116 = add nsw i32 %115, 1, !dbg !1185
  store i32 %116, ptr @optind, align 4, !dbg !1185, !tbaa !889
  %117 = icmp slt i32 %116, %0, !dbg !1094
  br i1 %117, label %59, label %118, !dbg !1095, !llvm.loop !1186

118:                                              ; preds = %113, %19, %57, %55
  %119 = phi i8 [ %48, %55 ], [ %48, %57 ], [ 1, %19 ], [ %114, %113 ], !dbg !1188
  call void @llvm.dbg.value(metadata i8 %119, metadata !1048, metadata !DIExpression()), !dbg !1077
  %120 = and i8 %119, 1, !dbg !1189
  %121 = icmp eq i8 %120, 0, !dbg !1189
  %122 = zext i1 %121 to i32, !dbg !1189
  ret i32 %122, !dbg !1190
}

; Function Attrs: nounwind
declare !dbg !1191 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1194 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1195 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1198 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1204 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1208 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1212 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1215 i32 @getgid() local_unnamed_addr #2

declare !dbg !1216 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1219 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1222 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1223 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #10 !dbg !1226 {
  %7 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1230, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 %1, metadata !1231, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 %2, metadata !1232, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 %3, metadata !1233, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i1 %4, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %5, metadata !1235, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 1, metadata !1236, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr null, metadata !1237, metadata !DIExpression()), !dbg !1253
  %8 = icmp eq ptr %0, null, !dbg !1254
  br i1 %8, label %13, label %9, !dbg !1256

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #36, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %10, metadata !1237, metadata !DIExpression()), !dbg !1253
  %11 = icmp ne ptr %10, null, !dbg !1259
  %12 = zext i1 %11 to i8, !dbg !1261
  br label %13, !dbg !1261

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1253
  %15 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1253
  call void @llvm.dbg.value(metadata ptr %15, metadata !1237, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %14, metadata !1236, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 %2, metadata !1262, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i1 %4, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1285
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1285
  br i1 %4, label %19, label %16, !dbg !1288

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1289
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1285
  %18 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %17) #36, !dbg !1289
  br label %29, !dbg !1291

19:                                               ; preds = %13
  %20 = tail call ptr @getgrgid(i32 noundef %2) #36, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %20, metadata !1268, metadata !DIExpression()), !dbg !1285
  %21 = icmp eq ptr %20, null, !dbg !1293
  br i1 %21, label %25, label %22, !dbg !1294

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1268, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1285
  %23 = load ptr, ptr %20, align 8, !dbg !1295, !tbaa !1296
  %24 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %23) #36, !dbg !1295
  br label %29, !dbg !1291

25:                                               ; preds = %19
  %26 = zext i32 %2 to i64, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %26, metadata !1278, metadata !DIExpression()), !dbg !1299
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #36, !dbg !1300
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %27, i64 noundef %26) #36, !dbg !1300
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1285
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %26) #36, !dbg !1289
  br label %29

29:                                               ; preds = %22, %16, %25
  %30 = phi i8 [ 0, %25 ], [ %14, %16 ], [ %14, %22 ]
  call void @llvm.dbg.value(metadata i8 %30, metadata !1236, metadata !DIExpression()), !dbg !1253
  %31 = icmp eq i32 %3, %2, !dbg !1301
  br i1 %31, label %58, label %32, !dbg !1303

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1307
  %33 = load ptr, ptr @stdout, align 8, !dbg !1310, !tbaa !828
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1310
  %35 = load ptr, ptr %34, align 8, !dbg !1310, !tbaa !1134
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1310
  %37 = load ptr, ptr %36, align 8, !dbg !1310, !tbaa !1137
  %38 = icmp ult ptr %35, %37, !dbg !1310
  br i1 %38, label %42, label %39, !dbg !1310, !prof !1138

39:                                               ; preds = %32
  %40 = zext i8 %5 to i32, !dbg !1311
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1307
  %41 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %40) #36, !dbg !1310
  br label %44, !dbg !1310

42:                                               ; preds = %32
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1310
  store ptr %43, ptr %34, align 8, !dbg !1310, !tbaa !1134
  store i8 %5, ptr %35, align 1, !dbg !1310, !tbaa !898
  br label %44, !dbg !1310

44:                                               ; preds = %39, %42
  call void @llvm.dbg.value(metadata i32 %3, metadata !1262, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i1 %4, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1312
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1312
  br i1 %4, label %48, label %45, !dbg !1315

45:                                               ; preds = %44
  %46 = zext i32 %3 to i64, !dbg !1316
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1312
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %46) #36, !dbg !1316
  br label %58, !dbg !1317

48:                                               ; preds = %44
  %49 = tail call ptr @getgrgid(i32 noundef %3) #36, !dbg !1318
  call void @llvm.dbg.value(metadata ptr %49, metadata !1268, metadata !DIExpression()), !dbg !1312
  %50 = icmp eq ptr %49, null, !dbg !1319
  br i1 %50, label %54, label %51, !dbg !1320

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata ptr %49, metadata !1268, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1312
  %52 = load ptr, ptr %49, align 8, !dbg !1321, !tbaa !1296
  %53 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %52) #36, !dbg !1321
  br label %58, !dbg !1317

54:                                               ; preds = %48
  %55 = zext i32 %3 to i64, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %55, metadata !1278, metadata !DIExpression()), !dbg !1323
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #36, !dbg !1324
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, i64 noundef %55) #36, !dbg !1324
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1312
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %55) #36, !dbg !1316
  br label %58

58:                                               ; preds = %54, %45, %51, %29
  %59 = phi i8 [ %30, %29 ], [ 0, %54 ], [ %30, %45 ], [ %30, %51 ], !dbg !1253
  call void @llvm.dbg.value(metadata i8 %59, metadata !1236, metadata !DIExpression()), !dbg !1253
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #36, !dbg !1325
  %60 = icmp eq ptr %15, null, !dbg !1326
  br i1 %60, label %64, label %61, !dbg !1326

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.passwd, ptr %15, i64 0, i32 3, !dbg !1327
  %63 = load i32, ptr %62, align 4, !dbg !1327, !tbaa !1152
  br label %64, !dbg !1326

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %3, %58 ], !dbg !1326
  call void @llvm.dbg.value(metadata ptr %7, metadata !1248, metadata !DIExpression(DW_OP_deref)), !dbg !1328
  %66 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %7) #36, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %66, metadata !1250, metadata !DIExpression()), !dbg !1328
  %67 = icmp sgt i32 %66, -1, !dbg !1330
  br i1 %67, label %68, label %73, !dbg !1332

68:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 0, metadata !1251, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i8 %59, metadata !1236, metadata !DIExpression()), !dbg !1253
  %69 = icmp eq i32 %66, 0, !dbg !1334
  br i1 %69, label %81, label %70, !dbg !1336

70:                                               ; preds = %68
  %71 = zext i8 %5 to i32
  %72 = zext i32 %66 to i64, !dbg !1334
  br label %84, !dbg !1336

73:                                               ; preds = %64
  %74 = tail call ptr @__errno_location() #39, !dbg !1337
  %75 = load i32, ptr %74, align 4, !dbg !1337, !tbaa !889
  br i1 %8, label %79, label %76, !dbg !1340

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #36, !dbg !1341
  %78 = call ptr @quote(ptr noundef nonnull %0) #36, !dbg !1341
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %77, ptr noundef %78) #36, !dbg !1341
  br label %125, !dbg !1343

79:                                               ; preds = %73
  %80 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1344
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %80) #36, !dbg !1344
  br label %125

81:                                               ; preds = %121, %68
  %82 = phi i8 [ %59, %68 ], [ %122, %121 ], !dbg !1346
  %83 = load ptr, ptr %7, align 8, !dbg !1347, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %83, metadata !1248, metadata !DIExpression()), !dbg !1328
  call void @free(ptr noundef %83) #36, !dbg !1348
  br label %125, !dbg !1349

84:                                               ; preds = %70, %121
  %85 = phi i64 [ 0, %70 ], [ %123, %121 ]
  %86 = phi i8 [ %59, %70 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !1251, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i8 %86, metadata !1236, metadata !DIExpression()), !dbg !1253
  %87 = load ptr, ptr %7, align 8, !dbg !1350, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %87, metadata !1248, metadata !DIExpression()), !dbg !1328
  %88 = getelementptr inbounds i32, ptr %87, i64 %85, !dbg !1350
  %89 = load i32, ptr %88, align 4, !dbg !1350, !tbaa !889
  %90 = icmp eq i32 %89, %2, !dbg !1352
  %91 = icmp eq i32 %89, %3
  %92 = or i1 %90, %91, !dbg !1353
  br i1 %92, label %121, label %93, !dbg !1353

93:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1354
  %94 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !828
  %95 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 5, !dbg !1357
  %96 = load ptr, ptr %95, align 8, !dbg !1357, !tbaa !1134
  %97 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 6, !dbg !1357
  %98 = load ptr, ptr %97, align 8, !dbg !1357, !tbaa !1137
  %99 = icmp ult ptr %96, %98, !dbg !1357
  br i1 %99, label %102, label %100, !dbg !1357, !prof !1138

100:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1354
  %101 = call i32 @__overflow(ptr noundef nonnull %94, i32 noundef %71) #36, !dbg !1357
  br label %104, !dbg !1357

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1357
  store ptr %103, ptr %95, align 8, !dbg !1357, !tbaa !1134
  store i8 %5, ptr %96, align 1, !dbg !1357, !tbaa !898
  br label %104, !dbg !1357

104:                                              ; preds = %100, %102
  %105 = load ptr, ptr %7, align 8, !dbg !1358, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %105, metadata !1248, metadata !DIExpression()), !dbg !1328
  %106 = getelementptr inbounds i32, ptr %105, i64 %85, !dbg !1358
  %107 = load i32, ptr %106, align 4, !dbg !1358, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %107, metadata !1262, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i1 %4, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1360
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1360
  br i1 %4, label %111, label %108, !dbg !1362

108:                                              ; preds = %104
  %109 = zext i32 %107 to i64, !dbg !1363
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1360
  %110 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %109) #36, !dbg !1363
  br label %121, !dbg !1364

111:                                              ; preds = %104
  %112 = call ptr @getgrgid(i32 noundef %107) #36, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %112, metadata !1268, metadata !DIExpression()), !dbg !1360
  %113 = icmp eq ptr %112, null, !dbg !1366
  br i1 %113, label %117, label %114, !dbg !1367

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %112, metadata !1268, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1360
  %115 = load ptr, ptr %112, align 8, !dbg !1368, !tbaa !1296
  %116 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %115) #36, !dbg !1368
  br label %121, !dbg !1364

117:                                              ; preds = %111
  %118 = zext i32 %107 to i64, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %118, metadata !1278, metadata !DIExpression()), !dbg !1370
  %119 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #36, !dbg !1371
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %119, i64 noundef %118) #36, !dbg !1371
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1360
  %120 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %118) #36, !dbg !1363
  br label %121

121:                                              ; preds = %117, %108, %114, %84
  %122 = phi i8 [ %86, %84 ], [ 0, %117 ], [ %86, %108 ], [ %86, %114 ], !dbg !1253
  call void @llvm.dbg.value(metadata i8 %122, metadata !1236, metadata !DIExpression()), !dbg !1253
  %123 = add nuw nsw i64 %85, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %123, metadata !1251, metadata !DIExpression()), !dbg !1333
  %124 = icmp eq i64 %123, %72, !dbg !1334
  br i1 %124, label %81, label %84, !dbg !1336, !llvm.loop !1373

125:                                              ; preds = %76, %79, %81
  %126 = phi i8 [ %82, %81 ], [ %59, %79 ], [ %59, %76 ], !dbg !1346
  call void @llvm.dbg.value(metadata i8 %126, metadata !1236, metadata !DIExpression()), !dbg !1253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #36, !dbg !1349
  %127 = and i8 %126, 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %67, i1 %128, i1 false
  ret i1 %129, !dbg !1375
}

declare !dbg !1376 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1379 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1382 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #10 !dbg !1263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1262, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i1 %1, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1385
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1385
  br i1 %1, label %5, label %3, !dbg !1386

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1387
  br label %14, !dbg !1386

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #36, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %6, metadata !1268, metadata !DIExpression()), !dbg !1385
  %7 = icmp eq ptr %6, null, !dbg !1389
  br i1 %7, label %8, label %11, !dbg !1390

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %9, metadata !1278, metadata !DIExpression()), !dbg !1392
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #36, !dbg !1393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #36, !dbg !1393
  call void @llvm.dbg.value(metadata i8 0, metadata !1277, metadata !DIExpression()), !dbg !1385
  br label %14, !dbg !1394

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !1268, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1385
  %12 = load ptr, ptr %6, align 8, !dbg !1395, !tbaa !1296
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #36, !dbg !1395
  br label %18, !dbg !1395

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1387
  %16 = xor i1 %1, true, !dbg !1385
  call void @llvm.dbg.value(metadata ptr null, metadata !1268, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1385
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %15) #36, !dbg !1387
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1399, metadata !DIExpression()), !dbg !1400
  store ptr %0, ptr @file_name, align 8, !dbg !1401, !tbaa !828
  ret void, !dbg !1402
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1403 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1409, !tbaa !1410
  ret void, !dbg !1412
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1413 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1418, !tbaa !828
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1419
  %3 = icmp eq i32 %2, 0, !dbg !1420
  br i1 %3, label %22, label %4, !dbg !1421

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1422, !tbaa !1410, !range !1423, !noundef !873
  %6 = icmp eq i8 %5, 0, !dbg !1422
  br i1 %6, label %11, label %7, !dbg !1424

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1425
  %9 = load i32, ptr %8, align 4, !dbg !1425, !tbaa !889
  %10 = icmp eq i32 %9, 32, !dbg !1426
  br i1 %10, label %22, label %11, !dbg !1427

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #36, !dbg !1428
  call void @llvm.dbg.value(metadata ptr %12, metadata !1415, metadata !DIExpression()), !dbg !1429
  %13 = load ptr, ptr @file_name, align 8, !dbg !1430, !tbaa !828
  %14 = icmp eq ptr %13, null, !dbg !1430
  %15 = tail call ptr @__errno_location() #39, !dbg !1432
  %16 = load i32, ptr %15, align 4, !dbg !1432, !tbaa !889
  br i1 %14, label %19, label %17, !dbg !1433

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1434
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #36, !dbg !1434
  br label %20, !dbg !1434

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #36, !dbg !1435
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1436, !tbaa !889
  tail call void @_exit(i32 noundef %21) #38, !dbg !1437
  unreachable, !dbg !1437

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1438, !tbaa !828
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1440
  %25 = icmp eq i32 %24, 0, !dbg !1441
  br i1 %25, label %28, label %26, !dbg !1442

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1443, !tbaa !889
  tail call void @_exit(i32 noundef %27) #38, !dbg !1444
  unreachable, !dbg !1444

28:                                               ; preds = %22
  ret void, !dbg !1445
}

; Function Attrs: noreturn
declare !dbg !1446 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1451, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 %1, metadata !1452, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata ptr %2, metadata !1453, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata ptr %3, metadata !1454, metadata !DIExpression()), !dbg !1455
  tail call fastcc void @flush_stdout(), !dbg !1456
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1457, !tbaa !828
  %6 = icmp eq ptr %5, null, !dbg !1457
  br i1 %6, label %8, label %7, !dbg !1459

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1460
  br label %12, !dbg !1460

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1461, !tbaa !828
  %10 = tail call ptr @getprogname() #37, !dbg !1461
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %10) #36, !dbg !1461
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1463
  ret void, !dbg !1464
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1465 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 1, metadata !1469, metadata !DIExpression()), !dbg !1472
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1475
  %2 = icmp slt i32 %1, 0, !dbg !1476
  br i1 %2, label %6, label %3, !dbg !1477

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1478, !tbaa !828
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1478
  br label %6, !dbg !1478

6:                                                ; preds = %3, %0
  ret void, !dbg !1479
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1480 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1482, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata ptr %2, metadata !1484, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata ptr %3, metadata !1485, metadata !DIExpression()), !dbg !1486
  %6 = load ptr, ptr @stderr, align 8, !dbg !1487, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %6, metadata !1488, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata ptr %2, metadata !1528, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata ptr %3, metadata !1529, metadata !DIExpression()), !dbg !1530
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1532
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1533, !tbaa !889
  %9 = add i32 %8, 1, !dbg !1533
  store i32 %9, ptr @error_message_count, align 4, !dbg !1533, !tbaa !889
  %10 = icmp eq i32 %1, 0, !dbg !1534
  br i1 %10, label %20, label %11, !dbg !1536

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1537, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1547
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1541, metadata !DIExpression()), !dbg !1548
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %12, metadata !1540, metadata !DIExpression()), !dbg !1545
  %13 = icmp eq ptr %12, null, !dbg !1550
  br i1 %13, label %14, label %16, !dbg !1552

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #36, !dbg !1553
  call void @llvm.dbg.value(metadata ptr %15, metadata !1540, metadata !DIExpression()), !dbg !1545
  br label %16, !dbg !1554

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1545
  call void @llvm.dbg.value(metadata ptr %17, metadata !1540, metadata !DIExpression()), !dbg !1545
  %18 = load ptr, ptr @stderr, align 8, !dbg !1555, !tbaa !828
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %17) #36, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1556
  br label %20, !dbg !1557

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1558, !tbaa !828
  call void @llvm.dbg.value(metadata i32 10, metadata !1559, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %21, metadata !1564, metadata !DIExpression()), !dbg !1565
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1567
  %23 = load ptr, ptr %22, align 8, !dbg !1567, !tbaa !1134
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1567
  %25 = load ptr, ptr %24, align 8, !dbg !1567, !tbaa !1137
  %26 = icmp ult ptr %23, %25, !dbg !1567
  br i1 %26, label %29, label %27, !dbg !1567, !prof !1138

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1567
  br label %31, !dbg !1567

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1567
  store ptr %30, ptr %22, align 8, !dbg !1567, !tbaa !1134
  store i8 10, ptr %23, align 1, !dbg !1567, !tbaa !898
  br label %31, !dbg !1567

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1568, !tbaa !828
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1568
  %34 = icmp eq i32 %0, 0, !dbg !1569
  br i1 %34, label %36, label %35, !dbg !1571

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1572
  unreachable, !dbg !1572

36:                                               ; preds = %31
  ret void, !dbg !1573
}

declare !dbg !1574 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1577 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1580 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1584 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1588, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 %1, metadata !1589, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1597
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1591, metadata !DIExpression()), !dbg !1599
  call void @llvm.va_start(ptr nonnull %4), !dbg !1600
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1601
  call void @llvm.va_end(ptr nonnull %4), !dbg !1602
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !375 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !387, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %1, metadata !388, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %3, metadata !390, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %4, metadata !391, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %5, metadata !392, metadata !DIExpression()), !dbg !1604
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
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1618
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
  tail call void %24() #36, !dbg !1628
  br label %31, !dbg !1628

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1629, !tbaa !828
  %29 = tail call ptr @getprogname() #37, !dbg !1629
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %29) #36, !dbg !1629
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1631, !tbaa !828
  %33 = icmp eq ptr %2, null, !dbg !1631
  %34 = select i1 %33, ptr @.str.3.39, ptr @.str.2.40, !dbg !1631
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1631
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1632
  br label %36, !dbg !1633

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1633
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1634 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1638, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %1, metadata !1639, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata ptr %2, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %3, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1645
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1643, metadata !DIExpression()), !dbg !1646
  call void @llvm.va_start(ptr nonnull %6), !dbg !1647
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1648
  call void @llvm.va_end(ptr nonnull %6), !dbg !1649
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1650
  ret void, !dbg !1650
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1651 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1689, metadata !DIExpression()), !dbg !1690
  tail call void @__fpurge(ptr noundef nonnull %0) #36, !dbg !1691
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1704, metadata !DIExpression()), !dbg !1707
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %2, metadata !1705, metadata !DIExpression()), !dbg !1707
  %3 = icmp eq ptr %2, null, !dbg !1709
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1709
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !1707
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
  call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !1707
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.56, i64 noundef 3) #37, !dbg !1727
  %16 = icmp eq i32 %15, 0, !dbg !1730
  %17 = select i1 %16, i64 3, i64 0, !dbg !1731
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1731
  br label %19, !dbg !1731

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1707
  call void @llvm.dbg.value(metadata ptr %21, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %20, metadata !1704, metadata !DIExpression()), !dbg !1707
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
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !429 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !436, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %1, metadata !437, metadata !DIExpression()), !dbg !1737
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1738
  call void @llvm.dbg.value(metadata ptr %5, metadata !438, metadata !DIExpression()), !dbg !1737
  %6 = icmp eq ptr %5, %0, !dbg !1739
  br i1 %6, label %7, label %14, !dbg !1741

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1742
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %4, metadata !444, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata ptr %4, metadata !1745, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata ptr %4, metadata !1754, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 0, metadata !1760, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 8, metadata !1761, metadata !DIExpression()), !dbg !1762
  store i64 0, ptr %4, align 8, !dbg !1764
  call void @llvm.dbg.value(metadata ptr %3, metadata !439, metadata !DIExpression(DW_OP_deref)), !dbg !1737
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1765
  %9 = icmp eq i64 %8, 2, !dbg !1767
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !439, metadata !DIExpression()), !dbg !1737
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1768
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1769
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1769
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1737
  ret ptr %15, !dbg !1769
}

; Function Attrs: nounwind
declare !dbg !1770 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1781, metadata !DIExpression()), !dbg !1784
  %2 = tail call ptr @__errno_location() #39, !dbg !1785
  %3 = load i32, ptr %2, align 4, !dbg !1785, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %3, metadata !1782, metadata !DIExpression()), !dbg !1784
  %4 = icmp eq ptr %0, null, !dbg !1786
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1786
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %6, metadata !1783, metadata !DIExpression()), !dbg !1784
  store i32 %3, ptr %2, align 4, !dbg !1788, !tbaa !889
  ret ptr %6, !dbg !1789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1796, metadata !DIExpression()), !dbg !1797
  %2 = icmp eq ptr %0, null, !dbg !1798
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1798
  %4 = load i32, ptr %3, align 8, !dbg !1799, !tbaa !1800
  ret i32 %4, !dbg !1802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1803 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1807, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i32 %1, metadata !1808, metadata !DIExpression()), !dbg !1809
  %3 = icmp eq ptr %0, null, !dbg !1810
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1810
  store i32 %1, ptr %4, align 8, !dbg !1811, !tbaa !1800
  ret void, !dbg !1812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1813 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1817, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 %1, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 %2, metadata !1819, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 %1, metadata !1820, metadata !DIExpression()), !dbg !1825
  %4 = icmp eq ptr %0, null, !dbg !1826
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1826
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1827
  %7 = lshr i8 %1, 5, !dbg !1828
  %8 = zext i8 %7 to i64, !dbg !1828
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %9, metadata !1821, metadata !DIExpression()), !dbg !1825
  %10 = and i8 %1, 31, !dbg !1830
  %11 = zext i8 %10 to i32, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %11, metadata !1823, metadata !DIExpression()), !dbg !1825
  %12 = load i32, ptr %9, align 4, !dbg !1831, !tbaa !889
  %13 = lshr i32 %12, %11, !dbg !1832
  %14 = and i32 %13, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %14, metadata !1824, metadata !DIExpression()), !dbg !1825
  %15 = xor i32 %13, %2, !dbg !1834
  %16 = and i32 %15, 1, !dbg !1834
  %17 = shl nuw i32 %16, %11, !dbg !1835
  %18 = xor i32 %17, %12, !dbg !1836
  store i32 %18, ptr %9, align 4, !dbg !1836, !tbaa !889
  ret i32 %14, !dbg !1837
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1838 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1842, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %1, metadata !1843, metadata !DIExpression()), !dbg !1845
  %3 = icmp eq ptr %0, null, !dbg !1846
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %4, metadata !1842, metadata !DIExpression()), !dbg !1845
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1849
  %6 = load i32, ptr %5, align 4, !dbg !1849, !tbaa !1850
  call void @llvm.dbg.value(metadata i32 %6, metadata !1844, metadata !DIExpression()), !dbg !1845
  store i32 %1, ptr %5, align 4, !dbg !1851, !tbaa !1850
  ret i32 %6, !dbg !1852
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1853 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1857, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %1, metadata !1858, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %2, metadata !1859, metadata !DIExpression()), !dbg !1860
  %4 = icmp eq ptr %0, null, !dbg !1861
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %5, metadata !1857, metadata !DIExpression()), !dbg !1860
  store i32 10, ptr %5, align 8, !dbg !1864, !tbaa !1800
  %6 = icmp ne ptr %1, null, !dbg !1865
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1867
  br i1 %8, label %10, label %9, !dbg !1867

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1868
  unreachable, !dbg !1868

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1869
  store ptr %1, ptr %11, align 8, !dbg !1870, !tbaa !1871
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1872
  store ptr %2, ptr %12, align 8, !dbg !1873, !tbaa !1874
  ret void, !dbg !1875
}

; Function Attrs: noreturn nounwind
declare !dbg !1876 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1881, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %1, metadata !1882, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %2, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %3, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !1889
  %6 = icmp eq ptr %4, null, !dbg !1890
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %7, metadata !1886, metadata !DIExpression()), !dbg !1889
  %8 = tail call ptr @__errno_location() #39, !dbg !1891
  %9 = load i32, ptr %8, align 4, !dbg !1891, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %9, metadata !1887, metadata !DIExpression()), !dbg !1889
  %10 = load i32, ptr %7, align 8, !dbg !1892, !tbaa !1800
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1893
  %12 = load i32, ptr %11, align 4, !dbg !1893, !tbaa !1850
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1894
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1895
  %15 = load ptr, ptr %14, align 8, !dbg !1895, !tbaa !1871
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1896
  %17 = load ptr, ptr %16, align 8, !dbg !1896, !tbaa !1874
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %18, metadata !1888, metadata !DIExpression()), !dbg !1889
  store i32 %9, ptr %8, align 4, !dbg !1898, !tbaa !889
  ret i64 %18, !dbg !1899
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1900 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1906, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %1, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %2, metadata !1908, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %3, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %4, metadata !1910, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %5, metadata !1911, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %6, metadata !1912, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %7, metadata !1913, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %8, metadata !1914, metadata !DIExpression()), !dbg !1968
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1969
  %17 = icmp eq i64 %16, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i1 %17, metadata !1915, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr null, metadata !1918, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1919, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !1968
  %18 = trunc i32 %5 to i8, !dbg !1971
  %19 = lshr i8 %18, 1, !dbg !1971
  %20 = and i8 %19, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i8 %20, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1923, metadata !DIExpression()), !dbg !1968
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1972

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1973
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1974
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1975
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1976
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1968
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1977
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1978
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %39, metadata !1923, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %38, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %37, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %36, metadata !1920, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %35, metadata !1919, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %34, metadata !1918, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %33, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %32, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %31, metadata !1914, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %30, metadata !1913, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %29, metadata !1910, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.label(metadata !1961), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1968
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
  ], !dbg !1980

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 5, metadata !1910, metadata !DIExpression()), !dbg !1968
  br label %115, !dbg !1981

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 5, metadata !1910, metadata !DIExpression()), !dbg !1968
  %43 = and i8 %37, 1, !dbg !1982
  %44 = icmp eq i8 %43, 0, !dbg !1982
  br i1 %44, label %45, label %115, !dbg !1981

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1984
  br i1 %46, label %115, label %47, !dbg !1987

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1984, !tbaa !898
  br label %115, !dbg !1984

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.69, metadata !542, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %29, metadata !543, metadata !DIExpression()), !dbg !1988
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.11.69, i32 noundef 5) #36, !dbg !1992
  call void @llvm.dbg.value(metadata ptr %49, metadata !544, metadata !DIExpression()), !dbg !1988
  %50 = icmp eq ptr %49, @.str.11.69, !dbg !1993
  br i1 %50, label %51, label %60, !dbg !1995

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1996
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %13, metadata !546, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata ptr %13, metadata !1999, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata ptr %13, metadata !2007, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 8, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i64 0, ptr %13, align 8, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %12, metadata !545, metadata !DIExpression(DW_OP_deref)), !dbg !1988
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2015
  %53 = icmp eq i64 %52, 3, !dbg !2017
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !545, metadata !DIExpression()), !dbg !1988
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2018
  %57 = icmp eq i32 %29, 9, !dbg !2018
  %58 = select i1 %57, ptr @.str.10.71, ptr @.str.12.72, !dbg !2018
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2018
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2019
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1988
  call void @llvm.dbg.value(metadata ptr %61, metadata !1913, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr @.str.12.72, metadata !542, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %29, metadata !543, metadata !DIExpression()), !dbg !2020
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.12.72, i32 noundef 5) #36, !dbg !2022
  call void @llvm.dbg.value(metadata ptr %62, metadata !544, metadata !DIExpression()), !dbg !2020
  %63 = icmp eq ptr %62, @.str.12.72, !dbg !2023
  br i1 %63, label %64, label %73, !dbg !2024

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2025
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %11, metadata !546, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %11, metadata !1999, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata ptr %11, metadata !2007, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i64 8, metadata !2011, metadata !DIExpression()), !dbg !2030
  store i64 0, ptr %11, align 8, !dbg !2032
  call void @llvm.dbg.value(metadata ptr %10, metadata !545, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2033
  %66 = icmp eq i64 %65, 3, !dbg !2034
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !545, metadata !DIExpression()), !dbg !2020
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2035
  %70 = icmp eq i32 %29, 9, !dbg !2035
  %71 = select i1 %70, ptr @.str.10.71, ptr @.str.12.72, !dbg !2035
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2036
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2036
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1914, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %74, metadata !1913, metadata !DIExpression()), !dbg !1968
  %76 = and i8 %37, 1, !dbg !2037
  %77 = icmp eq i8 %76, 0, !dbg !2037
  br i1 %77, label %78, label %93, !dbg !2038

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1925, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1968
  %79 = load i8, ptr %74, align 1, !dbg !2040, !tbaa !898
  %80 = icmp eq i8 %79, 0, !dbg !2042
  br i1 %80, label %93, label %81, !dbg !2042

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1925, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %84, metadata !1916, metadata !DIExpression()), !dbg !1968
  %85 = icmp ult i64 %84, %40, !dbg !2043
  br i1 %85, label %86, label %88, !dbg !2046

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2043
  store i8 %82, ptr %87, align 1, !dbg !2043, !tbaa !898
  br label %88, !dbg !2043

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %89, metadata !1916, metadata !DIExpression()), !dbg !1968
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %90, metadata !1925, metadata !DIExpression()), !dbg !2039
  %91 = load i8, ptr %90, align 1, !dbg !2040, !tbaa !898
  %92 = icmp eq i8 %91, 0, !dbg !2042
  br i1 %92, label %93, label %81, !dbg !2042, !llvm.loop !2048

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2050
  call void @llvm.dbg.value(metadata i64 %94, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %75, metadata !1918, metadata !DIExpression()), !dbg !1968
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %95, metadata !1919, metadata !DIExpression()), !dbg !1968
  br label %115, !dbg !2052

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1920, metadata !DIExpression()), !dbg !1968
  br label %97, !dbg !2053

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %98, metadata !1920, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !1968
  br label %99, !dbg !2054

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1976
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %101, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %100, metadata !1920, metadata !DIExpression()), !dbg !1968
  %102 = and i8 %101, 1, !dbg !2055
  %103 = icmp eq i8 %102, 0, !dbg !2055
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2057
  br label %105, !dbg !2057

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1968
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %107, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %106, metadata !1920, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 2, metadata !1910, metadata !DIExpression()), !dbg !1968
  %108 = and i8 %107, 1, !dbg !2058
  %109 = icmp eq i8 %108, 0, !dbg !2058
  br i1 %109, label %110, label %115, !dbg !2060

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2061
  br i1 %111, label %115, label %112, !dbg !2064

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2061, !tbaa !898
  br label %115, !dbg !2061

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !1968
  br label %115, !dbg !2065

114:                                              ; preds = %28
  call void @abort() #38, !dbg !2066
  unreachable, !dbg !2066

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2050
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.71, %45 ], [ @.str.10.71, %47 ], [ @.str.10.71, %42 ], [ %34, %28 ], [ @.str.12.72, %110 ], [ @.str.12.72, %112 ], [ @.str.12.72, %105 ], [ @.str.10.71, %41 ], !dbg !1968
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1968
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1968
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %123, metadata !1921, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %122, metadata !1920, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %121, metadata !1919, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %120, metadata !1918, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %119, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %118, metadata !1914, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr %117, metadata !1913, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %116, metadata !1910, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1930, metadata !DIExpression()), !dbg !2067
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
  br label %138, !dbg !2068

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2050
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1973
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1977
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1978
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2069
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2070
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %145, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %144, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %143, metadata !1923, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %142, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %141, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %140, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %139, metadata !1909, metadata !DIExpression()), !dbg !1968
  %147 = icmp eq i64 %139, -1, !dbg !2071
  br i1 %147, label %148, label %152, !dbg !2072

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2073
  %150 = load i8, ptr %149, align 1, !dbg !2073, !tbaa !898
  %151 = icmp eq i8 %150, 0, !dbg !2074
  br i1 %151, label %627, label %154, !dbg !2075

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2076
  br i1 %153, label %627, label %154, !dbg !2075

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !1936, metadata !DIExpression()), !dbg !2077
  br i1 %129, label %155, label %170, !dbg !2078

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2080
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2081
  br i1 %157, label %158, label %160, !dbg !2081

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %159, metadata !1909, metadata !DIExpression()), !dbg !1968
  br label %160, !dbg !2083

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2083
  call void @llvm.dbg.value(metadata i64 %161, metadata !1909, metadata !DIExpression()), !dbg !1968
  %162 = icmp ugt i64 %156, %161, !dbg !2084
  br i1 %162, label %170, label %163, !dbg !2085

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2086
  call void @llvm.dbg.value(metadata ptr %164, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %120, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %121, metadata !2091, metadata !DIExpression()), !dbg !2092
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2094
  %166 = icmp ne i32 %165, 0, !dbg !2095
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2096
  %168 = xor i1 %166, true, !dbg !2096
  %169 = zext i1 %168 to i8, !dbg !2096
  br i1 %167, label %170, label %688, !dbg !2096

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2077
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2077
  call void @llvm.dbg.value(metadata i8 %173, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %171, metadata !1909, metadata !DIExpression()), !dbg !1968
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2097
  %175 = load i8, ptr %174, align 1, !dbg !2097, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %175, metadata !1937, metadata !DIExpression()), !dbg !2077
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
  ], !dbg !2098

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2099

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2100

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1935, metadata !DIExpression()), !dbg !2077
  %179 = and i8 %144, 1, !dbg !2104
  %180 = icmp eq i8 %179, 0, !dbg !2104
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2104
  br i1 %181, label %182, label %198, !dbg !2104

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2106
  br i1 %183, label %184, label %186, !dbg !2110

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2106
  store i8 39, ptr %185, align 1, !dbg !2106, !tbaa !898
  br label %186, !dbg !2106

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %187, metadata !1916, metadata !DIExpression()), !dbg !1968
  %188 = icmp ult i64 %187, %146, !dbg !2111
  br i1 %188, label %189, label %191, !dbg !2114

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2111
  store i8 36, ptr %190, align 1, !dbg !2111, !tbaa !898
  br label %191, !dbg !2111

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %192, metadata !1916, metadata !DIExpression()), !dbg !1968
  %193 = icmp ult i64 %192, %146, !dbg !2115
  br i1 %193, label %194, label %196, !dbg !2118

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2115
  store i8 39, ptr %195, align 1, !dbg !2115, !tbaa !898
  br label %196, !dbg !2115

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %197, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %198, !dbg !2119

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1968
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %200, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %199, metadata !1916, metadata !DIExpression()), !dbg !1968
  %201 = icmp ult i64 %199, %146, !dbg !2120
  br i1 %201, label %202, label %204, !dbg !2123

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2120
  store i8 92, ptr %203, align 1, !dbg !2120, !tbaa !898
  br label %204, !dbg !2120

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %205, metadata !1916, metadata !DIExpression()), !dbg !1968
  br i1 %126, label %206, label %491, !dbg !2124

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2126
  %208 = icmp ult i64 %207, %171, !dbg !2127
  br i1 %208, label %209, label %480, !dbg !2128

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2129
  %211 = load i8, ptr %210, align 1, !dbg !2129, !tbaa !898
  %212 = add i8 %211, -48, !dbg !2130
  %213 = icmp ult i8 %212, 10, !dbg !2130
  br i1 %213, label %214, label %480, !dbg !2130

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2131
  br i1 %215, label %216, label %218, !dbg !2135

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2131
  store i8 48, ptr %217, align 1, !dbg !2131, !tbaa !898
  br label %218, !dbg !2131

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %219, metadata !1916, metadata !DIExpression()), !dbg !1968
  %220 = icmp ult i64 %219, %146, !dbg !2136
  br i1 %220, label %221, label %223, !dbg !2139

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2136
  store i8 48, ptr %222, align 1, !dbg !2136, !tbaa !898
  br label %223, !dbg !2136

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %224, metadata !1916, metadata !DIExpression()), !dbg !1968
  br label %480, !dbg !2140

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2141

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2142

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2143

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2145

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2147
  %231 = icmp ult i64 %230, %171, !dbg !2148
  br i1 %231, label %232, label %480, !dbg !2149

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2150
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2151
  %235 = load i8, ptr %234, align 1, !dbg !2151, !tbaa !898
  %236 = icmp eq i8 %235, 63, !dbg !2152
  br i1 %236, label %237, label %480, !dbg !2153

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2154
  %239 = load i8, ptr %238, align 1, !dbg !2154, !tbaa !898
  %240 = sext i8 %239 to i32, !dbg !2154
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
  ], !dbg !2155

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2156

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %230, metadata !1930, metadata !DIExpression()), !dbg !2067
  %243 = icmp ult i64 %140, %146, !dbg !2158
  br i1 %243, label %244, label %246, !dbg !2161

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2158
  store i8 63, ptr %245, align 1, !dbg !2158, !tbaa !898
  br label %246, !dbg !2158

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %247, metadata !1916, metadata !DIExpression()), !dbg !1968
  %248 = icmp ult i64 %247, %146, !dbg !2162
  br i1 %248, label %249, label %251, !dbg !2165

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2162
  store i8 34, ptr %250, align 1, !dbg !2162, !tbaa !898
  br label %251, !dbg !2162

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %252, metadata !1916, metadata !DIExpression()), !dbg !1968
  %253 = icmp ult i64 %252, %146, !dbg !2166
  br i1 %253, label %254, label %256, !dbg !2169

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2166
  store i8 34, ptr %255, align 1, !dbg !2166, !tbaa !898
  br label %256, !dbg !2166

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %257, metadata !1916, metadata !DIExpression()), !dbg !1968
  %258 = icmp ult i64 %257, %146, !dbg !2170
  br i1 %258, label %259, label %261, !dbg !2173

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2170
  store i8 63, ptr %260, align 1, !dbg !2170, !tbaa !898
  br label %261, !dbg !2170

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %262, metadata !1916, metadata !DIExpression()), !dbg !1968
  br label %480, !dbg !2174

263:                                              ; preds = %170
  br label %274, !dbg !2175

264:                                              ; preds = %170
  br label %274, !dbg !2176

265:                                              ; preds = %170
  br label %272, !dbg !2177

266:                                              ; preds = %170
  br label %272, !dbg !2178

267:                                              ; preds = %170
  br label %274, !dbg !2179

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2180

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2181

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2184

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2186

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2187
  call void @llvm.dbg.label(metadata !1962), !dbg !2188
  br i1 %134, label %274, label %670, !dbg !2189

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2187
  call void @llvm.dbg.label(metadata !1964), !dbg !2191
  br i1 %125, label %535, label %491, !dbg !2192

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2193

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2194, !tbaa !898
  %279 = icmp eq i8 %278, 0, !dbg !2196
  br i1 %279, label %280, label %480, !dbg !2197

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2198
  br i1 %281, label %282, label %480, !dbg !2200

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1936, metadata !DIExpression()), !dbg !2077
  br label %283, !dbg !2201

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2077
  call void @llvm.dbg.value(metadata i8 %284, metadata !1936, metadata !DIExpression()), !dbg !2077
  br i1 %134, label %480, label %670, !dbg !2202

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1936, metadata !DIExpression()), !dbg !2077
  br i1 %133, label %286, label %480, !dbg !2204

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2205

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2208
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2210
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2210
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %292, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %291, metadata !1917, metadata !DIExpression()), !dbg !1968
  %293 = icmp ult i64 %140, %292, !dbg !2211
  br i1 %293, label %294, label %296, !dbg !2214

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2211
  store i8 39, ptr %295, align 1, !dbg !2211, !tbaa !898
  br label %296, !dbg !2211

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %297, metadata !1916, metadata !DIExpression()), !dbg !1968
  %298 = icmp ult i64 %297, %292, !dbg !2215
  br i1 %298, label %299, label %301, !dbg !2218

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2215
  store i8 92, ptr %300, align 1, !dbg !2215, !tbaa !898
  br label %301, !dbg !2215

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %302, metadata !1916, metadata !DIExpression()), !dbg !1968
  %303 = icmp ult i64 %302, %292, !dbg !2219
  br i1 %303, label %304, label %306, !dbg !2222

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2219
  store i8 39, ptr %305, align 1, !dbg !2219, !tbaa !898
  br label %306, !dbg !2219

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %307, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %480, !dbg !2223

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2224

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1938, metadata !DIExpression()), !dbg !2225
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2226
  %311 = load ptr, ptr %310, align 8, !dbg !2226, !tbaa !828
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2226
  %314 = load i16, ptr %313, align 2, !dbg !2226, !tbaa !930
  %315 = lshr i16 %314, 14, !dbg !2228
  %316 = trunc i16 %315 to i8, !dbg !2228
  %317 = and i8 %316, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i8 %317, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %171, metadata !1909, metadata !DIExpression()), !dbg !1968
  %318 = icmp eq i8 %317, 0, !dbg !2229
  call void @llvm.dbg.value(metadata i1 %318, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2077
  br label %368, !dbg !2230

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1942, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata ptr %14, metadata !1999, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr %14, metadata !2007, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 8, metadata !2011, metadata !DIExpression()), !dbg !2235
  store i64 0, ptr %14, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2225
  %320 = icmp eq i64 %171, -1, !dbg !2238
  br i1 %320, label %321, label %323, !dbg !2240

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %322, metadata !1909, metadata !DIExpression()), !dbg !1968
  br label %323, !dbg !2242

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2077
  call void @llvm.dbg.value(metadata i64 %324, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2243
  %325 = sub i64 %324, %145, !dbg !2244
  call void @llvm.dbg.value(metadata ptr %15, metadata !1945, metadata !DIExpression(DW_OP_deref)), !dbg !2245
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %326, metadata !1949, metadata !DIExpression()), !dbg !2245
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2247

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !2225
  %328 = icmp ugt i64 %324, %145, !dbg !2248
  br i1 %328, label %331, label %329, !dbg !2250

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %324, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i1 true, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2077
  br label %368, !dbg !2230

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !2225
  br label %360, !dbg !2253

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1938, metadata !DIExpression()), !dbg !2225
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2255
  %335 = load i8, ptr %334, align 1, !dbg !2255, !tbaa !898
  %336 = icmp eq i8 %335, 0, !dbg !2250
  br i1 %336, label %363, label %337, !dbg !2256

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %338, metadata !1938, metadata !DIExpression()), !dbg !2225
  %339 = add i64 %338, %145, !dbg !2258
  %340 = icmp eq i64 %338, %325, !dbg !2248
  br i1 %340, label %363, label %331, !dbg !2250, !llvm.loop !2259

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2260
  %344 = and i1 %343, %133, !dbg !2260
  call void @llvm.dbg.value(metadata i64 1, metadata !1950, metadata !DIExpression()), !dbg !2261
  br i1 %344, label %345, label %354, !dbg !2260

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1950, metadata !DIExpression()), !dbg !2261
  %347 = add i64 %346, %145, !dbg !2262
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2264
  %349 = load i8, ptr %348, align 1, !dbg !2264, !tbaa !898
  %350 = sext i8 %349 to i32, !dbg !2264
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2265

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %352, metadata !1950, metadata !DIExpression()), !dbg !2261
  %353 = icmp eq i64 %352, %326, !dbg !2267
  br i1 %353, label %354, label %345, !dbg !2268, !llvm.loop !2269

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2271, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %355, metadata !1945, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %355, metadata !2273, metadata !DIExpression()), !dbg !2281
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !2283
  %357 = icmp ne i32 %356, 0, !dbg !2284
  %358 = zext i1 %357 to i8, !dbg !2285
  call void @llvm.dbg.value(metadata i8 %358, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %326, metadata !1938, metadata !DIExpression()), !dbg !2225
  br label %363, !dbg !2286

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2252
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 0, metadata !1938, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %324, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i1 %361, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2077
  br label %368, !dbg !2230

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1941, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %364, metadata !1938, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %324, metadata !1909, metadata !DIExpression()), !dbg !1968
  %366 = icmp eq i8 %365, 0, !dbg !2229
  call void @llvm.dbg.value(metadata i1 %366, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2077
  %367 = icmp ugt i64 %364, 1, !dbg !2287
  br i1 %367, label %374, label %368, !dbg !2230

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2288
  br i1 %373, label %374, label %480, !dbg !2288

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %379, metadata !1958, metadata !DIExpression()), !dbg !2290
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2291

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1968
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2069
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2067
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2077
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2292
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2077
  call void @llvm.dbg.value(metadata i8 %387, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %386, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %385, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %384, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %383, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %382, metadata !1916, metadata !DIExpression()), !dbg !1968
  br i1 %380, label %388, label %434, !dbg !2293

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2298

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1935, metadata !DIExpression()), !dbg !2077
  %390 = and i8 %383, 1, !dbg !2301
  %391 = icmp eq i8 %390, 0, !dbg !2301
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2301
  br i1 %392, label %393, label %409, !dbg !2301

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2303
  br i1 %394, label %395, label %397, !dbg !2307

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2303
  store i8 39, ptr %396, align 1, !dbg !2303, !tbaa !898
  br label %397, !dbg !2303

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %398, metadata !1916, metadata !DIExpression()), !dbg !1968
  %399 = icmp ult i64 %398, %146, !dbg !2308
  br i1 %399, label %400, label %402, !dbg !2311

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2308
  store i8 36, ptr %401, align 1, !dbg !2308, !tbaa !898
  br label %402, !dbg !2308

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %403, metadata !1916, metadata !DIExpression()), !dbg !1968
  %404 = icmp ult i64 %403, %146, !dbg !2312
  br i1 %404, label %405, label %407, !dbg !2315

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2312
  store i8 39, ptr %406, align 1, !dbg !2312, !tbaa !898
  br label %407, !dbg !2312

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %408, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %409, !dbg !2316

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1968
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %411, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %410, metadata !1916, metadata !DIExpression()), !dbg !1968
  %412 = icmp ult i64 %410, %146, !dbg !2317
  br i1 %412, label %413, label %415, !dbg !2320

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2317
  store i8 92, ptr %414, align 1, !dbg !2317, !tbaa !898
  br label %415, !dbg !2317

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %416, metadata !1916, metadata !DIExpression()), !dbg !1968
  %417 = icmp ult i64 %416, %146, !dbg !2321
  br i1 %417, label %418, label %422, !dbg !2324

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2321
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2321
  store i8 %420, ptr %421, align 1, !dbg !2321, !tbaa !898
  br label %422, !dbg !2321

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %423, metadata !1916, metadata !DIExpression()), !dbg !1968
  %424 = icmp ult i64 %423, %146, !dbg !2325
  br i1 %424, label %425, label %430, !dbg !2328

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2325
  %428 = or i8 %427, 48, !dbg !2325
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2325
  store i8 %428, ptr %429, align 1, !dbg !2325, !tbaa !898
  br label %430, !dbg !2325

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %431, metadata !1916, metadata !DIExpression()), !dbg !1968
  %432 = and i8 %387, 7, !dbg !2329
  %433 = or i8 %432, 48, !dbg !2330
  call void @llvm.dbg.value(metadata i8 %433, metadata !1937, metadata !DIExpression()), !dbg !2077
  br label %443, !dbg !2331

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2332
  %436 = icmp eq i8 %435, 0, !dbg !2332
  br i1 %436, label %443, label %437, !dbg !2334

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2335
  br i1 %438, label %439, label %441, !dbg !2339

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2335
  store i8 92, ptr %440, align 1, !dbg !2335, !tbaa !898
  br label %441, !dbg !2335

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %442, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !2077
  br label %443, !dbg !2340

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1968
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2069
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2077
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2077
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2077
  call void @llvm.dbg.value(metadata i8 %448, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %447, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %446, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %445, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %444, metadata !1916, metadata !DIExpression()), !dbg !1968
  %449 = add i64 %384, 1, !dbg !2341
  %450 = icmp ugt i64 %379, %449, !dbg !2343
  br i1 %450, label %451, label %478, !dbg !2344

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2345
  %453 = icmp ne i8 %452, 0, !dbg !2345
  %454 = and i8 %447, 1, !dbg !2345
  %455 = icmp eq i8 %454, 0, !dbg !2345
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2345
  br i1 %456, label %457, label %468, !dbg !2345

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2348
  br i1 %458, label %459, label %461, !dbg !2352

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2348
  store i8 39, ptr %460, align 1, !dbg !2348, !tbaa !898
  br label %461, !dbg !2348

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %462, metadata !1916, metadata !DIExpression()), !dbg !1968
  %463 = icmp ult i64 %462, %146, !dbg !2353
  br i1 %463, label %464, label %466, !dbg !2356

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2353
  store i8 39, ptr %465, align 1, !dbg !2353, !tbaa !898
  br label %466, !dbg !2353

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %467, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %468, !dbg !2357

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2358
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %470, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %469, metadata !1916, metadata !DIExpression()), !dbg !1968
  %471 = icmp ult i64 %469, %146, !dbg !2359
  br i1 %471, label %472, label %474, !dbg !2362

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2359
  store i8 %448, ptr %473, align 1, !dbg !2359, !tbaa !898
  br label %474, !dbg !2359

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %475, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %449, metadata !1930, metadata !DIExpression()), !dbg !2067
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2363
  %477 = load i8, ptr %476, align 1, !dbg !2363, !tbaa !898
  call void @llvm.dbg.value(metadata i8 %477, metadata !1937, metadata !DIExpression()), !dbg !2077
  br label %381, !dbg !2364, !llvm.loop !2365

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i8 %448, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %479, metadata !1936, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %447, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %446, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %384, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %445, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %444, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %378, metadata !1909, metadata !DIExpression()), !dbg !1968
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2368
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1968
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1973
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1968
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1968
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2067
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2077
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2077
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2077
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %489, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %488, metadata !1936, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %487, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %173, metadata !1932, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %486, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %485, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %484, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %483, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %482, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %481, metadata !1909, metadata !DIExpression()), !dbg !1968
  br i1 %127, label %502, label %491, !dbg !2369

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
  br i1 %137, label %503, label %524, !dbg !2371

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2372

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
  %514 = lshr i8 %505, 5, !dbg !2373
  %515 = zext i8 %514 to i64, !dbg !2373
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2374
  %517 = load i32, ptr %516, align 4, !dbg !2374, !tbaa !889
  %518 = and i8 %505, 31, !dbg !2375
  %519 = zext i8 %518 to i32, !dbg !2375
  %520 = shl nuw i32 1, %519, !dbg !2376
  %521 = and i32 %517, %520, !dbg !2376
  %522 = icmp eq i32 %521, 0, !dbg !2376
  %523 = and i1 %172, %522, !dbg !2377
  br i1 %523, label %573, label %535, !dbg !2377

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
  br i1 %172, label %573, label %535, !dbg !2378

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2368
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1968
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1973
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1977
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2069
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2379
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2077
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2077
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %543, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %542, metadata !1936, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %541, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %540, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %539, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %538, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %537, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %536, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.label(metadata !1965), !dbg !2380
  br i1 %132, label %545, label %674, !dbg !2381

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1935, metadata !DIExpression()), !dbg !2077
  %546 = and i8 %540, 1, !dbg !2383
  %547 = icmp eq i8 %546, 0, !dbg !2383
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2383
  br i1 %548, label %549, label %565, !dbg !2383

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2385
  br i1 %550, label %551, label %553, !dbg !2389

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2385
  store i8 39, ptr %552, align 1, !dbg !2385, !tbaa !898
  br label %553, !dbg !2385

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %554, metadata !1916, metadata !DIExpression()), !dbg !1968
  %555 = icmp ult i64 %554, %544, !dbg !2390
  br i1 %555, label %556, label %558, !dbg !2393

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2390
  store i8 36, ptr %557, align 1, !dbg !2390, !tbaa !898
  br label %558, !dbg !2390

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %559, metadata !1916, metadata !DIExpression()), !dbg !1968
  %560 = icmp ult i64 %559, %544, !dbg !2394
  br i1 %560, label %561, label %563, !dbg !2397

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2394
  store i8 39, ptr %562, align 1, !dbg !2394, !tbaa !898
  br label %563, !dbg !2394

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %564, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %565, !dbg !2398

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2077
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %567, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %566, metadata !1916, metadata !DIExpression()), !dbg !1968
  %568 = icmp ult i64 %566, %544, !dbg !2399
  br i1 %568, label %569, label %571, !dbg !2402

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2399
  store i8 92, ptr %570, align 1, !dbg !2399, !tbaa !898
  br label %571, !dbg !2399

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %544, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %543, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %542, metadata !1936, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 1, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %541, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %567, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %539, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %538, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %572, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %536, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.label(metadata !1966), !dbg !2403
  br label %600, !dbg !2404

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2368
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1968
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1973
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1977
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2069
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2379
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2077
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2077
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2407
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %582, metadata !1937, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %581, metadata !1936, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %580, metadata !1935, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i64 %579, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %578, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %577, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %576, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %575, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %574, metadata !1909, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.label(metadata !1966), !dbg !2403
  %584 = and i8 %578, 1, !dbg !2404
  %585 = icmp ne i8 %584, 0, !dbg !2404
  %586 = and i8 %580, 1, !dbg !2404
  %587 = icmp eq i8 %586, 0, !dbg !2404
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2404
  br i1 %588, label %589, label %600, !dbg !2404

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2408
  br i1 %590, label %591, label %593, !dbg !2412

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2408
  store i8 39, ptr %592, align 1, !dbg !2408, !tbaa !898
  br label %593, !dbg !2408

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %594, metadata !1916, metadata !DIExpression()), !dbg !1968
  %595 = icmp ult i64 %594, %583, !dbg !2413
  br i1 %595, label %596, label %598, !dbg !2416

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2413
  store i8 39, ptr %597, align 1, !dbg !2413, !tbaa !898
  br label %598, !dbg !2413

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %599, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1968
  br label %600, !dbg !2417

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2077
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1968
  call void @llvm.dbg.value(metadata i8 %609, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %608, metadata !1916, metadata !DIExpression()), !dbg !1968
  %610 = icmp ult i64 %608, %601, !dbg !2418
  br i1 %610, label %611, label %613, !dbg !2421

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2418
  store i8 %602, ptr %612, align 1, !dbg !2418, !tbaa !898
  br label %613, !dbg !2418

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %614, metadata !1916, metadata !DIExpression()), !dbg !1968
  %615 = icmp eq i8 %603, 0, !dbg !2422
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2424
  call void @llvm.dbg.value(metadata i8 %616, metadata !1923, metadata !DIExpression()), !dbg !1968
  br label %617, !dbg !2425

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2368
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1968
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1973
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1977
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1978
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2069
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2379
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %624, metadata !1930, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %623, metadata !1924, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %622, metadata !1923, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %621, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %620, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %619, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %618, metadata !1909, metadata !DIExpression()), !dbg !1968
  %626 = add i64 %624, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %626, metadata !1930, metadata !DIExpression()), !dbg !2067
  br label %138, !dbg !2427, !llvm.loop !2428

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1907, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %143, metadata !1923, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %142, metadata !1922, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %141, metadata !1917, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %140, metadata !1916, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %139, metadata !1909, metadata !DIExpression()), !dbg !1968
  %628 = icmp eq i64 %140, 0, !dbg !2430
  %629 = and i1 %133, %628, !dbg !2432
  %630 = xor i1 %629, true, !dbg !2432
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2432
  br i1 %631, label %632, label %670, !dbg !2432

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2433
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2433
  br i1 %636, label %637, label %646, !dbg !2433

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2435
  %639 = icmp eq i8 %638, 0, !dbg !2435
  br i1 %639, label %642, label %640, !dbg !2438

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2439
  br label %694, !dbg !2440

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2441
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2443
  br i1 %645, label %28, label %646, !dbg !2443

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2444
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2446
  br i1 %649, label %650, label %665, !dbg !2446

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1918, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %140, metadata !1916, metadata !DIExpression()), !dbg !1968
  %651 = load i8, ptr %120, align 1, !dbg !2447, !tbaa !898
  %652 = icmp eq i8 %651, 0, !dbg !2450
  br i1 %652, label %665, label %653, !dbg !2450

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1918, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %656, metadata !1916, metadata !DIExpression()), !dbg !1968
  %657 = icmp ult i64 %656, %146, !dbg !2451
  br i1 %657, label %658, label %660, !dbg !2454

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2451
  store i8 %654, ptr %659, align 1, !dbg !2451, !tbaa !898
  br label %660, !dbg !2451

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %661, metadata !1916, metadata !DIExpression()), !dbg !1968
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %662, metadata !1918, metadata !DIExpression()), !dbg !1968
  %663 = load i8, ptr %662, align 1, !dbg !2447, !tbaa !898
  %664 = icmp eq i8 %663, 0, !dbg !2450
  br i1 %664, label %665, label %653, !dbg !2450, !llvm.loop !2456

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2050
  call void @llvm.dbg.value(metadata i64 %666, metadata !1916, metadata !DIExpression()), !dbg !1968
  %667 = icmp ult i64 %666, %146, !dbg !2458
  br i1 %667, label %668, label %694, !dbg !2460

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2461
  store i8 0, ptr %669, align 1, !dbg !2462, !tbaa !898
  br label %694, !dbg !2461

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1967), !dbg !2463
  %672 = icmp eq i8 %124, 0, !dbg !2464
  %673 = select i1 %672, i32 2, i32 4, !dbg !2464
  br label %684, !dbg !2464

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2464
  %678 = select i1 %677, i32 2, i32 4, !dbg !2464
  br label %679, !dbg !2466

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1967), !dbg !2463
  %683 = icmp eq i32 %116, 2, !dbg !2466
  br i1 %683, label %684, label %688, !dbg !2464

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2464

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1910, metadata !DIExpression()), !dbg !1968
  %692 = and i32 %5, -3, !dbg !2467
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2468
  br label %694, !dbg !2469

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2470
}

; Function Attrs: nounwind
declare !dbg !2471 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2474 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2477 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2479 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %1, metadata !2484, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %2, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %0, metadata !2487, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %1, metadata !2492, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr null, metadata !2493, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr %2, metadata !2494, metadata !DIExpression()), !dbg !2500
  %4 = icmp eq ptr %2, null, !dbg !2502
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %5, metadata !2495, metadata !DIExpression()), !dbg !2500
  %6 = tail call ptr @__errno_location() #39, !dbg !2503
  %7 = load i32, ptr %6, align 4, !dbg !2503, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %7, metadata !2496, metadata !DIExpression()), !dbg !2500
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2504
  %9 = load i32, ptr %8, align 4, !dbg !2504, !tbaa !1850
  %10 = or i32 %9, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %10, metadata !2497, metadata !DIExpression()), !dbg !2500
  %11 = load i32, ptr %5, align 8, !dbg !2506, !tbaa !1800
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2507
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2508
  %14 = load ptr, ptr %13, align 8, !dbg !2508, !tbaa !1871
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2509
  %16 = load ptr, ptr %15, align 8, !dbg !2509, !tbaa !1874
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2510
  %18 = add i64 %17, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %18, metadata !2498, metadata !DIExpression()), !dbg !2500
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %19, metadata !2499, metadata !DIExpression()), !dbg !2500
  %20 = load i32, ptr %5, align 8, !dbg !2513, !tbaa !1800
  %21 = load ptr, ptr %13, align 8, !dbg !2514, !tbaa !1871
  %22 = load ptr, ptr %15, align 8, !dbg !2515, !tbaa !1874
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2516
  store i32 %7, ptr %6, align 4, !dbg !2517, !tbaa !889
  ret ptr %19, !dbg !2518
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2487, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %1, metadata !2492, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata ptr %2, metadata !2493, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata ptr %3, metadata !2494, metadata !DIExpression()), !dbg !2519
  %5 = icmp eq ptr %3, null, !dbg !2520
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %6, metadata !2495, metadata !DIExpression()), !dbg !2519
  %7 = tail call ptr @__errno_location() #39, !dbg !2521
  %8 = load i32, ptr %7, align 4, !dbg !2521, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %8, metadata !2496, metadata !DIExpression()), !dbg !2519
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2522
  %10 = load i32, ptr %9, align 4, !dbg !2522, !tbaa !1850
  %11 = icmp eq ptr %2, null, !dbg !2523
  %12 = zext i1 %11 to i32, !dbg !2523
  %13 = or i32 %10, %12, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %13, metadata !2497, metadata !DIExpression()), !dbg !2519
  %14 = load i32, ptr %6, align 8, !dbg !2525, !tbaa !1800
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2526
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2527
  %17 = load ptr, ptr %16, align 8, !dbg !2527, !tbaa !1871
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2528
  %19 = load ptr, ptr %18, align 8, !dbg !2528, !tbaa !1874
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2529
  %21 = add i64 %20, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %21, metadata !2498, metadata !DIExpression()), !dbg !2519
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %22, metadata !2499, metadata !DIExpression()), !dbg !2519
  %23 = load i32, ptr %6, align 8, !dbg !2532, !tbaa !1800
  %24 = load ptr, ptr %16, align 8, !dbg !2533, !tbaa !1871
  %25 = load ptr, ptr %18, align 8, !dbg !2534, !tbaa !1874
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2535
  store i32 %8, ptr %7, align 4, !dbg !2536, !tbaa !889
  br i1 %11, label %28, label %27, !dbg !2537

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2538, !tbaa !2540
  br label %28, !dbg !2541

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2543 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2548, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !2550
  %2 = load i32, ptr @nslots, align 4, !tbaa !889
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !2550
  %3 = icmp sgt i32 %2, 1, !dbg !2551
  br i1 %3, label %4, label %6, !dbg !2553

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2551
  br label %10, !dbg !2553

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2554
  %8 = load ptr, ptr %7, align 8, !dbg !2554, !tbaa !2556
  %9 = icmp eq ptr %8, @slot0, !dbg !2558
  br i1 %9, label %17, label %16, !dbg !2559

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2546, metadata !DIExpression()), !dbg !2550
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2560
  %13 = load ptr, ptr %12, align 8, !dbg !2560, !tbaa !2556
  tail call void @free(ptr noundef %13) #36, !dbg !2561
  %14 = add nuw nsw i64 %11, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %14, metadata !2546, metadata !DIExpression()), !dbg !2550
  %15 = icmp eq i64 %14, %5, !dbg !2551
  br i1 %15, label %6, label %10, !dbg !2553, !llvm.loop !2563

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2565
  store i64 256, ptr @slotvec0, align 8, !dbg !2567, !tbaa !2568
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2569, !tbaa !2556
  br label %17, !dbg !2570

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2571
  br i1 %18, label %20, label %19, !dbg !2573

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2574
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2576, !tbaa !828
  br label %20, !dbg !2577

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2578, !tbaa !889
  ret void, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2580 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2585
  ret ptr %3, !dbg !2586
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2587 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %1, metadata !2592, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %2, metadata !2593, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %3, metadata !2594, metadata !DIExpression()), !dbg !2607
  %6 = tail call ptr @__errno_location() #39, !dbg !2608
  %7 = load i32, ptr %6, align 4, !dbg !2608, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %7, metadata !2595, metadata !DIExpression()), !dbg !2607
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2609, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %8, metadata !2596, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2597, metadata !DIExpression()), !dbg !2607
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2610
  br i1 %9, label %10, label %11, !dbg !2610

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2612
  unreachable, !dbg !2612

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2613, !tbaa !889
  %13 = icmp sgt i32 %12, %0, !dbg !2614
  br i1 %13, label %32, label %14, !dbg !2615

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2616
  call void @llvm.dbg.value(metadata i1 %15, metadata !2598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2618
  %16 = sext i32 %12 to i64, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %16, metadata !2601, metadata !DIExpression()), !dbg !2617
  store i64 %16, ptr %5, align 8, !dbg !2620, !tbaa !2540
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2621
  %18 = add nuw nsw i32 %0, 1, !dbg !2622
  %19 = sub i32 %18, %12, !dbg !2623
  %20 = sext i32 %19 to i64, !dbg !2624
  call void @llvm.dbg.value(metadata ptr %5, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2617
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %21, metadata !2596, metadata !DIExpression()), !dbg !2607
  store ptr %21, ptr @slotvec, align 8, !dbg !2626, !tbaa !828
  br i1 %15, label %22, label %23, !dbg !2627

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2628, !tbaa.struct !2630
  br label %23, !dbg !2631

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2632, !tbaa !889
  %25 = sext i32 %24 to i64, !dbg !2633
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2633
  %27 = load i64, ptr %5, align 8, !dbg !2634, !tbaa !2540
  call void @llvm.dbg.value(metadata i64 %27, metadata !2601, metadata !DIExpression()), !dbg !2617
  %28 = sub nsw i64 %27, %25, !dbg !2635
  %29 = shl i64 %28, 4, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %26, metadata !2007, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %29, metadata !2011, metadata !DIExpression()), !dbg !2637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2639
  %30 = load i64, ptr %5, align 8, !dbg !2640, !tbaa !2540
  call void @llvm.dbg.value(metadata i64 %30, metadata !2601, metadata !DIExpression()), !dbg !2617
  %31 = trunc i64 %30 to i32, !dbg !2640
  store i32 %31, ptr @nslots, align 4, !dbg !2641, !tbaa !889
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2642
  br label %32, !dbg !2643

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2607
  call void @llvm.dbg.value(metadata ptr %33, metadata !2596, metadata !DIExpression()), !dbg !2607
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2644
  %36 = load i64, ptr %35, align 8, !dbg !2645, !tbaa !2568
  call void @llvm.dbg.value(metadata i64 %36, metadata !2602, metadata !DIExpression()), !dbg !2646
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2647
  %38 = load ptr, ptr %37, align 8, !dbg !2647, !tbaa !2556
  call void @llvm.dbg.value(metadata ptr %38, metadata !2604, metadata !DIExpression()), !dbg !2646
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2648
  %40 = load i32, ptr %39, align 4, !dbg !2648, !tbaa !1850
  %41 = or i32 %40, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %41, metadata !2605, metadata !DIExpression()), !dbg !2646
  %42 = load i32, ptr %3, align 8, !dbg !2650, !tbaa !1800
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2651
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2652
  %45 = load ptr, ptr %44, align 8, !dbg !2652, !tbaa !1871
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2653
  %47 = load ptr, ptr %46, align 8, !dbg !2653, !tbaa !1874
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %48, metadata !2606, metadata !DIExpression()), !dbg !2646
  %49 = icmp ugt i64 %36, %48, !dbg !2655
  br i1 %49, label %60, label %50, !dbg !2657

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %51, metadata !2602, metadata !DIExpression()), !dbg !2646
  store i64 %51, ptr %35, align 8, !dbg !2660, !tbaa !2568
  %52 = icmp eq ptr %38, @slot0, !dbg !2661
  br i1 %52, label %54, label %53, !dbg !2663

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2664
  br label %54, !dbg !2664

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %55, metadata !2604, metadata !DIExpression()), !dbg !2646
  store ptr %55, ptr %37, align 8, !dbg !2666, !tbaa !2556
  %56 = load i32, ptr %3, align 8, !dbg !2667, !tbaa !1800
  %57 = load ptr, ptr %44, align 8, !dbg !2668, !tbaa !1871
  %58 = load ptr, ptr %46, align 8, !dbg !2669, !tbaa !1874
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2670
  br label %60, !dbg !2671

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2646
  call void @llvm.dbg.value(metadata ptr %61, metadata !2604, metadata !DIExpression()), !dbg !2646
  store i32 %7, ptr %6, align 4, !dbg !2672, !tbaa !889
  ret ptr %61, !dbg !2673
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %2, metadata !2680, metadata !DIExpression()), !dbg !2681
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2682
  ret ptr %4, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2684 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 0, metadata !2582, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !2688
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2690
  ret ptr %2, !dbg !2691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2678, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()), !dbg !2699
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2701
  ret ptr %3, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2703 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %2, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2710, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2723, metadata !DIExpression()), !dbg !2726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2726, !alias.scope !2714
  %5 = icmp eq i32 %1, 10, !dbg !2727
  br i1 %5, label %6, label %7, !dbg !2729

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2730, !noalias !2714
  unreachable, !dbg !2730

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2731, !tbaa !1800, !alias.scope !2714
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2732
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2733
  ret ptr %8, !dbg !2734
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2735 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2739, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 %1, metadata !2740, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2745
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2743, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2723, metadata !DIExpression()), !dbg !2753
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2753, !alias.scope !2747
  %6 = icmp eq i32 %1, 10, !dbg !2754
  br i1 %6, label %7, label %8, !dbg !2755

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2756, !noalias !2747
  unreachable, !dbg !2756

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2757, !tbaa !1800, !alias.scope !2747
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2758
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2759
  ret ptr %9, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2761 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %1, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %1, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2770
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2710, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2723, metadata !DIExpression()), !dbg !2778
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2778, !alias.scope !2772
  %4 = icmp eq i32 %0, 10, !dbg !2779
  br i1 %4, label %5, label %6, !dbg !2780

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2781, !noalias !2772
  unreachable, !dbg !2781

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2782, !tbaa !1800, !alias.scope !2772
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2783
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2784
  ret ptr %7, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2786 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %2, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 0, metadata !2739, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %0, metadata !2740, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !2741, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %2, metadata !2742, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2743, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2723, metadata !DIExpression()), !dbg !2804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2804, !alias.scope !2798
  %5 = icmp eq i32 %0, 10, !dbg !2805
  br i1 %5, label %6, label %7, !dbg !2806

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2807, !noalias !2798
  unreachable, !dbg !2807

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2808, !tbaa !1800, !alias.scope !2798
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2809
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2810
  ret ptr %8, !dbg !2811
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2812 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2816, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %1, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 %2, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2823, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %4, metadata !1817, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %2, metadata !1818, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 1, metadata !1819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %2, metadata !1820, metadata !DIExpression()), !dbg !2825
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2827
  %6 = lshr i8 %2, 5, !dbg !2828
  %7 = zext i8 %6 to i64, !dbg !2828
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %8, metadata !1821, metadata !DIExpression()), !dbg !2825
  %9 = and i8 %2, 31, !dbg !2830
  %10 = zext i8 %9 to i32, !dbg !2830
  call void @llvm.dbg.value(metadata i32 %10, metadata !1823, metadata !DIExpression()), !dbg !2825
  %11 = load i32, ptr %8, align 4, !dbg !2831, !tbaa !889
  %12 = lshr i32 %11, %10, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %12, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2825
  %13 = and i32 %12, 1, !dbg !2833
  %14 = xor i32 %13, 1, !dbg !2833
  %15 = shl nuw i32 %14, %10, !dbg !2834
  %16 = xor i32 %15, %11, !dbg !2835
  store i32 %16, ptr %8, align 4, !dbg !2835, !tbaa !889
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2837
  ret ptr %17, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2839 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %1, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata ptr %0, metadata !2816, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 -1, metadata !2817, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %1, metadata !2818, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2819, metadata !DIExpression()), !dbg !2849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2850, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %3, metadata !1817, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %1, metadata !1818, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 1, metadata !1819, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %1, metadata !1820, metadata !DIExpression()), !dbg !2851
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2853
  %5 = lshr i8 %1, 5, !dbg !2854
  %6 = zext i8 %5 to i64, !dbg !2854
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2855
  call void @llvm.dbg.value(metadata ptr %7, metadata !1821, metadata !DIExpression()), !dbg !2851
  %8 = and i8 %1, 31, !dbg !2856
  %9 = zext i8 %8 to i32, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %9, metadata !1823, metadata !DIExpression()), !dbg !2851
  %10 = load i32, ptr %7, align 4, !dbg !2857, !tbaa !889
  %11 = lshr i32 %10, %9, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %11, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2851
  %12 = and i32 %11, 1, !dbg !2859
  %13 = xor i32 %12, 1, !dbg !2859
  %14 = shl nuw i32 %13, %9, !dbg !2860
  %15 = xor i32 %14, %10, !dbg !2861
  store i32 %15, ptr %7, align 4, !dbg !2861, !tbaa !889
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2863
  ret ptr %16, !dbg !2864
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2865 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 58, metadata !2844, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %0, metadata !2816, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 -1, metadata !2817, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 58, metadata !2818, metadata !DIExpression()), !dbg !2871
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2873
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2819, metadata !DIExpression()), !dbg !2874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2875, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %2, metadata !1817, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 58, metadata !1818, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 1, metadata !1819, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 58, metadata !1820, metadata !DIExpression()), !dbg !2876
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %3, metadata !1821, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 26, metadata !1823, metadata !DIExpression()), !dbg !2876
  %4 = load i32, ptr %3, align 4, !dbg !2879, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %4, metadata !1824, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2876
  %5 = or i32 %4, 67108864, !dbg !2880
  store i32 %5, ptr %3, align 4, !dbg !2880, !tbaa !889
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2881
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2882
  ret ptr %6, !dbg !2883
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2884 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %1, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %0, metadata !2816, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %1, metadata !2817, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 58, metadata !2818, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2819, metadata !DIExpression()), !dbg !2892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2893, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %3, metadata !1817, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 58, metadata !1818, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 1, metadata !1819, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 58, metadata !1820, metadata !DIExpression()), !dbg !2894
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %4, metadata !1821, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 26, metadata !1823, metadata !DIExpression()), !dbg !2894
  %5 = load i32, ptr %4, align 4, !dbg !2897, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %5, metadata !1824, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2894
  %6 = or i32 %5, 67108864, !dbg !2898
  store i32 %6, ptr %4, align 4, !dbg !2898, !tbaa !889
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2899
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2900
  ret ptr %7, !dbg !2901
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2902 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2723, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2908
  call void @llvm.dbg.value(metadata i32 %0, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %1, metadata !2905, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %2, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2907, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2913
  %5 = icmp eq i32 %1, 10, !dbg !2914
  br i1 %5, label %6, label %7, !dbg !2915

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2916, !noalias !2917
  unreachable, !dbg !2916

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2723, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2913
  store i32 %1, ptr %4, align 8, !dbg !2920, !tbaa.struct !2824
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2920
  call void @llvm.dbg.value(metadata ptr %4, metadata !1817, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 58, metadata !1818, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 1, metadata !1819, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 58, metadata !1820, metadata !DIExpression()), !dbg !2921
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2923
  call void @llvm.dbg.value(metadata ptr %9, metadata !1821, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 26, metadata !1823, metadata !DIExpression()), !dbg !2921
  %10 = load i32, ptr %9, align 4, !dbg !2924, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %10, metadata !1824, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2921
  %11 = or i32 %10, 67108864, !dbg !2925
  store i32 %11, ptr %9, align 4, !dbg !2925, !tbaa !889
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2926
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2927
  ret ptr %12, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2929 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %1, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %3, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %1, metadata !2943, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %3, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 -1, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2950
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2947, metadata !DIExpression()), !dbg !2951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2952, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %5, metadata !1857, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %1, metadata !1858, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %2, metadata !1859, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %5, metadata !1857, metadata !DIExpression()), !dbg !2953
  store i32 10, ptr %5, align 8, !dbg !2955, !tbaa !1800
  %6 = icmp ne ptr %1, null, !dbg !2956
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2957
  br i1 %8, label %10, label %9, !dbg !2957

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2958
  unreachable, !dbg !2958

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2959
  store ptr %1, ptr %11, align 8, !dbg !2960, !tbaa !1871
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2961
  store ptr %2, ptr %12, align 8, !dbg !2962, !tbaa !1874
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2963
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2964
  ret ptr %13, !dbg !2965
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2939 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %1, metadata !2943, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %3, metadata !2945, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %4, metadata !2946, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2947, metadata !DIExpression()), !dbg !2968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2969, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %6, metadata !1857, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %1, metadata !1858, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %2, metadata !1859, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %6, metadata !1857, metadata !DIExpression()), !dbg !2970
  store i32 10, ptr %6, align 8, !dbg !2972, !tbaa !1800
  %7 = icmp ne ptr %1, null, !dbg !2973
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2974
  br i1 %9, label %11, label %10, !dbg !2974

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2975
  unreachable, !dbg !2975

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2976
  store ptr %1, ptr %12, align 8, !dbg !2977, !tbaa !1871
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2978
  store ptr %2, ptr %13, align 8, !dbg !2979, !tbaa !1874
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2980
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2981
  ret ptr %14, !dbg !2982
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2983 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %0, metadata !2934, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !2935, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !2936, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 0, metadata !2938, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %0, metadata !2943, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2945, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 -1, metadata !2946, metadata !DIExpression()), !dbg !2993
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2995
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2997, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %4, metadata !1857, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %1, metadata !1859, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %4, metadata !1857, metadata !DIExpression()), !dbg !2998
  store i32 10, ptr %4, align 8, !dbg !3000, !tbaa !1800
  %5 = icmp ne ptr %0, null, !dbg !3001
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3002
  br i1 %7, label %9, label %8, !dbg !3002

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3003
  unreachable, !dbg !3003

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3004
  store ptr %0, ptr %10, align 8, !dbg !3005, !tbaa !1871
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3006
  store ptr %1, ptr %11, align 8, !dbg !3007, !tbaa !1874
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3008
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3009
  ret ptr %12, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3011 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %1, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %2, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %3, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !2938, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %0, metadata !2943, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %2, metadata !2945, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %3, metadata !2946, metadata !DIExpression()), !dbg !3020
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2947, metadata !DIExpression()), !dbg !3023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3024, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata ptr %5, metadata !1857, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %1, metadata !1859, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %5, metadata !1857, metadata !DIExpression()), !dbg !3025
  store i32 10, ptr %5, align 8, !dbg !3027, !tbaa !1800
  %6 = icmp ne ptr %0, null, !dbg !3028
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3029
  br i1 %8, label %10, label %9, !dbg !3029

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3030
  unreachable, !dbg !3030

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3031
  store ptr %0, ptr %11, align 8, !dbg !3032, !tbaa !1871
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3033
  store ptr %1, ptr %12, align 8, !dbg !3034, !tbaa !1874
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3035
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3036
  ret ptr %13, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3046
  ret ptr %4, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3048 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3055
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3057
  ret ptr %3, !dbg !3058
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %1, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 -1, metadata !3044, metadata !DIExpression()), !dbg !3066
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3068
  ret ptr %3, !dbg !3069
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3070 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 -1, metadata !3044, metadata !DIExpression()), !dbg !3078
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3080
  ret ptr %2, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3082 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %1, metadata !3122, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %3, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %4, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %5, metadata !3126, metadata !DIExpression()), !dbg !3127
  %7 = icmp eq ptr %1, null, !dbg !3128
  br i1 %7, label %10, label %8, !dbg !3130

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3131
  br label %12, !dbg !3131

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %2, ptr noundef %3) #36, !dbg !3132
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.3.80, i32 noundef 5) #36, !dbg !3133
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3133
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3134
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.5.82, i32 noundef 5) #36, !dbg !3135
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.83) #36, !dbg !3135
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3136
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
  ], !dbg !3137

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.7.84, i32 noundef 5) #36, !dbg !3138
  %21 = load ptr, ptr %4, align 8, !dbg !3138, !tbaa !828
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3138
  br label %147, !dbg !3140

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.8.85, i32 noundef 5) #36, !dbg !3141
  %25 = load ptr, ptr %4, align 8, !dbg !3141, !tbaa !828
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3141
  %27 = load ptr, ptr %26, align 8, !dbg !3141, !tbaa !828
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3141
  br label %147, !dbg !3142

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.9.86, i32 noundef 5) #36, !dbg !3143
  %31 = load ptr, ptr %4, align 8, !dbg !3143, !tbaa !828
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3143
  %33 = load ptr, ptr %32, align 8, !dbg !3143, !tbaa !828
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3143
  %35 = load ptr, ptr %34, align 8, !dbg !3143, !tbaa !828
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3143
  br label %147, !dbg !3144

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.10.87, i32 noundef 5) #36, !dbg !3145
  %39 = load ptr, ptr %4, align 8, !dbg !3145, !tbaa !828
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3145
  %41 = load ptr, ptr %40, align 8, !dbg !3145, !tbaa !828
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3145
  %43 = load ptr, ptr %42, align 8, !dbg !3145, !tbaa !828
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3145
  %45 = load ptr, ptr %44, align 8, !dbg !3145, !tbaa !828
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3145
  br label %147, !dbg !3146

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.11.88, i32 noundef 5) #36, !dbg !3147
  %49 = load ptr, ptr %4, align 8, !dbg !3147, !tbaa !828
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3147
  %51 = load ptr, ptr %50, align 8, !dbg !3147, !tbaa !828
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3147
  %53 = load ptr, ptr %52, align 8, !dbg !3147, !tbaa !828
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3147
  %55 = load ptr, ptr %54, align 8, !dbg !3147, !tbaa !828
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3147
  %57 = load ptr, ptr %56, align 8, !dbg !3147, !tbaa !828
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3147
  br label %147, !dbg !3148

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.12.89, i32 noundef 5) #36, !dbg !3149
  %61 = load ptr, ptr %4, align 8, !dbg !3149, !tbaa !828
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3149
  %63 = load ptr, ptr %62, align 8, !dbg !3149, !tbaa !828
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3149
  %65 = load ptr, ptr %64, align 8, !dbg !3149, !tbaa !828
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3149
  %67 = load ptr, ptr %66, align 8, !dbg !3149, !tbaa !828
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3149
  %69 = load ptr, ptr %68, align 8, !dbg !3149, !tbaa !828
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3149
  %71 = load ptr, ptr %70, align 8, !dbg !3149, !tbaa !828
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3149
  br label %147, !dbg !3150

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.13.90, i32 noundef 5) #36, !dbg !3151
  %75 = load ptr, ptr %4, align 8, !dbg !3151, !tbaa !828
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3151
  %77 = load ptr, ptr %76, align 8, !dbg !3151, !tbaa !828
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3151
  %79 = load ptr, ptr %78, align 8, !dbg !3151, !tbaa !828
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3151
  %81 = load ptr, ptr %80, align 8, !dbg !3151, !tbaa !828
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3151
  %83 = load ptr, ptr %82, align 8, !dbg !3151, !tbaa !828
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3151
  %85 = load ptr, ptr %84, align 8, !dbg !3151, !tbaa !828
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3151
  %87 = load ptr, ptr %86, align 8, !dbg !3151, !tbaa !828
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3151
  br label %147, !dbg !3152

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.14.91, i32 noundef 5) #36, !dbg !3153
  %91 = load ptr, ptr %4, align 8, !dbg !3153, !tbaa !828
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3153
  %93 = load ptr, ptr %92, align 8, !dbg !3153, !tbaa !828
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3153
  %95 = load ptr, ptr %94, align 8, !dbg !3153, !tbaa !828
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3153
  %97 = load ptr, ptr %96, align 8, !dbg !3153, !tbaa !828
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3153
  %99 = load ptr, ptr %98, align 8, !dbg !3153, !tbaa !828
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3153
  %101 = load ptr, ptr %100, align 8, !dbg !3153, !tbaa !828
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3153
  %103 = load ptr, ptr %102, align 8, !dbg !3153, !tbaa !828
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3153
  %105 = load ptr, ptr %104, align 8, !dbg !3153, !tbaa !828
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3153
  br label %147, !dbg !3154

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.15.92, i32 noundef 5) #36, !dbg !3155
  %109 = load ptr, ptr %4, align 8, !dbg !3155, !tbaa !828
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3155
  %111 = load ptr, ptr %110, align 8, !dbg !3155, !tbaa !828
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3155
  %113 = load ptr, ptr %112, align 8, !dbg !3155, !tbaa !828
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3155
  %115 = load ptr, ptr %114, align 8, !dbg !3155, !tbaa !828
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3155
  %117 = load ptr, ptr %116, align 8, !dbg !3155, !tbaa !828
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3155
  %119 = load ptr, ptr %118, align 8, !dbg !3155, !tbaa !828
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3155
  %121 = load ptr, ptr %120, align 8, !dbg !3155, !tbaa !828
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3155
  %123 = load ptr, ptr %122, align 8, !dbg !3155, !tbaa !828
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3155
  %125 = load ptr, ptr %124, align 8, !dbg !3155, !tbaa !828
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3155
  br label %147, !dbg !3156

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.16.93, i32 noundef 5) #36, !dbg !3157
  %129 = load ptr, ptr %4, align 8, !dbg !3157, !tbaa !828
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3157
  %131 = load ptr, ptr %130, align 8, !dbg !3157, !tbaa !828
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3157
  %133 = load ptr, ptr %132, align 8, !dbg !3157, !tbaa !828
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3157
  %135 = load ptr, ptr %134, align 8, !dbg !3157, !tbaa !828
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3157
  %137 = load ptr, ptr %136, align 8, !dbg !3157, !tbaa !828
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3157
  %139 = load ptr, ptr %138, align 8, !dbg !3157, !tbaa !828
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3157
  %141 = load ptr, ptr %140, align 8, !dbg !3157, !tbaa !828
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3157
  %143 = load ptr, ptr %142, align 8, !dbg !3157, !tbaa !828
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3157
  %145 = load ptr, ptr %144, align 8, !dbg !3157, !tbaa !828
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3157
  br label %147, !dbg !3158

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3159
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3160 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3164, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !3165, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %2, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %3, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 0, metadata !3169, metadata !DIExpression()), !dbg !3170
  br label %6, !dbg !3171

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %7, metadata !3169, metadata !DIExpression()), !dbg !3170
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3174
  %9 = load ptr, ptr %8, align 8, !dbg !3174, !tbaa !828
  %10 = icmp eq ptr %9, null, !dbg !3176
  %11 = add i64 %7, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %11, metadata !3169, metadata !DIExpression()), !dbg !3170
  br i1 %10, label %12, label %6, !dbg !3176, !llvm.loop !3178

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3180
  ret void, !dbg !3181
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3182 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %1, metadata !3195, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %2, metadata !3196, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3203
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3202
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3202
  %10 = icmp ult i32 %9, 41, !dbg !3205
  br i1 %10, label %11, label %16, !dbg !3205

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3205
  %13 = zext i32 %9 to i64, !dbg !3205
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3205
  %15 = add nuw nsw i32 %9, 8, !dbg !3205
  store i32 %15, ptr %4, align 8, !dbg !3205
  br label %19, !dbg !3205

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3205
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3205
  store ptr %18, ptr %7, align 8, !dbg !3205
  br label %19, !dbg !3205

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3205
  %22 = load ptr, ptr %21, align 8, !dbg !3205
  store ptr %22, ptr %6, align 16, !dbg !3208, !tbaa !828
  %23 = icmp eq ptr %22, null, !dbg !3209
  br i1 %23, label %128, label %24, !dbg !3210

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 1, metadata !3199, metadata !DIExpression()), !dbg !3202
  %25 = icmp ult i32 %20, 41, !dbg !3205
  br i1 %25, label %29, label %26, !dbg !3205

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3205
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3205
  store ptr %28, ptr %7, align 8, !dbg !3205
  br label %34, !dbg !3205

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3205
  %31 = zext i32 %20 to i64, !dbg !3205
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3205
  %33 = add nuw nsw i32 %20, 8, !dbg !3205
  store i32 %33, ptr %4, align 8, !dbg !3205
  br label %34, !dbg !3205

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3205
  %37 = load ptr, ptr %36, align 8, !dbg !3205
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3211
  store ptr %37, ptr %38, align 8, !dbg !3208, !tbaa !828
  %39 = icmp eq ptr %37, null, !dbg !3209
  br i1 %39, label %128, label %40, !dbg !3210

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 2, metadata !3199, metadata !DIExpression()), !dbg !3202
  %41 = icmp ult i32 %35, 41, !dbg !3205
  br i1 %41, label %45, label %42, !dbg !3205

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3205
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3205
  store ptr %44, ptr %7, align 8, !dbg !3205
  br label %50, !dbg !3205

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3205
  %47 = zext i32 %35 to i64, !dbg !3205
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3205
  %49 = add nuw nsw i32 %35, 8, !dbg !3205
  store i32 %49, ptr %4, align 8, !dbg !3205
  br label %50, !dbg !3205

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3205
  %53 = load ptr, ptr %52, align 8, !dbg !3205
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3211
  store ptr %53, ptr %54, align 16, !dbg !3208, !tbaa !828
  %55 = icmp eq ptr %53, null, !dbg !3209
  br i1 %55, label %128, label %56, !dbg !3210

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 3, metadata !3199, metadata !DIExpression()), !dbg !3202
  %57 = icmp ult i32 %51, 41, !dbg !3205
  br i1 %57, label %61, label %58, !dbg !3205

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3205
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3205
  store ptr %60, ptr %7, align 8, !dbg !3205
  br label %66, !dbg !3205

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3205
  %63 = zext i32 %51 to i64, !dbg !3205
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3205
  %65 = add nuw nsw i32 %51, 8, !dbg !3205
  store i32 %65, ptr %4, align 8, !dbg !3205
  br label %66, !dbg !3205

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3205
  %69 = load ptr, ptr %68, align 8, !dbg !3205
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3211
  store ptr %69, ptr %70, align 8, !dbg !3208, !tbaa !828
  %71 = icmp eq ptr %69, null, !dbg !3209
  br i1 %71, label %128, label %72, !dbg !3210

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 4, metadata !3199, metadata !DIExpression()), !dbg !3202
  %73 = icmp ult i32 %67, 41, !dbg !3205
  br i1 %73, label %77, label %74, !dbg !3205

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3205
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3205
  store ptr %76, ptr %7, align 8, !dbg !3205
  br label %82, !dbg !3205

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3205
  %79 = zext i32 %67 to i64, !dbg !3205
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3205
  %81 = add nuw nsw i32 %67, 8, !dbg !3205
  store i32 %81, ptr %4, align 8, !dbg !3205
  br label %82, !dbg !3205

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3205
  %85 = load ptr, ptr %84, align 8, !dbg !3205
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3211
  store ptr %85, ptr %86, align 16, !dbg !3208, !tbaa !828
  %87 = icmp eq ptr %85, null, !dbg !3209
  br i1 %87, label %128, label %88, !dbg !3210

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 5, metadata !3199, metadata !DIExpression()), !dbg !3202
  %89 = icmp ult i32 %83, 41, !dbg !3205
  br i1 %89, label %93, label %90, !dbg !3205

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3205
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3205
  store ptr %92, ptr %7, align 8, !dbg !3205
  br label %98, !dbg !3205

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3205
  %95 = zext i32 %83 to i64, !dbg !3205
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3205
  %97 = add nuw nsw i32 %83, 8, !dbg !3205
  store i32 %97, ptr %4, align 8, !dbg !3205
  br label %98, !dbg !3205

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3205
  %100 = load ptr, ptr %99, align 8, !dbg !3205
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3211
  store ptr %100, ptr %101, align 8, !dbg !3208, !tbaa !828
  %102 = icmp eq ptr %100, null, !dbg !3209
  br i1 %102, label %128, label %103, !dbg !3210

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3199, metadata !DIExpression()), !dbg !3202
  %104 = load ptr, ptr %7, align 8, !dbg !3205
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3205
  store ptr %105, ptr %7, align 8, !dbg !3205
  %106 = load ptr, ptr %104, align 8, !dbg !3205
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3211
  store ptr %106, ptr %107, align 16, !dbg !3208, !tbaa !828
  %108 = icmp eq ptr %106, null, !dbg !3209
  br i1 %108, label %128, label %109, !dbg !3210

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3199, metadata !DIExpression()), !dbg !3202
  %110 = load ptr, ptr %7, align 8, !dbg !3205
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3205
  store ptr %111, ptr %7, align 8, !dbg !3205
  %112 = load ptr, ptr %110, align 8, !dbg !3205
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3211
  store ptr %112, ptr %113, align 8, !dbg !3208, !tbaa !828
  %114 = icmp eq ptr %112, null, !dbg !3209
  br i1 %114, label %128, label %115, !dbg !3210

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3199, metadata !DIExpression()), !dbg !3202
  %116 = load ptr, ptr %7, align 8, !dbg !3205
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3205
  store ptr %117, ptr %7, align 8, !dbg !3205
  %118 = load ptr, ptr %116, align 8, !dbg !3205
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3211
  store ptr %118, ptr %119, align 16, !dbg !3208, !tbaa !828
  %120 = icmp eq ptr %118, null, !dbg !3209
  br i1 %120, label %128, label %121, !dbg !3210

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3199, metadata !DIExpression()), !dbg !3202
  %122 = load ptr, ptr %7, align 8, !dbg !3205
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3205
  store ptr %123, ptr %7, align 8, !dbg !3205
  %124 = load ptr, ptr %122, align 8, !dbg !3205
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3211
  store ptr %124, ptr %125, align 8, !dbg !3208, !tbaa !828
  %126 = icmp eq ptr %124, null, !dbg !3209
  %127 = select i1 %126, i64 9, i64 10, !dbg !3210
  br label %128, !dbg !3210

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3212
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3213
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3214
  ret void, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3215 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3219, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %1, metadata !3220, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %2, metadata !3221, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %3, metadata !3222, metadata !DIExpression()), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3223, metadata !DIExpression()), !dbg !3230
  call void @llvm.va_start(ptr nonnull %5), !dbg !3231
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3232
  call void @llvm.va_end(ptr nonnull %5), !dbg !3233
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !3234
  ret void, !dbg !3234
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3235 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3236, !tbaa !828
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %1), !dbg !3236
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.17.98, i32 noundef 5) #36, !dbg !3237
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.99) #36, !dbg !3237
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.19.100, i32 noundef 5) #36, !dbg !3238
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.101, ptr noundef nonnull @.str.21.102) #36, !dbg !3238
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !3239
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3239
  ret void, !dbg !3240
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %2, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()), !dbg !3255
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %4, metadata !3258, metadata !DIExpression()), !dbg !3263
  %5 = icmp eq ptr %4, null, !dbg !3265
  br i1 %5, label %6, label %7, !dbg !3267

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3268
  unreachable, !dbg !3268

7:                                                ; preds = %3
  ret ptr %4, !dbg !3269
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()), !dbg !3270
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3271
  call void @llvm.dbg.value(metadata ptr %4, metadata !3258, metadata !DIExpression()), !dbg !3272
  %5 = icmp eq ptr %4, null, !dbg !3274
  br i1 %5, label %6, label %7, !dbg !3275

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3276
  unreachable, !dbg !3276

7:                                                ; preds = %3
  ret ptr %4, !dbg !3277
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3278 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3282, metadata !DIExpression()), !dbg !3283
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3285
  %3 = icmp eq ptr %2, null, !dbg !3287
  br i1 %3, label %4, label %5, !dbg !3288

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3289
  unreachable, !dbg !3289

5:                                                ; preds = %1
  ret ptr %2, !dbg !3290
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3291 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3292 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3302
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3305
  %3 = icmp eq ptr %2, null, !dbg !3307
  br i1 %3, label %4, label %5, !dbg !3308

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3309
  unreachable, !dbg !3309

5:                                                ; preds = %1
  ret ptr %2, !dbg !3310
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3311 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %0, metadata !3282, metadata !DIExpression()), !dbg !3317
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3319
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3320
  %3 = icmp eq ptr %2, null, !dbg !3322
  br i1 %3, label %4, label %5, !dbg !3323

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3324
  unreachable, !dbg !3324

5:                                                ; preds = %1
  ret ptr %2, !dbg !3325
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3326 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3338
  %3 = icmp eq i64 %1, 0, !dbg !3340
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3340
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %5, metadata !3258, metadata !DIExpression()), !dbg !3342
  %6 = icmp eq ptr %5, null, !dbg !3344
  br i1 %6, label %7, label %8, !dbg !3345

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3346
  unreachable, !dbg !3346

8:                                                ; preds = %2
  ret ptr %5, !dbg !3347
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3348 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3349 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %0, metadata !3356, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3362
  %3 = icmp eq i64 %1, 0, !dbg !3364
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3364
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3365
  call void @llvm.dbg.value(metadata ptr %5, metadata !3258, metadata !DIExpression()), !dbg !3366
  %6 = icmp eq ptr %5, null, !dbg !3368
  br i1 %6, label %7, label %8, !dbg !3369

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3370
  unreachable, !dbg !3370

8:                                                ; preds = %2
  ret ptr %5, !dbg !3371
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3372 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %1, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %2, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %2, metadata !3384, metadata !DIExpression()), !dbg !3385
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3387
  call void @llvm.dbg.value(metadata ptr %4, metadata !3258, metadata !DIExpression()), !dbg !3388
  %5 = icmp eq ptr %4, null, !dbg !3390
  br i1 %5, label %6, label %7, !dbg !3391

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3392
  unreachable, !dbg !3392

7:                                                ; preds = %3
  ret ptr %4, !dbg !3393
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3394 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3398, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata ptr null, metadata !3250, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %0, metadata !3253, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3401
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3404
  %4 = icmp eq ptr %3, null, !dbg !3406
  br i1 %4, label %5, label %6, !dbg !3407

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3408
  unreachable, !dbg !3408

6:                                                ; preds = %2
  ret ptr %3, !dbg !3409
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3410 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr null, metadata !3376, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %0, metadata !3377, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr null, metadata !3380, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3419
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3422
  %4 = icmp eq ptr %3, null, !dbg !3424
  br i1 %4, label %5, label %6, !dbg !3425

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3426
  unreachable, !dbg !3426

6:                                                ; preds = %2
  ret ptr %3, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3428 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %1, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !721, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %1, metadata !722, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 1, metadata !723, metadata !DIExpression()), !dbg !3435
  %3 = load i64, ptr %1, align 8, !dbg !3437, !tbaa !2540
  call void @llvm.dbg.value(metadata i64 %3, metadata !724, metadata !DIExpression()), !dbg !3435
  %4 = icmp eq ptr %0, null, !dbg !3438
  br i1 %4, label %5, label %8, !dbg !3440

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3441
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3444
  br label %15, !dbg !3444

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3445
  %10 = add nuw i64 %9, 1, !dbg !3445
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3445
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3445
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %13, metadata !724, metadata !DIExpression()), !dbg !3435
  br i1 %12, label %14, label %15, !dbg !3448

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3449
  unreachable, !dbg !3449

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3435
  call void @llvm.dbg.value(metadata i64 %16, metadata !724, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %16, metadata !3253, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3450
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %17, metadata !3258, metadata !DIExpression()), !dbg !3453
  %18 = icmp eq ptr %17, null, !dbg !3455
  br i1 %18, label %19, label %20, !dbg !3456

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3457
  unreachable, !dbg !3457

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !721, metadata !DIExpression()), !dbg !3435
  store i64 %16, ptr %1, align 8, !dbg !3458, !tbaa !2540
  ret ptr %17, !dbg !3459
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !721, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata ptr %1, metadata !722, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %2, metadata !723, metadata !DIExpression()), !dbg !3460
  %4 = load i64, ptr %1, align 8, !dbg !3461, !tbaa !2540
  call void @llvm.dbg.value(metadata i64 %4, metadata !724, metadata !DIExpression()), !dbg !3460
  %5 = icmp eq ptr %0, null, !dbg !3462
  br i1 %5, label %6, label %13, !dbg !3463

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3464
  br i1 %7, label %8, label %20, !dbg !3465

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %9, metadata !724, metadata !DIExpression()), !dbg !3460
  %10 = icmp ugt i64 %2, 128, !dbg !3468
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %12, metadata !724, metadata !DIExpression()), !dbg !3460
  br label %20, !dbg !3470

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3471
  %15 = add nuw i64 %14, 1, !dbg !3471
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3471
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3471
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %18, metadata !724, metadata !DIExpression()), !dbg !3460
  br i1 %17, label %19, label %20, !dbg !3472

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3473
  unreachable, !dbg !3473

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3460
  call void @llvm.dbg.value(metadata i64 %21, metadata !724, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %21, metadata !3253, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()), !dbg !3474
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %22, metadata !3258, metadata !DIExpression()), !dbg !3477
  %23 = icmp eq ptr %22, null, !dbg !3479
  br i1 %23, label %24, label %25, !dbg !3480

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3481
  unreachable, !dbg !3481

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !721, metadata !DIExpression()), !dbg !3460
  store i64 %21, ptr %1, align 8, !dbg !3482, !tbaa !2540
  ret ptr %22, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !728 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !736, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %1, metadata !737, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !738, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %3, metadata !739, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %4, metadata !740, metadata !DIExpression()), !dbg !3484
  %6 = load i64, ptr %1, align 8, !dbg !3485, !tbaa !2540
  call void @llvm.dbg.value(metadata i64 %6, metadata !741, metadata !DIExpression()), !dbg !3484
  %7 = ashr i64 %6, 1, !dbg !3486
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3486
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3486
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %10, metadata !742, metadata !DIExpression()), !dbg !3484
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %11, metadata !742, metadata !DIExpression()), !dbg !3484
  %12 = icmp sgt i64 %3, -1, !dbg !3489
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3491
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %15, metadata !742, metadata !DIExpression()), !dbg !3484
  %16 = icmp slt i64 %4, 0, !dbg !3492
  br i1 %16, label %17, label %30, !dbg !3492

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3492
  br i1 %18, label %19, label %24, !dbg !3492

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3492
  %21 = udiv i64 9223372036854775807, %20, !dbg !3492
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3492
  br i1 %23, label %46, label %43, !dbg !3492

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3492
  br i1 %25, label %43, label %26, !dbg !3492

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3492
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3492
  %29 = icmp ult i64 %28, %15, !dbg !3492
  br i1 %29, label %46, label %43, !dbg !3492

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3492
  br i1 %31, label %43, label %32, !dbg !3492

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3492
  br i1 %33, label %34, label %40, !dbg !3492

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3492
  br i1 %35, label %43, label %36, !dbg !3492

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3492
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3492
  %39 = icmp ult i64 %38, %4, !dbg !3492
  br i1 %39, label %46, label %43, !dbg !3492

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3492
  br i1 %42, label %46, label %43, !dbg !3492

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !743, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3484
  %44 = mul i64 %15, %4, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %44, metadata !743, metadata !DIExpression()), !dbg !3484
  %45 = icmp slt i64 %44, 128, !dbg !3492
  br i1 %45, label %46, label %51, !dbg !3492

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !744, metadata !DIExpression()), !dbg !3484
  %48 = sdiv i64 %47, %4, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %48, metadata !742, metadata !DIExpression()), !dbg !3484
  %49 = srem i64 %47, %4, !dbg !3496
  %50 = sub nsw i64 %47, %49, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %50, metadata !743, metadata !DIExpression()), !dbg !3484
  br label %51, !dbg !3498

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3484
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3484
  call void @llvm.dbg.value(metadata i64 %53, metadata !743, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %52, metadata !742, metadata !DIExpression()), !dbg !3484
  %54 = icmp eq ptr %0, null, !dbg !3499
  br i1 %54, label %55, label %56, !dbg !3501

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3502, !tbaa !2540
  br label %56, !dbg !3503

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3504
  %58 = icmp slt i64 %57, %2, !dbg !3506
  br i1 %58, label %59, label %96, !dbg !3507

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3508
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3508
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %62, metadata !742, metadata !DIExpression()), !dbg !3484
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3509
  br i1 %65, label %95, label %66, !dbg !3509

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3510

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3510
  br i1 %68, label %69, label %74, !dbg !3510

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3510
  %71 = udiv i64 9223372036854775807, %70, !dbg !3510
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3510
  br i1 %73, label %95, label %93, !dbg !3510

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3510
  br i1 %75, label %93, label %76, !dbg !3510

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3510
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3510
  %79 = icmp ult i64 %78, %62, !dbg !3510
  br i1 %79, label %95, label %93, !dbg !3510

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3510
  br i1 %81, label %93, label %82, !dbg !3510

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3510
  br i1 %83, label %84, label %90, !dbg !3510

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3510
  br i1 %85, label %93, label %86, !dbg !3510

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3510
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3510
  %89 = icmp ult i64 %88, %4, !dbg !3510
  br i1 %89, label %95, label %93, !dbg !3510

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3510
  br i1 %92, label %95, label %93, !dbg !3510

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !743, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3484
  %94 = mul i64 %62, %4, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %94, metadata !743, metadata !DIExpression()), !dbg !3484
  br label %96, !dbg !3511

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3512
  unreachable, !dbg !3512

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3484
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3484
  call void @llvm.dbg.value(metadata i64 %98, metadata !743, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %97, metadata !742, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %98, metadata !3331, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %98, metadata !3337, metadata !DIExpression()), !dbg !3515
  %99 = icmp eq i64 %98, 0, !dbg !3517
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3517
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3518
  call void @llvm.dbg.value(metadata ptr %101, metadata !3258, metadata !DIExpression()), !dbg !3519
  %102 = icmp eq ptr %101, null, !dbg !3521
  br i1 %102, label %103, label %104, !dbg !3522

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3523
  unreachable, !dbg !3523

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !736, metadata !DIExpression()), !dbg !3484
  store i64 %97, ptr %1, align 8, !dbg !3524, !tbaa !2540
  ret ptr %101, !dbg !3525
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3526 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 1, metadata !3533, metadata !DIExpression()), !dbg !3534
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3536
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3537
  %3 = icmp eq ptr %2, null, !dbg !3539
  br i1 %3, label %4, label %5, !dbg !3540

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3541
  unreachable, !dbg !3541

5:                                                ; preds = %1
  ret ptr %2, !dbg !3542
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3543 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3531 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3544
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3545
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3546
  %4 = icmp eq ptr %3, null, !dbg !3548
  br i1 %4, label %5, label %6, !dbg !3549

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3550
  unreachable, !dbg !3550

6:                                                ; preds = %2
  ret ptr %3, !dbg !3551
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3552 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %0, metadata !3556, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 1, metadata !3559, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 1, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 1, metadata !3565, metadata !DIExpression()), !dbg !3566
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3569
  %3 = icmp eq ptr %2, null, !dbg !3571
  br i1 %3, label %4, label %5, !dbg !3572

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3573
  unreachable, !dbg !3573

5:                                                ; preds = %1
  ret ptr %2, !dbg !3574
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3557 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3556, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %0, metadata !3562, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %0, metadata !3562, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3576
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3578
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3579
  %4 = icmp eq ptr %3, null, !dbg !3581
  br i1 %4, label %5, label %6, !dbg !3582

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3583
  unreachable, !dbg !3583

6:                                                ; preds = %2
  ret ptr %3, !dbg !3584
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3585 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3592
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3595
  %4 = icmp eq ptr %3, null, !dbg !3597
  br i1 %4, label %5, label %6, !dbg !3598

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3599
  unreachable, !dbg !3599

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3600, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3610
  ret ptr %3, !dbg !3611
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3612 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3298, metadata !DIExpression()), !dbg !3621
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3624
  %4 = icmp eq ptr %3, null, !dbg !3626
  br i1 %4, label %5, label %6, !dbg !3627

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3628
  unreachable, !dbg !3628

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3600, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3631
  ret ptr %3, !dbg !3632
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3633 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3640
  %3 = add nsw i64 %1, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %3, metadata !3296, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i64 %3, metadata !3298, metadata !DIExpression()), !dbg !3644
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3646
  call void @llvm.dbg.value(metadata ptr %4, metadata !3258, metadata !DIExpression()), !dbg !3647
  %5 = icmp eq ptr %4, null, !dbg !3649
  br i1 %5, label %6, label %7, !dbg !3650

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3651
  unreachable, !dbg !3651

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3639, metadata !DIExpression()), !dbg !3640
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3652
  store i8 0, ptr %8, align 1, !dbg !3653, !tbaa !898
  call void @llvm.dbg.value(metadata ptr %4, metadata !3600, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3656
  ret ptr %4, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3658 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3660, metadata !DIExpression()), !dbg !3661
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3662
  %3 = add i64 %2, 1, !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3589, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %3, metadata !3590, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %3, metadata !3282, metadata !DIExpression()), !dbg !3666
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %4, metadata !3258, metadata !DIExpression()), !dbg !3669
  %5 = icmp eq ptr %4, null, !dbg !3671
  br i1 %5, label %6, label %7, !dbg !3672

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3673
  unreachable, !dbg !3673

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3600, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %3, metadata !3607, metadata !DIExpression()), !dbg !3674
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3676
  ret ptr %4, !dbg !3677
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3678 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3683, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %1, metadata !3680, metadata !DIExpression()), !dbg !3684
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.113, ptr noundef nonnull @.str.2.114, i32 noundef 5) #36, !dbg !3683
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef %2) #36, !dbg !3683
  %3 = icmp eq i32 %1, 0, !dbg !3683
  tail call void @llvm.assume(i1 %3), !dbg !3683
  tail call void @abort() #38, !dbg !3685
  unreachable, !dbg !3685
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3686 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 %1, metadata !3689, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %2, metadata !3690, metadata !DIExpression()), !dbg !3692
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #36, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %4, metadata !3691, metadata !DIExpression()), !dbg !3692
  %5 = icmp eq i32 %4, -1, !dbg !3694
  br i1 %5, label %6, label %11, !dbg !3696

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #39, !dbg !3697
  %8 = load i32, ptr %7, align 4, !dbg !3697, !tbaa !889
  %9 = icmp eq i32 %8, 12, !dbg !3698
  br i1 %9, label %10, label %11, !dbg !3699

10:                                               ; preds = %6
  tail call void @xalloc_die() #38, !dbg !3700
  unreachable, !dbg !3700

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3701
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3702 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3740, metadata !DIExpression()), !dbg !3745
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3746
  call void @llvm.dbg.value(metadata i1 poison, metadata !3741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3750
  %3 = load i32, ptr %0, align 8, !dbg !3752, !tbaa !1172
  %4 = and i32 %3, 32, !dbg !3753
  %5 = icmp eq i32 %4, 0, !dbg !3753
  call void @llvm.dbg.value(metadata i1 %5, metadata !3743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3745
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3754
  %7 = icmp eq i32 %6, 0, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %7, metadata !3744, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3745
  br i1 %5, label %8, label %18, !dbg !3756

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3758
  call void @llvm.dbg.value(metadata i1 %9, metadata !3741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3745
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3759
  %11 = xor i1 %7, true, !dbg !3759
  %12 = sext i1 %11 to i32, !dbg !3759
  br i1 %10, label %21, label %13, !dbg !3759

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3760
  %15 = load i32, ptr %14, align 4, !dbg !3760, !tbaa !889
  %16 = icmp ne i32 %15, 9, !dbg !3761
  %17 = sext i1 %16 to i32, !dbg !3762
  br label %21, !dbg !3762

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3763

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3765
  store i32 0, ptr %20, align 4, !dbg !3767, !tbaa !889
  br label %21, !dbg !3765

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3745
  ret i32 %22, !dbg !3768
}

; Function Attrs: nounwind
declare !dbg !3769 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3772 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 0, metadata !3811, metadata !DIExpression()), !dbg !3814
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %2, metadata !3812, metadata !DIExpression()), !dbg !3814
  %3 = icmp slt i32 %2, 0, !dbg !3816
  br i1 %3, label %4, label %6, !dbg !3818

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3819
  br label %24, !dbg !3820

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3821
  %8 = icmp eq i32 %7, 0, !dbg !3821
  br i1 %8, label %13, label %9, !dbg !3823

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3824
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3825
  %12 = icmp eq i64 %11, -1, !dbg !3826
  br i1 %12, label %16, label %13, !dbg !3827

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3828
  %15 = icmp eq i32 %14, 0, !dbg !3828
  br i1 %15, label %16, label %18, !dbg !3829

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %17, metadata !3813, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3831

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3832
  %20 = load i32, ptr %19, align 4, !dbg !3832, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %20, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %21, metadata !3813, metadata !DIExpression()), !dbg !3814
  %22 = icmp eq i32 %20, 0, !dbg !3833
  br i1 %22, label %24, label %23, !dbg !3831

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3835, !tbaa !889
  call void @llvm.dbg.value(metadata i32 -1, metadata !3813, metadata !DIExpression()), !dbg !3814
  br label %24, !dbg !3837

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3814
  ret i32 %25, !dbg !3838
}

; Function Attrs: nofree nounwind
declare !dbg !3839 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3840 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3841 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3842 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3845 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3883, metadata !DIExpression()), !dbg !3884
  %2 = icmp eq ptr %0, null, !dbg !3885
  br i1 %2, label %6, label %3, !dbg !3887

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3888
  %5 = icmp eq i32 %4, 0, !dbg !3888
  br i1 %5, label %6, label %8, !dbg !3889

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3890
  br label %16, !dbg !3891

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3897
  %9 = load i32, ptr %0, align 8, !dbg !3899, !tbaa !1172
  %10 = and i32 %9, 256, !dbg !3901
  %11 = icmp eq i32 %10, 0, !dbg !3901
  br i1 %11, label %14, label %12, !dbg !3902

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3903
  br label %14, !dbg !3903

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3904
  br label %16, !dbg !3905

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3884
  ret i32 %17, !dbg !3906
}

; Function Attrs: nofree nounwind
declare !dbg !3907 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3947, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 %2, metadata !3949, metadata !DIExpression()), !dbg !3953
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3954
  %5 = load ptr, ptr %4, align 8, !dbg !3954, !tbaa !3955
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3956
  %7 = load ptr, ptr %6, align 8, !dbg !3956, !tbaa !3957
  %8 = icmp eq ptr %5, %7, !dbg !3958
  br i1 %8, label %9, label %27, !dbg !3959

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3960
  %11 = load ptr, ptr %10, align 8, !dbg !3960, !tbaa !1134
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3961
  %13 = load ptr, ptr %12, align 8, !dbg !3961, !tbaa !3962
  %14 = icmp eq ptr %11, %13, !dbg !3963
  br i1 %14, label %15, label %27, !dbg !3964

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3965
  %17 = load ptr, ptr %16, align 8, !dbg !3965, !tbaa !3966
  %18 = icmp eq ptr %17, null, !dbg !3967
  br i1 %18, label %19, label %27, !dbg !3968

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3969
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3970
  call void @llvm.dbg.value(metadata i64 %21, metadata !3950, metadata !DIExpression()), !dbg !3971
  %22 = icmp eq i64 %21, -1, !dbg !3972
  br i1 %22, label %29, label %23, !dbg !3974

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3975, !tbaa !1172
  %25 = and i32 %24, -17, !dbg !3975
  store i32 %25, ptr %0, align 8, !dbg !3975, !tbaa !1172
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3976
  store i64 %21, ptr %26, align 8, !dbg !3977, !tbaa !3978
  br label %29, !dbg !3979

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3980
  br label %29, !dbg !3981

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3953
  ret i32 %30, !dbg !3982
}

; Function Attrs: nofree nounwind
declare !dbg !3983 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3986 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %2, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3996
  %5 = icmp eq ptr %1, null, !dbg !3997
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3999
  %7 = select i1 %5, ptr @.str.128, ptr %1, !dbg !3999
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %8, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %7, metadata !3992, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %6, metadata !3991, metadata !DIExpression()), !dbg !3996
  %9 = icmp eq ptr %3, null, !dbg !4000
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %10, metadata !3994, metadata !DIExpression()), !dbg !3996
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %11, metadata !3995, metadata !DIExpression()), !dbg !3996
  %12 = icmp ult i64 %11, -3, !dbg !4004
  br i1 %12, label %13, label %17, !dbg !4006

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4007
  %15 = icmp eq i32 %14, 0, !dbg !4007
  br i1 %15, label %16, label %29, !dbg !4008

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4009, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %10, metadata !4016, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 8, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i64 0, ptr %10, align 1, !dbg !4023
  br label %29, !dbg !4024

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4025
  br i1 %18, label %19, label %20, !dbg !4027

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4028
  unreachable, !dbg !4028

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4029

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !4031
  br i1 %23, label %29, label %24, !dbg !4032

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4033
  br i1 %25, label %29, label %26, !dbg !4036

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4037, !tbaa !898
  %28 = zext i8 %27 to i32, !dbg !4038
  store i32 %28, ptr %6, align 4, !dbg !4039, !tbaa !889
  br label %29, !dbg !4040

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3996
  ret i64 %30, !dbg !4041
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4042 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !762 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !771, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 %1, metadata !772, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %2, metadata !773, metadata !DIExpression()), !dbg !4048
  %5 = icmp eq ptr %0, null, !dbg !4049
  br i1 %5, label %37, label %6, !dbg !4050

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #36, !dbg !4051
  call void @llvm.dbg.value(metadata i32 10, metadata !774, metadata !DIExpression()), !dbg !4052
  store i32 10, ptr %4, align 4, !dbg !4053, !tbaa !889
  call void @llvm.dbg.value(metadata ptr null, metadata !4054, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 10, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr null, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 40, metadata !4065, metadata !DIExpression()), !dbg !4066
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %7, metadata !777, metadata !DIExpression()), !dbg !4052
  %8 = icmp eq ptr %7, null, !dbg !4069
  br i1 %8, label %35, label %9, !dbg !4071

9:                                                ; preds = %6, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %6 ], !dbg !4072
  %11 = phi ptr [ %29, %32 ], [ %7, %6 ], !dbg !4073
  call void @llvm.dbg.value(metadata ptr %11, metadata !777, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 %10, metadata !778, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %4, metadata !774, metadata !DIExpression(DW_OP_deref)), !dbg !4052
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #36, !dbg !4075
  call void @llvm.dbg.value(metadata i32 %12, metadata !780, metadata !DIExpression()), !dbg !4074
  %13 = icmp slt i32 %12, 0, !dbg !4076
  %14 = load i32, ptr %4, align 4, !dbg !4074, !tbaa !889
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4078
  call void @llvm.dbg.value(metadata i32 %14, metadata !774, metadata !DIExpression()), !dbg !4052
  br i1 %16, label %17, label %19, !dbg !4078

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %18, metadata !774, metadata !DIExpression()), !dbg !4052
  store i32 %18, ptr %4, align 4, !dbg !4079, !tbaa !889
  br label %19, !dbg !4080

19:                                               ; preds = %9, %17
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4081
  call void @llvm.dbg.value(metadata i32 %20, metadata !774, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr %11, metadata !4054, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 %20, metadata !4059, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4082
  %21 = icmp slt i32 %20, 0, !dbg !4084
  br i1 %21, label %22, label %24, !dbg !4086

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #39, !dbg !4087
  store i32 12, ptr %23, align 4, !dbg !4089, !tbaa !889
  call void @llvm.dbg.value(metadata ptr null, metadata !781, metadata !DIExpression()), !dbg !4074
  br label %31, !dbg !4090

24:                                               ; preds = %19
  %25 = zext i32 %20 to i64, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %25, metadata !4059, metadata !DIExpression()), !dbg !4082
  %26 = shl nuw nsw i64 %25, 2, !dbg !4091
  call void @llvm.dbg.value(metadata ptr %11, metadata !4062, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %26, metadata !4065, metadata !DIExpression()), !dbg !4092
  %27 = icmp eq i32 %20, 0, !dbg !4094
  %28 = select i1 %27, i64 1, i64 %26, !dbg !4094
  %29 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %28) #42, !dbg !4095
  call void @llvm.dbg.value(metadata ptr %29, metadata !781, metadata !DIExpression()), !dbg !4074
  %30 = icmp eq ptr %29, null, !dbg !4096
  br i1 %30, label %31, label %32, !dbg !4090

31:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #36, !dbg !4098
  br label %35, !dbg !4100

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %29, metadata !777, metadata !DIExpression()), !dbg !4052
  %33 = icmp sgt i32 %12, -1, !dbg !4101
  br i1 %33, label %34, label %9, !dbg !4103, !llvm.loop !4104

34:                                               ; preds = %32
  store ptr %29, ptr %2, align 8, !dbg !4107, !tbaa !828
  call void @llvm.dbg.value(metadata i32 %20, metadata !774, metadata !DIExpression()), !dbg !4052
  br label %35, !dbg !4109

35:                                               ; preds = %31, %34, %6
  %36 = phi i32 [ -1, %6 ], [ -1, %31 ], [ %20, %34 ], !dbg !4052
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #36, !dbg !4110
  br label %98

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #36, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %38, metadata !782, metadata !DIExpression()), !dbg !4048
  %39 = icmp slt i32 %38, 0, !dbg !4112
  br i1 %39, label %40, label %50, !dbg !4113

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #39, !dbg !4114
  %42 = load i32, ptr %41, align 4, !dbg !4114, !tbaa !889
  %43 = icmp eq i32 %42, 38, !dbg !4115
  br i1 %43, label %44, label %98, !dbg !4116

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !4054, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 1, metadata !4059, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr null, metadata !4062, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 4, metadata !4065, metadata !DIExpression()), !dbg !4119
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %45, metadata !783, metadata !DIExpression()), !dbg !4122
  %46 = icmp eq ptr %45, null, !dbg !4123
  br i1 %46, label %98, label %47, !dbg !4125

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !4126, !tbaa !828
  store i32 %1, ptr %45, align 4, !dbg !4128, !tbaa !889
  %48 = icmp ne i32 %1, -1, !dbg !4129
  %49 = zext i1 %48 to i32, !dbg !4129
  br label %98

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !4130
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !4132
  %54 = zext i1 %53 to i32, !dbg !4132
  %55 = add nuw nsw i32 %38, %54, !dbg !4132
  call void @llvm.dbg.value(metadata i32 %55, metadata !782, metadata !DIExpression()), !dbg !4048
  %56 = zext i32 %55 to i64, !dbg !4133
  call void @llvm.dbg.value(metadata ptr null, metadata !4054, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %56, metadata !4059, metadata !DIExpression()), !dbg !4134
  %57 = shl nuw nsw i64 %56, 2, !dbg !4136
  call void @llvm.dbg.value(metadata ptr null, metadata !4062, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %57, metadata !4065, metadata !DIExpression()), !dbg !4137
  %58 = tail call ptr @malloc(i64 %57), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %58, metadata !788, metadata !DIExpression()), !dbg !4048
  %59 = icmp eq ptr %58, null, !dbg !4140
  br i1 %59, label %98, label %60, !dbg !4142

60:                                               ; preds = %50
  %61 = sext i1 %52 to i32, !dbg !4143
  %62 = add nsw i32 %55, %61, !dbg !4144
  %63 = zext i1 %52 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !4145
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #36, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %65, metadata !789, metadata !DIExpression()), !dbg !4048
  %66 = icmp slt i32 %65, 0, !dbg !4147
  br i1 %66, label %67, label %68, !dbg !4149

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #36, !dbg !4150
  br label %98, !dbg !4152

68:                                               ; preds = %60
  br i1 %52, label %69, label %71, !dbg !4153

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !4155, !tbaa !889
  %70 = add nuw nsw i32 %65, 1, !dbg !4157
  call void @llvm.dbg.value(metadata i32 %70, metadata !789, metadata !DIExpression()), !dbg !4048
  br label %71, !dbg !4158

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %72, metadata !789, metadata !DIExpression()), !dbg !4048
  store ptr %58, ptr %2, align 8, !dbg !4159, !tbaa !828
  %73 = icmp ugt i32 %72, 1, !dbg !4160
  br i1 %73, label %74, label %98, !dbg !4161

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !4162, !tbaa !889
  call void @llvm.dbg.value(metadata i32 %75, metadata !790, metadata !DIExpression()), !dbg !4163
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !4164
  call void @llvm.dbg.value(metadata ptr %77, metadata !793, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %58, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %72, metadata !789, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %58, metadata !788, metadata !DIExpression()), !dbg !4048
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !4166
  call void @llvm.dbg.value(metadata ptr %78, metadata !794, metadata !DIExpression()), !dbg !4165
  br label %79, !dbg !4167

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !789, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %83, metadata !788, metadata !DIExpression()), !dbg !4048
  %84 = load i32, ptr %81, align 4, !dbg !4168, !tbaa !889
  %85 = icmp eq i32 %84, %75, !dbg !4172
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !4173
  br i1 %87, label %88, label %90, !dbg !4173

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %89, metadata !789, metadata !DIExpression()), !dbg !4048
  br label %92, !dbg !4175

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !4176
  call void @llvm.dbg.value(metadata ptr %91, metadata !788, metadata !DIExpression()), !dbg !4048
  store i32 %84, ptr %91, align 4, !dbg !4177, !tbaa !889
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !4048
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !4048
  call void @llvm.dbg.value(metadata i32 %95, metadata !789, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %94, metadata !788, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %81, metadata !794, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4165
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !4166
  call void @llvm.dbg.value(metadata ptr %96, metadata !794, metadata !DIExpression()), !dbg !4165
  %97 = icmp ult ptr %96, %77, !dbg !4178
  br i1 %97, label %79, label %98, !dbg !4167, !llvm.loop !4179

98:                                               ; preds = %92, %44, %40, %47, %67, %71, %50, %35
  %99 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %67 ], [ %72, %71 ], [ -1, %40 ], [ -1, %44 ], [ %95, %92 ], !dbg !4048
  ret i32 %99, !dbg !4181
}

declare !dbg !4182 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4186 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4188, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %1, metadata !4189, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %2, metadata !4190, metadata !DIExpression()), !dbg !4192
  %4 = icmp eq i64 %2, 0, !dbg !4193
  br i1 %4, label %8, label %5, !dbg !4193

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4193
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4193
  br i1 %7, label %13, label %8, !dbg !4193

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4192
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4192
  %9 = mul i64 %2, %1, !dbg !4193
  call void @llvm.dbg.value(metadata i64 %9, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %0, metadata !4195, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 %9, metadata !4198, metadata !DIExpression()), !dbg !4199
  %10 = icmp eq i64 %9, 0, !dbg !4201
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4201
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !4202
  br label %15, !dbg !4203

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4192
  %14 = tail call ptr @__errno_location() #39, !dbg !4204
  store i32 12, ptr %14, align 4, !dbg !4206, !tbaa !889
  br label %15, !dbg !4207

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4192
  ret ptr %16, !dbg !4208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4209 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4213, metadata !DIExpression()), !dbg !4218
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4214, metadata !DIExpression()), !dbg !4220
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4221
  %4 = icmp eq i32 %3, 0, !dbg !4221
  br i1 %4, label %5, label %12, !dbg !4223

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4224, metadata !DIExpression()), !dbg !4228
  %6 = load i16, ptr %2, align 16, !dbg !4231
  %7 = icmp eq i16 %6, 67, !dbg !4231
  br i1 %7, label %11, label %8, !dbg !4232

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4224, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !4227, metadata !DIExpression()), !dbg !4233
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !4235
  %10 = icmp eq i32 %9, 0, !dbg !4236
  br i1 %10, label %11, label %12, !dbg !4237

11:                                               ; preds = %8, %5
  br label %12, !dbg !4238

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4218
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4239
  ret i1 %13, !dbg !4239
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4244, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %1, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %2, metadata !4246, metadata !DIExpression()), !dbg !4247
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4248
  ret i32 %4, !dbg !4249
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()), !dbg !4255
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4256
  ret ptr %2, !dbg !4257
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4260, metadata !DIExpression()), !dbg !4262
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4263
  call void @llvm.dbg.value(metadata ptr %2, metadata !4261, metadata !DIExpression()), !dbg !4262
  ret ptr %2, !dbg !4264
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4265 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4267, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %1, metadata !4268, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %2, metadata !4269, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 %0, metadata !4260, metadata !DIExpression()), !dbg !4275
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4277
  call void @llvm.dbg.value(metadata ptr %4, metadata !4261, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %4, metadata !4270, metadata !DIExpression()), !dbg !4274
  %5 = icmp eq ptr %4, null, !dbg !4278
  br i1 %5, label %6, label %9, !dbg !4279

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4280
  br i1 %7, label %19, label %8, !dbg !4283

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4284, !tbaa !898
  br label %19, !dbg !4285

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4286
  call void @llvm.dbg.value(metadata i64 %10, metadata !4271, metadata !DIExpression()), !dbg !4287
  %11 = icmp ult i64 %10, %2, !dbg !4288
  br i1 %11, label %12, label %14, !dbg !4290

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %1, metadata !4293, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %4, metadata !4296, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %13, metadata !4297, metadata !DIExpression()), !dbg !4298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4300
  br label %19, !dbg !4301

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4302
  br i1 %15, label %19, label %16, !dbg !4305

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %1, metadata !4293, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr %4, metadata !4296, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i64 %17, metadata !4297, metadata !DIExpression()), !dbg !4308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4310
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4311
  store i8 0, ptr %18, align 1, !dbg !4312, !tbaa !898
  br label %19, !dbg !4313

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4314
  ret i32 %20, !dbg !4315
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!49, !695, !348, !352, !367, !663, !701, !703, !419, !433, !484, !705, !655, !712, !746, !748, !750, !752, !754, !756, !679, !758, !799, !802, !806, !808}
!llvm.ident = !{!810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810}
!llvm.module.flags = !{!811, !812, !813, !814, !815, !816}

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
!49 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !73, globals: !83, splitDebugInlining: false, nameTableKind: None)
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
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!348 = distinct !DICompileUnit(language: DW_LANG_C11, file: !345, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !349, splitDebugInlining: false, nameTableKind: None)
!349 = !{!343, !346}
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "file_name", scope: !352, file: !353, line: 45, type: !80, isLocal: true, isDefinition: true)
!352 = distinct !DICompileUnit(language: DW_LANG_C11, file: !353, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !354, splitDebugInlining: false, nameTableKind: None)
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
!366 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !367, file: !368, line: 66, type: !414, isLocal: false, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !369, globals: !370, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!369 = !{!75, !82}
!370 = !{!371, !373, !393, !395, !397, !399, !365, !401, !403, !405, !407, !412}
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !368, line: 272, type: !203, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "old_file_name", scope: !375, file: !368, line: 304, type: !80, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "verror_at_line", scope: !368, file: !368, line: 298, type: !376, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !386)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !53, !53, !80, !59, !80, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !380)
!380 = !{!381, !383, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !379, file: !382, baseType: !59, size: 32)
!382 = !DIFile(filename: "lib/error.c", directory: "/src")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !379, file: !382, baseType: !59, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !379, file: !382, baseType: !75, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !379, file: !382, baseType: !75, size: 64, offset: 128)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DILocalVariable(name: "status", arg: 1, scope: !375, file: !368, line: 298, type: !53)
!388 = !DILocalVariable(name: "errnum", arg: 2, scope: !375, file: !368, line: 298, type: !53)
!389 = !DILocalVariable(name: "file_name", arg: 3, scope: !375, file: !368, line: 298, type: !80)
!390 = !DILocalVariable(name: "line_number", arg: 4, scope: !375, file: !368, line: 298, type: !59)
!391 = !DILocalVariable(name: "message", arg: 5, scope: !375, file: !368, line: 298, type: !80)
!392 = !DILocalVariable(name: "args", arg: 6, scope: !375, file: !368, line: 298, type: !378)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "old_line_number", scope: !375, file: !368, line: 305, type: !59, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !368, line: 338, type: !210, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !239, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !217, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "error_message_count", scope: !367, file: !368, line: 69, type: !59, isLocal: false, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !367, file: !368, line: 295, type: !53, isLocal: false, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !19, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 21)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !368, line: 214, type: !203, isLocal: true, isDefinition: true)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null}
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "program_name", scope: !419, file: !420, line: 31, type: !80, isLocal: false, isDefinition: true)
!419 = distinct !DICompileUnit(language: DW_LANG_C11, file: !420, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !421, globals: !422, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!421 = !{!74}
!422 = !{!417, !423, !425}
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !420, line: 46, type: !239, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !420, line: 49, type: !210, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "utf07FF", scope: !429, file: !430, line: 46, type: !457, isLocal: true, isDefinition: true)
!429 = distinct !DISubprogram(name: "proper_name_lite", scope: !430, file: !430, line: 38, type: !431, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !435)
!430 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!431 = !DISubroutineType(types: !432)
!432 = !{!80, !80, !80}
!433 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !434, splitDebugInlining: false, nameTableKind: None)
!434 = !{!427}
!435 = !{!436, !437, !438, !439, !444}
!436 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !429, file: !430, line: 38, type: !80)
!437 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !429, file: !430, line: 38, type: !80)
!438 = !DILocalVariable(name: "translation", scope: !429, file: !430, line: 40, type: !80)
!439 = !DILocalVariable(name: "w", scope: !429, file: !430, line: 47, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !441, line: 37, baseType: !442)
!441 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !59)
!444 = !DILocalVariable(name: "mbs", scope: !429, file: !430, line: 48, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !446, line: 6, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !448, line: 21, baseType: !449)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 13, size: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !449, file: !448, line: 15, baseType: !53, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !449, file: !448, line: 20, baseType: !453, size: 32, offset: 32)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !448, line: 16, size: 32, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !453, file: !448, line: 18, baseType: !59, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !453, file: !448, line: 19, baseType: !210, size: 32)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !218)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !460, line: 78, type: !239, isLocal: true, isDefinition: true)
!460 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !460, line: 79, type: !118, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !460, line: 80, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 13)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !460, line: 81, type: !465, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !460, line: 82, type: !101, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !460, line: 83, type: !217, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !460, line: 84, type: !239, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !460, line: 85, type: !19, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !460, line: 86, type: !19, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !460, line: 87, type: !239, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !484, file: !460, line: 76, type: !570, isLocal: false, isDefinition: true)
!484 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !485, retainedTypes: !505, globals: !506, splitDebugInlining: false, nameTableKind: None)
!485 = !{!486, !500, !57}
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !487, line: 42, baseType: !59, size: 32, elements: !488)
!487 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!489 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!490 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!491 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!492 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!493 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!494 = !DIEnumerator(name: "c_quoting_style", value: 5)
!495 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!496 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!497 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!498 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!499 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!500 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !487, line: 254, baseType: !59, size: 32, elements: !501)
!501 = !{!502, !503, !504}
!502 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!503 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!504 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!505 = !{!53, !76, !77}
!506 = !{!458, !461, !463, !468, !470, !472, !474, !476, !478, !480, !482, !507, !511, !521, !523, !528, !530, !532, !534, !536, !559, !566, !568}
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !484, file: !460, line: 92, type: !509, isLocal: false, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 320, elements: !40)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !484, file: !460, line: 1040, type: !513, isLocal: false, isDefinition: true)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !460, line: 56, size: 448, elements: !514)
!514 = !{!515, !516, !517, !519, !520}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !513, file: !460, line: 59, baseType: !486, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !460, line: 62, baseType: !53, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !513, file: !460, line: 66, baseType: !518, size: 256, offset: 64)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !240)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !513, file: !460, line: 69, baseType: !80, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !513, file: !460, line: 72, baseType: !80, size: 64, offset: 384)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !484, file: !460, line: 107, type: !513, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "slot0", scope: !484, file: !460, line: 831, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 256)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !460, line: 321, type: !217, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !460, line: 357, type: !217, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !460, line: 358, type: !217, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !460, line: 199, type: !19, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "quote", scope: !538, file: !460, line: 228, type: !557, isLocal: true, isDefinition: true)
!538 = distinct !DISubprogram(name: "gettext_quote", scope: !460, file: !460, line: 197, type: !539, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!80, !80, !486}
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(name: "msgid", arg: 1, scope: !538, file: !460, line: 197, type: !80)
!543 = !DILocalVariable(name: "s", arg: 2, scope: !538, file: !460, line: 197, type: !486)
!544 = !DILocalVariable(name: "translation", scope: !538, file: !460, line: 199, type: !80)
!545 = !DILocalVariable(name: "w", scope: !538, file: !460, line: 229, type: !440)
!546 = !DILocalVariable(name: "mbs", scope: !538, file: !460, line: 230, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !446, line: 6, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !448, line: 21, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 13, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !549, file: !448, line: 15, baseType: !53, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !549, file: !448, line: 20, baseType: !553, size: 32, offset: 32)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !448, line: 16, size: 32, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !553, file: !448, line: 18, baseType: !59, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !553, file: !448, line: 19, baseType: !210, size: 32)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !558)
!558 = !{!219, !212}
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "slotvec", scope: !484, file: !460, line: 834, type: !561, isLocal: true, isDefinition: true)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !460, line: 823, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !460, line: 825, baseType: !77, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !562, file: !460, line: 826, baseType: !74, size: 64, offset: 64)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "nslots", scope: !484, file: !460, line: 832, type: !53, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "slotvec0", scope: !484, file: !460, line: 833, type: !562, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 704, elements: !572)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!572 = !{!573}
!573 = !DISubrange(count: 11)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !576, line: 67, type: !304, isLocal: true, isDefinition: true)
!576 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !576, line: 69, type: !19, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !576, line: 83, type: !19, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !576, line: 83, type: !210, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !576, line: 85, type: !217, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !576, line: 88, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 171)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !576, line: 88, type: !336, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !576, line: 105, type: !91, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !576, line: 109, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 23)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !576, line: 113, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 28)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !576, line: 120, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 32)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !576, line: 127, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 36)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !576, line: 134, type: !258, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !576, line: 142, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 44)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !576, line: 150, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 48)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !576, line: 159, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 52)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !576, line: 170, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 60)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !576, line: 248, type: !101, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !576, line: 248, type: !280, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !576, line: 254, type: !101, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !576, line: 254, type: !86, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !576, line: 254, type: !258, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !576, line: 259, type: !3, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !576, line: 259, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 29)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !655, file: !656, line: 26, type: !658, isLocal: false, isDefinition: true)
!655 = distinct !DICompileUnit(language: DW_LANG_C11, file: !656, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !657, splitDebugInlining: false, nameTableKind: None)
!656 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!657 = !{!653}
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 47)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "exit_failure", scope: !663, file: !664, line: 24, type: !666, isLocal: false, isDefinition: true)
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !665, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!665 = !{!661}
!666 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !669, line: 34, type: !226, isLocal: true, isDefinition: true)
!669 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !669, line: 34, type: !19, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !669, line: 34, type: !113, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 108, type: !34, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(name: "internal_state", scope: !679, file: !676, line: 97, type: !682, isLocal: true, isDefinition: true)
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !680, globals: !681, splitDebugInlining: false, nameTableKind: None)
!680 = !{!75, !77, !82}
!681 = !{!674, !677}
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !446, line: 6, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !448, line: 21, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 13, size: 64, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !684, file: !448, line: 15, baseType: !53, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !684, file: !448, line: 20, baseType: !688, size: 32, offset: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !448, line: 16, size: 32, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !688, file: !448, line: 18, baseType: !59, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !688, file: !448, line: 19, baseType: !210, size: 32)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !694, line: 35, type: !118, isLocal: true, isDefinition: true)
!694 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !325, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !696, globals: !700, splitDebugInlining: false, nameTableKind: None)
!696 = !{!75, !697, !82}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !698, line: 102, baseType: !699)
!698 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !173, line: 73, baseType: !79)
!700 = !{!323, !329, !334, !339, !341}
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !576, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !706, retainedTypes: !710, globals: !711, splitDebugInlining: false, nameTableKind: None)
!706 = !{!707}
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 40, baseType: !59, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!710 = !{!75}
!711 = !{!574, !577, !579, !581, !583, !585, !590, !592, !594, !599, !604, !609, !614, !616, !621, !626, !631, !636, !638, !640, !642, !644, !646, !648}
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !714, retainedTypes: !745, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!714 = !{!715, !727}
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !716, file: !713, line: 188, baseType: !59, size: 32, elements: !725)
!716 = distinct !DISubprogram(name: "x2nrealloc", scope: !713, file: !713, line: 176, type: !717, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !720)
!717 = !DISubroutineType(types: !718)
!718 = !{!75, !75, !719, !77}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!720 = !{!721, !722, !723, !724}
!721 = !DILocalVariable(name: "p", arg: 1, scope: !716, file: !713, line: 176, type: !75)
!722 = !DILocalVariable(name: "pn", arg: 2, scope: !716, file: !713, line: 176, type: !719)
!723 = !DILocalVariable(name: "s", arg: 3, scope: !716, file: !713, line: 176, type: !77)
!724 = !DILocalVariable(name: "n", scope: !716, file: !713, line: 178, type: !77)
!725 = !{!726}
!726 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!727 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !728, file: !713, line: 228, baseType: !59, size: 32, elements: !725)
!728 = distinct !DISubprogram(name: "xpalloc", scope: !713, file: !713, line: 223, type: !729, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !735)
!729 = !DISubroutineType(types: !730)
!730 = !{!75, !75, !731, !732, !734, !732}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !733, line: 130, baseType: !734)
!733 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !78, line: 35, baseType: !174)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744}
!736 = !DILocalVariable(name: "pa", arg: 1, scope: !728, file: !713, line: 223, type: !75)
!737 = !DILocalVariable(name: "pn", arg: 2, scope: !728, file: !713, line: 223, type: !731)
!738 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !728, file: !713, line: 223, type: !732)
!739 = !DILocalVariable(name: "n_max", arg: 4, scope: !728, file: !713, line: 223, type: !734)
!740 = !DILocalVariable(name: "s", arg: 5, scope: !728, file: !713, line: 223, type: !732)
!741 = !DILocalVariable(name: "n0", scope: !728, file: !713, line: 230, type: !732)
!742 = !DILocalVariable(name: "n", scope: !728, file: !713, line: 237, type: !732)
!743 = !DILocalVariable(name: "nbytes", scope: !728, file: !713, line: 248, type: !732)
!744 = !DILocalVariable(name: "adjusted_nbytes", scope: !728, file: !713, line: 252, type: !732)
!745 = !{!74, !75, !133, !174, !79}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !747, splitDebugInlining: false, nameTableKind: None)
!747 = !{!667, !670, !672}
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !710, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !710, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !760, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
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
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!801 = !{!133, !79, !75}
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !803, splitDebugInlining: false, nameTableKind: None)
!803 = !{!804, !692}
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !694, line: 35, type: !217, isLocal: true, isDefinition: true)
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !710, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!810 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!811 = !{i32 7, !"Dwarf Version", i32 5}
!812 = !{i32 2, !"Debug Info Version", i32 3}
!813 = !{i32 1, !"wchar_size", i32 4}
!814 = !{i32 8, !"PIC Level", i32 2}
!815 = !{i32 7, !"PIE Level", i32 2}
!816 = !{i32 7, !"uwtable", i32 2}
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
!856 = !DILocation(line: 857, column: 3, scope: !838, inlinedAt: !855)
!857 = !DILocation(line: 861, column: 29, scope: !838, inlinedAt: !855)
!858 = !DILocation(line: 862, column: 7, scope: !859, inlinedAt: !855)
!859 = distinct !DILexicalBlock(scope: !838, file: !52, line: 862, column: 7)
!860 = !DILocation(line: 862, column: 19, scope: !859, inlinedAt: !855)
!861 = !DILocation(line: 862, column: 22, scope: !859, inlinedAt: !855)
!862 = !DILocation(line: 862, column: 7, scope: !838, inlinedAt: !855)
!863 = !DILocation(line: 868, column: 7, scope: !864, inlinedAt: !855)
!864 = distinct !DILexicalBlock(scope: !859, file: !52, line: 863, column: 5)
!865 = !DILocation(line: 870, column: 5, scope: !864, inlinedAt: !855)
!866 = !DILocation(line: 875, column: 3, scope: !838, inlinedAt: !855)
!867 = !DILocation(line: 877, column: 3, scope: !838, inlinedAt: !855)
!868 = !DILocation(line: 63, column: 3, scope: !817)
!869 = !DISubprogram(name: "dcgettext", scope: !870, file: !870, line: 51, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!870 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!871 = !DISubroutineType(types: !872)
!872 = !{!74, !80, !80, !53}
!873 = !{}
!874 = !DISubprogram(name: "__fprintf_chk", scope: !875, file: !875, line: 93, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!876 = !DISubroutineType(types: !877)
!877 = !{!53, !878, !53, !879, null}
!878 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!880 = !DISubprogram(name: "__printf_chk", scope: !875, file: !875, line: 95, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!881 = !DISubroutineType(types: !882)
!882 = !{!53, !53, !879, null}
!883 = !DISubprogram(name: "fputs_unlocked", scope: !884, file: !884, line: 691, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
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
!940 = !DILocation(line: 618, column: 5, scope: !137)
!941 = !DILocation(line: 620, column: 23, scope: !123)
!942 = !DILocation(line: 625, column: 39, scope: !123)
!943 = !DILocation(line: 626, column: 3, scope: !123)
!944 = !DILocation(line: 626, column: 10, scope: !123)
!945 = !DILocation(line: 626, column: 21, scope: !123)
!946 = !DILocation(line: 628, column: 44, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !52, line: 628, column: 11)
!948 = distinct !DILexicalBlock(scope: !123, file: !52, line: 627, column: 5)
!949 = !DILocation(line: 628, column: 32, scope: !947)
!950 = !DILocation(line: 628, column: 49, scope: !947)
!951 = !DILocation(line: 628, column: 11, scope: !948)
!952 = !DILocation(line: 630, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !52, line: 630, column: 11)
!954 = !DILocation(line: 630, column: 11, scope: !948)
!955 = !DILocation(line: 632, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !52, line: 632, column: 15)
!957 = distinct !DILexicalBlock(scope: !953, file: !52, line: 631, column: 9)
!958 = !DILocation(line: 632, column: 34, scope: !956)
!959 = !DILocation(line: 632, column: 37, scope: !956)
!960 = !DILocation(line: 632, column: 15, scope: !957)
!961 = !DILocation(line: 636, column: 16, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !52, line: 636, column: 15)
!963 = !DILocation(line: 636, column: 29, scope: !962)
!964 = !DILocation(line: 640, column: 16, scope: !948)
!965 = distinct !{!965, !943, !966, !936}
!966 = !DILocation(line: 641, column: 5, scope: !123)
!967 = !DILocation(line: 644, column: 3, scope: !123)
!968 = !DILocation(line: 0, scope: !901, inlinedAt: !969)
!969 = distinct !DILocation(line: 648, column: 31, scope: !123)
!970 = !DILocation(line: 0, scope: !901, inlinedAt: !971)
!971 = distinct !DILocation(line: 649, column: 31, scope: !123)
!972 = !DILocation(line: 0, scope: !901, inlinedAt: !973)
!973 = distinct !DILocation(line: 650, column: 31, scope: !123)
!974 = !DILocation(line: 0, scope: !901, inlinedAt: !975)
!975 = distinct !DILocation(line: 651, column: 31, scope: !123)
!976 = !DILocation(line: 0, scope: !901, inlinedAt: !977)
!977 = distinct !DILocation(line: 652, column: 31, scope: !123)
!978 = !DILocation(line: 0, scope: !901, inlinedAt: !979)
!979 = distinct !DILocation(line: 653, column: 31, scope: !123)
!980 = !DILocation(line: 0, scope: !901, inlinedAt: !981)
!981 = distinct !DILocation(line: 654, column: 31, scope: !123)
!982 = !DILocation(line: 0, scope: !901, inlinedAt: !983)
!983 = distinct !DILocation(line: 655, column: 31, scope: !123)
!984 = !DILocation(line: 0, scope: !901, inlinedAt: !985)
!985 = distinct !DILocation(line: 656, column: 31, scope: !123)
!986 = !DILocation(line: 0, scope: !901, inlinedAt: !987)
!987 = distinct !DILocation(line: 657, column: 31, scope: !123)
!988 = !DILocation(line: 663, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !123, file: !52, line: 663, column: 7)
!990 = !DILocation(line: 664, column: 7, scope: !989)
!991 = !DILocation(line: 664, column: 10, scope: !989)
!992 = !DILocation(line: 663, column: 7, scope: !123)
!993 = !DILocation(line: 669, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !52, line: 665, column: 5)
!995 = !DILocation(line: 671, column: 5, scope: !994)
!996 = !DILocation(line: 676, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !52, line: 673, column: 5)
!998 = !DILocation(line: 679, column: 3, scope: !123)
!999 = !DILocation(line: 683, column: 3, scope: !123)
!1000 = !DILocation(line: 686, column: 3, scope: !123)
!1001 = !DILocation(line: 688, column: 3, scope: !123)
!1002 = !DILocation(line: 691, column: 3, scope: !123)
!1003 = !DILocation(line: 695, column: 3, scope: !123)
!1004 = !DILocation(line: 696, column: 1, scope: !123)
!1005 = !DISubprogram(name: "setlocale", scope: !1006, file: !1006, line: 122, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1006 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!74, !53, !80}
!1009 = !DISubprogram(name: "strncmp", scope: !1010, file: !1010, line: 159, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1010 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!53, !80, !80, !77}
!1013 = !DISubprogram(name: "exit", scope: !1014, file: !1014, line: 624, type: !818, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1014 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1015 = !DISubprogram(name: "getenv", scope: !1014, file: !1014, line: 641, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!74, !80}
!1018 = !DISubprogram(name: "strcmp", scope: !1010, file: !1010, line: 156, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!53, !80, !80}
!1021 = !DISubprogram(name: "strspn", scope: !1010, file: !1010, line: 297, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!79, !80, !80}
!1024 = !DISubprogram(name: "strchr", scope: !1010, file: !1010, line: 246, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!74, !80, !53}
!1027 = !DISubprogram(name: "__ctype_b_loc", scope: !58, file: !58, line: 79, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1033 = !DISubprogram(name: "strcspn", scope: !1010, file: !1010, line: 293, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1034 = !DISubprogram(name: "fwrite_unlocked", scope: !884, file: !884, line: 704, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!77, !1037, !77, !77, !878}
!1037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1040 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 67, type: !1041, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1044)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!53, !53, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1054, !1055, !1056, !1057, !1058, !1074, !1075, !1076}
!1045 = !DILocalVariable(name: "argc", arg: 1, scope: !1040, file: !2, line: 67, type: !53)
!1046 = !DILocalVariable(name: "argv", arg: 2, scope: !1040, file: !2, line: 67, type: !1043)
!1047 = !DILocalVariable(name: "optc", scope: !1040, file: !2, line: 79, type: !53)
!1048 = !DILocalVariable(name: "ok", scope: !1040, file: !2, line: 91, type: !133)
!1049 = !DILocalVariable(name: "NO_UID", scope: !1050, file: !2, line: 95, type: !1052)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 93, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 92, column: 7)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !766, line: 79, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !173, line: 146, baseType: !59)
!1054 = !DILocalVariable(name: "NO_GID", scope: !1050, file: !2, line: 96, type: !765)
!1055 = !DILocalVariable(name: "ruid", scope: !1050, file: !2, line: 99, type: !1052)
!1056 = !DILocalVariable(name: "egid", scope: !1050, file: !2, line: 104, type: !765)
!1057 = !DILocalVariable(name: "rgid", scope: !1050, file: !2, line: 109, type: !765)
!1058 = !DILocalVariable(name: "pwd", scope: !1059, file: !2, line: 122, type: !1063)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 121, column: 9)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 120, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 120, column: 7)
!1062 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 118, column: 5)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1065, line: 49, size: 384, elements: !1066)
!1065 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1064, file: !1065, line: 51, baseType: !74, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1064, file: !1065, line: 52, baseType: !74, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1064, file: !1065, line: 54, baseType: !1053, size: 32, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1064, file: !1065, line: 55, baseType: !767, size: 32, offset: 160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1064, file: !1065, line: 56, baseType: !74, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1064, file: !1065, line: 57, baseType: !74, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1064, file: !1065, line: 58, baseType: !74, size: 64, offset: 320)
!1074 = !DILocalVariable(name: "ruid", scope: !1059, file: !2, line: 129, type: !1052)
!1075 = !DILocalVariable(name: "rgid", scope: !1059, file: !2, line: 130, type: !765)
!1076 = !DILocalVariable(name: "egid", scope: !1059, file: !2, line: 131, type: !765)
!1077 = !DILocation(line: 0, scope: !1040)
!1078 = !DILocation(line: 70, column: 21, scope: !1040)
!1079 = !DILocation(line: 70, column: 3, scope: !1040)
!1080 = !DILocation(line: 71, column: 3, scope: !1040)
!1081 = !DILocation(line: 72, column: 3, scope: !1040)
!1082 = !DILocation(line: 73, column: 3, scope: !1040)
!1083 = !DILocation(line: 75, column: 3, scope: !1040)
!1084 = !DILocation(line: 80, column: 18, scope: !1040)
!1085 = !DILocation(line: 80, column: 3, scope: !1040)
!1086 = !DILocation(line: 84, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 83, column: 9)
!1088 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 81, column: 5)
!1089 = !DILocation(line: 85, column: 9, scope: !1087)
!1090 = !DILocation(line: 87, column: 11, scope: !1087)
!1091 = !DILocation(line: 92, column: 7, scope: !1051)
!1092 = !DILocation(line: 92, column: 14, scope: !1051)
!1093 = !DILocation(line: 92, column: 7, scope: !1040)
!1094 = !DILocation(line: 120, column: 22, scope: !1060)
!1095 = !DILocation(line: 120, column: 7, scope: !1061)
!1096 = !DILocation(line: 0, scope: !1050)
!1097 = !DILocation(line: 98, column: 7, scope: !1050)
!1098 = !DILocation(line: 98, column: 13, scope: !1050)
!1099 = !DILocation(line: 99, column: 20, scope: !1050)
!1100 = !DILocation(line: 100, column: 16, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 100, column: 11)
!1102 = !DILocation(line: 100, column: 26, scope: !1101)
!1103 = !DILocation(line: 100, column: 29, scope: !1101)
!1104 = !DILocation(line: 100, column: 11, scope: !1050)
!1105 = !DILocation(line: 101, column: 9, scope: !1101)
!1106 = !DILocation(line: 103, column: 13, scope: !1050)
!1107 = !DILocation(line: 104, column: 20, scope: !1050)
!1108 = !DILocation(line: 105, column: 16, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 105, column: 11)
!1110 = !DILocation(line: 105, column: 26, scope: !1109)
!1111 = !DILocation(line: 105, column: 29, scope: !1109)
!1112 = !DILocation(line: 105, column: 11, scope: !1050)
!1113 = !DILocation(line: 106, column: 9, scope: !1109)
!1114 = !DILocation(line: 108, column: 13, scope: !1050)
!1115 = !DILocation(line: 109, column: 20, scope: !1050)
!1116 = !DILocation(line: 110, column: 16, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 110, column: 11)
!1118 = !DILocation(line: 110, column: 26, scope: !1117)
!1119 = !DILocation(line: 110, column: 29, scope: !1117)
!1120 = !DILocation(line: 110, column: 11, scope: !1050)
!1121 = !DILocation(line: 111, column: 9, scope: !1117)
!1122 = !DILocation(line: 113, column: 12, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 113, column: 11)
!1124 = !DILocation(line: 113, column: 11, scope: !1050)
!1125 = !DILocalVariable(name: "__c", arg: 1, scope: !1126, file: !1127, line: 108, type: !53)
!1126 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1127, file: !1127, line: 108, type: !1128, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1130)
!1127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!53, !53}
!1130 = !{!1125}
!1131 = !DILocation(line: 0, scope: !1126, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 115, column: 7, scope: !1050)
!1133 = !DILocation(line: 110, column: 10, scope: !1126, inlinedAt: !1132)
!1134 = !{!1135, !829, i64 40}
!1135 = !{!"_IO_FILE", !890, i64 0, !829, i64 8, !829, i64 16, !829, i64 24, !829, i64 32, !829, i64 40, !829, i64 48, !829, i64 56, !829, i64 64, !829, i64 72, !829, i64 80, !829, i64 88, !829, i64 96, !829, i64 104, !890, i64 112, !890, i64 116, !1136, i64 120, !931, i64 128, !830, i64 130, !830, i64 131, !829, i64 136, !1136, i64 144, !829, i64 152, !829, i64 160, !829, i64 168, !829, i64 176, !1136, i64 184, !890, i64 192, !830, i64 196}
!1136 = !{!"long", !830, i64 0}
!1137 = !{!1135, !829, i64 48}
!1138 = !{!"branch_weights", i32 2000, i32 1}
!1139 = !DILocation(line: 122, column: 42, scope: !1059)
!1140 = !DILocation(line: 122, column: 32, scope: !1059)
!1141 = !DILocation(line: 0, scope: !1059)
!1142 = !DILocation(line: 123, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 123, column: 15)
!1144 = !DILocation(line: 123, column: 15, scope: !1059)
!1145 = !DILocation(line: 125, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 124, column: 13)
!1147 = !DILocation(line: 127, column: 15, scope: !1146)
!1148 = !DILocation(line: 129, column: 29, scope: !1059)
!1149 = !{!1150, !890, i64 16}
!1150 = !{!"passwd", !829, i64 0, !829, i64 8, !890, i64 16, !890, i64 20, !829, i64 24, !829, i64 32, !829, i64 40}
!1151 = !DILocation(line: 130, column: 29, scope: !1059)
!1152 = !{!1150, !890, i64 20}
!1153 = !DILocation(line: 133, column: 11, scope: !1059)
!1154 = !DILocation(line: 134, column: 39, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 134, column: 15)
!1156 = !DILocation(line: 134, column: 34, scope: !1155)
!1157 = !DILocation(line: 134, column: 16, scope: !1155)
!1158 = !DILocation(line: 134, column: 15, scope: !1059)
!1159 = !DILocation(line: 0, scope: !1126, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 136, column: 11, scope: !1059)
!1161 = !DILocation(line: 110, column: 10, scope: !1126, inlinedAt: !1160)
!1162 = !DILocation(line: 138, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 138, column: 15)
!1164 = !DILocalVariable(name: "__stream", arg: 1, scope: !1165, file: !1127, line: 135, type: !146)
!1165 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1127, file: !1127, line: 135, type: !1166, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!53, !146}
!1168 = !{!1164}
!1169 = !DILocation(line: 0, scope: !1165, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 138, column: 15, scope: !1163)
!1171 = !DILocation(line: 137, column: 10, scope: !1165, inlinedAt: !1170)
!1172 = !{!1135, !890, i64 0}
!1173 = !DILocation(line: 138, column: 15, scope: !1059)
!1174 = !DILocation(line: 948, column: 21, scope: !1175, inlinedAt: !1178)
!1175 = distinct !DISubprogram(name: "write_error", scope: !52, file: !52, line: 946, type: !415, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1176)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "saved_errno", scope: !1175, file: !52, line: 948, type: !53)
!1178 = distinct !DILocation(line: 139, column: 13, scope: !1163)
!1179 = !DILocation(line: 0, scope: !1175, inlinedAt: !1178)
!1180 = !DILocation(line: 949, column: 3, scope: !1175, inlinedAt: !1178)
!1181 = !DILocation(line: 950, column: 11, scope: !1175, inlinedAt: !1178)
!1182 = !DILocation(line: 950, column: 3, scope: !1175, inlinedAt: !1178)
!1183 = !DILocation(line: 951, column: 3, scope: !1175, inlinedAt: !1178)
!1184 = !DILocation(line: 952, column: 3, scope: !1175, inlinedAt: !1178)
!1185 = !DILocation(line: 120, column: 36, scope: !1060)
!1186 = distinct !{!1186, !1095, !1187, !936}
!1187 = !DILocation(line: 140, column: 9, scope: !1061)
!1188 = !DILocation(line: 91, column: 8, scope: !1040)
!1189 = !DILocation(line: 143, column: 10, scope: !1040)
!1190 = !DILocation(line: 144, column: 1, scope: !1040)
!1191 = !DISubprogram(name: "bindtextdomain", scope: !870, file: !870, line: 86, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!74, !80, !80}
!1194 = !DISubprogram(name: "textdomain", scope: !870, file: !870, line: 82, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1195 = !DISubprogram(name: "atexit", scope: !1014, file: !1014, line: 602, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!53, !414}
!1198 = !DISubprogram(name: "getopt_long", scope: !316, file: !316, line: 66, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!53, !53, !1201, !80, !1203, !321}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1204 = !DISubprogram(name: "__errno_location", scope: !1205, file: !1205, line: 37, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1205 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!321}
!1208 = !DISubprogram(name: "getuid", scope: !1209, file: !1209, line: 697, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1209 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1053}
!1212 = !DISubprogram(name: "getegid", scope: !1209, file: !1209, line: 706, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!767}
!1215 = !DISubprogram(name: "getgid", scope: !1209, file: !1209, line: 703, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1216 = !DISubprogram(name: "__overflow", scope: !884, file: !884, line: 886, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!53, !146, !53}
!1219 = !DISubprogram(name: "getpwnam", scope: !1065, file: !1065, line: 116, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1063, !80}
!1222 = !DISubprogram(name: "fflush_unlocked", scope: !884, file: !884, line: 239, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1223 = !DISubprogram(name: "clearerr_unlocked", scope: !884, file: !884, line: 794, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !146}
!1226 = distinct !DISubprogram(name: "print_group_list", scope: !325, file: !325, line: 35, type: !1227, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !1229)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!133, !80, !1052, !765, !765, !133, !4}
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1248, !1250, !1251}
!1230 = !DILocalVariable(name: "username", arg: 1, scope: !1226, file: !325, line: 35, type: !80)
!1231 = !DILocalVariable(name: "ruid", arg: 2, scope: !1226, file: !325, line: 36, type: !1052)
!1232 = !DILocalVariable(name: "rgid", arg: 3, scope: !1226, file: !325, line: 36, type: !765)
!1233 = !DILocalVariable(name: "egid", arg: 4, scope: !1226, file: !325, line: 36, type: !765)
!1234 = !DILocalVariable(name: "use_names", arg: 5, scope: !1226, file: !325, line: 37, type: !133)
!1235 = !DILocalVariable(name: "delim", arg: 6, scope: !1226, file: !325, line: 37, type: !4)
!1236 = !DILocalVariable(name: "ok", scope: !1226, file: !325, line: 39, type: !133)
!1237 = !DILocalVariable(name: "pwd", scope: !1226, file: !325, line: 40, type: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1065, line: 49, size: 384, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1239, file: !1065, line: 51, baseType: !74, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1239, file: !1065, line: 52, baseType: !74, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1239, file: !1065, line: 54, baseType: !1053, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1239, file: !1065, line: 55, baseType: !767, size: 32, offset: 160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1239, file: !1065, line: 56, baseType: !74, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1239, file: !1065, line: 57, baseType: !74, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1239, file: !1065, line: 58, baseType: !74, size: 64, offset: 320)
!1248 = !DILocalVariable(name: "groups", scope: !1249, file: !325, line: 60, type: !769)
!1249 = distinct !DILexicalBlock(scope: !1226, file: !325, line: 59, column: 3)
!1250 = !DILocalVariable(name: "n_groups", scope: !1249, file: !325, line: 62, type: !53)
!1251 = !DILocalVariable(name: "i", scope: !1252, file: !325, line: 77, type: !53)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !325, line: 77, column: 5)
!1253 = !DILocation(line: 0, scope: !1226)
!1254 = !DILocation(line: 42, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1226, file: !325, line: 42, column: 7)
!1256 = !DILocation(line: 42, column: 7, scope: !1226)
!1257 = !DILocation(line: 44, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !325, line: 43, column: 5)
!1259 = !DILocation(line: 45, column: 15, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !325, line: 45, column: 11)
!1261 = !DILocation(line: 45, column: 11, scope: !1258)
!1262 = !DILocalVariable(name: "gid", arg: 1, scope: !1263, file: !325, line: 91, type: !765)
!1263 = distinct !DISubprogram(name: "print_group", scope: !325, file: !325, line: 91, type: !1264, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!133, !765, !133}
!1266 = !{!1262, !1267, !1268, !1277, !1278}
!1267 = !DILocalVariable(name: "use_name", arg: 2, scope: !1263, file: !325, line: 91, type: !133)
!1268 = !DILocalVariable(name: "grp", scope: !1263, file: !325, line: 93, type: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1271, line: 42, size: 256, elements: !1272)
!1271 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1270, file: !1271, line: 44, baseType: !74, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1270, file: !1271, line: 45, baseType: !74, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1270, file: !1271, line: 46, baseType: !767, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1270, file: !1271, line: 47, baseType: !1043, size: 64, offset: 192)
!1277 = !DILocalVariable(name: "ok", scope: !1263, file: !325, line: 94, type: !133)
!1278 = !DILocalVariable(name: "g", scope: !1279, file: !325, line: 108, type: !697)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !325, line: 107, column: 13)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !325, line: 101, column: 15)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !325, line: 100, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !325, line: 99, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !325, line: 97, column: 5)
!1284 = distinct !DILexicalBlock(scope: !1263, file: !325, line: 96, column: 7)
!1285 = !DILocation(line: 0, scope: !1263, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 49, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1226, file: !325, line: 49, column: 7)
!1288 = !DILocation(line: 96, column: 7, scope: !1263, inlinedAt: !1286)
!1289 = !DILocation(line: 118, column: 5, scope: !1290, inlinedAt: !1286)
!1290 = distinct !DILexicalBlock(scope: !1263, file: !325, line: 115, column: 7)
!1291 = !DILocation(line: 49, column: 7, scope: !1226)
!1292 = !DILocation(line: 98, column: 13, scope: !1283, inlinedAt: !1286)
!1293 = !DILocation(line: 99, column: 15, scope: !1282, inlinedAt: !1286)
!1294 = !DILocation(line: 99, column: 11, scope: !1283, inlinedAt: !1286)
!1295 = !DILocation(line: 116, column: 5, scope: !1290, inlinedAt: !1286)
!1296 = !{!1297, !829, i64 0}
!1297 = !{!"group", !829, i64 0, !829, i64 8, !890, i64 16, !829, i64 24}
!1298 = !DILocation(line: 108, column: 29, scope: !1279, inlinedAt: !1286)
!1299 = !DILocation(line: 0, scope: !1279, inlinedAt: !1286)
!1300 = !DILocation(line: 109, column: 15, scope: !1279, inlinedAt: !1286)
!1301 = !DILocation(line: 52, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1226, file: !325, line: 52, column: 7)
!1303 = !DILocation(line: 52, column: 7, scope: !1226)
!1304 = !DILocalVariable(name: "__c", arg: 1, scope: !1305, file: !1127, line: 108, type: !53)
!1305 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1127, file: !1127, line: 108, type: !1128, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !1306)
!1306 = !{!1304}
!1307 = !DILocation(line: 0, scope: !1305, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 54, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !325, line: 53, column: 5)
!1310 = !DILocation(line: 110, column: 10, scope: !1305, inlinedAt: !1308)
!1311 = !DILocation(line: 54, column: 7, scope: !1309)
!1312 = !DILocation(line: 0, scope: !1263, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 55, column: 12, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !325, line: 55, column: 11)
!1315 = !DILocation(line: 96, column: 7, scope: !1263, inlinedAt: !1313)
!1316 = !DILocation(line: 118, column: 5, scope: !1290, inlinedAt: !1313)
!1317 = !DILocation(line: 55, column: 11, scope: !1309)
!1318 = !DILocation(line: 98, column: 13, scope: !1283, inlinedAt: !1313)
!1319 = !DILocation(line: 99, column: 15, scope: !1282, inlinedAt: !1313)
!1320 = !DILocation(line: 99, column: 11, scope: !1283, inlinedAt: !1313)
!1321 = !DILocation(line: 116, column: 5, scope: !1290, inlinedAt: !1313)
!1322 = !DILocation(line: 108, column: 29, scope: !1279, inlinedAt: !1313)
!1323 = !DILocation(line: 0, scope: !1279, inlinedAt: !1313)
!1324 = !DILocation(line: 109, column: 15, scope: !1279, inlinedAt: !1313)
!1325 = !DILocation(line: 60, column: 5, scope: !1249)
!1326 = !DILocation(line: 62, column: 43, scope: !1249)
!1327 = !DILocation(line: 62, column: 54, scope: !1249)
!1328 = !DILocation(line: 0, scope: !1249)
!1329 = !DILocation(line: 62, column: 20, scope: !1249)
!1330 = !DILocation(line: 63, column: 18, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1249, file: !325, line: 63, column: 9)
!1332 = !DILocation(line: 63, column: 9, scope: !1249)
!1333 = !DILocation(line: 0, scope: !1252)
!1334 = !DILocation(line: 77, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1252, file: !325, line: 77, column: 5)
!1336 = !DILocation(line: 77, column: 5, scope: !1252)
!1337 = !DILocation(line: 0, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !325, line: 65, column: 13)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !325, line: 64, column: 7)
!1340 = !DILocation(line: 65, column: 13, scope: !1339)
!1341 = !DILocation(line: 67, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !325, line: 66, column: 11)
!1343 = !DILocation(line: 69, column: 11, scope: !1342)
!1344 = !DILocation(line: 72, column: 13, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !325, line: 71, column: 11)
!1346 = !DILocation(line: 46, column: 12, scope: !1260)
!1347 = !DILocation(line: 84, column: 11, scope: !1249)
!1348 = !DILocation(line: 84, column: 5, scope: !1249)
!1349 = !DILocation(line: 85, column: 3, scope: !1226)
!1350 = !DILocation(line: 78, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1335, file: !325, line: 78, column: 11)
!1352 = !DILocation(line: 78, column: 21, scope: !1351)
!1353 = !DILocation(line: 78, column: 29, scope: !1351)
!1354 = !DILocation(line: 0, scope: !1305, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 80, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !325, line: 79, column: 9)
!1357 = !DILocation(line: 110, column: 10, scope: !1305, inlinedAt: !1355)
!1358 = !DILocation(line: 81, column: 29, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !325, line: 81, column: 15)
!1360 = !DILocation(line: 0, scope: !1263, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 81, column: 16, scope: !1359)
!1362 = !DILocation(line: 96, column: 7, scope: !1263, inlinedAt: !1361)
!1363 = !DILocation(line: 118, column: 5, scope: !1290, inlinedAt: !1361)
!1364 = !DILocation(line: 81, column: 15, scope: !1356)
!1365 = !DILocation(line: 98, column: 13, scope: !1283, inlinedAt: !1361)
!1366 = !DILocation(line: 99, column: 15, scope: !1282, inlinedAt: !1361)
!1367 = !DILocation(line: 99, column: 11, scope: !1283, inlinedAt: !1361)
!1368 = !DILocation(line: 116, column: 5, scope: !1290, inlinedAt: !1361)
!1369 = !DILocation(line: 108, column: 29, scope: !1279, inlinedAt: !1361)
!1370 = !DILocation(line: 0, scope: !1279, inlinedAt: !1361)
!1371 = !DILocation(line: 109, column: 15, scope: !1279, inlinedAt: !1361)
!1372 = !DILocation(line: 77, column: 36, scope: !1335)
!1373 = distinct !{!1373, !1336, !1374, !936}
!1374 = !DILocation(line: 83, column: 9, scope: !1252)
!1375 = !DILocation(line: 87, column: 1, scope: !1226)
!1376 = !DISubprogram(name: "getpwuid", scope: !1065, file: !1065, line: 110, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1238, !1053}
!1379 = !DISubprogram(name: "getgrgid", scope: !1271, file: !1271, line: 101, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1269, !767}
!1382 = !DISubprogram(name: "free", scope: !1014, file: !1014, line: 555, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !75}
!1385 = !DILocation(line: 0, scope: !1263)
!1386 = !DILocation(line: 96, column: 7, scope: !1263)
!1387 = !DILocation(line: 118, column: 5, scope: !1290)
!1388 = !DILocation(line: 98, column: 13, scope: !1283)
!1389 = !DILocation(line: 99, column: 15, scope: !1282)
!1390 = !DILocation(line: 99, column: 11, scope: !1283)
!1391 = !DILocation(line: 108, column: 29, scope: !1279)
!1392 = !DILocation(line: 0, scope: !1279)
!1393 = !DILocation(line: 109, column: 15, scope: !1279)
!1394 = !DILocation(line: 112, column: 9, scope: !1281)
!1395 = !DILocation(line: 116, column: 5, scope: !1290)
!1396 = !DILocation(line: 119, column: 3, scope: !1263)
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
!1413 = distinct !DISubprogram(name: "close_stdout", scope: !353, file: !353, line: 116, type: !415, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1414)
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
!1446 = !DISubprogram(name: "_exit", scope: !1209, file: !1209, line: 624, type: !818, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
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
!1465 = distinct !DISubprogram(name: "flush_stdout", scope: !368, file: !368, line: 163, type: !415, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1466)
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "stdout_fd", scope: !1465, file: !368, line: 166, type: !53)
!1468 = !DILocation(line: 0, scope: !1465)
!1469 = !DILocalVariable(name: "fd", arg: 1, scope: !1470, file: !368, line: 145, type: !53)
!1470 = distinct !DISubprogram(name: "is_open", scope: !368, file: !368, line: 145, type: !1128, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1471)
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
!1486 = !DILocation(line: 0, scope: !1480)
!1487 = !DILocation(line: 229, column: 13, scope: !1480)
!1488 = !DILocalVariable(name: "__stream", arg: 1, scope: !1489, file: !875, line: 132, type: !1492)
!1489 = distinct !DISubprogram(name: "vfprintf", scope: !875, file: !875, line: 132, type: !1490, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1527)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!53, !1492, !879, !378}
!1492 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1495, file: !150, line: 51, baseType: !53, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1495, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1495, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1495, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1495, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1495, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1495, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1495, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1495, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1495, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1495, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1495, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1495, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1495, file: !150, line: 70, baseType: !1511, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1495, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1495, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1495, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1495, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1495, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1495, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1495, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1495, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1495, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1495, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1495, file: !150, line: 93, baseType: !1511, size: 64, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1495, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1495, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1495, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1495, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1527 = !{!1488, !1528, !1529}
!1528 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1489, file: !875, line: 133, type: !879)
!1529 = !DILocalVariable(name: "__ap", arg: 3, scope: !1489, file: !875, line: 133, type: !378)
!1530 = !DILocation(line: 0, scope: !1489, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 229, column: 3, scope: !1480)
!1532 = !DILocation(line: 135, column: 10, scope: !1489, inlinedAt: !1531)
!1533 = !DILocation(line: 232, column: 3, scope: !1480)
!1534 = !DILocation(line: 233, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1480, file: !368, line: 233, column: 7)
!1536 = !DILocation(line: 233, column: 7, scope: !1480)
!1537 = !DILocalVariable(name: "errnum", arg: 1, scope: !1538, file: !368, line: 188, type: !53)
!1538 = distinct !DISubprogram(name: "print_errno_message", scope: !368, file: !368, line: 188, type: !818, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1539)
!1539 = !{!1537, !1540, !1541}
!1540 = !DILocalVariable(name: "s", scope: !1538, file: !368, line: 190, type: !80)
!1541 = !DILocalVariable(name: "errbuf", scope: !1538, file: !368, line: 193, type: !1542)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 1024)
!1545 = !DILocation(line: 0, scope: !1538, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 234, column: 5, scope: !1535)
!1547 = !DILocation(line: 193, column: 3, scope: !1538, inlinedAt: !1546)
!1548 = !DILocation(line: 193, column: 8, scope: !1538, inlinedAt: !1546)
!1549 = !DILocation(line: 195, column: 7, scope: !1538, inlinedAt: !1546)
!1550 = !DILocation(line: 207, column: 9, scope: !1551, inlinedAt: !1546)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !368, line: 207, column: 7)
!1552 = !DILocation(line: 207, column: 7, scope: !1538, inlinedAt: !1546)
!1553 = !DILocation(line: 208, column: 9, scope: !1551, inlinedAt: !1546)
!1554 = !DILocation(line: 208, column: 5, scope: !1551, inlinedAt: !1546)
!1555 = !DILocation(line: 214, column: 3, scope: !1538, inlinedAt: !1546)
!1556 = !DILocation(line: 216, column: 1, scope: !1538, inlinedAt: !1546)
!1557 = !DILocation(line: 234, column: 5, scope: !1535)
!1558 = !DILocation(line: 238, column: 3, scope: !1480)
!1559 = !DILocalVariable(name: "__c", arg: 1, scope: !1560, file: !1127, line: 101, type: !53)
!1560 = distinct !DISubprogram(name: "putc_unlocked", scope: !1127, file: !1127, line: 101, type: !1561, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!53, !53, !1493}
!1563 = !{!1559, !1564}
!1564 = !DILocalVariable(name: "__stream", arg: 2, scope: !1560, file: !1127, line: 101, type: !1493)
!1565 = !DILocation(line: 0, scope: !1560, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 238, column: 3, scope: !1480)
!1567 = !DILocation(line: 103, column: 10, scope: !1560, inlinedAt: !1566)
!1568 = !DILocation(line: 240, column: 3, scope: !1480)
!1569 = !DILocation(line: 241, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1480, file: !368, line: 241, column: 7)
!1571 = !DILocation(line: 241, column: 7, scope: !1480)
!1572 = !DILocation(line: 242, column: 5, scope: !1570)
!1573 = !DILocation(line: 243, column: 1, scope: !1480)
!1574 = !DISubprogram(name: "__vfprintf_chk", scope: !875, file: !875, line: 96, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!53, !1492, !53, !879, !378}
!1577 = !DISubprogram(name: "strerror_r", scope: !1010, file: !1010, line: 444, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!74, !53, !74, !77}
!1580 = !DISubprogram(name: "fcntl", scope: !1581, file: !1581, line: 149, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
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
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1594, line: 14, baseType: !1595)
!1594 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !382, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !35)
!1597 = !DILocation(line: 0, scope: !1584)
!1598 = !DILocation(line: 287, column: 3, scope: !1584)
!1599 = !DILocation(line: 287, column: 11, scope: !1584)
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
!1644 = !DILocation(line: 0, scope: !1634)
!1645 = !DILocation(line: 362, column: 3, scope: !1634)
!1646 = !DILocation(line: 362, column: 11, scope: !1634)
!1647 = !DILocation(line: 363, column: 3, scope: !1634)
!1648 = !DILocation(line: 364, column: 3, scope: !1634)
!1649 = !DILocation(line: 366, column: 3, scope: !1634)
!1650 = !DILocation(line: 367, column: 1, scope: !1634)
!1651 = distinct !DISubprogram(name: "fpurge", scope: !702, file: !702, line: 32, type: !1652, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !1688)
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
!1689 = !DILocalVariable(name: "fp", arg: 1, scope: !1651, file: !702, line: 32, type: !1654)
!1690 = !DILocation(line: 0, scope: !1651)
!1691 = !DILocation(line: 36, column: 3, scope: !1651)
!1692 = !DILocation(line: 38, column: 3, scope: !1651)
!1693 = !DISubprogram(name: "__fpurge", scope: !1694, file: !1694, line: 72, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1694 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1654}
!1697 = distinct !DISubprogram(name: "getprogname", scope: !704, file: !704, line: 54, type: !1698, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !873)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!80}
!1700 = !DILocation(line: 58, column: 10, scope: !1697)
!1701 = !DILocation(line: 58, column: 3, scope: !1697)
!1702 = distinct !DISubprogram(name: "set_program_name", scope: !420, file: !420, line: 37, type: !839, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DILocalVariable(name: "argv0", arg: 1, scope: !1702, file: !420, line: 37, type: !80)
!1705 = !DILocalVariable(name: "slash", scope: !1702, file: !420, line: 44, type: !80)
!1706 = !DILocalVariable(name: "base", scope: !1702, file: !420, line: 45, type: !80)
!1707 = !DILocation(line: 0, scope: !1702)
!1708 = !DILocation(line: 44, column: 23, scope: !1702)
!1709 = !DILocation(line: 45, column: 22, scope: !1702)
!1710 = !DILocation(line: 46, column: 17, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !420, line: 46, column: 7)
!1712 = !DILocation(line: 46, column: 9, scope: !1711)
!1713 = !DILocation(line: 46, column: 25, scope: !1711)
!1714 = !DILocation(line: 46, column: 40, scope: !1711)
!1715 = !DILocalVariable(name: "__s1", arg: 1, scope: !1716, file: !902, line: 974, type: !1038)
!1716 = distinct !DISubprogram(name: "memeq", scope: !902, file: !902, line: 974, type: !1717, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!133, !1038, !1038, !77}
!1719 = !{!1715, !1720, !1721}
!1720 = !DILocalVariable(name: "__s2", arg: 2, scope: !1716, file: !902, line: 974, type: !1038)
!1721 = !DILocalVariable(name: "__n", arg: 3, scope: !1716, file: !902, line: 974, type: !77)
!1722 = !DILocation(line: 0, scope: !1716, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 46, column: 28, scope: !1711)
!1724 = !DILocation(line: 976, column: 11, scope: !1716, inlinedAt: !1723)
!1725 = !DILocation(line: 976, column: 10, scope: !1716, inlinedAt: !1723)
!1726 = !DILocation(line: 46, column: 7, scope: !1702)
!1727 = !DILocation(line: 49, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !420, line: 49, column: 11)
!1729 = distinct !DILexicalBlock(scope: !1711, file: !420, line: 47, column: 5)
!1730 = !DILocation(line: 49, column: 36, scope: !1728)
!1731 = !DILocation(line: 49, column: 11, scope: !1729)
!1732 = !DILocation(line: 65, column: 16, scope: !1702)
!1733 = !DILocation(line: 71, column: 27, scope: !1702)
!1734 = !DILocation(line: 74, column: 33, scope: !1702)
!1735 = !DILocation(line: 76, column: 1, scope: !1702)
!1736 = !DISubprogram(name: "strrchr", scope: !1010, file: !1010, line: 273, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1737 = !DILocation(line: 0, scope: !429)
!1738 = !DILocation(line: 40, column: 29, scope: !429)
!1739 = !DILocation(line: 41, column: 19, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !429, file: !430, line: 41, column: 7)
!1741 = !DILocation(line: 41, column: 7, scope: !429)
!1742 = !DILocation(line: 47, column: 3, scope: !429)
!1743 = !DILocation(line: 48, column: 3, scope: !429)
!1744 = !DILocation(line: 48, column: 13, scope: !429)
!1745 = !DILocalVariable(name: "ps", arg: 1, scope: !1746, file: !1747, line: 1135, type: !1750)
!1746 = distinct !DISubprogram(name: "mbszero", scope: !1747, file: !1747, line: 1135, type: !1748, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !1751)
!1747 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1751 = !{!1745}
!1752 = !DILocation(line: 0, scope: !1746, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 48, column: 18, scope: !429)
!1754 = !DILocalVariable(name: "__dest", arg: 1, scope: !1755, file: !1756, line: 57, type: !75)
!1755 = distinct !DISubprogram(name: "memset", scope: !1756, file: !1756, line: 57, type: !1757, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !1759)
!1756 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!75, !75, !53, !77}
!1759 = !{!1754, !1760, !1761}
!1760 = !DILocalVariable(name: "__ch", arg: 2, scope: !1755, file: !1756, line: 57, type: !53)
!1761 = !DILocalVariable(name: "__len", arg: 3, scope: !1755, file: !1756, line: 57, type: !77)
!1762 = !DILocation(line: 0, scope: !1755, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 1137, column: 3, scope: !1746, inlinedAt: !1753)
!1764 = !DILocation(line: 59, column: 10, scope: !1755, inlinedAt: !1763)
!1765 = !DILocation(line: 49, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !429, file: !430, line: 49, column: 7)
!1767 = !DILocation(line: 49, column: 39, scope: !1766)
!1768 = !DILocation(line: 49, column: 44, scope: !1766)
!1769 = !DILocation(line: 54, column: 1, scope: !429)
!1770 = !DISubprogram(name: "mbrtoc32", scope: !441, file: !441, line: 57, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!77, !1773, !879, !77, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1750)
!1776 = distinct !DISubprogram(name: "clone_quoting_options", scope: !460, file: !460, line: 113, type: !1777, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1780)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1779, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!1780 = !{!1781, !1782, !1783}
!1781 = !DILocalVariable(name: "o", arg: 1, scope: !1776, file: !460, line: 113, type: !1779)
!1782 = !DILocalVariable(name: "saved_errno", scope: !1776, file: !460, line: 115, type: !53)
!1783 = !DILocalVariable(name: "p", scope: !1776, file: !460, line: 116, type: !1779)
!1784 = !DILocation(line: 0, scope: !1776)
!1785 = !DILocation(line: 115, column: 21, scope: !1776)
!1786 = !DILocation(line: 116, column: 40, scope: !1776)
!1787 = !DILocation(line: 116, column: 31, scope: !1776)
!1788 = !DILocation(line: 118, column: 9, scope: !1776)
!1789 = !DILocation(line: 119, column: 3, scope: !1776)
!1790 = distinct !DISubprogram(name: "get_quoting_style", scope: !460, file: !460, line: 124, type: !1791, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1795)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!486, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!1795 = !{!1796}
!1796 = !DILocalVariable(name: "o", arg: 1, scope: !1790, file: !460, line: 124, type: !1793)
!1797 = !DILocation(line: 0, scope: !1790)
!1798 = !DILocation(line: 126, column: 11, scope: !1790)
!1799 = !DILocation(line: 126, column: 46, scope: !1790)
!1800 = !{!1801, !830, i64 0}
!1801 = !{!"quoting_options", !830, i64 0, !890, i64 4, !830, i64 8, !829, i64 40, !829, i64 48}
!1802 = !DILocation(line: 126, column: 3, scope: !1790)
!1803 = distinct !DISubprogram(name: "set_quoting_style", scope: !460, file: !460, line: 132, type: !1804, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1779, !486}
!1806 = !{!1807, !1808}
!1807 = !DILocalVariable(name: "o", arg: 1, scope: !1803, file: !460, line: 132, type: !1779)
!1808 = !DILocalVariable(name: "s", arg: 2, scope: !1803, file: !460, line: 132, type: !486)
!1809 = !DILocation(line: 0, scope: !1803)
!1810 = !DILocation(line: 134, column: 4, scope: !1803)
!1811 = !DILocation(line: 134, column: 45, scope: !1803)
!1812 = !DILocation(line: 135, column: 1, scope: !1803)
!1813 = distinct !DISubprogram(name: "set_char_quoting", scope: !460, file: !460, line: 143, type: !1814, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!53, !1779, !4, !53}
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1823, !1824}
!1817 = !DILocalVariable(name: "o", arg: 1, scope: !1813, file: !460, line: 143, type: !1779)
!1818 = !DILocalVariable(name: "c", arg: 2, scope: !1813, file: !460, line: 143, type: !4)
!1819 = !DILocalVariable(name: "i", arg: 3, scope: !1813, file: !460, line: 143, type: !53)
!1820 = !DILocalVariable(name: "uc", scope: !1813, file: !460, line: 145, type: !82)
!1821 = !DILocalVariable(name: "p", scope: !1813, file: !460, line: 146, type: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1823 = !DILocalVariable(name: "shift", scope: !1813, file: !460, line: 148, type: !53)
!1824 = !DILocalVariable(name: "r", scope: !1813, file: !460, line: 149, type: !59)
!1825 = !DILocation(line: 0, scope: !1813)
!1826 = !DILocation(line: 147, column: 6, scope: !1813)
!1827 = !DILocation(line: 147, column: 41, scope: !1813)
!1828 = !DILocation(line: 147, column: 62, scope: !1813)
!1829 = !DILocation(line: 147, column: 57, scope: !1813)
!1830 = !DILocation(line: 148, column: 15, scope: !1813)
!1831 = !DILocation(line: 149, column: 21, scope: !1813)
!1832 = !DILocation(line: 149, column: 24, scope: !1813)
!1833 = !DILocation(line: 149, column: 34, scope: !1813)
!1834 = !DILocation(line: 150, column: 19, scope: !1813)
!1835 = !DILocation(line: 150, column: 24, scope: !1813)
!1836 = !DILocation(line: 150, column: 6, scope: !1813)
!1837 = !DILocation(line: 151, column: 3, scope: !1813)
!1838 = distinct !DISubprogram(name: "set_quoting_flags", scope: !460, file: !460, line: 159, type: !1839, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!53, !1779, !53}
!1841 = !{!1842, !1843, !1844}
!1842 = !DILocalVariable(name: "o", arg: 1, scope: !1838, file: !460, line: 159, type: !1779)
!1843 = !DILocalVariable(name: "i", arg: 2, scope: !1838, file: !460, line: 159, type: !53)
!1844 = !DILocalVariable(name: "r", scope: !1838, file: !460, line: 163, type: !53)
!1845 = !DILocation(line: 0, scope: !1838)
!1846 = !DILocation(line: 161, column: 8, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !460, line: 161, column: 7)
!1848 = !DILocation(line: 161, column: 7, scope: !1838)
!1849 = !DILocation(line: 163, column: 14, scope: !1838)
!1850 = !{!1801, !890, i64 4}
!1851 = !DILocation(line: 164, column: 12, scope: !1838)
!1852 = !DILocation(line: 165, column: 3, scope: !1838)
!1853 = distinct !DISubprogram(name: "set_custom_quoting", scope: !460, file: !460, line: 169, type: !1854, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1779, !80, !80}
!1856 = !{!1857, !1858, !1859}
!1857 = !DILocalVariable(name: "o", arg: 1, scope: !1853, file: !460, line: 169, type: !1779)
!1858 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1853, file: !460, line: 170, type: !80)
!1859 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1853, file: !460, line: 170, type: !80)
!1860 = !DILocation(line: 0, scope: !1853)
!1861 = !DILocation(line: 172, column: 8, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1853, file: !460, line: 172, column: 7)
!1863 = !DILocation(line: 172, column: 7, scope: !1853)
!1864 = !DILocation(line: 174, column: 12, scope: !1853)
!1865 = !DILocation(line: 175, column: 8, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1853, file: !460, line: 175, column: 7)
!1867 = !DILocation(line: 175, column: 19, scope: !1866)
!1868 = !DILocation(line: 176, column: 5, scope: !1866)
!1869 = !DILocation(line: 177, column: 6, scope: !1853)
!1870 = !DILocation(line: 177, column: 17, scope: !1853)
!1871 = !{!1801, !829, i64 40}
!1872 = !DILocation(line: 178, column: 6, scope: !1853)
!1873 = !DILocation(line: 178, column: 18, scope: !1853)
!1874 = !{!1801, !829, i64 48}
!1875 = !DILocation(line: 179, column: 1, scope: !1853)
!1876 = !DISubprogram(name: "abort", scope: !1014, file: !1014, line: 598, type: !415, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !873)
!1877 = distinct !DISubprogram(name: "quotearg_buffer", scope: !460, file: !460, line: 774, type: !1878, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!77, !74, !77, !80, !77, !1793}
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888}
!1881 = !DILocalVariable(name: "buffer", arg: 1, scope: !1877, file: !460, line: 774, type: !74)
!1882 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1877, file: !460, line: 774, type: !77)
!1883 = !DILocalVariable(name: "arg", arg: 3, scope: !1877, file: !460, line: 775, type: !80)
!1884 = !DILocalVariable(name: "argsize", arg: 4, scope: !1877, file: !460, line: 775, type: !77)
!1885 = !DILocalVariable(name: "o", arg: 5, scope: !1877, file: !460, line: 776, type: !1793)
!1886 = !DILocalVariable(name: "p", scope: !1877, file: !460, line: 778, type: !1793)
!1887 = !DILocalVariable(name: "saved_errno", scope: !1877, file: !460, line: 779, type: !53)
!1888 = !DILocalVariable(name: "r", scope: !1877, file: !460, line: 780, type: !77)
!1889 = !DILocation(line: 0, scope: !1877)
!1890 = !DILocation(line: 778, column: 37, scope: !1877)
!1891 = !DILocation(line: 779, column: 21, scope: !1877)
!1892 = !DILocation(line: 781, column: 43, scope: !1877)
!1893 = !DILocation(line: 781, column: 53, scope: !1877)
!1894 = !DILocation(line: 781, column: 63, scope: !1877)
!1895 = !DILocation(line: 782, column: 43, scope: !1877)
!1896 = !DILocation(line: 782, column: 58, scope: !1877)
!1897 = !DILocation(line: 780, column: 14, scope: !1877)
!1898 = !DILocation(line: 783, column: 9, scope: !1877)
!1899 = !DILocation(line: 784, column: 3, scope: !1877)
!1900 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !460, file: !460, line: 251, type: !1901, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1905)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!77, !74, !77, !80, !77, !486, !53, !1903, !80, !80}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1930, !1932, !1935, !1936, !1937, !1938, !1941, !1942, !1945, !1949, !1950, !1958, !1961, !1962, !1964, !1965, !1966, !1967}
!1906 = !DILocalVariable(name: "buffer", arg: 1, scope: !1900, file: !460, line: 251, type: !74)
!1907 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1900, file: !460, line: 251, type: !77)
!1908 = !DILocalVariable(name: "arg", arg: 3, scope: !1900, file: !460, line: 252, type: !80)
!1909 = !DILocalVariable(name: "argsize", arg: 4, scope: !1900, file: !460, line: 252, type: !77)
!1910 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1900, file: !460, line: 253, type: !486)
!1911 = !DILocalVariable(name: "flags", arg: 6, scope: !1900, file: !460, line: 253, type: !53)
!1912 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1900, file: !460, line: 254, type: !1903)
!1913 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1900, file: !460, line: 255, type: !80)
!1914 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1900, file: !460, line: 256, type: !80)
!1915 = !DILocalVariable(name: "unibyte_locale", scope: !1900, file: !460, line: 258, type: !133)
!1916 = !DILocalVariable(name: "len", scope: !1900, file: !460, line: 260, type: !77)
!1917 = !DILocalVariable(name: "orig_buffersize", scope: !1900, file: !460, line: 261, type: !77)
!1918 = !DILocalVariable(name: "quote_string", scope: !1900, file: !460, line: 262, type: !80)
!1919 = !DILocalVariable(name: "quote_string_len", scope: !1900, file: !460, line: 263, type: !77)
!1920 = !DILocalVariable(name: "backslash_escapes", scope: !1900, file: !460, line: 264, type: !133)
!1921 = !DILocalVariable(name: "elide_outer_quotes", scope: !1900, file: !460, line: 265, type: !133)
!1922 = !DILocalVariable(name: "encountered_single_quote", scope: !1900, file: !460, line: 266, type: !133)
!1923 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1900, file: !460, line: 267, type: !133)
!1924 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1900, file: !460, line: 309, type: !133)
!1925 = !DILocalVariable(name: "lq", scope: !1926, file: !460, line: 361, type: !80)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !460, line: 361, column: 11)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !460, line: 360, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !460, line: 333, column: 7)
!1929 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 312, column: 5)
!1930 = !DILocalVariable(name: "i", scope: !1931, file: !460, line: 395, type: !77)
!1931 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 395, column: 3)
!1932 = !DILocalVariable(name: "is_right_quote", scope: !1933, file: !460, line: 397, type: !133)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !460, line: 396, column: 5)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !460, line: 395, column: 3)
!1935 = !DILocalVariable(name: "escaping", scope: !1933, file: !460, line: 398, type: !133)
!1936 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1933, file: !460, line: 399, type: !133)
!1937 = !DILocalVariable(name: "c", scope: !1933, file: !460, line: 417, type: !82)
!1938 = !DILocalVariable(name: "m", scope: !1939, file: !460, line: 598, type: !77)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 596, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 419, column: 9)
!1941 = !DILocalVariable(name: "printable", scope: !1939, file: !460, line: 600, type: !133)
!1942 = !DILocalVariable(name: "mbs", scope: !1943, file: !460, line: 609, type: !547)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !460, line: 608, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !460, line: 602, column: 17)
!1945 = !DILocalVariable(name: "w", scope: !1946, file: !460, line: 618, type: !440)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !460, line: 617, column: 19)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !460, line: 616, column: 17)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !460, line: 616, column: 17)
!1949 = !DILocalVariable(name: "bytes", scope: !1946, file: !460, line: 619, type: !77)
!1950 = !DILocalVariable(name: "j", scope: !1951, file: !460, line: 648, type: !77)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !460, line: 648, column: 29)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !460, line: 647, column: 27)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !460, line: 645, column: 29)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !460, line: 636, column: 23)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !460, line: 628, column: 30)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !460, line: 623, column: 30)
!1957 = distinct !DILexicalBlock(scope: !1946, file: !460, line: 621, column: 25)
!1958 = !DILocalVariable(name: "ilim", scope: !1959, file: !460, line: 674, type: !77)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !460, line: 671, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1939, file: !460, line: 670, column: 17)
!1961 = !DILabel(scope: !1900, name: "process_input", file: !460, line: 308)
!1962 = !DILabel(scope: !1963, name: "c_and_shell_escape", file: !460, line: 502)
!1963 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 478, column: 9)
!1964 = !DILabel(scope: !1963, name: "c_escape", file: !460, line: 507)
!1965 = !DILabel(scope: !1933, name: "store_escape", file: !460, line: 709)
!1966 = !DILabel(scope: !1933, name: "store_c", file: !460, line: 712)
!1967 = !DILabel(scope: !1900, name: "force_outer_quoting_style", file: !460, line: 753)
!1968 = !DILocation(line: 0, scope: !1900)
!1969 = !DILocation(line: 258, column: 25, scope: !1900)
!1970 = !DILocation(line: 258, column: 36, scope: !1900)
!1971 = !DILocation(line: 265, column: 8, scope: !1900)
!1972 = !DILocation(line: 267, column: 3, scope: !1900)
!1973 = !DILocation(line: 261, column: 10, scope: !1900)
!1974 = !DILocation(line: 262, column: 15, scope: !1900)
!1975 = !DILocation(line: 263, column: 10, scope: !1900)
!1976 = !DILocation(line: 264, column: 8, scope: !1900)
!1977 = !DILocation(line: 266, column: 8, scope: !1900)
!1978 = !DILocation(line: 267, column: 8, scope: !1900)
!1979 = !DILocation(line: 308, column: 2, scope: !1900)
!1980 = !DILocation(line: 311, column: 3, scope: !1900)
!1981 = !DILocation(line: 318, column: 11, scope: !1929)
!1982 = !DILocation(line: 318, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1929, file: !460, line: 318, column: 11)
!1984 = !DILocation(line: 319, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !460, line: 319, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !460, line: 319, column: 9)
!1987 = !DILocation(line: 319, column: 9, scope: !1986)
!1988 = !DILocation(line: 0, scope: !538, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 357, column: 26, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !460, line: 335, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1928, file: !460, line: 334, column: 13)
!1992 = !DILocation(line: 199, column: 29, scope: !538, inlinedAt: !1989)
!1993 = !DILocation(line: 201, column: 19, scope: !1994, inlinedAt: !1989)
!1994 = distinct !DILexicalBlock(scope: !538, file: !460, line: 201, column: 7)
!1995 = !DILocation(line: 201, column: 7, scope: !538, inlinedAt: !1989)
!1996 = !DILocation(line: 229, column: 3, scope: !538, inlinedAt: !1989)
!1997 = !DILocation(line: 230, column: 3, scope: !538, inlinedAt: !1989)
!1998 = !DILocation(line: 230, column: 13, scope: !538, inlinedAt: !1989)
!1999 = !DILocalVariable(name: "ps", arg: 1, scope: !2000, file: !1747, line: 1135, type: !2003)
!2000 = distinct !DISubprogram(name: "mbszero", scope: !1747, file: !1747, line: 1135, type: !2001, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2004)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2004 = !{!1999}
!2005 = !DILocation(line: 0, scope: !2000, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 230, column: 18, scope: !538, inlinedAt: !1989)
!2007 = !DILocalVariable(name: "__dest", arg: 1, scope: !2008, file: !1756, line: 57, type: !75)
!2008 = distinct !DISubprogram(name: "memset", scope: !1756, file: !1756, line: 57, type: !1757, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2009)
!2009 = !{!2007, !2010, !2011}
!2010 = !DILocalVariable(name: "__ch", arg: 2, scope: !2008, file: !1756, line: 57, type: !53)
!2011 = !DILocalVariable(name: "__len", arg: 3, scope: !2008, file: !1756, line: 57, type: !77)
!2012 = !DILocation(line: 0, scope: !2008, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 1137, column: 3, scope: !2000, inlinedAt: !2006)
!2014 = !DILocation(line: 59, column: 10, scope: !2008, inlinedAt: !2013)
!2015 = !DILocation(line: 231, column: 7, scope: !2016, inlinedAt: !1989)
!2016 = distinct !DILexicalBlock(scope: !538, file: !460, line: 231, column: 7)
!2017 = !DILocation(line: 231, column: 40, scope: !2016, inlinedAt: !1989)
!2018 = !DILocation(line: 231, column: 45, scope: !2016, inlinedAt: !1989)
!2019 = !DILocation(line: 235, column: 1, scope: !538, inlinedAt: !1989)
!2020 = !DILocation(line: 0, scope: !538, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 358, column: 27, scope: !1990)
!2022 = !DILocation(line: 199, column: 29, scope: !538, inlinedAt: !2021)
!2023 = !DILocation(line: 201, column: 19, scope: !1994, inlinedAt: !2021)
!2024 = !DILocation(line: 201, column: 7, scope: !538, inlinedAt: !2021)
!2025 = !DILocation(line: 229, column: 3, scope: !538, inlinedAt: !2021)
!2026 = !DILocation(line: 230, column: 3, scope: !538, inlinedAt: !2021)
!2027 = !DILocation(line: 230, column: 13, scope: !538, inlinedAt: !2021)
!2028 = !DILocation(line: 0, scope: !2000, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 230, column: 18, scope: !538, inlinedAt: !2021)
!2030 = !DILocation(line: 0, scope: !2008, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 1137, column: 3, scope: !2000, inlinedAt: !2029)
!2032 = !DILocation(line: 59, column: 10, scope: !2008, inlinedAt: !2031)
!2033 = !DILocation(line: 231, column: 7, scope: !2016, inlinedAt: !2021)
!2034 = !DILocation(line: 231, column: 40, scope: !2016, inlinedAt: !2021)
!2035 = !DILocation(line: 231, column: 45, scope: !2016, inlinedAt: !2021)
!2036 = !DILocation(line: 235, column: 1, scope: !538, inlinedAt: !2021)
!2037 = !DILocation(line: 360, column: 14, scope: !1927)
!2038 = !DILocation(line: 360, column: 13, scope: !1928)
!2039 = !DILocation(line: 0, scope: !1926)
!2040 = !DILocation(line: 361, column: 45, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1926, file: !460, line: 361, column: 11)
!2042 = !DILocation(line: 361, column: 11, scope: !1926)
!2043 = !DILocation(line: 362, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !460, line: 362, column: 13)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !460, line: 362, column: 13)
!2046 = !DILocation(line: 362, column: 13, scope: !2045)
!2047 = !DILocation(line: 361, column: 52, scope: !2041)
!2048 = distinct !{!2048, !2042, !2049, !936}
!2049 = !DILocation(line: 362, column: 13, scope: !1926)
!2050 = !DILocation(line: 260, column: 10, scope: !1900)
!2051 = !DILocation(line: 365, column: 28, scope: !1928)
!2052 = !DILocation(line: 367, column: 7, scope: !1929)
!2053 = !DILocation(line: 370, column: 7, scope: !1929)
!2054 = !DILocation(line: 373, column: 7, scope: !1929)
!2055 = !DILocation(line: 376, column: 12, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1929, file: !460, line: 376, column: 11)
!2057 = !DILocation(line: 376, column: 11, scope: !1929)
!2058 = !DILocation(line: 381, column: 12, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1929, file: !460, line: 381, column: 11)
!2060 = !DILocation(line: 381, column: 11, scope: !1929)
!2061 = !DILocation(line: 382, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !460, line: 382, column: 9)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !460, line: 382, column: 9)
!2064 = !DILocation(line: 382, column: 9, scope: !2063)
!2065 = !DILocation(line: 389, column: 7, scope: !1929)
!2066 = !DILocation(line: 392, column: 7, scope: !1929)
!2067 = !DILocation(line: 0, scope: !1931)
!2068 = !DILocation(line: 395, column: 8, scope: !1931)
!2069 = !DILocation(line: 309, column: 8, scope: !1900)
!2070 = !DILocation(line: 395, scope: !1931)
!2071 = !DILocation(line: 395, column: 34, scope: !1934)
!2072 = !DILocation(line: 395, column: 26, scope: !1934)
!2073 = !DILocation(line: 395, column: 48, scope: !1934)
!2074 = !DILocation(line: 395, column: 55, scope: !1934)
!2075 = !DILocation(line: 395, column: 3, scope: !1931)
!2076 = !DILocation(line: 395, column: 67, scope: !1934)
!2077 = !DILocation(line: 0, scope: !1933)
!2078 = !DILocation(line: 402, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 401, column: 11)
!2080 = !DILocation(line: 404, column: 17, scope: !2079)
!2081 = !DILocation(line: 405, column: 39, scope: !2079)
!2082 = !DILocation(line: 409, column: 32, scope: !2079)
!2083 = !DILocation(line: 405, column: 19, scope: !2079)
!2084 = !DILocation(line: 405, column: 15, scope: !2079)
!2085 = !DILocation(line: 410, column: 11, scope: !2079)
!2086 = !DILocation(line: 410, column: 25, scope: !2079)
!2087 = !DILocalVariable(name: "__s1", arg: 1, scope: !2088, file: !902, line: 974, type: !1038)
!2088 = distinct !DISubprogram(name: "memeq", scope: !902, file: !902, line: 974, type: !1717, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2089)
!2089 = !{!2087, !2090, !2091}
!2090 = !DILocalVariable(name: "__s2", arg: 2, scope: !2088, file: !902, line: 974, type: !1038)
!2091 = !DILocalVariable(name: "__n", arg: 3, scope: !2088, file: !902, line: 974, type: !77)
!2092 = !DILocation(line: 0, scope: !2088, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 410, column: 14, scope: !2079)
!2094 = !DILocation(line: 976, column: 11, scope: !2088, inlinedAt: !2093)
!2095 = !DILocation(line: 976, column: 10, scope: !2088, inlinedAt: !2093)
!2096 = !DILocation(line: 401, column: 11, scope: !1933)
!2097 = !DILocation(line: 417, column: 25, scope: !1933)
!2098 = !DILocation(line: 418, column: 7, scope: !1933)
!2099 = !DILocation(line: 421, column: 15, scope: !1940)
!2100 = !DILocation(line: 423, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !460, line: 423, column: 15)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !460, line: 422, column: 13)
!2103 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 421, column: 15)
!2104 = !DILocation(line: 423, column: 15, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !460, line: 423, column: 15)
!2106 = !DILocation(line: 423, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !460, line: 423, column: 15)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !460, line: 423, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !460, line: 423, column: 15)
!2110 = !DILocation(line: 423, column: 15, scope: !2108)
!2111 = !DILocation(line: 423, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !460, line: 423, column: 15)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !460, line: 423, column: 15)
!2114 = !DILocation(line: 423, column: 15, scope: !2113)
!2115 = !DILocation(line: 423, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !460, line: 423, column: 15)
!2117 = distinct !DILexicalBlock(scope: !2109, file: !460, line: 423, column: 15)
!2118 = !DILocation(line: 423, column: 15, scope: !2117)
!2119 = !DILocation(line: 423, column: 15, scope: !2109)
!2120 = !DILocation(line: 423, column: 15, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !460, line: 423, column: 15)
!2122 = distinct !DILexicalBlock(scope: !2101, file: !460, line: 423, column: 15)
!2123 = !DILocation(line: 423, column: 15, scope: !2122)
!2124 = !DILocation(line: 431, column: 19, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2102, file: !460, line: 430, column: 19)
!2126 = !DILocation(line: 431, column: 24, scope: !2125)
!2127 = !DILocation(line: 431, column: 28, scope: !2125)
!2128 = !DILocation(line: 431, column: 38, scope: !2125)
!2129 = !DILocation(line: 431, column: 48, scope: !2125)
!2130 = !DILocation(line: 431, column: 59, scope: !2125)
!2131 = !DILocation(line: 433, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !460, line: 433, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !460, line: 433, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2125, file: !460, line: 432, column: 17)
!2135 = !DILocation(line: 433, column: 19, scope: !2133)
!2136 = !DILocation(line: 434, column: 19, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !460, line: 434, column: 19)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !460, line: 434, column: 19)
!2139 = !DILocation(line: 434, column: 19, scope: !2138)
!2140 = !DILocation(line: 435, column: 17, scope: !2134)
!2141 = !DILocation(line: 442, column: 20, scope: !2103)
!2142 = !DILocation(line: 447, column: 11, scope: !1940)
!2143 = !DILocation(line: 450, column: 19, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 448, column: 13)
!2145 = !DILocation(line: 456, column: 19, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2144, file: !460, line: 455, column: 19)
!2147 = !DILocation(line: 456, column: 24, scope: !2146)
!2148 = !DILocation(line: 456, column: 28, scope: !2146)
!2149 = !DILocation(line: 456, column: 38, scope: !2146)
!2150 = !DILocation(line: 456, column: 47, scope: !2146)
!2151 = !DILocation(line: 456, column: 41, scope: !2146)
!2152 = !DILocation(line: 456, column: 52, scope: !2146)
!2153 = !DILocation(line: 455, column: 19, scope: !2144)
!2154 = !DILocation(line: 457, column: 25, scope: !2146)
!2155 = !DILocation(line: 457, column: 17, scope: !2146)
!2156 = !DILocation(line: 464, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2146, file: !460, line: 458, column: 19)
!2158 = !DILocation(line: 468, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !460, line: 468, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !460, line: 468, column: 21)
!2161 = !DILocation(line: 468, column: 21, scope: !2160)
!2162 = !DILocation(line: 469, column: 21, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !460, line: 469, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2157, file: !460, line: 469, column: 21)
!2165 = !DILocation(line: 469, column: 21, scope: !2164)
!2166 = !DILocation(line: 470, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !460, line: 470, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2157, file: !460, line: 470, column: 21)
!2169 = !DILocation(line: 470, column: 21, scope: !2168)
!2170 = !DILocation(line: 471, column: 21, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !460, line: 471, column: 21)
!2172 = distinct !DILexicalBlock(scope: !2157, file: !460, line: 471, column: 21)
!2173 = !DILocation(line: 471, column: 21, scope: !2172)
!2174 = !DILocation(line: 472, column: 21, scope: !2157)
!2175 = !DILocation(line: 482, column: 33, scope: !1963)
!2176 = !DILocation(line: 483, column: 33, scope: !1963)
!2177 = !DILocation(line: 485, column: 33, scope: !1963)
!2178 = !DILocation(line: 486, column: 33, scope: !1963)
!2179 = !DILocation(line: 487, column: 33, scope: !1963)
!2180 = !DILocation(line: 490, column: 17, scope: !1963)
!2181 = !DILocation(line: 492, column: 21, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !460, line: 491, column: 15)
!2183 = distinct !DILexicalBlock(scope: !1963, file: !460, line: 490, column: 17)
!2184 = !DILocation(line: 499, column: 35, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1963, file: !460, line: 499, column: 17)
!2186 = !DILocation(line: 499, column: 57, scope: !2185)
!2187 = !DILocation(line: 0, scope: !1963)
!2188 = !DILocation(line: 502, column: 11, scope: !1963)
!2189 = !DILocation(line: 504, column: 17, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1963, file: !460, line: 503, column: 17)
!2191 = !DILocation(line: 507, column: 11, scope: !1963)
!2192 = !DILocation(line: 508, column: 17, scope: !1963)
!2193 = !DILocation(line: 517, column: 15, scope: !1940)
!2194 = !DILocation(line: 517, column: 40, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 517, column: 15)
!2196 = !DILocation(line: 517, column: 47, scope: !2195)
!2197 = !DILocation(line: 517, column: 18, scope: !2195)
!2198 = !DILocation(line: 521, column: 17, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 521, column: 15)
!2200 = !DILocation(line: 521, column: 15, scope: !1940)
!2201 = !DILocation(line: 525, column: 11, scope: !1940)
!2202 = !DILocation(line: 537, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 536, column: 15)
!2204 = !DILocation(line: 544, column: 15, scope: !1940)
!2205 = !DILocation(line: 546, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !460, line: 545, column: 13)
!2207 = distinct !DILexicalBlock(scope: !1940, file: !460, line: 544, column: 15)
!2208 = !DILocation(line: 549, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !460, line: 549, column: 19)
!2210 = !DILocation(line: 549, column: 30, scope: !2209)
!2211 = !DILocation(line: 558, column: 15, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !460, line: 558, column: 15)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !460, line: 558, column: 15)
!2214 = !DILocation(line: 558, column: 15, scope: !2213)
!2215 = !DILocation(line: 559, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !460, line: 559, column: 15)
!2217 = distinct !DILexicalBlock(scope: !2206, file: !460, line: 559, column: 15)
!2218 = !DILocation(line: 559, column: 15, scope: !2217)
!2219 = !DILocation(line: 560, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !460, line: 560, column: 15)
!2221 = distinct !DILexicalBlock(scope: !2206, file: !460, line: 560, column: 15)
!2222 = !DILocation(line: 560, column: 15, scope: !2221)
!2223 = !DILocation(line: 562, column: 13, scope: !2206)
!2224 = !DILocation(line: 602, column: 17, scope: !1939)
!2225 = !DILocation(line: 0, scope: !1939)
!2226 = !DILocation(line: 605, column: 29, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1944, file: !460, line: 603, column: 15)
!2228 = !DILocation(line: 605, column: 27, scope: !2227)
!2229 = !DILocation(line: 668, column: 40, scope: !1939)
!2230 = !DILocation(line: 670, column: 23, scope: !1960)
!2231 = !DILocation(line: 609, column: 17, scope: !1943)
!2232 = !DILocation(line: 609, column: 27, scope: !1943)
!2233 = !DILocation(line: 0, scope: !2000, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 609, column: 32, scope: !1943)
!2235 = !DILocation(line: 0, scope: !2008, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1137, column: 3, scope: !2000, inlinedAt: !2234)
!2237 = !DILocation(line: 59, column: 10, scope: !2008, inlinedAt: !2236)
!2238 = !DILocation(line: 613, column: 29, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1943, file: !460, line: 613, column: 21)
!2240 = !DILocation(line: 613, column: 21, scope: !1943)
!2241 = !DILocation(line: 614, column: 29, scope: !2239)
!2242 = !DILocation(line: 614, column: 19, scope: !2239)
!2243 = !DILocation(line: 618, column: 21, scope: !1946)
!2244 = !DILocation(line: 620, column: 54, scope: !1946)
!2245 = !DILocation(line: 0, scope: !1946)
!2246 = !DILocation(line: 619, column: 36, scope: !1946)
!2247 = !DILocation(line: 621, column: 25, scope: !1946)
!2248 = !DILocation(line: 631, column: 38, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1955, file: !460, line: 629, column: 23)
!2250 = !DILocation(line: 631, column: 48, scope: !2249)
!2251 = !DILocation(line: 665, column: 19, scope: !1947)
!2252 = !DILocation(line: 666, column: 15, scope: !1944)
!2253 = !DILocation(line: 626, column: 25, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1956, file: !460, line: 624, column: 23)
!2255 = !DILocation(line: 631, column: 51, scope: !2249)
!2256 = !DILocation(line: 631, column: 25, scope: !2249)
!2257 = !DILocation(line: 632, column: 28, scope: !2249)
!2258 = !DILocation(line: 631, column: 34, scope: !2249)
!2259 = distinct !{!2259, !2256, !2257, !936}
!2260 = !DILocation(line: 646, column: 29, scope: !1953)
!2261 = !DILocation(line: 0, scope: !1951)
!2262 = !DILocation(line: 649, column: 49, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !1951, file: !460, line: 648, column: 29)
!2264 = !DILocation(line: 649, column: 39, scope: !2263)
!2265 = !DILocation(line: 649, column: 31, scope: !2263)
!2266 = !DILocation(line: 648, column: 60, scope: !2263)
!2267 = !DILocation(line: 648, column: 50, scope: !2263)
!2268 = !DILocation(line: 648, column: 29, scope: !1951)
!2269 = distinct !{!2269, !2268, !2270, !936}
!2270 = !DILocation(line: 654, column: 33, scope: !1951)
!2271 = !DILocation(line: 657, column: 43, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1954, file: !460, line: 657, column: 29)
!2273 = !DILocalVariable(name: "wc", arg: 1, scope: !2274, file: !2275, line: 865, type: !2278)
!2274 = distinct !DISubprogram(name: "c32isprint", scope: !2275, file: !2275, line: 865, type: !2276, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2280)
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
!2285 = !DILocation(line: 657, column: 29, scope: !1954)
!2286 = !DILocation(line: 664, column: 23, scope: !1946)
!2287 = !DILocation(line: 670, column: 19, scope: !1960)
!2288 = !DILocation(line: 670, column: 45, scope: !1960)
!2289 = !DILocation(line: 674, column: 33, scope: !1959)
!2290 = !DILocation(line: 0, scope: !1959)
!2291 = !DILocation(line: 676, column: 17, scope: !1959)
!2292 = !DILocation(line: 398, column: 12, scope: !1933)
!2293 = !DILocation(line: 678, column: 43, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !460, line: 678, column: 25)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !460, line: 677, column: 19)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !460, line: 676, column: 17)
!2297 = distinct !DILexicalBlock(scope: !1959, file: !460, line: 676, column: 17)
!2298 = !DILocation(line: 680, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !460, line: 680, column: 25)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !460, line: 679, column: 23)
!2301 = !DILocation(line: 680, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !460, line: 680, column: 25)
!2303 = !DILocation(line: 680, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !460, line: 680, column: 25)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !460, line: 680, column: 25)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !460, line: 680, column: 25)
!2307 = !DILocation(line: 680, column: 25, scope: !2305)
!2308 = !DILocation(line: 680, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !460, line: 680, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !460, line: 680, column: 25)
!2311 = !DILocation(line: 680, column: 25, scope: !2310)
!2312 = !DILocation(line: 680, column: 25, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !460, line: 680, column: 25)
!2314 = distinct !DILexicalBlock(scope: !2306, file: !460, line: 680, column: 25)
!2315 = !DILocation(line: 680, column: 25, scope: !2314)
!2316 = !DILocation(line: 680, column: 25, scope: !2306)
!2317 = !DILocation(line: 680, column: 25, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !460, line: 680, column: 25)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !460, line: 680, column: 25)
!2320 = !DILocation(line: 680, column: 25, scope: !2319)
!2321 = !DILocation(line: 681, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !460, line: 681, column: 25)
!2323 = distinct !DILexicalBlock(scope: !2300, file: !460, line: 681, column: 25)
!2324 = !DILocation(line: 681, column: 25, scope: !2323)
!2325 = !DILocation(line: 682, column: 25, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !460, line: 682, column: 25)
!2327 = distinct !DILexicalBlock(scope: !2300, file: !460, line: 682, column: 25)
!2328 = !DILocation(line: 682, column: 25, scope: !2327)
!2329 = !DILocation(line: 683, column: 38, scope: !2300)
!2330 = !DILocation(line: 683, column: 33, scope: !2300)
!2331 = !DILocation(line: 684, column: 23, scope: !2300)
!2332 = !DILocation(line: 685, column: 30, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2294, file: !460, line: 685, column: 30)
!2334 = !DILocation(line: 685, column: 30, scope: !2294)
!2335 = !DILocation(line: 687, column: 25, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !460, line: 687, column: 25)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !460, line: 687, column: 25)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !460, line: 686, column: 23)
!2339 = !DILocation(line: 687, column: 25, scope: !2337)
!2340 = !DILocation(line: 689, column: 23, scope: !2338)
!2341 = !DILocation(line: 690, column: 35, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2295, file: !460, line: 690, column: 25)
!2343 = !DILocation(line: 690, column: 30, scope: !2342)
!2344 = !DILocation(line: 690, column: 25, scope: !2295)
!2345 = !DILocation(line: 692, column: 21, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !460, line: 692, column: 21)
!2347 = distinct !DILexicalBlock(scope: !2295, file: !460, line: 692, column: 21)
!2348 = !DILocation(line: 692, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !460, line: 692, column: 21)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !460, line: 692, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !460, line: 692, column: 21)
!2352 = !DILocation(line: 692, column: 21, scope: !2350)
!2353 = !DILocation(line: 692, column: 21, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !460, line: 692, column: 21)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !460, line: 692, column: 21)
!2356 = !DILocation(line: 692, column: 21, scope: !2355)
!2357 = !DILocation(line: 692, column: 21, scope: !2351)
!2358 = !DILocation(line: 0, scope: !2295)
!2359 = !DILocation(line: 693, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !460, line: 693, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2295, file: !460, line: 693, column: 21)
!2362 = !DILocation(line: 693, column: 21, scope: !2361)
!2363 = !DILocation(line: 694, column: 25, scope: !2295)
!2364 = !DILocation(line: 676, column: 17, scope: !2296)
!2365 = distinct !{!2365, !2366, !2367}
!2366 = !DILocation(line: 676, column: 17, scope: !2297)
!2367 = !DILocation(line: 695, column: 19, scope: !2297)
!2368 = !DILocation(line: 409, column: 30, scope: !2079)
!2369 = !DILocation(line: 702, column: 34, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 702, column: 11)
!2371 = !DILocation(line: 704, column: 14, scope: !2370)
!2372 = !DILocation(line: 705, column: 14, scope: !2370)
!2373 = !DILocation(line: 705, column: 35, scope: !2370)
!2374 = !DILocation(line: 705, column: 17, scope: !2370)
!2375 = !DILocation(line: 705, column: 47, scope: !2370)
!2376 = !DILocation(line: 705, column: 65, scope: !2370)
!2377 = !DILocation(line: 706, column: 11, scope: !2370)
!2378 = !DILocation(line: 702, column: 11, scope: !1933)
!2379 = !DILocation(line: 395, column: 15, scope: !1931)
!2380 = !DILocation(line: 709, column: 5, scope: !1933)
!2381 = !DILocation(line: 710, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 710, column: 7)
!2383 = !DILocation(line: 710, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2382, file: !460, line: 710, column: 7)
!2385 = !DILocation(line: 710, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !460, line: 710, column: 7)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !460, line: 710, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !460, line: 710, column: 7)
!2389 = !DILocation(line: 710, column: 7, scope: !2387)
!2390 = !DILocation(line: 710, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !460, line: 710, column: 7)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !460, line: 710, column: 7)
!2393 = !DILocation(line: 710, column: 7, scope: !2392)
!2394 = !DILocation(line: 710, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !460, line: 710, column: 7)
!2396 = distinct !DILexicalBlock(scope: !2388, file: !460, line: 710, column: 7)
!2397 = !DILocation(line: 710, column: 7, scope: !2396)
!2398 = !DILocation(line: 710, column: 7, scope: !2388)
!2399 = !DILocation(line: 710, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !460, line: 710, column: 7)
!2401 = distinct !DILexicalBlock(scope: !2382, file: !460, line: 710, column: 7)
!2402 = !DILocation(line: 710, column: 7, scope: !2401)
!2403 = !DILocation(line: 712, column: 5, scope: !1933)
!2404 = !DILocation(line: 713, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !460, line: 713, column: 7)
!2406 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 713, column: 7)
!2407 = !DILocation(line: 417, column: 21, scope: !1933)
!2408 = !DILocation(line: 713, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !460, line: 713, column: 7)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !460, line: 713, column: 7)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !460, line: 713, column: 7)
!2412 = !DILocation(line: 713, column: 7, scope: !2410)
!2413 = !DILocation(line: 713, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !460, line: 713, column: 7)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !460, line: 713, column: 7)
!2416 = !DILocation(line: 713, column: 7, scope: !2415)
!2417 = !DILocation(line: 713, column: 7, scope: !2411)
!2418 = !DILocation(line: 714, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !460, line: 714, column: 7)
!2420 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 714, column: 7)
!2421 = !DILocation(line: 714, column: 7, scope: !2420)
!2422 = !DILocation(line: 716, column: 13, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !1933, file: !460, line: 716, column: 11)
!2424 = !DILocation(line: 716, column: 11, scope: !1933)
!2425 = !DILocation(line: 718, column: 5, scope: !1934)
!2426 = !DILocation(line: 395, column: 82, scope: !1934)
!2427 = !DILocation(line: 395, column: 3, scope: !1934)
!2428 = distinct !{!2428, !2075, !2429, !936}
!2429 = !DILocation(line: 718, column: 5, scope: !1931)
!2430 = !DILocation(line: 720, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 720, column: 7)
!2432 = !DILocation(line: 720, column: 16, scope: !2431)
!2433 = !DILocation(line: 728, column: 51, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 728, column: 7)
!2435 = !DILocation(line: 731, column: 11, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !460, line: 731, column: 11)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !460, line: 730, column: 5)
!2438 = !DILocation(line: 731, column: 11, scope: !2437)
!2439 = !DILocation(line: 732, column: 16, scope: !2436)
!2440 = !DILocation(line: 732, column: 9, scope: !2436)
!2441 = !DILocation(line: 736, column: 18, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2436, file: !460, line: 736, column: 16)
!2443 = !DILocation(line: 736, column: 29, scope: !2442)
!2444 = !DILocation(line: 745, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 745, column: 7)
!2446 = !DILocation(line: 745, column: 20, scope: !2445)
!2447 = !DILocation(line: 746, column: 12, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !460, line: 746, column: 5)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !460, line: 746, column: 5)
!2450 = !DILocation(line: 746, column: 5, scope: !2449)
!2451 = !DILocation(line: 747, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !460, line: 747, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !460, line: 747, column: 7)
!2454 = !DILocation(line: 747, column: 7, scope: !2453)
!2455 = !DILocation(line: 746, column: 39, scope: !2448)
!2456 = distinct !{!2456, !2450, !2457, !936}
!2457 = !DILocation(line: 747, column: 7, scope: !2449)
!2458 = !DILocation(line: 749, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 749, column: 7)
!2460 = !DILocation(line: 749, column: 7, scope: !1900)
!2461 = !DILocation(line: 750, column: 5, scope: !2459)
!2462 = !DILocation(line: 750, column: 17, scope: !2459)
!2463 = !DILocation(line: 753, column: 2, scope: !1900)
!2464 = !DILocation(line: 756, column: 51, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !1900, file: !460, line: 756, column: 7)
!2466 = !DILocation(line: 756, column: 21, scope: !2465)
!2467 = !DILocation(line: 760, column: 42, scope: !1900)
!2468 = !DILocation(line: 758, column: 10, scope: !1900)
!2469 = !DILocation(line: 758, column: 3, scope: !1900)
!2470 = !DILocation(line: 762, column: 1, scope: !1900)
!2471 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1014, file: !1014, line: 98, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!77}
!2474 = !DISubprogram(name: "strlen", scope: !1010, file: !1010, line: 407, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!79, !80}
!2477 = !DISubprogram(name: "iswprint", scope: !2478, file: !2478, line: 120, type: !2276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!2478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2479 = distinct !DISubprogram(name: "quotearg_alloc", scope: !460, file: !460, line: 788, type: !2480, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!74, !80, !77, !1793}
!2482 = !{!2483, !2484, !2485}
!2483 = !DILocalVariable(name: "arg", arg: 1, scope: !2479, file: !460, line: 788, type: !80)
!2484 = !DILocalVariable(name: "argsize", arg: 2, scope: !2479, file: !460, line: 788, type: !77)
!2485 = !DILocalVariable(name: "o", arg: 3, scope: !2479, file: !460, line: 789, type: !1793)
!2486 = !DILocation(line: 0, scope: !2479)
!2487 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !460, line: 801, type: !80)
!2488 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !460, file: !460, line: 801, type: !2489, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!74, !80, !77, !719, !1793}
!2491 = !{!2487, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2492 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !460, line: 801, type: !77)
!2493 = !DILocalVariable(name: "size", arg: 3, scope: !2488, file: !460, line: 801, type: !719)
!2494 = !DILocalVariable(name: "o", arg: 4, scope: !2488, file: !460, line: 802, type: !1793)
!2495 = !DILocalVariable(name: "p", scope: !2488, file: !460, line: 804, type: !1793)
!2496 = !DILocalVariable(name: "saved_errno", scope: !2488, file: !460, line: 805, type: !53)
!2497 = !DILocalVariable(name: "flags", scope: !2488, file: !460, line: 807, type: !53)
!2498 = !DILocalVariable(name: "bufsize", scope: !2488, file: !460, line: 808, type: !77)
!2499 = !DILocalVariable(name: "buf", scope: !2488, file: !460, line: 812, type: !74)
!2500 = !DILocation(line: 0, scope: !2488, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 791, column: 10, scope: !2479)
!2502 = !DILocation(line: 804, column: 37, scope: !2488, inlinedAt: !2501)
!2503 = !DILocation(line: 805, column: 21, scope: !2488, inlinedAt: !2501)
!2504 = !DILocation(line: 807, column: 18, scope: !2488, inlinedAt: !2501)
!2505 = !DILocation(line: 807, column: 24, scope: !2488, inlinedAt: !2501)
!2506 = !DILocation(line: 808, column: 72, scope: !2488, inlinedAt: !2501)
!2507 = !DILocation(line: 809, column: 56, scope: !2488, inlinedAt: !2501)
!2508 = !DILocation(line: 810, column: 49, scope: !2488, inlinedAt: !2501)
!2509 = !DILocation(line: 811, column: 49, scope: !2488, inlinedAt: !2501)
!2510 = !DILocation(line: 808, column: 20, scope: !2488, inlinedAt: !2501)
!2511 = !DILocation(line: 811, column: 62, scope: !2488, inlinedAt: !2501)
!2512 = !DILocation(line: 812, column: 15, scope: !2488, inlinedAt: !2501)
!2513 = !DILocation(line: 813, column: 60, scope: !2488, inlinedAt: !2501)
!2514 = !DILocation(line: 815, column: 32, scope: !2488, inlinedAt: !2501)
!2515 = !DILocation(line: 815, column: 47, scope: !2488, inlinedAt: !2501)
!2516 = !DILocation(line: 813, column: 3, scope: !2488, inlinedAt: !2501)
!2517 = !DILocation(line: 816, column: 9, scope: !2488, inlinedAt: !2501)
!2518 = !DILocation(line: 791, column: 3, scope: !2479)
!2519 = !DILocation(line: 0, scope: !2488)
!2520 = !DILocation(line: 804, column: 37, scope: !2488)
!2521 = !DILocation(line: 805, column: 21, scope: !2488)
!2522 = !DILocation(line: 807, column: 18, scope: !2488)
!2523 = !DILocation(line: 807, column: 27, scope: !2488)
!2524 = !DILocation(line: 807, column: 24, scope: !2488)
!2525 = !DILocation(line: 808, column: 72, scope: !2488)
!2526 = !DILocation(line: 809, column: 56, scope: !2488)
!2527 = !DILocation(line: 810, column: 49, scope: !2488)
!2528 = !DILocation(line: 811, column: 49, scope: !2488)
!2529 = !DILocation(line: 808, column: 20, scope: !2488)
!2530 = !DILocation(line: 811, column: 62, scope: !2488)
!2531 = !DILocation(line: 812, column: 15, scope: !2488)
!2532 = !DILocation(line: 813, column: 60, scope: !2488)
!2533 = !DILocation(line: 815, column: 32, scope: !2488)
!2534 = !DILocation(line: 815, column: 47, scope: !2488)
!2535 = !DILocation(line: 813, column: 3, scope: !2488)
!2536 = !DILocation(line: 816, column: 9, scope: !2488)
!2537 = !DILocation(line: 817, column: 7, scope: !2488)
!2538 = !DILocation(line: 818, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2488, file: !460, line: 817, column: 7)
!2540 = !{!1136, !1136, i64 0}
!2541 = !DILocation(line: 818, column: 5, scope: !2539)
!2542 = !DILocation(line: 819, column: 3, scope: !2488)
!2543 = distinct !DISubprogram(name: "quotearg_free", scope: !460, file: !460, line: 837, type: !415, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "sv", scope: !2543, file: !460, line: 839, type: !561)
!2546 = !DILocalVariable(name: "i", scope: !2547, file: !460, line: 840, type: !53)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !460, line: 840, column: 3)
!2548 = !DILocation(line: 839, column: 24, scope: !2543)
!2549 = !DILocation(line: 0, scope: !2543)
!2550 = !DILocation(line: 0, scope: !2547)
!2551 = !DILocation(line: 840, column: 21, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !460, line: 840, column: 3)
!2553 = !DILocation(line: 840, column: 3, scope: !2547)
!2554 = !DILocation(line: 842, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2543, file: !460, line: 842, column: 7)
!2556 = !{!2557, !829, i64 8}
!2557 = !{!"slotvec", !1136, i64 0, !829, i64 8}
!2558 = !DILocation(line: 842, column: 17, scope: !2555)
!2559 = !DILocation(line: 842, column: 7, scope: !2543)
!2560 = !DILocation(line: 841, column: 17, scope: !2552)
!2561 = !DILocation(line: 841, column: 5, scope: !2552)
!2562 = !DILocation(line: 840, column: 32, scope: !2552)
!2563 = distinct !{!2563, !2553, !2564, !936}
!2564 = !DILocation(line: 841, column: 20, scope: !2547)
!2565 = !DILocation(line: 844, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2555, file: !460, line: 843, column: 5)
!2567 = !DILocation(line: 845, column: 21, scope: !2566)
!2568 = !{!2557, !1136, i64 0}
!2569 = !DILocation(line: 846, column: 20, scope: !2566)
!2570 = !DILocation(line: 847, column: 5, scope: !2566)
!2571 = !DILocation(line: 848, column: 10, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2543, file: !460, line: 848, column: 7)
!2573 = !DILocation(line: 848, column: 7, scope: !2543)
!2574 = !DILocation(line: 850, column: 7, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !460, line: 849, column: 5)
!2576 = !DILocation(line: 851, column: 15, scope: !2575)
!2577 = !DILocation(line: 852, column: 5, scope: !2575)
!2578 = !DILocation(line: 853, column: 10, scope: !2543)
!2579 = !DILocation(line: 854, column: 1, scope: !2543)
!2580 = distinct !DISubprogram(name: "quotearg_n", scope: !460, file: !460, line: 919, type: !1007, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2581)
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "n", arg: 1, scope: !2580, file: !460, line: 919, type: !53)
!2583 = !DILocalVariable(name: "arg", arg: 2, scope: !2580, file: !460, line: 919, type: !80)
!2584 = !DILocation(line: 0, scope: !2580)
!2585 = !DILocation(line: 921, column: 10, scope: !2580)
!2586 = !DILocation(line: 921, column: 3, scope: !2580)
!2587 = distinct !DISubprogram(name: "quotearg_n_options", scope: !460, file: !460, line: 866, type: !2588, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!74, !53, !80, !77, !1793}
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2601, !2602, !2604, !2605, !2606}
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !460, line: 866, type: !53)
!2592 = !DILocalVariable(name: "arg", arg: 2, scope: !2587, file: !460, line: 866, type: !80)
!2593 = !DILocalVariable(name: "argsize", arg: 3, scope: !2587, file: !460, line: 866, type: !77)
!2594 = !DILocalVariable(name: "options", arg: 4, scope: !2587, file: !460, line: 867, type: !1793)
!2595 = !DILocalVariable(name: "saved_errno", scope: !2587, file: !460, line: 869, type: !53)
!2596 = !DILocalVariable(name: "sv", scope: !2587, file: !460, line: 871, type: !561)
!2597 = !DILocalVariable(name: "nslots_max", scope: !2587, file: !460, line: 873, type: !53)
!2598 = !DILocalVariable(name: "preallocated", scope: !2599, file: !460, line: 879, type: !133)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !460, line: 878, column: 5)
!2600 = distinct !DILexicalBlock(scope: !2587, file: !460, line: 877, column: 7)
!2601 = !DILocalVariable(name: "new_nslots", scope: !2599, file: !460, line: 880, type: !732)
!2602 = !DILocalVariable(name: "size", scope: !2603, file: !460, line: 891, type: !77)
!2603 = distinct !DILexicalBlock(scope: !2587, file: !460, line: 890, column: 3)
!2604 = !DILocalVariable(name: "val", scope: !2603, file: !460, line: 892, type: !74)
!2605 = !DILocalVariable(name: "flags", scope: !2603, file: !460, line: 894, type: !53)
!2606 = !DILocalVariable(name: "qsize", scope: !2603, file: !460, line: 895, type: !77)
!2607 = !DILocation(line: 0, scope: !2587)
!2608 = !DILocation(line: 869, column: 21, scope: !2587)
!2609 = !DILocation(line: 871, column: 24, scope: !2587)
!2610 = !DILocation(line: 874, column: 17, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2587, file: !460, line: 874, column: 7)
!2612 = !DILocation(line: 875, column: 5, scope: !2611)
!2613 = !DILocation(line: 877, column: 7, scope: !2600)
!2614 = !DILocation(line: 877, column: 14, scope: !2600)
!2615 = !DILocation(line: 877, column: 7, scope: !2587)
!2616 = !DILocation(line: 879, column: 31, scope: !2599)
!2617 = !DILocation(line: 0, scope: !2599)
!2618 = !DILocation(line: 880, column: 7, scope: !2599)
!2619 = !DILocation(line: 880, column: 26, scope: !2599)
!2620 = !DILocation(line: 880, column: 13, scope: !2599)
!2621 = !DILocation(line: 882, column: 31, scope: !2599)
!2622 = !DILocation(line: 883, column: 33, scope: !2599)
!2623 = !DILocation(line: 883, column: 42, scope: !2599)
!2624 = !DILocation(line: 883, column: 31, scope: !2599)
!2625 = !DILocation(line: 882, column: 22, scope: !2599)
!2626 = !DILocation(line: 882, column: 15, scope: !2599)
!2627 = !DILocation(line: 884, column: 11, scope: !2599)
!2628 = !DILocation(line: 885, column: 15, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2599, file: !460, line: 884, column: 11)
!2630 = !{i64 0, i64 8, !2540, i64 8, i64 8, !828}
!2631 = !DILocation(line: 885, column: 9, scope: !2629)
!2632 = !DILocation(line: 886, column: 20, scope: !2599)
!2633 = !DILocation(line: 886, column: 18, scope: !2599)
!2634 = !DILocation(line: 886, column: 32, scope: !2599)
!2635 = !DILocation(line: 886, column: 43, scope: !2599)
!2636 = !DILocation(line: 886, column: 53, scope: !2599)
!2637 = !DILocation(line: 0, scope: !2008, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 886, column: 7, scope: !2599)
!2639 = !DILocation(line: 59, column: 10, scope: !2008, inlinedAt: !2638)
!2640 = !DILocation(line: 887, column: 16, scope: !2599)
!2641 = !DILocation(line: 887, column: 14, scope: !2599)
!2642 = !DILocation(line: 888, column: 5, scope: !2600)
!2643 = !DILocation(line: 888, column: 5, scope: !2599)
!2644 = !DILocation(line: 891, column: 19, scope: !2603)
!2645 = !DILocation(line: 891, column: 25, scope: !2603)
!2646 = !DILocation(line: 0, scope: !2603)
!2647 = !DILocation(line: 892, column: 23, scope: !2603)
!2648 = !DILocation(line: 894, column: 26, scope: !2603)
!2649 = !DILocation(line: 894, column: 32, scope: !2603)
!2650 = !DILocation(line: 896, column: 55, scope: !2603)
!2651 = !DILocation(line: 897, column: 55, scope: !2603)
!2652 = !DILocation(line: 898, column: 55, scope: !2603)
!2653 = !DILocation(line: 899, column: 55, scope: !2603)
!2654 = !DILocation(line: 895, column: 20, scope: !2603)
!2655 = !DILocation(line: 901, column: 14, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2603, file: !460, line: 901, column: 9)
!2657 = !DILocation(line: 901, column: 9, scope: !2603)
!2658 = !DILocation(line: 903, column: 35, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !460, line: 902, column: 7)
!2660 = !DILocation(line: 903, column: 20, scope: !2659)
!2661 = !DILocation(line: 904, column: 17, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !460, line: 904, column: 13)
!2663 = !DILocation(line: 904, column: 13, scope: !2659)
!2664 = !DILocation(line: 905, column: 11, scope: !2662)
!2665 = !DILocation(line: 906, column: 27, scope: !2659)
!2666 = !DILocation(line: 906, column: 19, scope: !2659)
!2667 = !DILocation(line: 907, column: 69, scope: !2659)
!2668 = !DILocation(line: 909, column: 44, scope: !2659)
!2669 = !DILocation(line: 910, column: 44, scope: !2659)
!2670 = !DILocation(line: 907, column: 9, scope: !2659)
!2671 = !DILocation(line: 911, column: 7, scope: !2659)
!2672 = !DILocation(line: 913, column: 11, scope: !2603)
!2673 = !DILocation(line: 914, column: 5, scope: !2603)
!2674 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !460, file: !460, line: 925, type: !2675, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!74, !53, !80, !77}
!2677 = !{!2678, !2679, !2680}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !460, line: 925, type: !53)
!2679 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !460, line: 925, type: !80)
!2680 = !DILocalVariable(name: "argsize", arg: 3, scope: !2674, file: !460, line: 925, type: !77)
!2681 = !DILocation(line: 0, scope: !2674)
!2682 = !DILocation(line: 927, column: 10, scope: !2674)
!2683 = !DILocation(line: 927, column: 3, scope: !2674)
!2684 = distinct !DISubprogram(name: "quotearg", scope: !460, file: !460, line: 931, type: !1016, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !460, line: 931, type: !80)
!2687 = !DILocation(line: 0, scope: !2684)
!2688 = !DILocation(line: 0, scope: !2580, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 933, column: 10, scope: !2684)
!2690 = !DILocation(line: 921, column: 10, scope: !2580, inlinedAt: !2689)
!2691 = !DILocation(line: 933, column: 3, scope: !2684)
!2692 = distinct !DISubprogram(name: "quotearg_mem", scope: !460, file: !460, line: 937, type: !2693, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!74, !80, !77}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2692, file: !460, line: 937, type: !80)
!2697 = !DILocalVariable(name: "argsize", arg: 2, scope: !2692, file: !460, line: 937, type: !77)
!2698 = !DILocation(line: 0, scope: !2692)
!2699 = !DILocation(line: 0, scope: !2674, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 939, column: 10, scope: !2692)
!2701 = !DILocation(line: 927, column: 10, scope: !2674, inlinedAt: !2700)
!2702 = !DILocation(line: 939, column: 3, scope: !2692)
!2703 = distinct !DISubprogram(name: "quotearg_n_style", scope: !460, file: !460, line: 943, type: !2704, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!74, !53, !486, !80}
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !460, line: 943, type: !53)
!2708 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !460, line: 943, type: !486)
!2709 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !460, line: 943, type: !80)
!2710 = !DILocalVariable(name: "o", scope: !2703, file: !460, line: 945, type: !1794)
!2711 = !DILocation(line: 0, scope: !2703)
!2712 = !DILocation(line: 945, column: 3, scope: !2703)
!2713 = !DILocation(line: 945, column: 32, scope: !2703)
!2714 = !{!2715}
!2715 = distinct !{!2715, !2716, !"quoting_options_from_style: argument 0"}
!2716 = distinct !{!2716, !"quoting_options_from_style"}
!2717 = !DILocation(line: 945, column: 36, scope: !2703)
!2718 = !DILocalVariable(name: "style", arg: 1, scope: !2719, file: !460, line: 183, type: !486)
!2719 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !460, file: !460, line: 183, type: !2720, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!513, !486}
!2722 = !{!2718, !2723}
!2723 = !DILocalVariable(name: "o", scope: !2719, file: !460, line: 185, type: !513)
!2724 = !DILocation(line: 0, scope: !2719, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 945, column: 36, scope: !2703)
!2726 = !DILocation(line: 185, column: 26, scope: !2719, inlinedAt: !2725)
!2727 = !DILocation(line: 186, column: 13, scope: !2728, inlinedAt: !2725)
!2728 = distinct !DILexicalBlock(scope: !2719, file: !460, line: 186, column: 7)
!2729 = !DILocation(line: 186, column: 7, scope: !2719, inlinedAt: !2725)
!2730 = !DILocation(line: 187, column: 5, scope: !2728, inlinedAt: !2725)
!2731 = !DILocation(line: 188, column: 11, scope: !2719, inlinedAt: !2725)
!2732 = !DILocation(line: 946, column: 10, scope: !2703)
!2733 = !DILocation(line: 947, column: 1, scope: !2703)
!2734 = !DILocation(line: 946, column: 3, scope: !2703)
!2735 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !460, file: !460, line: 950, type: !2736, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!74, !53, !486, !80, !77}
!2738 = !{!2739, !2740, !2741, !2742, !2743}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !460, line: 950, type: !53)
!2740 = !DILocalVariable(name: "s", arg: 2, scope: !2735, file: !460, line: 950, type: !486)
!2741 = !DILocalVariable(name: "arg", arg: 3, scope: !2735, file: !460, line: 951, type: !80)
!2742 = !DILocalVariable(name: "argsize", arg: 4, scope: !2735, file: !460, line: 951, type: !77)
!2743 = !DILocalVariable(name: "o", scope: !2735, file: !460, line: 953, type: !1794)
!2744 = !DILocation(line: 0, scope: !2735)
!2745 = !DILocation(line: 953, column: 3, scope: !2735)
!2746 = !DILocation(line: 953, column: 32, scope: !2735)
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"quoting_options_from_style: argument 0"}
!2749 = distinct !{!2749, !"quoting_options_from_style"}
!2750 = !DILocation(line: 953, column: 36, scope: !2735)
!2751 = !DILocation(line: 0, scope: !2719, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 953, column: 36, scope: !2735)
!2753 = !DILocation(line: 185, column: 26, scope: !2719, inlinedAt: !2752)
!2754 = !DILocation(line: 186, column: 13, scope: !2728, inlinedAt: !2752)
!2755 = !DILocation(line: 186, column: 7, scope: !2719, inlinedAt: !2752)
!2756 = !DILocation(line: 187, column: 5, scope: !2728, inlinedAt: !2752)
!2757 = !DILocation(line: 188, column: 11, scope: !2719, inlinedAt: !2752)
!2758 = !DILocation(line: 954, column: 10, scope: !2735)
!2759 = !DILocation(line: 955, column: 1, scope: !2735)
!2760 = !DILocation(line: 954, column: 3, scope: !2735)
!2761 = distinct !DISubprogram(name: "quotearg_style", scope: !460, file: !460, line: 958, type: !2762, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!74, !486, !80}
!2764 = !{!2765, !2766}
!2765 = !DILocalVariable(name: "s", arg: 1, scope: !2761, file: !460, line: 958, type: !486)
!2766 = !DILocalVariable(name: "arg", arg: 2, scope: !2761, file: !460, line: 958, type: !80)
!2767 = !DILocation(line: 0, scope: !2761)
!2768 = !DILocation(line: 0, scope: !2703, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 960, column: 10, scope: !2761)
!2770 = !DILocation(line: 945, column: 3, scope: !2703, inlinedAt: !2769)
!2771 = !DILocation(line: 945, column: 32, scope: !2703, inlinedAt: !2769)
!2772 = !{!2773}
!2773 = distinct !{!2773, !2774, !"quoting_options_from_style: argument 0"}
!2774 = distinct !{!2774, !"quoting_options_from_style"}
!2775 = !DILocation(line: 945, column: 36, scope: !2703, inlinedAt: !2769)
!2776 = !DILocation(line: 0, scope: !2719, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 945, column: 36, scope: !2703, inlinedAt: !2769)
!2778 = !DILocation(line: 185, column: 26, scope: !2719, inlinedAt: !2777)
!2779 = !DILocation(line: 186, column: 13, scope: !2728, inlinedAt: !2777)
!2780 = !DILocation(line: 186, column: 7, scope: !2719, inlinedAt: !2777)
!2781 = !DILocation(line: 187, column: 5, scope: !2728, inlinedAt: !2777)
!2782 = !DILocation(line: 188, column: 11, scope: !2719, inlinedAt: !2777)
!2783 = !DILocation(line: 946, column: 10, scope: !2703, inlinedAt: !2769)
!2784 = !DILocation(line: 947, column: 1, scope: !2703, inlinedAt: !2769)
!2785 = !DILocation(line: 960, column: 3, scope: !2761)
!2786 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !460, file: !460, line: 964, type: !2787, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!74, !486, !80, !77}
!2789 = !{!2790, !2791, !2792}
!2790 = !DILocalVariable(name: "s", arg: 1, scope: !2786, file: !460, line: 964, type: !486)
!2791 = !DILocalVariable(name: "arg", arg: 2, scope: !2786, file: !460, line: 964, type: !80)
!2792 = !DILocalVariable(name: "argsize", arg: 3, scope: !2786, file: !460, line: 964, type: !77)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 0, scope: !2735, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 966, column: 10, scope: !2786)
!2796 = !DILocation(line: 953, column: 3, scope: !2735, inlinedAt: !2795)
!2797 = !DILocation(line: 953, column: 32, scope: !2735, inlinedAt: !2795)
!2798 = !{!2799}
!2799 = distinct !{!2799, !2800, !"quoting_options_from_style: argument 0"}
!2800 = distinct !{!2800, !"quoting_options_from_style"}
!2801 = !DILocation(line: 953, column: 36, scope: !2735, inlinedAt: !2795)
!2802 = !DILocation(line: 0, scope: !2719, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 953, column: 36, scope: !2735, inlinedAt: !2795)
!2804 = !DILocation(line: 185, column: 26, scope: !2719, inlinedAt: !2803)
!2805 = !DILocation(line: 186, column: 13, scope: !2728, inlinedAt: !2803)
!2806 = !DILocation(line: 186, column: 7, scope: !2719, inlinedAt: !2803)
!2807 = !DILocation(line: 187, column: 5, scope: !2728, inlinedAt: !2803)
!2808 = !DILocation(line: 188, column: 11, scope: !2719, inlinedAt: !2803)
!2809 = !DILocation(line: 954, column: 10, scope: !2735, inlinedAt: !2795)
!2810 = !DILocation(line: 955, column: 1, scope: !2735, inlinedAt: !2795)
!2811 = !DILocation(line: 966, column: 3, scope: !2786)
!2812 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !460, file: !460, line: 970, type: !2813, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!74, !80, !77, !4}
!2815 = !{!2816, !2817, !2818, !2819}
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2812, file: !460, line: 970, type: !80)
!2817 = !DILocalVariable(name: "argsize", arg: 2, scope: !2812, file: !460, line: 970, type: !77)
!2818 = !DILocalVariable(name: "ch", arg: 3, scope: !2812, file: !460, line: 970, type: !4)
!2819 = !DILocalVariable(name: "options", scope: !2812, file: !460, line: 972, type: !513)
!2820 = !DILocation(line: 0, scope: !2812)
!2821 = !DILocation(line: 972, column: 3, scope: !2812)
!2822 = !DILocation(line: 972, column: 26, scope: !2812)
!2823 = !DILocation(line: 973, column: 13, scope: !2812)
!2824 = !{i64 0, i64 4, !898, i64 4, i64 4, !889, i64 8, i64 32, !898, i64 40, i64 8, !828, i64 48, i64 8, !828}
!2825 = !DILocation(line: 0, scope: !1813, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 974, column: 3, scope: !2812)
!2827 = !DILocation(line: 147, column: 41, scope: !1813, inlinedAt: !2826)
!2828 = !DILocation(line: 147, column: 62, scope: !1813, inlinedAt: !2826)
!2829 = !DILocation(line: 147, column: 57, scope: !1813, inlinedAt: !2826)
!2830 = !DILocation(line: 148, column: 15, scope: !1813, inlinedAt: !2826)
!2831 = !DILocation(line: 149, column: 21, scope: !1813, inlinedAt: !2826)
!2832 = !DILocation(line: 149, column: 24, scope: !1813, inlinedAt: !2826)
!2833 = !DILocation(line: 150, column: 19, scope: !1813, inlinedAt: !2826)
!2834 = !DILocation(line: 150, column: 24, scope: !1813, inlinedAt: !2826)
!2835 = !DILocation(line: 150, column: 6, scope: !1813, inlinedAt: !2826)
!2836 = !DILocation(line: 975, column: 10, scope: !2812)
!2837 = !DILocation(line: 976, column: 1, scope: !2812)
!2838 = !DILocation(line: 975, column: 3, scope: !2812)
!2839 = distinct !DISubprogram(name: "quotearg_char", scope: !460, file: !460, line: 979, type: !2840, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!74, !80, !4}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "arg", arg: 1, scope: !2839, file: !460, line: 979, type: !80)
!2844 = !DILocalVariable(name: "ch", arg: 2, scope: !2839, file: !460, line: 979, type: !4)
!2845 = !DILocation(line: 0, scope: !2839)
!2846 = !DILocation(line: 0, scope: !2812, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 981, column: 10, scope: !2839)
!2848 = !DILocation(line: 972, column: 3, scope: !2812, inlinedAt: !2847)
!2849 = !DILocation(line: 972, column: 26, scope: !2812, inlinedAt: !2847)
!2850 = !DILocation(line: 973, column: 13, scope: !2812, inlinedAt: !2847)
!2851 = !DILocation(line: 0, scope: !1813, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 974, column: 3, scope: !2812, inlinedAt: !2847)
!2853 = !DILocation(line: 147, column: 41, scope: !1813, inlinedAt: !2852)
!2854 = !DILocation(line: 147, column: 62, scope: !1813, inlinedAt: !2852)
!2855 = !DILocation(line: 147, column: 57, scope: !1813, inlinedAt: !2852)
!2856 = !DILocation(line: 148, column: 15, scope: !1813, inlinedAt: !2852)
!2857 = !DILocation(line: 149, column: 21, scope: !1813, inlinedAt: !2852)
!2858 = !DILocation(line: 149, column: 24, scope: !1813, inlinedAt: !2852)
!2859 = !DILocation(line: 150, column: 19, scope: !1813, inlinedAt: !2852)
!2860 = !DILocation(line: 150, column: 24, scope: !1813, inlinedAt: !2852)
!2861 = !DILocation(line: 150, column: 6, scope: !1813, inlinedAt: !2852)
!2862 = !DILocation(line: 975, column: 10, scope: !2812, inlinedAt: !2847)
!2863 = !DILocation(line: 976, column: 1, scope: !2812, inlinedAt: !2847)
!2864 = !DILocation(line: 981, column: 3, scope: !2839)
!2865 = distinct !DISubprogram(name: "quotearg_colon", scope: !460, file: !460, line: 985, type: !1016, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2866)
!2866 = !{!2867}
!2867 = !DILocalVariable(name: "arg", arg: 1, scope: !2865, file: !460, line: 985, type: !80)
!2868 = !DILocation(line: 0, scope: !2865)
!2869 = !DILocation(line: 0, scope: !2839, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 987, column: 10, scope: !2865)
!2871 = !DILocation(line: 0, scope: !2812, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 981, column: 10, scope: !2839, inlinedAt: !2870)
!2873 = !DILocation(line: 972, column: 3, scope: !2812, inlinedAt: !2872)
!2874 = !DILocation(line: 972, column: 26, scope: !2812, inlinedAt: !2872)
!2875 = !DILocation(line: 973, column: 13, scope: !2812, inlinedAt: !2872)
!2876 = !DILocation(line: 0, scope: !1813, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 974, column: 3, scope: !2812, inlinedAt: !2872)
!2878 = !DILocation(line: 147, column: 57, scope: !1813, inlinedAt: !2877)
!2879 = !DILocation(line: 149, column: 21, scope: !1813, inlinedAt: !2877)
!2880 = !DILocation(line: 150, column: 6, scope: !1813, inlinedAt: !2877)
!2881 = !DILocation(line: 975, column: 10, scope: !2812, inlinedAt: !2872)
!2882 = !DILocation(line: 976, column: 1, scope: !2812, inlinedAt: !2872)
!2883 = !DILocation(line: 987, column: 3, scope: !2865)
!2884 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !460, file: !460, line: 991, type: !2693, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2885)
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "arg", arg: 1, scope: !2884, file: !460, line: 991, type: !80)
!2887 = !DILocalVariable(name: "argsize", arg: 2, scope: !2884, file: !460, line: 991, type: !77)
!2888 = !DILocation(line: 0, scope: !2884)
!2889 = !DILocation(line: 0, scope: !2812, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 993, column: 10, scope: !2884)
!2891 = !DILocation(line: 972, column: 3, scope: !2812, inlinedAt: !2890)
!2892 = !DILocation(line: 972, column: 26, scope: !2812, inlinedAt: !2890)
!2893 = !DILocation(line: 973, column: 13, scope: !2812, inlinedAt: !2890)
!2894 = !DILocation(line: 0, scope: !1813, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 974, column: 3, scope: !2812, inlinedAt: !2890)
!2896 = !DILocation(line: 147, column: 57, scope: !1813, inlinedAt: !2895)
!2897 = !DILocation(line: 149, column: 21, scope: !1813, inlinedAt: !2895)
!2898 = !DILocation(line: 150, column: 6, scope: !1813, inlinedAt: !2895)
!2899 = !DILocation(line: 975, column: 10, scope: !2812, inlinedAt: !2890)
!2900 = !DILocation(line: 976, column: 1, scope: !2812, inlinedAt: !2890)
!2901 = !DILocation(line: 993, column: 3, scope: !2884)
!2902 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !460, file: !460, line: 997, type: !2704, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2903)
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DILocalVariable(name: "n", arg: 1, scope: !2902, file: !460, line: 997, type: !53)
!2905 = !DILocalVariable(name: "s", arg: 2, scope: !2902, file: !460, line: 997, type: !486)
!2906 = !DILocalVariable(name: "arg", arg: 3, scope: !2902, file: !460, line: 997, type: !80)
!2907 = !DILocalVariable(name: "options", scope: !2902, file: !460, line: 999, type: !513)
!2908 = !DILocation(line: 185, column: 26, scope: !2719, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1000, column: 13, scope: !2902)
!2910 = !DILocation(line: 0, scope: !2902)
!2911 = !DILocation(line: 999, column: 3, scope: !2902)
!2912 = !DILocation(line: 999, column: 26, scope: !2902)
!2913 = !DILocation(line: 0, scope: !2719, inlinedAt: !2909)
!2914 = !DILocation(line: 186, column: 13, scope: !2728, inlinedAt: !2909)
!2915 = !DILocation(line: 186, column: 7, scope: !2719, inlinedAt: !2909)
!2916 = !DILocation(line: 187, column: 5, scope: !2728, inlinedAt: !2909)
!2917 = !{!2918}
!2918 = distinct !{!2918, !2919, !"quoting_options_from_style: argument 0"}
!2919 = distinct !{!2919, !"quoting_options_from_style"}
!2920 = !DILocation(line: 1000, column: 13, scope: !2902)
!2921 = !DILocation(line: 0, scope: !1813, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1001, column: 3, scope: !2902)
!2923 = !DILocation(line: 147, column: 57, scope: !1813, inlinedAt: !2922)
!2924 = !DILocation(line: 149, column: 21, scope: !1813, inlinedAt: !2922)
!2925 = !DILocation(line: 150, column: 6, scope: !1813, inlinedAt: !2922)
!2926 = !DILocation(line: 1002, column: 10, scope: !2902)
!2927 = !DILocation(line: 1003, column: 1, scope: !2902)
!2928 = !DILocation(line: 1002, column: 3, scope: !2902)
!2929 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !460, file: !460, line: 1006, type: !2930, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!74, !53, !80, !80, !80}
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !460, line: 1006, type: !53)
!2934 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2929, file: !460, line: 1006, type: !80)
!2935 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2929, file: !460, line: 1007, type: !80)
!2936 = !DILocalVariable(name: "arg", arg: 4, scope: !2929, file: !460, line: 1007, type: !80)
!2937 = !DILocation(line: 0, scope: !2929)
!2938 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !460, line: 1014, type: !53)
!2939 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !460, file: !460, line: 1014, type: !2940, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!74, !53, !80, !80, !80, !77}
!2942 = !{!2938, !2943, !2944, !2945, !2946, !2947}
!2943 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2939, file: !460, line: 1014, type: !80)
!2944 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2939, file: !460, line: 1015, type: !80)
!2945 = !DILocalVariable(name: "arg", arg: 4, scope: !2939, file: !460, line: 1016, type: !80)
!2946 = !DILocalVariable(name: "argsize", arg: 5, scope: !2939, file: !460, line: 1016, type: !77)
!2947 = !DILocalVariable(name: "o", scope: !2939, file: !460, line: 1018, type: !513)
!2948 = !DILocation(line: 0, scope: !2939, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1009, column: 10, scope: !2929)
!2950 = !DILocation(line: 1018, column: 3, scope: !2939, inlinedAt: !2949)
!2951 = !DILocation(line: 1018, column: 26, scope: !2939, inlinedAt: !2949)
!2952 = !DILocation(line: 1018, column: 30, scope: !2939, inlinedAt: !2949)
!2953 = !DILocation(line: 0, scope: !1853, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1019, column: 3, scope: !2939, inlinedAt: !2949)
!2955 = !DILocation(line: 174, column: 12, scope: !1853, inlinedAt: !2954)
!2956 = !DILocation(line: 175, column: 8, scope: !1866, inlinedAt: !2954)
!2957 = !DILocation(line: 175, column: 19, scope: !1866, inlinedAt: !2954)
!2958 = !DILocation(line: 176, column: 5, scope: !1866, inlinedAt: !2954)
!2959 = !DILocation(line: 177, column: 6, scope: !1853, inlinedAt: !2954)
!2960 = !DILocation(line: 177, column: 17, scope: !1853, inlinedAt: !2954)
!2961 = !DILocation(line: 178, column: 6, scope: !1853, inlinedAt: !2954)
!2962 = !DILocation(line: 178, column: 18, scope: !1853, inlinedAt: !2954)
!2963 = !DILocation(line: 1020, column: 10, scope: !2939, inlinedAt: !2949)
!2964 = !DILocation(line: 1021, column: 1, scope: !2939, inlinedAt: !2949)
!2965 = !DILocation(line: 1009, column: 3, scope: !2929)
!2966 = !DILocation(line: 0, scope: !2939)
!2967 = !DILocation(line: 1018, column: 3, scope: !2939)
!2968 = !DILocation(line: 1018, column: 26, scope: !2939)
!2969 = !DILocation(line: 1018, column: 30, scope: !2939)
!2970 = !DILocation(line: 0, scope: !1853, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 1019, column: 3, scope: !2939)
!2972 = !DILocation(line: 174, column: 12, scope: !1853, inlinedAt: !2971)
!2973 = !DILocation(line: 175, column: 8, scope: !1866, inlinedAt: !2971)
!2974 = !DILocation(line: 175, column: 19, scope: !1866, inlinedAt: !2971)
!2975 = !DILocation(line: 176, column: 5, scope: !1866, inlinedAt: !2971)
!2976 = !DILocation(line: 177, column: 6, scope: !1853, inlinedAt: !2971)
!2977 = !DILocation(line: 177, column: 17, scope: !1853, inlinedAt: !2971)
!2978 = !DILocation(line: 178, column: 6, scope: !1853, inlinedAt: !2971)
!2979 = !DILocation(line: 178, column: 18, scope: !1853, inlinedAt: !2971)
!2980 = !DILocation(line: 1020, column: 10, scope: !2939)
!2981 = !DILocation(line: 1021, column: 1, scope: !2939)
!2982 = !DILocation(line: 1020, column: 3, scope: !2939)
!2983 = distinct !DISubprogram(name: "quotearg_custom", scope: !460, file: !460, line: 1024, type: !2984, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!74, !80, !80, !80}
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2983, file: !460, line: 1024, type: !80)
!2988 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2983, file: !460, line: 1024, type: !80)
!2989 = !DILocalVariable(name: "arg", arg: 3, scope: !2983, file: !460, line: 1025, type: !80)
!2990 = !DILocation(line: 0, scope: !2983)
!2991 = !DILocation(line: 0, scope: !2929, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1027, column: 10, scope: !2983)
!2993 = !DILocation(line: 0, scope: !2939, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1009, column: 10, scope: !2929, inlinedAt: !2992)
!2995 = !DILocation(line: 1018, column: 3, scope: !2939, inlinedAt: !2994)
!2996 = !DILocation(line: 1018, column: 26, scope: !2939, inlinedAt: !2994)
!2997 = !DILocation(line: 1018, column: 30, scope: !2939, inlinedAt: !2994)
!2998 = !DILocation(line: 0, scope: !1853, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 1019, column: 3, scope: !2939, inlinedAt: !2994)
!3000 = !DILocation(line: 174, column: 12, scope: !1853, inlinedAt: !2999)
!3001 = !DILocation(line: 175, column: 8, scope: !1866, inlinedAt: !2999)
!3002 = !DILocation(line: 175, column: 19, scope: !1866, inlinedAt: !2999)
!3003 = !DILocation(line: 176, column: 5, scope: !1866, inlinedAt: !2999)
!3004 = !DILocation(line: 177, column: 6, scope: !1853, inlinedAt: !2999)
!3005 = !DILocation(line: 177, column: 17, scope: !1853, inlinedAt: !2999)
!3006 = !DILocation(line: 178, column: 6, scope: !1853, inlinedAt: !2999)
!3007 = !DILocation(line: 178, column: 18, scope: !1853, inlinedAt: !2999)
!3008 = !DILocation(line: 1020, column: 10, scope: !2939, inlinedAt: !2994)
!3009 = !DILocation(line: 1021, column: 1, scope: !2939, inlinedAt: !2994)
!3010 = !DILocation(line: 1027, column: 3, scope: !2983)
!3011 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !460, file: !460, line: 1031, type: !3012, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!74, !80, !80, !80, !77}
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3011, file: !460, line: 1031, type: !80)
!3016 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3011, file: !460, line: 1031, type: !80)
!3017 = !DILocalVariable(name: "arg", arg: 3, scope: !3011, file: !460, line: 1032, type: !80)
!3018 = !DILocalVariable(name: "argsize", arg: 4, scope: !3011, file: !460, line: 1032, type: !77)
!3019 = !DILocation(line: 0, scope: !3011)
!3020 = !DILocation(line: 0, scope: !2939, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1034, column: 10, scope: !3011)
!3022 = !DILocation(line: 1018, column: 3, scope: !2939, inlinedAt: !3021)
!3023 = !DILocation(line: 1018, column: 26, scope: !2939, inlinedAt: !3021)
!3024 = !DILocation(line: 1018, column: 30, scope: !2939, inlinedAt: !3021)
!3025 = !DILocation(line: 0, scope: !1853, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1019, column: 3, scope: !2939, inlinedAt: !3021)
!3027 = !DILocation(line: 174, column: 12, scope: !1853, inlinedAt: !3026)
!3028 = !DILocation(line: 175, column: 8, scope: !1866, inlinedAt: !3026)
!3029 = !DILocation(line: 175, column: 19, scope: !1866, inlinedAt: !3026)
!3030 = !DILocation(line: 176, column: 5, scope: !1866, inlinedAt: !3026)
!3031 = !DILocation(line: 177, column: 6, scope: !1853, inlinedAt: !3026)
!3032 = !DILocation(line: 177, column: 17, scope: !1853, inlinedAt: !3026)
!3033 = !DILocation(line: 178, column: 6, scope: !1853, inlinedAt: !3026)
!3034 = !DILocation(line: 178, column: 18, scope: !1853, inlinedAt: !3026)
!3035 = !DILocation(line: 1020, column: 10, scope: !2939, inlinedAt: !3021)
!3036 = !DILocation(line: 1021, column: 1, scope: !2939, inlinedAt: !3021)
!3037 = !DILocation(line: 1034, column: 3, scope: !3011)
!3038 = distinct !DISubprogram(name: "quote_n_mem", scope: !460, file: !460, line: 1049, type: !3039, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!80, !53, !80, !77}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3038, file: !460, line: 1049, type: !53)
!3043 = !DILocalVariable(name: "arg", arg: 2, scope: !3038, file: !460, line: 1049, type: !80)
!3044 = !DILocalVariable(name: "argsize", arg: 3, scope: !3038, file: !460, line: 1049, type: !77)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 1051, column: 10, scope: !3038)
!3047 = !DILocation(line: 1051, column: 3, scope: !3038)
!3048 = distinct !DISubprogram(name: "quote_mem", scope: !460, file: !460, line: 1055, type: !3049, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!80, !80, !77}
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "arg", arg: 1, scope: !3048, file: !460, line: 1055, type: !80)
!3053 = !DILocalVariable(name: "argsize", arg: 2, scope: !3048, file: !460, line: 1055, type: !77)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocation(line: 0, scope: !3038, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1057, column: 10, scope: !3048)
!3057 = !DILocation(line: 1051, column: 10, scope: !3038, inlinedAt: !3056)
!3058 = !DILocation(line: 1057, column: 3, scope: !3048)
!3059 = distinct !DISubprogram(name: "quote_n", scope: !460, file: !460, line: 1061, type: !3060, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!80, !53, !80}
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !460, line: 1061, type: !53)
!3064 = !DILocalVariable(name: "arg", arg: 2, scope: !3059, file: !460, line: 1061, type: !80)
!3065 = !DILocation(line: 0, scope: !3059)
!3066 = !DILocation(line: 0, scope: !3038, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1063, column: 10, scope: !3059)
!3068 = !DILocation(line: 1051, column: 10, scope: !3038, inlinedAt: !3067)
!3069 = !DILocation(line: 1063, column: 3, scope: !3059)
!3070 = distinct !DISubprogram(name: "quote", scope: !460, file: !460, line: 1067, type: !3071, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!80, !80}
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3070, file: !460, line: 1067, type: !80)
!3075 = !DILocation(line: 0, scope: !3070)
!3076 = !DILocation(line: 0, scope: !3059, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 1069, column: 10, scope: !3070)
!3078 = !DILocation(line: 0, scope: !3038, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1063, column: 10, scope: !3059, inlinedAt: !3077)
!3080 = !DILocation(line: 1051, column: 10, scope: !3038, inlinedAt: !3079)
!3081 = !DILocation(line: 1069, column: 3, scope: !3070)
!3082 = distinct !DISubprogram(name: "version_etc_arn", scope: !576, file: !576, line: 61, type: !3083, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3120)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3085, !80, !80, !80, !3119, !77}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3087, file: !150, line: 51, baseType: !53, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3087, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3087, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3087, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3087, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3087, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3087, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3087, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3087, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3087, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3087, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3087, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3087, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3087, file: !150, line: 70, baseType: !3103, size: 64, offset: 832)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3087, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3087, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3087, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3087, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3087, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3087, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3087, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3087, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3087, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3087, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3087, file: !150, line: 93, baseType: !3103, size: 64, offset: 1344)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3087, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3087, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3087, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3087, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3126}
!3121 = !DILocalVariable(name: "stream", arg: 1, scope: !3082, file: !576, line: 61, type: !3085)
!3122 = !DILocalVariable(name: "command_name", arg: 2, scope: !3082, file: !576, line: 62, type: !80)
!3123 = !DILocalVariable(name: "package", arg: 3, scope: !3082, file: !576, line: 62, type: !80)
!3124 = !DILocalVariable(name: "version", arg: 4, scope: !3082, file: !576, line: 63, type: !80)
!3125 = !DILocalVariable(name: "authors", arg: 5, scope: !3082, file: !576, line: 64, type: !3119)
!3126 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3082, file: !576, line: 64, type: !77)
!3127 = !DILocation(line: 0, scope: !3082)
!3128 = !DILocation(line: 66, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3082, file: !576, line: 66, column: 7)
!3130 = !DILocation(line: 66, column: 7, scope: !3082)
!3131 = !DILocation(line: 67, column: 5, scope: !3129)
!3132 = !DILocation(line: 69, column: 5, scope: !3129)
!3133 = !DILocation(line: 83, column: 3, scope: !3082)
!3134 = !DILocation(line: 85, column: 3, scope: !3082)
!3135 = !DILocation(line: 88, column: 3, scope: !3082)
!3136 = !DILocation(line: 95, column: 3, scope: !3082)
!3137 = !DILocation(line: 97, column: 3, scope: !3082)
!3138 = !DILocation(line: 105, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3082, file: !576, line: 98, column: 5)
!3140 = !DILocation(line: 106, column: 7, scope: !3139)
!3141 = !DILocation(line: 109, column: 7, scope: !3139)
!3142 = !DILocation(line: 110, column: 7, scope: !3139)
!3143 = !DILocation(line: 113, column: 7, scope: !3139)
!3144 = !DILocation(line: 115, column: 7, scope: !3139)
!3145 = !DILocation(line: 120, column: 7, scope: !3139)
!3146 = !DILocation(line: 122, column: 7, scope: !3139)
!3147 = !DILocation(line: 127, column: 7, scope: !3139)
!3148 = !DILocation(line: 129, column: 7, scope: !3139)
!3149 = !DILocation(line: 134, column: 7, scope: !3139)
!3150 = !DILocation(line: 137, column: 7, scope: !3139)
!3151 = !DILocation(line: 142, column: 7, scope: !3139)
!3152 = !DILocation(line: 145, column: 7, scope: !3139)
!3153 = !DILocation(line: 150, column: 7, scope: !3139)
!3154 = !DILocation(line: 154, column: 7, scope: !3139)
!3155 = !DILocation(line: 159, column: 7, scope: !3139)
!3156 = !DILocation(line: 163, column: 7, scope: !3139)
!3157 = !DILocation(line: 170, column: 7, scope: !3139)
!3158 = !DILocation(line: 174, column: 7, scope: !3139)
!3159 = !DILocation(line: 176, column: 1, scope: !3082)
!3160 = distinct !DISubprogram(name: "version_etc_ar", scope: !576, file: !576, line: 183, type: !3161, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !3085, !80, !80, !80, !3119}
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DILocalVariable(name: "stream", arg: 1, scope: !3160, file: !576, line: 183, type: !3085)
!3165 = !DILocalVariable(name: "command_name", arg: 2, scope: !3160, file: !576, line: 184, type: !80)
!3166 = !DILocalVariable(name: "package", arg: 3, scope: !3160, file: !576, line: 184, type: !80)
!3167 = !DILocalVariable(name: "version", arg: 4, scope: !3160, file: !576, line: 185, type: !80)
!3168 = !DILocalVariable(name: "authors", arg: 5, scope: !3160, file: !576, line: 185, type: !3119)
!3169 = !DILocalVariable(name: "n_authors", scope: !3160, file: !576, line: 187, type: !77)
!3170 = !DILocation(line: 0, scope: !3160)
!3171 = !DILocation(line: 189, column: 8, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3160, file: !576, line: 189, column: 3)
!3173 = !DILocation(line: 189, scope: !3172)
!3174 = !DILocation(line: 189, column: 23, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !576, line: 189, column: 3)
!3176 = !DILocation(line: 189, column: 3, scope: !3172)
!3177 = !DILocation(line: 189, column: 52, scope: !3175)
!3178 = distinct !{!3178, !3176, !3179, !936}
!3179 = !DILocation(line: 190, column: 5, scope: !3172)
!3180 = !DILocation(line: 191, column: 3, scope: !3160)
!3181 = !DILocation(line: 192, column: 1, scope: !3160)
!3182 = distinct !DISubprogram(name: "version_etc_va", scope: !576, file: !576, line: 199, type: !3183, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3193)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3085, !80, !80, !80, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3187)
!3187 = !{!3188, !3190, !3191, !3192}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3186, file: !3189, line: 192, baseType: !59, size: 32)
!3189 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3186, file: !3189, line: 192, baseType: !59, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3186, file: !3189, line: 192, baseType: !75, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3186, file: !3189, line: 192, baseType: !75, size: 64, offset: 128)
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3194 = !DILocalVariable(name: "stream", arg: 1, scope: !3182, file: !576, line: 199, type: !3085)
!3195 = !DILocalVariable(name: "command_name", arg: 2, scope: !3182, file: !576, line: 200, type: !80)
!3196 = !DILocalVariable(name: "package", arg: 3, scope: !3182, file: !576, line: 200, type: !80)
!3197 = !DILocalVariable(name: "version", arg: 4, scope: !3182, file: !576, line: 201, type: !80)
!3198 = !DILocalVariable(name: "authors", arg: 5, scope: !3182, file: !576, line: 201, type: !3185)
!3199 = !DILocalVariable(name: "n_authors", scope: !3182, file: !576, line: 203, type: !77)
!3200 = !DILocalVariable(name: "authtab", scope: !3182, file: !576, line: 204, type: !3201)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!3202 = !DILocation(line: 0, scope: !3182)
!3203 = !DILocation(line: 204, column: 3, scope: !3182)
!3204 = !DILocation(line: 204, column: 15, scope: !3182)
!3205 = !DILocation(line: 208, column: 35, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !576, line: 206, column: 3)
!3207 = distinct !DILexicalBlock(scope: !3182, file: !576, line: 206, column: 3)
!3208 = !DILocation(line: 208, column: 33, scope: !3206)
!3209 = !DILocation(line: 208, column: 67, scope: !3206)
!3210 = !DILocation(line: 206, column: 3, scope: !3207)
!3211 = !DILocation(line: 208, column: 14, scope: !3206)
!3212 = !DILocation(line: 0, scope: !3207)
!3213 = !DILocation(line: 211, column: 3, scope: !3182)
!3214 = !DILocation(line: 213, column: 1, scope: !3182)
!3215 = distinct !DISubprogram(name: "version_etc", scope: !576, file: !576, line: 230, type: !3216, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !3085, !80, !80, !80, null}
!3218 = !{!3219, !3220, !3221, !3222, !3223}
!3219 = !DILocalVariable(name: "stream", arg: 1, scope: !3215, file: !576, line: 230, type: !3085)
!3220 = !DILocalVariable(name: "command_name", arg: 2, scope: !3215, file: !576, line: 231, type: !80)
!3221 = !DILocalVariable(name: "package", arg: 3, scope: !3215, file: !576, line: 231, type: !80)
!3222 = !DILocalVariable(name: "version", arg: 4, scope: !3215, file: !576, line: 232, type: !80)
!3223 = !DILocalVariable(name: "authors", scope: !3215, file: !576, line: 234, type: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !884, line: 52, baseType: !3225)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1594, line: 14, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3189, baseType: !3227)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3186, size: 192, elements: !35)
!3228 = !DILocation(line: 0, scope: !3215)
!3229 = !DILocation(line: 234, column: 3, scope: !3215)
!3230 = !DILocation(line: 234, column: 11, scope: !3215)
!3231 = !DILocation(line: 235, column: 3, scope: !3215)
!3232 = !DILocation(line: 236, column: 3, scope: !3215)
!3233 = !DILocation(line: 237, column: 3, scope: !3215)
!3234 = !DILocation(line: 238, column: 1, scope: !3215)
!3235 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !576, file: !576, line: 241, type: !415, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !873)
!3236 = !DILocation(line: 243, column: 3, scope: !3235)
!3237 = !DILocation(line: 248, column: 3, scope: !3235)
!3238 = !DILocation(line: 254, column: 3, scope: !3235)
!3239 = !DILocation(line: 259, column: 3, scope: !3235)
!3240 = !DILocation(line: 261, column: 1, scope: !3235)
!3241 = distinct !DISubprogram(name: "xnrealloc", scope: !3242, file: !3242, line: 147, type: !3243, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3245)
!3242 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!75, !75, !77, !77}
!3245 = !{!3246, !3247, !3248}
!3246 = !DILocalVariable(name: "p", arg: 1, scope: !3241, file: !3242, line: 147, type: !75)
!3247 = !DILocalVariable(name: "n", arg: 2, scope: !3241, file: !3242, line: 147, type: !77)
!3248 = !DILocalVariable(name: "s", arg: 3, scope: !3241, file: !3242, line: 147, type: !77)
!3249 = !DILocation(line: 0, scope: !3241)
!3250 = !DILocalVariable(name: "p", arg: 1, scope: !3251, file: !713, line: 83, type: !75)
!3251 = distinct !DISubprogram(name: "xreallocarray", scope: !713, file: !713, line: 83, type: !3243, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3252)
!3252 = !{!3250, !3253, !3254}
!3253 = !DILocalVariable(name: "n", arg: 2, scope: !3251, file: !713, line: 83, type: !77)
!3254 = !DILocalVariable(name: "s", arg: 3, scope: !3251, file: !713, line: 83, type: !77)
!3255 = !DILocation(line: 0, scope: !3251, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 149, column: 10, scope: !3241)
!3257 = !DILocation(line: 85, column: 25, scope: !3251, inlinedAt: !3256)
!3258 = !DILocalVariable(name: "p", arg: 1, scope: !3259, file: !713, line: 37, type: !75)
!3259 = distinct !DISubprogram(name: "check_nonnull", scope: !713, file: !713, line: 37, type: !3260, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!75, !75}
!3262 = !{!3258}
!3263 = !DILocation(line: 0, scope: !3259, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 85, column: 10, scope: !3251, inlinedAt: !3256)
!3265 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3264)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !713, line: 39, column: 7)
!3267 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3264)
!3268 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3264)
!3269 = !DILocation(line: 149, column: 3, scope: !3241)
!3270 = !DILocation(line: 0, scope: !3251)
!3271 = !DILocation(line: 85, column: 25, scope: !3251)
!3272 = !DILocation(line: 0, scope: !3259, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 85, column: 10, scope: !3251)
!3274 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3273)
!3275 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3273)
!3276 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3273)
!3277 = !DILocation(line: 85, column: 3, scope: !3251)
!3278 = distinct !DISubprogram(name: "xmalloc", scope: !713, file: !713, line: 47, type: !3279, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!75, !77}
!3281 = !{!3282}
!3282 = !DILocalVariable(name: "s", arg: 1, scope: !3278, file: !713, line: 47, type: !77)
!3283 = !DILocation(line: 0, scope: !3278)
!3284 = !DILocation(line: 49, column: 25, scope: !3278)
!3285 = !DILocation(line: 0, scope: !3259, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 49, column: 10, scope: !3278)
!3287 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3286)
!3288 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3286)
!3289 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3286)
!3290 = !DILocation(line: 49, column: 3, scope: !3278)
!3291 = !DISubprogram(name: "malloc", scope: !1014, file: !1014, line: 540, type: !3279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3292 = distinct !DISubprogram(name: "ximalloc", scope: !713, file: !713, line: 53, type: !3293, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!75, !732}
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "s", arg: 1, scope: !3292, file: !713, line: 53, type: !732)
!3297 = !DILocation(line: 0, scope: !3292)
!3298 = !DILocalVariable(name: "s", arg: 1, scope: !3299, file: !3300, line: 55, type: !732)
!3299 = distinct !DISubprogram(name: "imalloc", scope: !3300, file: !3300, line: 55, type: !3293, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3301)
!3300 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3301 = !{!3298}
!3302 = !DILocation(line: 0, scope: !3299, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 55, column: 25, scope: !3292)
!3304 = !DILocation(line: 57, column: 26, scope: !3299, inlinedAt: !3303)
!3305 = !DILocation(line: 0, scope: !3259, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 55, column: 10, scope: !3292)
!3307 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3306)
!3308 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3306)
!3309 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3306)
!3310 = !DILocation(line: 55, column: 3, scope: !3292)
!3311 = distinct !DISubprogram(name: "xcharalloc", scope: !713, file: !713, line: 59, type: !3312, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!74, !77}
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3311, file: !713, line: 59, type: !77)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !DILocation(line: 0, scope: !3278, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 61, column: 10, scope: !3311)
!3319 = !DILocation(line: 49, column: 25, scope: !3278, inlinedAt: !3318)
!3320 = !DILocation(line: 0, scope: !3259, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 49, column: 10, scope: !3278, inlinedAt: !3318)
!3322 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3321)
!3323 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3321)
!3324 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3321)
!3325 = !DILocation(line: 61, column: 3, scope: !3311)
!3326 = distinct !DISubprogram(name: "xrealloc", scope: !713, file: !713, line: 68, type: !3327, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!75, !75, !77}
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "p", arg: 1, scope: !3326, file: !713, line: 68, type: !75)
!3331 = !DILocalVariable(name: "s", arg: 2, scope: !3326, file: !713, line: 68, type: !77)
!3332 = !DILocation(line: 0, scope: !3326)
!3333 = !DILocalVariable(name: "ptr", arg: 1, scope: !3334, file: !3335, line: 2057, type: !75)
!3334 = distinct !DISubprogram(name: "rpl_realloc", scope: !3335, file: !3335, line: 2057, type: !3327, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3336)
!3335 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3336 = !{!3333, !3337}
!3337 = !DILocalVariable(name: "size", arg: 2, scope: !3334, file: !3335, line: 2057, type: !77)
!3338 = !DILocation(line: 0, scope: !3334, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 70, column: 25, scope: !3326)
!3340 = !DILocation(line: 2059, column: 24, scope: !3334, inlinedAt: !3339)
!3341 = !DILocation(line: 2059, column: 10, scope: !3334, inlinedAt: !3339)
!3342 = !DILocation(line: 0, scope: !3259, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 70, column: 10, scope: !3326)
!3344 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3343)
!3345 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3343)
!3346 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3343)
!3347 = !DILocation(line: 70, column: 3, scope: !3326)
!3348 = !DISubprogram(name: "realloc", scope: !1014, file: !1014, line: 551, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3349 = distinct !DISubprogram(name: "xirealloc", scope: !713, file: !713, line: 74, type: !3350, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!75, !75, !732}
!3352 = !{!3353, !3354}
!3353 = !DILocalVariable(name: "p", arg: 1, scope: !3349, file: !713, line: 74, type: !75)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !713, line: 74, type: !732)
!3355 = !DILocation(line: 0, scope: !3349)
!3356 = !DILocalVariable(name: "p", arg: 1, scope: !3357, file: !3300, line: 66, type: !75)
!3357 = distinct !DISubprogram(name: "irealloc", scope: !3300, file: !3300, line: 66, type: !3350, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3358)
!3358 = !{!3356, !3359}
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3357, file: !3300, line: 66, type: !732)
!3360 = !DILocation(line: 0, scope: !3357, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 76, column: 25, scope: !3349)
!3362 = !DILocation(line: 0, scope: !3334, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 68, column: 26, scope: !3357, inlinedAt: !3361)
!3364 = !DILocation(line: 2059, column: 24, scope: !3334, inlinedAt: !3363)
!3365 = !DILocation(line: 2059, column: 10, scope: !3334, inlinedAt: !3363)
!3366 = !DILocation(line: 0, scope: !3259, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 76, column: 10, scope: !3349)
!3368 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3367)
!3369 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3367)
!3370 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3367)
!3371 = !DILocation(line: 76, column: 3, scope: !3349)
!3372 = distinct !DISubprogram(name: "xireallocarray", scope: !713, file: !713, line: 89, type: !3373, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!75, !75, !732, !732}
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "p", arg: 1, scope: !3372, file: !713, line: 89, type: !75)
!3377 = !DILocalVariable(name: "n", arg: 2, scope: !3372, file: !713, line: 89, type: !732)
!3378 = !DILocalVariable(name: "s", arg: 3, scope: !3372, file: !713, line: 89, type: !732)
!3379 = !DILocation(line: 0, scope: !3372)
!3380 = !DILocalVariable(name: "p", arg: 1, scope: !3381, file: !3300, line: 98, type: !75)
!3381 = distinct !DISubprogram(name: "ireallocarray", scope: !3300, file: !3300, line: 98, type: !3373, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3382)
!3382 = !{!3380, !3383, !3384}
!3383 = !DILocalVariable(name: "n", arg: 2, scope: !3381, file: !3300, line: 98, type: !732)
!3384 = !DILocalVariable(name: "s", arg: 3, scope: !3381, file: !3300, line: 98, type: !732)
!3385 = !DILocation(line: 0, scope: !3381, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 91, column: 25, scope: !3372)
!3387 = !DILocation(line: 101, column: 13, scope: !3381, inlinedAt: !3386)
!3388 = !DILocation(line: 0, scope: !3259, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 91, column: 10, scope: !3372)
!3390 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3389)
!3391 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3389)
!3392 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3389)
!3393 = !DILocation(line: 91, column: 3, scope: !3372)
!3394 = distinct !DISubprogram(name: "xnmalloc", scope: !713, file: !713, line: 98, type: !3395, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!75, !77, !77}
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !713, line: 98, type: !77)
!3399 = !DILocalVariable(name: "s", arg: 2, scope: !3394, file: !713, line: 98, type: !77)
!3400 = !DILocation(line: 0, scope: !3394)
!3401 = !DILocation(line: 0, scope: !3251, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 100, column: 10, scope: !3394)
!3403 = !DILocation(line: 85, column: 25, scope: !3251, inlinedAt: !3402)
!3404 = !DILocation(line: 0, scope: !3259, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 85, column: 10, scope: !3251, inlinedAt: !3402)
!3406 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3405)
!3407 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3405)
!3408 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3405)
!3409 = !DILocation(line: 100, column: 3, scope: !3394)
!3410 = distinct !DISubprogram(name: "xinmalloc", scope: !713, file: !713, line: 104, type: !3411, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!75, !732, !732}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !713, line: 104, type: !732)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !713, line: 104, type: !732)
!3416 = !DILocation(line: 0, scope: !3410)
!3417 = !DILocation(line: 0, scope: !3372, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 106, column: 10, scope: !3410)
!3419 = !DILocation(line: 0, scope: !3381, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 91, column: 25, scope: !3372, inlinedAt: !3418)
!3421 = !DILocation(line: 101, column: 13, scope: !3381, inlinedAt: !3420)
!3422 = !DILocation(line: 0, scope: !3259, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 91, column: 10, scope: !3372, inlinedAt: !3418)
!3424 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3423)
!3427 = !DILocation(line: 106, column: 3, scope: !3410)
!3428 = distinct !DISubprogram(name: "x2realloc", scope: !713, file: !713, line: 116, type: !3429, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!75, !75, !719}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !713, line: 116, type: !75)
!3433 = !DILocalVariable(name: "ps", arg: 2, scope: !3428, file: !713, line: 116, type: !719)
!3434 = !DILocation(line: 0, scope: !3428)
!3435 = !DILocation(line: 0, scope: !716, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 118, column: 10, scope: !3428)
!3437 = !DILocation(line: 178, column: 14, scope: !716, inlinedAt: !3436)
!3438 = !DILocation(line: 180, column: 9, scope: !3439, inlinedAt: !3436)
!3439 = distinct !DILexicalBlock(scope: !716, file: !713, line: 180, column: 7)
!3440 = !DILocation(line: 180, column: 7, scope: !716, inlinedAt: !3436)
!3441 = !DILocation(line: 182, column: 13, scope: !3442, inlinedAt: !3436)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !713, line: 182, column: 11)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !713, line: 181, column: 5)
!3444 = !DILocation(line: 182, column: 11, scope: !3443, inlinedAt: !3436)
!3445 = !DILocation(line: 197, column: 11, scope: !3446, inlinedAt: !3436)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !713, line: 197, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3439, file: !713, line: 195, column: 5)
!3448 = !DILocation(line: 197, column: 11, scope: !3447, inlinedAt: !3436)
!3449 = !DILocation(line: 198, column: 9, scope: !3446, inlinedAt: !3436)
!3450 = !DILocation(line: 0, scope: !3251, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 201, column: 7, scope: !716, inlinedAt: !3436)
!3452 = !DILocation(line: 85, column: 25, scope: !3251, inlinedAt: !3451)
!3453 = !DILocation(line: 0, scope: !3259, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 85, column: 10, scope: !3251, inlinedAt: !3451)
!3455 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3454)
!3456 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3454)
!3457 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3454)
!3458 = !DILocation(line: 202, column: 7, scope: !716, inlinedAt: !3436)
!3459 = !DILocation(line: 118, column: 3, scope: !3428)
!3460 = !DILocation(line: 0, scope: !716)
!3461 = !DILocation(line: 178, column: 14, scope: !716)
!3462 = !DILocation(line: 180, column: 9, scope: !3439)
!3463 = !DILocation(line: 180, column: 7, scope: !716)
!3464 = !DILocation(line: 182, column: 13, scope: !3442)
!3465 = !DILocation(line: 182, column: 11, scope: !3443)
!3466 = !DILocation(line: 190, column: 30, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3442, file: !713, line: 183, column: 9)
!3468 = !DILocation(line: 191, column: 16, scope: !3467)
!3469 = !DILocation(line: 191, column: 13, scope: !3467)
!3470 = !DILocation(line: 192, column: 9, scope: !3467)
!3471 = !DILocation(line: 197, column: 11, scope: !3446)
!3472 = !DILocation(line: 197, column: 11, scope: !3447)
!3473 = !DILocation(line: 198, column: 9, scope: !3446)
!3474 = !DILocation(line: 0, scope: !3251, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 201, column: 7, scope: !716)
!3476 = !DILocation(line: 85, column: 25, scope: !3251, inlinedAt: !3475)
!3477 = !DILocation(line: 0, scope: !3259, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 85, column: 10, scope: !3251, inlinedAt: !3475)
!3479 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3478)
!3482 = !DILocation(line: 202, column: 7, scope: !716)
!3483 = !DILocation(line: 203, column: 3, scope: !716)
!3484 = !DILocation(line: 0, scope: !728)
!3485 = !DILocation(line: 230, column: 14, scope: !728)
!3486 = !DILocation(line: 238, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !728, file: !713, line: 238, column: 7)
!3488 = !DILocation(line: 238, column: 7, scope: !728)
!3489 = !DILocation(line: 240, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !728, file: !713, line: 240, column: 7)
!3491 = !DILocation(line: 240, column: 18, scope: !3490)
!3492 = !DILocation(line: 253, column: 8, scope: !728)
!3493 = !DILocation(line: 258, column: 27, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !713, line: 257, column: 5)
!3495 = distinct !DILexicalBlock(scope: !728, file: !713, line: 256, column: 7)
!3496 = !DILocation(line: 259, column: 50, scope: !3494)
!3497 = !DILocation(line: 259, column: 32, scope: !3494)
!3498 = !DILocation(line: 260, column: 5, scope: !3494)
!3499 = !DILocation(line: 262, column: 9, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !728, file: !713, line: 262, column: 7)
!3501 = !DILocation(line: 262, column: 7, scope: !728)
!3502 = !DILocation(line: 263, column: 9, scope: !3500)
!3503 = !DILocation(line: 263, column: 5, scope: !3500)
!3504 = !DILocation(line: 264, column: 9, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !728, file: !713, line: 264, column: 7)
!3506 = !DILocation(line: 264, column: 14, scope: !3505)
!3507 = !DILocation(line: 265, column: 7, scope: !3505)
!3508 = !DILocation(line: 265, column: 11, scope: !3505)
!3509 = !DILocation(line: 266, column: 11, scope: !3505)
!3510 = !DILocation(line: 267, column: 14, scope: !3505)
!3511 = !DILocation(line: 264, column: 7, scope: !728)
!3512 = !DILocation(line: 268, column: 5, scope: !3505)
!3513 = !DILocation(line: 0, scope: !3326, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 269, column: 8, scope: !728)
!3515 = !DILocation(line: 0, scope: !3334, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 70, column: 25, scope: !3326, inlinedAt: !3514)
!3517 = !DILocation(line: 2059, column: 24, scope: !3334, inlinedAt: !3516)
!3518 = !DILocation(line: 2059, column: 10, scope: !3334, inlinedAt: !3516)
!3519 = !DILocation(line: 0, scope: !3259, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 70, column: 10, scope: !3326, inlinedAt: !3514)
!3521 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3520)
!3522 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3520)
!3523 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3520)
!3524 = !DILocation(line: 270, column: 7, scope: !728)
!3525 = !DILocation(line: 271, column: 3, scope: !728)
!3526 = distinct !DISubprogram(name: "xzalloc", scope: !713, file: !713, line: 279, type: !3279, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3527)
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "s", arg: 1, scope: !3526, file: !713, line: 279, type: !77)
!3529 = !DILocation(line: 0, scope: !3526)
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3531, file: !713, line: 294, type: !77)
!3531 = distinct !DISubprogram(name: "xcalloc", scope: !713, file: !713, line: 294, type: !3395, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3532)
!3532 = !{!3530, !3533}
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3531, file: !713, line: 294, type: !77)
!3534 = !DILocation(line: 0, scope: !3531, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 281, column: 10, scope: !3526)
!3536 = !DILocation(line: 296, column: 25, scope: !3531, inlinedAt: !3535)
!3537 = !DILocation(line: 0, scope: !3259, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 296, column: 10, scope: !3531, inlinedAt: !3535)
!3539 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3538)
!3540 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3538)
!3541 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3538)
!3542 = !DILocation(line: 281, column: 3, scope: !3526)
!3543 = !DISubprogram(name: "calloc", scope: !1014, file: !1014, line: 543, type: !3395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3544 = !DILocation(line: 0, scope: !3531)
!3545 = !DILocation(line: 296, column: 25, scope: !3531)
!3546 = !DILocation(line: 0, scope: !3259, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 296, column: 10, scope: !3531)
!3548 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3547)
!3549 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3547)
!3550 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3547)
!3551 = !DILocation(line: 296, column: 3, scope: !3531)
!3552 = distinct !DISubprogram(name: "xizalloc", scope: !713, file: !713, line: 285, type: !3293, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3553)
!3553 = !{!3554}
!3554 = !DILocalVariable(name: "s", arg: 1, scope: !3552, file: !713, line: 285, type: !732)
!3555 = !DILocation(line: 0, scope: !3552)
!3556 = !DILocalVariable(name: "n", arg: 1, scope: !3557, file: !713, line: 300, type: !732)
!3557 = distinct !DISubprogram(name: "xicalloc", scope: !713, file: !713, line: 300, type: !3411, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3558)
!3558 = !{!3556, !3559}
!3559 = !DILocalVariable(name: "s", arg: 2, scope: !3557, file: !713, line: 300, type: !732)
!3560 = !DILocation(line: 0, scope: !3557, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 287, column: 10, scope: !3552)
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !3300, line: 77, type: !732)
!3563 = distinct !DISubprogram(name: "icalloc", scope: !3300, file: !3300, line: 77, type: !3411, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3564)
!3564 = !{!3562, !3565}
!3565 = !DILocalVariable(name: "s", arg: 2, scope: !3563, file: !3300, line: 77, type: !732)
!3566 = !DILocation(line: 0, scope: !3563, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 302, column: 25, scope: !3557, inlinedAt: !3561)
!3568 = !DILocation(line: 91, column: 10, scope: !3563, inlinedAt: !3567)
!3569 = !DILocation(line: 0, scope: !3259, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 302, column: 10, scope: !3557, inlinedAt: !3561)
!3571 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3570)
!3572 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3570)
!3573 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3570)
!3574 = !DILocation(line: 287, column: 3, scope: !3552)
!3575 = !DILocation(line: 0, scope: !3557)
!3576 = !DILocation(line: 0, scope: !3563, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 302, column: 25, scope: !3557)
!3578 = !DILocation(line: 91, column: 10, scope: !3563, inlinedAt: !3577)
!3579 = !DILocation(line: 0, scope: !3259, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 302, column: 10, scope: !3557)
!3581 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3580)
!3582 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3580)
!3583 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3580)
!3584 = !DILocation(line: 302, column: 3, scope: !3557)
!3585 = distinct !DISubprogram(name: "xmemdup", scope: !713, file: !713, line: 310, type: !3586, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!75, !1038, !77}
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "p", arg: 1, scope: !3585, file: !713, line: 310, type: !1038)
!3590 = !DILocalVariable(name: "s", arg: 2, scope: !3585, file: !713, line: 310, type: !77)
!3591 = !DILocation(line: 0, scope: !3585)
!3592 = !DILocation(line: 0, scope: !3278, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 312, column: 18, scope: !3585)
!3594 = !DILocation(line: 49, column: 25, scope: !3278, inlinedAt: !3593)
!3595 = !DILocation(line: 0, scope: !3259, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 49, column: 10, scope: !3278, inlinedAt: !3593)
!3597 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3596)
!3598 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3596)
!3599 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3596)
!3600 = !DILocalVariable(name: "__dest", arg: 1, scope: !3601, file: !1756, line: 26, type: !3604)
!3601 = distinct !DISubprogram(name: "memcpy", scope: !1756, file: !1756, line: 26, type: !3602, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3605)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!75, !3604, !1037, !77}
!3604 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!3605 = !{!3600, !3606, !3607}
!3606 = !DILocalVariable(name: "__src", arg: 2, scope: !3601, file: !1756, line: 26, type: !1037)
!3607 = !DILocalVariable(name: "__len", arg: 3, scope: !3601, file: !1756, line: 26, type: !77)
!3608 = !DILocation(line: 0, scope: !3601, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 312, column: 10, scope: !3585)
!3610 = !DILocation(line: 29, column: 10, scope: !3601, inlinedAt: !3609)
!3611 = !DILocation(line: 312, column: 3, scope: !3585)
!3612 = distinct !DISubprogram(name: "ximemdup", scope: !713, file: !713, line: 316, type: !3613, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!75, !1038, !732}
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "p", arg: 1, scope: !3612, file: !713, line: 316, type: !1038)
!3617 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !713, line: 316, type: !732)
!3618 = !DILocation(line: 0, scope: !3612)
!3619 = !DILocation(line: 0, scope: !3292, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 318, column: 18, scope: !3612)
!3621 = !DILocation(line: 0, scope: !3299, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 55, column: 25, scope: !3292, inlinedAt: !3620)
!3623 = !DILocation(line: 57, column: 26, scope: !3299, inlinedAt: !3622)
!3624 = !DILocation(line: 0, scope: !3259, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 55, column: 10, scope: !3292, inlinedAt: !3620)
!3626 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3625)
!3627 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3625)
!3628 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3625)
!3629 = !DILocation(line: 0, scope: !3601, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 318, column: 10, scope: !3612)
!3631 = !DILocation(line: 29, column: 10, scope: !3601, inlinedAt: !3630)
!3632 = !DILocation(line: 318, column: 3, scope: !3612)
!3633 = distinct !DISubprogram(name: "ximemdup0", scope: !713, file: !713, line: 325, type: !3634, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!74, !1038, !732}
!3636 = !{!3637, !3638, !3639}
!3637 = !DILocalVariable(name: "p", arg: 1, scope: !3633, file: !713, line: 325, type: !1038)
!3638 = !DILocalVariable(name: "s", arg: 2, scope: !3633, file: !713, line: 325, type: !732)
!3639 = !DILocalVariable(name: "result", scope: !3633, file: !713, line: 327, type: !74)
!3640 = !DILocation(line: 0, scope: !3633)
!3641 = !DILocation(line: 327, column: 30, scope: !3633)
!3642 = !DILocation(line: 0, scope: !3292, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 327, column: 18, scope: !3633)
!3644 = !DILocation(line: 0, scope: !3299, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 55, column: 25, scope: !3292, inlinedAt: !3643)
!3646 = !DILocation(line: 57, column: 26, scope: !3299, inlinedAt: !3645)
!3647 = !DILocation(line: 0, scope: !3259, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 55, column: 10, scope: !3292, inlinedAt: !3643)
!3649 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3648)
!3650 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3648)
!3651 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3648)
!3652 = !DILocation(line: 328, column: 3, scope: !3633)
!3653 = !DILocation(line: 328, column: 13, scope: !3633)
!3654 = !DILocation(line: 0, scope: !3601, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 329, column: 10, scope: !3633)
!3656 = !DILocation(line: 29, column: 10, scope: !3601, inlinedAt: !3655)
!3657 = !DILocation(line: 329, column: 3, scope: !3633)
!3658 = distinct !DISubprogram(name: "xstrdup", scope: !713, file: !713, line: 335, type: !1016, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3659)
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "string", arg: 1, scope: !3658, file: !713, line: 335, type: !80)
!3661 = !DILocation(line: 0, scope: !3658)
!3662 = !DILocation(line: 337, column: 27, scope: !3658)
!3663 = !DILocation(line: 337, column: 43, scope: !3658)
!3664 = !DILocation(line: 0, scope: !3585, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 337, column: 10, scope: !3658)
!3666 = !DILocation(line: 0, scope: !3278, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 312, column: 18, scope: !3585, inlinedAt: !3665)
!3668 = !DILocation(line: 49, column: 25, scope: !3278, inlinedAt: !3667)
!3669 = !DILocation(line: 0, scope: !3259, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 49, column: 10, scope: !3278, inlinedAt: !3667)
!3671 = !DILocation(line: 39, column: 8, scope: !3266, inlinedAt: !3670)
!3672 = !DILocation(line: 39, column: 7, scope: !3259, inlinedAt: !3670)
!3673 = !DILocation(line: 40, column: 5, scope: !3266, inlinedAt: !3670)
!3674 = !DILocation(line: 0, scope: !3601, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 312, column: 10, scope: !3585, inlinedAt: !3665)
!3676 = !DILocation(line: 29, column: 10, scope: !3601, inlinedAt: !3675)
!3677 = !DILocation(line: 337, column: 3, scope: !3658)
!3678 = distinct !DISubprogram(name: "xalloc_die", scope: !669, file: !669, line: 32, type: !415, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3679)
!3679 = !{!3680}
!3680 = !DILocalVariable(name: "__errstatus", scope: !3681, file: !669, line: 34, type: !3682)
!3681 = distinct !DILexicalBlock(scope: !3678, file: !669, line: 34, column: 3)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3683 = !DILocation(line: 34, column: 3, scope: !3681)
!3684 = !DILocation(line: 0, scope: !3681)
!3685 = !DILocation(line: 40, column: 3, scope: !3678)
!3686 = distinct !DISubprogram(name: "xgetgroups", scope: !749, file: !749, line: 31, type: !763, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "username", arg: 1, scope: !3686, file: !749, line: 31, type: !80)
!3689 = !DILocalVariable(name: "gid", arg: 2, scope: !3686, file: !749, line: 31, type: !765)
!3690 = !DILocalVariable(name: "groups", arg: 3, scope: !3686, file: !749, line: 31, type: !768)
!3691 = !DILocalVariable(name: "result", scope: !3686, file: !749, line: 33, type: !53)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocation(line: 33, column: 16, scope: !3686)
!3694 = !DILocation(line: 34, column: 14, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3686, file: !749, line: 34, column: 7)
!3696 = !DILocation(line: 34, column: 20, scope: !3695)
!3697 = !DILocation(line: 34, column: 23, scope: !3695)
!3698 = !DILocation(line: 34, column: 29, scope: !3695)
!3699 = !DILocation(line: 34, column: 7, scope: !3686)
!3700 = !DILocation(line: 35, column: 5, scope: !3695)
!3701 = !DILocation(line: 36, column: 3, scope: !3686)
!3702 = distinct !DISubprogram(name: "close_stream", scope: !751, file: !751, line: 55, type: !3703, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3739)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!53, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3707, file: !150, line: 51, baseType: !53, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3707, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3707, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3707, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3707, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3707, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3707, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3707, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3707, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3707, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3707, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3707, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3707, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3707, file: !150, line: 70, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3707, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3707, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3707, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3707, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3707, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3707, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3707, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3707, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3707, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3707, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3707, file: !150, line: 93, baseType: !3723, size: 64, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3707, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3707, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3707, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3707, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3739 = !{!3740, !3741, !3743, !3744}
!3740 = !DILocalVariable(name: "stream", arg: 1, scope: !3702, file: !751, line: 55, type: !3705)
!3741 = !DILocalVariable(name: "some_pending", scope: !3702, file: !751, line: 57, type: !3742)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3743 = !DILocalVariable(name: "prev_fail", scope: !3702, file: !751, line: 58, type: !3742)
!3744 = !DILocalVariable(name: "fclose_fail", scope: !3702, file: !751, line: 59, type: !3742)
!3745 = !DILocation(line: 0, scope: !3702)
!3746 = !DILocation(line: 57, column: 30, scope: !3702)
!3747 = !DILocalVariable(name: "__stream", arg: 1, scope: !3748, file: !1127, line: 135, type: !3705)
!3748 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1127, file: !1127, line: 135, type: !3703, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !3749)
!3749 = !{!3747}
!3750 = !DILocation(line: 0, scope: !3748, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 58, column: 27, scope: !3702)
!3752 = !DILocation(line: 137, column: 10, scope: !3748, inlinedAt: !3751)
!3753 = !DILocation(line: 58, column: 43, scope: !3702)
!3754 = !DILocation(line: 59, column: 29, scope: !3702)
!3755 = !DILocation(line: 59, column: 45, scope: !3702)
!3756 = !DILocation(line: 69, column: 17, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3702, file: !751, line: 69, column: 7)
!3758 = !DILocation(line: 57, column: 50, scope: !3702)
!3759 = !DILocation(line: 69, column: 33, scope: !3757)
!3760 = !DILocation(line: 69, column: 53, scope: !3757)
!3761 = !DILocation(line: 69, column: 59, scope: !3757)
!3762 = !DILocation(line: 69, column: 7, scope: !3702)
!3763 = !DILocation(line: 71, column: 11, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !751, line: 70, column: 5)
!3765 = !DILocation(line: 72, column: 9, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !751, line: 71, column: 11)
!3767 = !DILocation(line: 72, column: 15, scope: !3766)
!3768 = !DILocation(line: 77, column: 1, scope: !3702)
!3769 = !DISubprogram(name: "__fpending", scope: !1694, file: !1694, line: 75, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!77, !3705}
!3772 = distinct !DISubprogram(name: "rpl_fclose", scope: !753, file: !753, line: 58, type: !3773, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3809)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!53, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !150, line: 51, baseType: !53, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !150, line: 70, baseType: !3793, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3777, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3777, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3777, file: !150, line: 93, baseType: !3793, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3777, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DILocalVariable(name: "fp", arg: 1, scope: !3772, file: !753, line: 58, type: !3775)
!3811 = !DILocalVariable(name: "saved_errno", scope: !3772, file: !753, line: 60, type: !53)
!3812 = !DILocalVariable(name: "fd", scope: !3772, file: !753, line: 63, type: !53)
!3813 = !DILocalVariable(name: "result", scope: !3772, file: !753, line: 74, type: !53)
!3814 = !DILocation(line: 0, scope: !3772)
!3815 = !DILocation(line: 63, column: 12, scope: !3772)
!3816 = !DILocation(line: 64, column: 10, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3772, file: !753, line: 64, column: 7)
!3818 = !DILocation(line: 64, column: 7, scope: !3772)
!3819 = !DILocation(line: 65, column: 12, scope: !3817)
!3820 = !DILocation(line: 65, column: 5, scope: !3817)
!3821 = !DILocation(line: 70, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3772, file: !753, line: 70, column: 7)
!3823 = !DILocation(line: 70, column: 23, scope: !3822)
!3824 = !DILocation(line: 70, column: 33, scope: !3822)
!3825 = !DILocation(line: 70, column: 26, scope: !3822)
!3826 = !DILocation(line: 70, column: 59, scope: !3822)
!3827 = !DILocation(line: 71, column: 7, scope: !3822)
!3828 = !DILocation(line: 71, column: 10, scope: !3822)
!3829 = !DILocation(line: 70, column: 7, scope: !3772)
!3830 = !DILocation(line: 100, column: 12, scope: !3772)
!3831 = !DILocation(line: 105, column: 7, scope: !3772)
!3832 = !DILocation(line: 72, column: 19, scope: !3822)
!3833 = !DILocation(line: 105, column: 19, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3772, file: !753, line: 105, column: 7)
!3835 = !DILocation(line: 107, column: 13, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3834, file: !753, line: 106, column: 5)
!3837 = !DILocation(line: 109, column: 5, scope: !3836)
!3838 = !DILocation(line: 112, column: 1, scope: !3772)
!3839 = !DISubprogram(name: "fileno", scope: !884, file: !884, line: 809, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3840 = !DISubprogram(name: "fclose", scope: !884, file: !884, line: 178, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3841 = !DISubprogram(name: "__freading", scope: !1694, file: !1694, line: 51, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3842 = !DISubprogram(name: "lseek", scope: !1209, file: !1209, line: 339, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!172, !53, !172, !53}
!3845 = distinct !DISubprogram(name: "rpl_fflush", scope: !755, file: !755, line: 130, type: !3846, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3882)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!53, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3850)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3850, file: !150, line: 51, baseType: !53, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3850, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3850, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3850, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3850, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3850, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3850, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3850, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3850, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3850, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3850, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3850, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3850, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3850, file: !150, line: 70, baseType: !3866, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3850, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3850, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3850, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3850, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3850, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3850, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3850, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3850, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3850, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3850, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3850, file: !150, line: 93, baseType: !3866, size: 64, offset: 1344)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3850, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3850, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3850, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3850, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3882 = !{!3883}
!3883 = !DILocalVariable(name: "stream", arg: 1, scope: !3845, file: !755, line: 130, type: !3848)
!3884 = !DILocation(line: 0, scope: !3845)
!3885 = !DILocation(line: 151, column: 14, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3845, file: !755, line: 151, column: 7)
!3887 = !DILocation(line: 151, column: 22, scope: !3886)
!3888 = !DILocation(line: 151, column: 27, scope: !3886)
!3889 = !DILocation(line: 151, column: 7, scope: !3845)
!3890 = !DILocation(line: 152, column: 12, scope: !3886)
!3891 = !DILocation(line: 152, column: 5, scope: !3886)
!3892 = !DILocalVariable(name: "fp", arg: 1, scope: !3893, file: !755, line: 42, type: !3848)
!3893 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !755, file: !755, line: 42, type: !3894, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3848}
!3896 = !{!3892}
!3897 = !DILocation(line: 0, scope: !3893, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 157, column: 3, scope: !3845)
!3899 = !DILocation(line: 44, column: 12, scope: !3900, inlinedAt: !3898)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !755, line: 44, column: 7)
!3901 = !DILocation(line: 44, column: 19, scope: !3900, inlinedAt: !3898)
!3902 = !DILocation(line: 44, column: 7, scope: !3893, inlinedAt: !3898)
!3903 = !DILocation(line: 46, column: 5, scope: !3900, inlinedAt: !3898)
!3904 = !DILocation(line: 159, column: 10, scope: !3845)
!3905 = !DILocation(line: 159, column: 3, scope: !3845)
!3906 = !DILocation(line: 236, column: 1, scope: !3845)
!3907 = !DISubprogram(name: "fflush", scope: !884, file: !884, line: 230, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3908 = distinct !DISubprogram(name: "rpl_fseeko", scope: !757, file: !757, line: 28, type: !3909, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3946)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!53, !3911, !3945, !53}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3913, file: !150, line: 51, baseType: !53, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3913, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3913, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3913, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3913, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3913, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3913, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3913, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3913, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3913, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3913, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3913, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3913, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3913, file: !150, line: 70, baseType: !3929, size: 64, offset: 832)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3913, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3913, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3913, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3913, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3913, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3913, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3913, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3913, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3913, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3913, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3913, file: !150, line: 93, baseType: !3929, size: 64, offset: 1344)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3913, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3913, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3913, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3913, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !884, line: 63, baseType: !172)
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DILocalVariable(name: "fp", arg: 1, scope: !3908, file: !757, line: 28, type: !3911)
!3948 = !DILocalVariable(name: "offset", arg: 2, scope: !3908, file: !757, line: 28, type: !3945)
!3949 = !DILocalVariable(name: "whence", arg: 3, scope: !3908, file: !757, line: 28, type: !53)
!3950 = !DILocalVariable(name: "pos", scope: !3951, file: !757, line: 123, type: !3945)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !757, line: 119, column: 5)
!3952 = distinct !DILexicalBlock(scope: !3908, file: !757, line: 55, column: 7)
!3953 = !DILocation(line: 0, scope: !3908)
!3954 = !DILocation(line: 55, column: 12, scope: !3952)
!3955 = !{!1135, !829, i64 16}
!3956 = !DILocation(line: 55, column: 33, scope: !3952)
!3957 = !{!1135, !829, i64 8}
!3958 = !DILocation(line: 55, column: 25, scope: !3952)
!3959 = !DILocation(line: 56, column: 7, scope: !3952)
!3960 = !DILocation(line: 56, column: 15, scope: !3952)
!3961 = !DILocation(line: 56, column: 37, scope: !3952)
!3962 = !{!1135, !829, i64 32}
!3963 = !DILocation(line: 56, column: 29, scope: !3952)
!3964 = !DILocation(line: 57, column: 7, scope: !3952)
!3965 = !DILocation(line: 57, column: 15, scope: !3952)
!3966 = !{!1135, !829, i64 72}
!3967 = !DILocation(line: 57, column: 29, scope: !3952)
!3968 = !DILocation(line: 55, column: 7, scope: !3908)
!3969 = !DILocation(line: 123, column: 26, scope: !3951)
!3970 = !DILocation(line: 123, column: 19, scope: !3951)
!3971 = !DILocation(line: 0, scope: !3951)
!3972 = !DILocation(line: 124, column: 15, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3951, file: !757, line: 124, column: 11)
!3974 = !DILocation(line: 124, column: 11, scope: !3951)
!3975 = !DILocation(line: 135, column: 19, scope: !3951)
!3976 = !DILocation(line: 136, column: 12, scope: !3951)
!3977 = !DILocation(line: 136, column: 20, scope: !3951)
!3978 = !{!1135, !1136, i64 144}
!3979 = !DILocation(line: 167, column: 7, scope: !3951)
!3980 = !DILocation(line: 169, column: 10, scope: !3908)
!3981 = !DILocation(line: 169, column: 3, scope: !3908)
!3982 = !DILocation(line: 170, column: 1, scope: !3908)
!3983 = !DISubprogram(name: "fseeko", scope: !884, file: !884, line: 736, type: !3984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!53, !3911, !172, !53}
!3986 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !676, file: !676, line: 100, type: !3987, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3990)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!77, !1774, !80, !77, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!3990 = !{!3991, !3992, !3993, !3994, !3995}
!3991 = !DILocalVariable(name: "pwc", arg: 1, scope: !3986, file: !676, line: 100, type: !1774)
!3992 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !676, line: 100, type: !80)
!3993 = !DILocalVariable(name: "n", arg: 3, scope: !3986, file: !676, line: 100, type: !77)
!3994 = !DILocalVariable(name: "ps", arg: 4, scope: !3986, file: !676, line: 100, type: !3989)
!3995 = !DILocalVariable(name: "ret", scope: !3986, file: !676, line: 130, type: !77)
!3996 = !DILocation(line: 0, scope: !3986)
!3997 = !DILocation(line: 105, column: 9, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3986, file: !676, line: 105, column: 7)
!3999 = !DILocation(line: 105, column: 7, scope: !3986)
!4000 = !DILocation(line: 117, column: 10, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3986, file: !676, line: 117, column: 7)
!4002 = !DILocation(line: 117, column: 7, scope: !3986)
!4003 = !DILocation(line: 130, column: 16, scope: !3986)
!4004 = !DILocation(line: 135, column: 11, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3986, file: !676, line: 135, column: 7)
!4006 = !DILocation(line: 135, column: 25, scope: !4005)
!4007 = !DILocation(line: 135, column: 30, scope: !4005)
!4008 = !DILocation(line: 135, column: 7, scope: !3986)
!4009 = !DILocalVariable(name: "ps", arg: 1, scope: !4010, file: !1747, line: 1135, type: !3989)
!4010 = distinct !DISubprogram(name: "mbszero", scope: !1747, file: !1747, line: 1135, type: !4011, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3989}
!4013 = !{!4009}
!4014 = !DILocation(line: 0, scope: !4010, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 137, column: 5, scope: !4005)
!4016 = !DILocalVariable(name: "__dest", arg: 1, scope: !4017, file: !1756, line: 57, type: !75)
!4017 = distinct !DISubprogram(name: "memset", scope: !1756, file: !1756, line: 57, type: !1757, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4018)
!4018 = !{!4016, !4019, !4020}
!4019 = !DILocalVariable(name: "__ch", arg: 2, scope: !4017, file: !1756, line: 57, type: !53)
!4020 = !DILocalVariable(name: "__len", arg: 3, scope: !4017, file: !1756, line: 57, type: !77)
!4021 = !DILocation(line: 0, scope: !4017, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 1137, column: 3, scope: !4010, inlinedAt: !4015)
!4023 = !DILocation(line: 59, column: 10, scope: !4017, inlinedAt: !4022)
!4024 = !DILocation(line: 137, column: 5, scope: !4005)
!4025 = !DILocation(line: 138, column: 11, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3986, file: !676, line: 138, column: 7)
!4027 = !DILocation(line: 138, column: 7, scope: !3986)
!4028 = !DILocation(line: 139, column: 5, scope: !4026)
!4029 = !DILocation(line: 143, column: 26, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3986, file: !676, line: 143, column: 7)
!4031 = !DILocation(line: 143, column: 41, scope: !4030)
!4032 = !DILocation(line: 143, column: 7, scope: !3986)
!4033 = !DILocation(line: 145, column: 15, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !676, line: 145, column: 11)
!4035 = distinct !DILexicalBlock(scope: !4030, file: !676, line: 144, column: 5)
!4036 = !DILocation(line: 145, column: 11, scope: !4035)
!4037 = !DILocation(line: 146, column: 32, scope: !4034)
!4038 = !DILocation(line: 146, column: 16, scope: !4034)
!4039 = !DILocation(line: 146, column: 14, scope: !4034)
!4040 = !DILocation(line: 146, column: 9, scope: !4034)
!4041 = !DILocation(line: 286, column: 1, scope: !3986)
!4042 = !DISubprogram(name: "mbsinit", scope: !4043, file: !4043, line: 293, type: !4044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4043 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!53, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!4048 = !DILocation(line: 0, scope: !762)
!4049 = !DILocation(line: 77, column: 7, scope: !776)
!4050 = !DILocation(line: 77, column: 7, scope: !762)
!4051 = !DILocation(line: 80, column: 7, scope: !775)
!4052 = !DILocation(line: 0, scope: !775)
!4053 = !DILocation(line: 80, column: 11, scope: !775)
!4054 = !DILocalVariable(name: "g", arg: 1, scope: !4055, file: !759, line: 43, type: !769)
!4055 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !759, file: !759, line: 43, type: !4056, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!769, !769, !77}
!4058 = !{!4054, !4059}
!4059 = !DILocalVariable(name: "num", arg: 2, scope: !4055, file: !759, line: 43, type: !77)
!4060 = !DILocation(line: 0, scope: !4055, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 82, column: 18, scope: !775)
!4062 = !DILocalVariable(name: "ptr", arg: 1, scope: !4063, file: !3335, line: 2057, type: !75)
!4063 = distinct !DISubprogram(name: "rpl_realloc", scope: !3335, file: !3335, line: 2057, type: !3327, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !4064)
!4064 = !{!4062, !4065}
!4065 = !DILocalVariable(name: "size", arg: 2, scope: !4063, file: !3335, line: 2057, type: !77)
!4066 = !DILocation(line: 0, scope: !4063, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 51, column: 10, scope: !4055, inlinedAt: !4061)
!4068 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4067)
!4069 = !DILocation(line: 83, column: 13, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !775, file: !759, line: 83, column: 11)
!4071 = !DILocation(line: 83, column: 11, scope: !775)
!4072 = !DILocation(line: 88, column: 31, scope: !779)
!4073 = !DILocation(line: 82, column: 14, scope: !775)
!4074 = !DILocation(line: 0, scope: !779)
!4075 = !DILocation(line: 91, column: 20, scope: !779)
!4076 = !DILocation(line: 95, column: 18, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !779, file: !759, line: 95, column: 15)
!4078 = !DILocation(line: 95, column: 22, scope: !4077)
!4079 = !DILocation(line: 96, column: 26, scope: !4077)
!4080 = !DILocation(line: 96, column: 13, scope: !4077)
!4081 = !DILocation(line: 98, column: 43, scope: !779)
!4082 = !DILocation(line: 0, scope: !4055, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 98, column: 22, scope: !779)
!4084 = !DILocation(line: 45, column: 7, scope: !4085, inlinedAt: !4083)
!4085 = distinct !DILexicalBlock(scope: !4055, file: !759, line: 45, column: 7)
!4086 = !DILocation(line: 45, column: 7, scope: !4055, inlinedAt: !4083)
!4087 = !DILocation(line: 47, column: 7, scope: !4088, inlinedAt: !4083)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !759, line: 46, column: 5)
!4089 = !DILocation(line: 47, column: 13, scope: !4088, inlinedAt: !4083)
!4090 = !DILocation(line: 99, column: 15, scope: !779)
!4091 = !DILocation(line: 51, column: 26, scope: !4055, inlinedAt: !4083)
!4092 = !DILocation(line: 0, scope: !4063, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 51, column: 10, scope: !4055, inlinedAt: !4083)
!4094 = !DILocation(line: 2059, column: 24, scope: !4063, inlinedAt: !4093)
!4095 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4093)
!4096 = !DILocation(line: 99, column: 17, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !779, file: !759, line: 99, column: 15)
!4098 = !DILocation(line: 101, column: 15, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !759, line: 100, column: 13)
!4100 = !DILocation(line: 102, column: 15, scope: !4099)
!4101 = !DILocation(line: 106, column: 17, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !779, file: !759, line: 106, column: 15)
!4103 = !DILocation(line: 106, column: 15, scope: !779)
!4104 = distinct !{!4104, !4105, !4106}
!4105 = !DILocation(line: 86, column: 7, scope: !775)
!4106 = !DILocation(line: 113, column: 9, scope: !775)
!4107 = !DILocation(line: 108, column: 23, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4102, file: !759, line: 107, column: 13)
!4109 = !DILocation(line: 111, column: 15, scope: !4108)
!4110 = !DILocation(line: 114, column: 5, scope: !776)
!4111 = !DILocation(line: 120, column: 25, scope: !762)
!4112 = !DILocation(line: 125, column: 20, scope: !787)
!4113 = !DILocation(line: 125, column: 7, scope: !762)
!4114 = !DILocation(line: 127, column: 11, scope: !785)
!4115 = !DILocation(line: 127, column: 17, scope: !785)
!4116 = !DILocation(line: 127, column: 11, scope: !786)
!4117 = !DILocation(line: 0, scope: !4055, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 129, column: 22, scope: !784)
!4119 = !DILocation(line: 0, scope: !4063, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 51, column: 10, scope: !4055, inlinedAt: !4118)
!4121 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4120)
!4122 = !DILocation(line: 0, scope: !784)
!4123 = !DILocation(line: 130, column: 15, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !784, file: !759, line: 130, column: 15)
!4125 = !DILocation(line: 130, column: 15, scope: !784)
!4126 = !DILocation(line: 132, column: 23, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !759, line: 131, column: 13)
!4128 = !DILocation(line: 133, column: 18, scope: !4127)
!4129 = !DILocation(line: 134, column: 26, scope: !4127)
!4130 = !DILocation(line: 140, column: 20, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !762, file: !759, line: 140, column: 7)
!4132 = !DILocation(line: 140, column: 25, scope: !4131)
!4133 = !DILocation(line: 142, column: 38, scope: !762)
!4134 = !DILocation(line: 0, scope: !4055, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 142, column: 14, scope: !762)
!4136 = !DILocation(line: 51, column: 26, scope: !4055, inlinedAt: !4135)
!4137 = !DILocation(line: 0, scope: !4063, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 51, column: 10, scope: !4055, inlinedAt: !4135)
!4139 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4138)
!4140 = !DILocation(line: 143, column: 9, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !762, file: !759, line: 143, column: 7)
!4142 = !DILocation(line: 143, column: 7, scope: !762)
!4143 = !DILocation(line: 148, column: 46, scope: !762)
!4144 = !DILocation(line: 148, column: 39, scope: !762)
!4145 = !DILocation(line: 149, column: 39, scope: !762)
!4146 = !DILocation(line: 148, column: 15, scope: !762)
!4147 = !DILocation(line: 151, column: 10, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !762, file: !759, line: 151, column: 7)
!4149 = !DILocation(line: 151, column: 7, scope: !762)
!4150 = !DILocation(line: 154, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !759, line: 152, column: 5)
!4152 = !DILocation(line: 155, column: 7, scope: !4151)
!4153 = !DILocation(line: 158, column: 17, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !762, file: !759, line: 158, column: 7)
!4155 = !DILocation(line: 160, column: 10, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4154, file: !759, line: 159, column: 5)
!4157 = !DILocation(line: 161, column: 9, scope: !4156)
!4158 = !DILocation(line: 162, column: 5, scope: !4156)
!4159 = !DILocation(line: 163, column: 11, scope: !762)
!4160 = !DILocation(line: 181, column: 9, scope: !792)
!4161 = !DILocation(line: 181, column: 7, scope: !762)
!4162 = !DILocation(line: 183, column: 21, scope: !791)
!4163 = !DILocation(line: 0, scope: !791)
!4164 = !DILocation(line: 184, column: 29, scope: !791)
!4165 = !DILocation(line: 0, scope: !795)
!4166 = !DILocation(line: 186, scope: !795)
!4167 = !DILocation(line: 186, column: 7, scope: !795)
!4168 = !DILocation(line: 188, column: 15, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !759, line: 188, column: 15)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !759, line: 187, column: 9)
!4171 = distinct !DILexicalBlock(scope: !795, file: !759, line: 186, column: 7)
!4172 = !DILocation(line: 188, column: 21, scope: !4169)
!4173 = !DILocation(line: 188, column: 30, scope: !4169)
!4174 = !DILocation(line: 189, column: 15, scope: !4169)
!4175 = !DILocation(line: 189, column: 13, scope: !4169)
!4176 = !DILocation(line: 191, column: 14, scope: !4169)
!4177 = !DILocation(line: 191, column: 18, scope: !4169)
!4178 = !DILocation(line: 186, column: 38, scope: !4171)
!4179 = distinct !{!4179, !4167, !4180, !936}
!4180 = !DILocation(line: 192, column: 9, scope: !795)
!4181 = !DILocation(line: 196, column: 1, scope: !762)
!4182 = !DISubprogram(name: "getgrouplist", scope: !1271, file: !1271, line: 186, type: !4183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !873)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!53, !80, !767, !4185, !321}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!4186 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !800, file: !800, line: 27, type: !3243, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4187)
!4187 = !{!4188, !4189, !4190, !4191}
!4188 = !DILocalVariable(name: "ptr", arg: 1, scope: !4186, file: !800, line: 27, type: !75)
!4189 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4186, file: !800, line: 27, type: !77)
!4190 = !DILocalVariable(name: "size", arg: 3, scope: !4186, file: !800, line: 27, type: !77)
!4191 = !DILocalVariable(name: "nbytes", scope: !4186, file: !800, line: 29, type: !77)
!4192 = !DILocation(line: 0, scope: !4186)
!4193 = !DILocation(line: 30, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4186, file: !800, line: 30, column: 7)
!4195 = !DILocalVariable(name: "ptr", arg: 1, scope: !4196, file: !3335, line: 2057, type: !75)
!4196 = distinct !DISubprogram(name: "rpl_realloc", scope: !3335, file: !3335, line: 2057, type: !3327, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4197)
!4197 = !{!4195, !4198}
!4198 = !DILocalVariable(name: "size", arg: 2, scope: !4196, file: !3335, line: 2057, type: !77)
!4199 = !DILocation(line: 0, scope: !4196, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 37, column: 10, scope: !4186)
!4201 = !DILocation(line: 2059, column: 24, scope: !4196, inlinedAt: !4200)
!4202 = !DILocation(line: 2059, column: 10, scope: !4196, inlinedAt: !4200)
!4203 = !DILocation(line: 37, column: 3, scope: !4186)
!4204 = !DILocation(line: 32, column: 7, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4194, file: !800, line: 31, column: 5)
!4206 = !DILocation(line: 32, column: 13, scope: !4205)
!4207 = !DILocation(line: 33, column: 7, scope: !4205)
!4208 = !DILocation(line: 38, column: 1, scope: !4186)
!4209 = distinct !DISubprogram(name: "hard_locale", scope: !694, file: !694, line: 28, type: !4210, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!133, !53}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "category", arg: 1, scope: !4209, file: !694, line: 28, type: !53)
!4214 = !DILocalVariable(name: "locale", scope: !4209, file: !694, line: 30, type: !4215)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4216)
!4216 = !{!4217}
!4217 = !DISubrange(count: 257)
!4218 = !DILocation(line: 0, scope: !4209)
!4219 = !DILocation(line: 30, column: 3, scope: !4209)
!4220 = !DILocation(line: 30, column: 8, scope: !4209)
!4221 = !DILocation(line: 32, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4209, file: !694, line: 32, column: 7)
!4223 = !DILocation(line: 32, column: 7, scope: !4209)
!4224 = !DILocalVariable(name: "__s1", arg: 1, scope: !4225, file: !902, line: 1359, type: !80)
!4225 = distinct !DISubprogram(name: "streq", scope: !902, file: !902, line: 1359, type: !903, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4226)
!4226 = !{!4224, !4227}
!4227 = !DILocalVariable(name: "__s2", arg: 2, scope: !4225, file: !902, line: 1359, type: !80)
!4228 = !DILocation(line: 0, scope: !4225, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 35, column: 9, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4209, file: !694, line: 35, column: 7)
!4231 = !DILocation(line: 1361, column: 11, scope: !4225, inlinedAt: !4229)
!4232 = !DILocation(line: 35, column: 29, scope: !4230)
!4233 = !DILocation(line: 0, scope: !4225, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 35, column: 32, scope: !4230)
!4235 = !DILocation(line: 1361, column: 11, scope: !4225, inlinedAt: !4234)
!4236 = !DILocation(line: 1361, column: 10, scope: !4225, inlinedAt: !4234)
!4237 = !DILocation(line: 35, column: 7, scope: !4209)
!4238 = !DILocation(line: 46, column: 3, scope: !4209)
!4239 = !DILocation(line: 47, column: 1, scope: !4209)
!4240 = distinct !DISubprogram(name: "setlocale_null_r", scope: !807, file: !807, line: 154, type: !4241, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!53, !53, !74, !77}
!4243 = !{!4244, !4245, !4246}
!4244 = !DILocalVariable(name: "category", arg: 1, scope: !4240, file: !807, line: 154, type: !53)
!4245 = !DILocalVariable(name: "buf", arg: 2, scope: !4240, file: !807, line: 154, type: !74)
!4246 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4240, file: !807, line: 154, type: !77)
!4247 = !DILocation(line: 0, scope: !4240)
!4248 = !DILocation(line: 159, column: 10, scope: !4240)
!4249 = !DILocation(line: 159, column: 3, scope: !4240)
!4250 = distinct !DISubprogram(name: "setlocale_null", scope: !807, file: !807, line: 186, type: !4251, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!80, !53}
!4253 = !{!4254}
!4254 = !DILocalVariable(name: "category", arg: 1, scope: !4250, file: !807, line: 186, type: !53)
!4255 = !DILocation(line: 0, scope: !4250)
!4256 = !DILocation(line: 189, column: 10, scope: !4250)
!4257 = !DILocation(line: 189, column: 3, scope: !4250)
!4258 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !809, file: !809, line: 35, type: !4251, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4259)
!4259 = !{!4260, !4261}
!4260 = !DILocalVariable(name: "category", arg: 1, scope: !4258, file: !809, line: 35, type: !53)
!4261 = !DILocalVariable(name: "result", scope: !4258, file: !809, line: 37, type: !80)
!4262 = !DILocation(line: 0, scope: !4258)
!4263 = !DILocation(line: 37, column: 24, scope: !4258)
!4264 = !DILocation(line: 62, column: 3, scope: !4258)
!4265 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !809, file: !809, line: 66, type: !4241, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271}
!4267 = !DILocalVariable(name: "category", arg: 1, scope: !4265, file: !809, line: 66, type: !53)
!4268 = !DILocalVariable(name: "buf", arg: 2, scope: !4265, file: !809, line: 66, type: !74)
!4269 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4265, file: !809, line: 66, type: !77)
!4270 = !DILocalVariable(name: "result", scope: !4265, file: !809, line: 111, type: !80)
!4271 = !DILocalVariable(name: "length", scope: !4272, file: !809, line: 125, type: !77)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !809, line: 124, column: 5)
!4273 = distinct !DILexicalBlock(scope: !4265, file: !809, line: 113, column: 7)
!4274 = !DILocation(line: 0, scope: !4265)
!4275 = !DILocation(line: 0, scope: !4258, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 111, column: 24, scope: !4265)
!4277 = !DILocation(line: 37, column: 24, scope: !4258, inlinedAt: !4276)
!4278 = !DILocation(line: 113, column: 14, scope: !4273)
!4279 = !DILocation(line: 113, column: 7, scope: !4265)
!4280 = !DILocation(line: 116, column: 19, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !809, line: 116, column: 11)
!4282 = distinct !DILexicalBlock(scope: !4273, file: !809, line: 114, column: 5)
!4283 = !DILocation(line: 116, column: 11, scope: !4282)
!4284 = !DILocation(line: 120, column: 16, scope: !4281)
!4285 = !DILocation(line: 120, column: 9, scope: !4281)
!4286 = !DILocation(line: 125, column: 23, scope: !4272)
!4287 = !DILocation(line: 0, scope: !4272)
!4288 = !DILocation(line: 126, column: 18, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4272, file: !809, line: 126, column: 11)
!4290 = !DILocation(line: 126, column: 11, scope: !4272)
!4291 = !DILocation(line: 128, column: 39, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !809, line: 127, column: 9)
!4293 = !DILocalVariable(name: "__dest", arg: 1, scope: !4294, file: !1756, line: 26, type: !3604)
!4294 = distinct !DISubprogram(name: "memcpy", scope: !1756, file: !1756, line: 26, type: !3602, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4295)
!4295 = !{!4293, !4296, !4297}
!4296 = !DILocalVariable(name: "__src", arg: 2, scope: !4294, file: !1756, line: 26, type: !1037)
!4297 = !DILocalVariable(name: "__len", arg: 3, scope: !4294, file: !1756, line: 26, type: !77)
!4298 = !DILocation(line: 0, scope: !4294, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 128, column: 11, scope: !4292)
!4300 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4299)
!4301 = !DILocation(line: 129, column: 11, scope: !4292)
!4302 = !DILocation(line: 133, column: 23, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !809, line: 133, column: 15)
!4304 = distinct !DILexicalBlock(scope: !4289, file: !809, line: 132, column: 9)
!4305 = !DILocation(line: 133, column: 15, scope: !4304)
!4306 = !DILocation(line: 138, column: 44, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !809, line: 134, column: 13)
!4308 = !DILocation(line: 0, scope: !4294, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 138, column: 15, scope: !4307)
!4310 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4309)
!4311 = !DILocation(line: 139, column: 15, scope: !4307)
!4312 = !DILocation(line: 139, column: 32, scope: !4307)
!4313 = !DILocation(line: 140, column: 13, scope: !4307)
!4314 = !DILocation(line: 0, scope: !4273)
!4315 = !DILocation(line: 145, column: 1, scope: !4265)
