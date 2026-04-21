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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !408
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !373
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !398
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !400
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !402
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !404
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !406
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !410
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !412
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !417
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !422
@.str.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !428
@.str.1.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !430
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !432
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !463
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !466
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !468
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !473
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !475
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !477
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !479
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !481
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !483
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !485
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.59, ptr @.str.1.60, ptr @.str.2.61, ptr @.str.3.62, ptr @.str.4.63, ptr @.str.5.64, ptr @.str.6.65, ptr @.str.7.66, ptr @.str.8.67, ptr @.str.9.68, ptr null], align 8, !dbg !487
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !512
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !526
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !564
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !571
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !528
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !573
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !516
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !533
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !535
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !537
@.str.13.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !539
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !541
@.str.77 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !579
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !582
@.str.2.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !584
@.str.3.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !586
@.str.4.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !588
@.str.5.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !590
@.str.6.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !595
@.str.7.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !597
@.str.8.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !599
@.str.9.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !604
@.str.10.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !609
@.str.11.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !614
@.str.12.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !619
@.str.13.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !621
@.str.14.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !626
@.str.15.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !631
@.str.16.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !636
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !641
@.str.18.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !643
@.str.19.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !645
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !647
@.str.21.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !649
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !651
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !653
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !658
@exit_failure = dso_local global i32 1, align 4, !dbg !666
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !672
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !677
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !679
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !682
@.str.135 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !697
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !700

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !827, metadata !DIExpression()), !dbg !828
  %2 = icmp eq i32 %0, 0, !dbg !829
  br i1 %2, label %8, label %3, !dbg !831

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !832, !tbaa !834
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !832
  %6 = load ptr, ptr @program_name, align 8, !dbg !832, !tbaa !834
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !832
  br label %31, !dbg !832

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !838
  %10 = load ptr, ptr @program_name, align 8, !dbg !838, !tbaa !834
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !838
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !840
  %13 = load ptr, ptr @stdout, align 8, !dbg !840, !tbaa !834
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !840
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !841
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !841
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !842
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !842
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !843, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr poison, metadata !855, metadata !DIExpression()), !dbg !860
  tail call void @emit_bug_reporting_address() #36, !dbg !862
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !863
  call void @llvm.dbg.value(metadata ptr %17, metadata !858, metadata !DIExpression()), !dbg !860
  %18 = icmp eq ptr %17, null, !dbg !864
  br i1 %18, label %26, label %19, !dbg !866

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #37, !dbg !867
  %21 = icmp eq i32 %20, 0, !dbg !867
  br i1 %21, label %26, label %22, !dbg !868

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !869
  %24 = load ptr, ptr @stdout, align 8, !dbg !869, !tbaa !834
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !869
  br label %26, !dbg !871

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !860
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #36, !dbg !872
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #36, !dbg !872
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #36, !dbg !873
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #36, !dbg !873
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !874
  unreachable, !dbg !874
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !875 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !880 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !886 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !889 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !123 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !127, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !892
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !893, !tbaa !894
  %3 = icmp eq i32 %2, -1, !dbg !896
  br i1 %3, label %4, label %16, !dbg !897

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #36, !dbg !898
  call void @llvm.dbg.value(metadata ptr %5, metadata !129, metadata !DIExpression()), !dbg !899
  %6 = icmp eq ptr %5, null, !dbg !900
  br i1 %6, label %14, label %7, !dbg !901

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !902, !tbaa !903
  %9 = icmp eq i8 %8, 0, !dbg !902
  br i1 %9, label %14, label %10, !dbg !904

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !911, metadata !DIExpression()), !dbg !912
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #37, !dbg !914
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
  br label %122, !dbg !923

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !132, metadata !DIExpression()), !dbg !892
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #37, !dbg !924
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !925
  call void @llvm.dbg.value(metadata ptr %24, metadata !134, metadata !DIExpression()), !dbg !892
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !926
  call void @llvm.dbg.value(metadata ptr %25, metadata !135, metadata !DIExpression()), !dbg !892
  %26 = icmp eq ptr %25, null, !dbg !927
  br i1 %26, label %54, label %27, !dbg !928

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !929
  br i1 %28, label %54, label %29, !dbg !930

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !136, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !931
  %30 = icmp ult ptr %24, %25, !dbg !932
  br i1 %30, label %31, label %52, !dbg !933

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !892
  %33 = load ptr, ptr %32, align 8, !tbaa !834
  br label %34, !dbg !933

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !136, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %36, metadata !140, metadata !DIExpression()), !dbg !931
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !934
  call void @llvm.dbg.value(metadata ptr %37, metadata !136, metadata !DIExpression()), !dbg !931
  %38 = load i8, ptr %35, align 1, !dbg !934, !tbaa !903
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !934
  %41 = load i16, ptr %40, align 2, !dbg !934, !tbaa !935
  %42 = freeze i16 %41, !dbg !937
  %43 = lshr i16 %42, 13, !dbg !937
  %44 = and i16 %43, 1, !dbg !937
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !938
  call void @llvm.dbg.value(metadata i64 %46, metadata !140, metadata !DIExpression()), !dbg !931
  %47 = icmp ult ptr %37, %25, !dbg !932
  %48 = icmp ult i64 %46, 2, !dbg !939
  %49 = select i1 %47, i1 %48, i1 false, !dbg !939
  br i1 %49, label %34, label %50, !dbg !933, !llvm.loop !940

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !942
  br i1 %51, label %52, label %54, !dbg !944

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !944

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !892
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr %55, metadata !135, metadata !DIExpression()), !dbg !892
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #37, !dbg !945
  call void @llvm.dbg.value(metadata i64 %57, metadata !141, metadata !DIExpression()), !dbg !892
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !946
  call void @llvm.dbg.value(metadata ptr %58, metadata !142, metadata !DIExpression()), !dbg !892
  br label %59, !dbg !947

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !892
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr %60, metadata !142, metadata !DIExpression()), !dbg !892
  %62 = load i8, ptr %60, align 1, !dbg !948, !tbaa !903
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !949

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !950
  %65 = load i8, ptr %64, align 1, !dbg !953, !tbaa !903
  %66 = icmp ne i8 %65, 45, !dbg !954
  %67 = select i1 %66, i1 %61, i1 false, !dbg !955
  br label %68, !dbg !955

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !132, metadata !DIExpression()), !dbg !892
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !956
  %71 = load ptr, ptr %70, align 8, !dbg !956, !tbaa !834
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !956
  %74 = load i16, ptr %73, align 2, !dbg !956, !tbaa !935
  %75 = and i16 %74, 8192, !dbg !956
  %76 = icmp eq i16 %75, 0, !dbg !956
  br i1 %76, label %90, label %77, !dbg !958

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !959
  br i1 %78, label %92, label %79, !dbg !962

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !963
  %81 = load i8, ptr %80, align 1, !dbg !963, !tbaa !903
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !963
  %84 = load i16, ptr %83, align 2, !dbg !963, !tbaa !935
  %85 = and i16 %84, 8192, !dbg !963
  %86 = icmp eq i16 %85, 0, !dbg !963
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !964
  br i1 %89, label %90, label %92, !dbg !964

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !965
  call void @llvm.dbg.value(metadata ptr %91, metadata !142, metadata !DIExpression()), !dbg !892
  br label %59, !dbg !947, !llvm.loop !966

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !968
  %94 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !834
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !905, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !892
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #37, !dbg !989
  %97 = icmp eq i32 %96, 0, !dbg !989
  br i1 %97, label %101, label %98, !dbg !991

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #37, !dbg !992
  %100 = icmp eq i32 %99, 0, !dbg !992
  br i1 %100, label %101, label %104, !dbg !993

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !994
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !994
  br label %107, !dbg !996

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !997
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !997
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !834
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %108), !dbg !999
  %110 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !834
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !1000
  %112 = ptrtoint ptr %60 to i64, !dbg !1001
  %113 = sub i64 %112, %93, !dbg !1001
  %114 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !834
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1001
  %116 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !834
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !1002
  %118 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !834
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !1003
  %120 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !834
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1004
  br label %122, !dbg !1005

122:                                              ; preds = %107, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1046, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata ptr %1, metadata !1047, metadata !DIExpression()), !dbg !1078
  %3 = load ptr, ptr %1, align 8, !dbg !1079, !tbaa !834
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1080
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !1081
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !1082
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !1083
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1084
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %8, metadata !1048, metadata !DIExpression()), !dbg !1078
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -2, label %9
    i32 -3, label %10
  ], !dbg !1086

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #40, !dbg !1087
  unreachable, !dbg !1087

10:                                               ; preds = %2
  %11 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !834
  %12 = load ptr, ptr @Version, align 8, !dbg !1090, !tbaa !834
  %13 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !1090
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #36, !dbg !1090
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef null) #36, !dbg !1090
  tail call void @exit(i32 noundef 0) #38, !dbg !1090
  unreachable, !dbg !1090

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #40, !dbg !1091
  unreachable, !dbg !1091

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !1049, metadata !DIExpression()), !dbg !1078
  %17 = load i32, ptr @optind, align 4, !dbg !1092, !tbaa !894
  %18 = icmp eq i32 %17, %0, !dbg !1093
  br i1 %18, label %21, label %19, !dbg !1094

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  %20 = icmp slt i32 %17, %0, !dbg !1095
  br i1 %20, label %58, label %117, !dbg !1096

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 -1, metadata !1050, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 -1, metadata !1055, metadata !DIExpression()), !dbg !1097
  %22 = tail call ptr @__errno_location() #39, !dbg !1098
  store i32 0, ptr %22, align 4, !dbg !1099, !tbaa !894
  %23 = tail call i32 @getuid() #36, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %23, metadata !1056, metadata !DIExpression()), !dbg !1097
  %24 = icmp eq i32 %23, -1, !dbg !1101
  br i1 %24, label %25, label %30, !dbg !1103

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 4, !dbg !1104, !tbaa !894
  %27 = icmp eq i32 %26, 0, !dbg !1104
  br i1 %27, label %30, label %28, !dbg !1105

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !1106
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %26, ptr noundef %29) #36, !dbg !1106
  unreachable, !dbg !1106

30:                                               ; preds = %25, %21
  store i32 0, ptr %22, align 4, !dbg !1107, !tbaa !894
  %31 = tail call i32 @getegid() #36, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %31, metadata !1057, metadata !DIExpression()), !dbg !1097
  %32 = icmp eq i32 %31, -1, !dbg !1109
  br i1 %32, label %33, label %38, !dbg !1111

33:                                               ; preds = %30
  %34 = load i32, ptr %22, align 4, !dbg !1112, !tbaa !894
  %35 = icmp eq i32 %34, 0, !dbg !1112
  br i1 %35, label %38, label %36, !dbg !1113

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1114
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %34, ptr noundef %37) #36, !dbg !1114
  unreachable, !dbg !1114

38:                                               ; preds = %33, %30
  store i32 0, ptr %22, align 4, !dbg !1115, !tbaa !894
  %39 = tail call i32 @getgid() #36, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %39, metadata !1058, metadata !DIExpression()), !dbg !1097
  %40 = icmp eq i32 %39, -1, !dbg !1117
  br i1 %40, label %41, label %46, !dbg !1119

41:                                               ; preds = %38
  %42 = load i32, ptr %22, align 4, !dbg !1120, !tbaa !894
  %43 = icmp eq i32 %42, 0, !dbg !1120
  br i1 %43, label %46, label %44, !dbg !1121

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1122
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %45) #36, !dbg !1122
  unreachable, !dbg !1122

46:                                               ; preds = %41, %38
  %47 = tail call i1 @print_group_list(ptr noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef true, i8 noundef 32) #36, !dbg !1123
  call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1131
  %48 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !834
  %49 = getelementptr inbounds %struct._IO_FILE, ptr %48, i64 0, i32 5, !dbg !1133
  %50 = load ptr, ptr %49, align 8, !dbg !1133, !tbaa !1134
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %48, i64 0, i32 6, !dbg !1133
  %52 = load ptr, ptr %51, align 8, !dbg !1133, !tbaa !1137
  %53 = icmp ult ptr %50, %52, !dbg !1133
  br i1 %53, label %56, label %54, !dbg !1133, !prof !1138

54:                                               ; preds = %46
  %55 = tail call i32 @__overflow(ptr noundef nonnull %48, i32 noundef 10) #36, !dbg !1133
  br label %117, !dbg !1133

56:                                               ; preds = %46
  %57 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1133
  store ptr %57, ptr %49, align 8, !dbg !1133, !tbaa !1134
  store i8 10, ptr %50, align 1, !dbg !1133, !tbaa !903
  br label %117, !dbg !1133

58:                                               ; preds = %19, %112
  %59 = phi i32 [ %115, %112 ], [ %17, %19 ]
  %60 = phi i1 [ %113, %112 ], [ true, %19 ]
  %61 = sext i32 %59 to i64, !dbg !1139
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61, !dbg !1139
  %63 = load ptr, ptr %62, align 8, !dbg !1139, !tbaa !834
  %64 = tail call ptr @getpwnam(ptr noundef %63), !dbg !1140
  call void @llvm.dbg.value(metadata ptr %64, metadata !1059, metadata !DIExpression()), !dbg !1141
  %65 = icmp eq ptr %64, null, !dbg !1142
  br i1 %65, label %66, label %73, !dbg !1144

66:                                               ; preds = %58
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !1145
  %68 = load i32, ptr @optind, align 4, !dbg !1145, !tbaa !894
  %69 = sext i32 %68 to i64, !dbg !1145
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1145
  %71 = load ptr, ptr %70, align 8, !dbg !1145, !tbaa !834
  %72 = tail call ptr @quote(ptr noundef %71) #36, !dbg !1145
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %72) #36, !dbg !1145
  call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1078
  br label %112, !dbg !1147

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, ptr %64, i64 0, i32 2, !dbg !1148
  %75 = load i32, ptr %74, align 8, !dbg !1148, !tbaa !1149
  call void @llvm.dbg.value(metadata i32 %75, metadata !1075, metadata !DIExpression()), !dbg !1141
  %76 = getelementptr inbounds %struct.passwd, ptr %64, i64 0, i32 3, !dbg !1151
  %77 = load i32, ptr %76, align 4, !dbg !1151, !tbaa !1152
  call void @llvm.dbg.value(metadata i32 %77, metadata !1076, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %77, metadata !1077, metadata !DIExpression()), !dbg !1141
  %78 = load i32, ptr @optind, align 4, !dbg !1153, !tbaa !894
  %79 = sext i32 %78 to i64, !dbg !1153
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !1153
  %81 = load ptr, ptr %80, align 8, !dbg !1153, !tbaa !834
  %82 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef %81) #36, !dbg !1153
  %83 = load i32, ptr @optind, align 4, !dbg !1154, !tbaa !894
  %84 = sext i32 %83 to i64, !dbg !1156
  %85 = getelementptr inbounds ptr, ptr %1, i64 %84, !dbg !1156
  %86 = load ptr, ptr %85, align 8, !dbg !1156, !tbaa !834
  %87 = tail call i1 @print_group_list(ptr noundef %86, i32 noundef %75, i32 noundef %77, i32 noundef %77, i1 noundef true, i8 noundef 32) #36, !dbg !1157
  %88 = select i1 %87, i1 %60, i1 false, !dbg !1158
  call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 10, metadata !1125, metadata !DIExpression()), !dbg !1159
  %89 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !834
  %90 = getelementptr inbounds %struct._IO_FILE, ptr %89, i64 0, i32 5, !dbg !1161
  %91 = load ptr, ptr %90, align 8, !dbg !1161, !tbaa !1134
  %92 = getelementptr inbounds %struct._IO_FILE, ptr %89, i64 0, i32 6, !dbg !1161
  %93 = load ptr, ptr %92, align 8, !dbg !1161, !tbaa !1137
  %94 = icmp ult ptr %91, %93, !dbg !1161
  br i1 %94, label %97, label %95, !dbg !1161, !prof !1138

95:                                               ; preds = %73
  %96 = tail call i32 @__overflow(ptr noundef nonnull %89, i32 noundef 10) #36, !dbg !1161
  br label %99, !dbg !1161

97:                                               ; preds = %73
  %98 = getelementptr inbounds i8, ptr %91, i64 1, !dbg !1161
  store ptr %98, ptr %90, align 8, !dbg !1161, !tbaa !1134
  store i8 10, ptr %91, align 1, !dbg !1161, !tbaa !903
  br label %99, !dbg !1161

99:                                               ; preds = %95, %97
  %100 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %100, metadata !1164, metadata !DIExpression()), !dbg !1169
  %101 = load i32, ptr %100, align 8, !dbg !1171, !tbaa !1172
  %102 = and i32 %101, 32, !dbg !1162
  %103 = icmp eq i32 %102, 0, !dbg !1162
  br i1 %103, label %112, label %104, !dbg !1173

104:                                              ; preds = %99
  %105 = tail call ptr @__errno_location() #39, !dbg !1174
  %106 = load i32, ptr %105, align 4, !dbg !1174, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %106, metadata !1177, metadata !DIExpression()), !dbg !1179
  %107 = tail call i32 @fflush_unlocked(ptr noundef nonnull %100) #36, !dbg !1180
  %108 = load ptr, ptr @stdout, align 8, !dbg !1181, !tbaa !834
  %109 = tail call i32 @fpurge(ptr noundef %108) #36, !dbg !1182
  %110 = load ptr, ptr @stdout, align 8, !dbg !1183, !tbaa !834
  tail call void @clearerr_unlocked(ptr noundef %110) #36, !dbg !1183
  %111 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #36, !dbg !1184
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %106, ptr noundef %111) #36, !dbg !1184
  unreachable, !dbg !1184

112:                                              ; preds = %99, %66
  %113 = phi i1 [ false, %66 ], [ %88, %99 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
  %114 = load i32, ptr @optind, align 4, !dbg !1185, !tbaa !894
  %115 = add nsw i32 %114, 1, !dbg !1185
  store i32 %115, ptr @optind, align 4, !dbg !1185, !tbaa !894
  %116 = icmp slt i32 %115, %0, !dbg !1095
  br i1 %116, label %58, label %117, !dbg !1096, !llvm.loop !1186

117:                                              ; preds = %112, %19, %56, %54
  %118 = phi i1 [ %47, %54 ], [ %47, %56 ], [ true, %19 ], [ %113, %112 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1049, metadata !DIExpression()), !dbg !1078
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
  %7 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1229, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %1, metadata !1230, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %2, metadata !1231, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %3, metadata !1232, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i1 %4, metadata !1233, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1252
  call void @llvm.dbg.value(metadata i8 %5, metadata !1234, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8 1, metadata !1235, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata ptr null, metadata !1236, metadata !DIExpression()), !dbg !1252
  %8 = icmp eq ptr %0, null, !dbg !1253
  br i1 %8, label %12, label %9, !dbg !1255

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #36, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %10, metadata !1236, metadata !DIExpression()), !dbg !1252
  %11 = icmp ne ptr %10, null, !dbg !1258
  br label %12, !dbg !1260

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1252
  call void @llvm.dbg.value(metadata ptr %14, metadata !1236, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %2, metadata !1261, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i1 %4, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1284
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1284
  br i1 %4, label %17, label %15, !dbg !1287

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !1288
  br label %26, !dbg !1287

17:                                               ; preds = %12
  %18 = tail call ptr @getgrgid(i32 noundef %2) #36, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %18, metadata !1267, metadata !DIExpression()), !dbg !1284
  %19 = icmp eq ptr %18, null, !dbg !1291
  br i1 %19, label %20, label %23, !dbg !1292

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %21, metadata !1277, metadata !DIExpression()), !dbg !1294
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #36, !dbg !1295
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %22, i64 noundef %21) #36, !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1284
  br label %26, !dbg !1296

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %18, metadata !1267, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1284
  %24 = load ptr, ptr %18, align 8, !dbg !1297, !tbaa !1298
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %24) #36, !dbg !1297
  br label %31, !dbg !1297

26:                                               ; preds = %20, %15
  %27 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !1288
  %28 = xor i1 %4, true, !dbg !1284
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1284
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %27) #36, !dbg !1288
  %30 = select i1 %28, i1 %13, i1 false, !dbg !1300
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i1 [ %30, %26 ], [ %13, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  %33 = icmp eq i32 %3, %2, !dbg !1301
  br i1 %33, label %63, label %34, !dbg !1303

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1307
  %35 = load ptr, ptr @stdout, align 8, !dbg !1310, !tbaa !834
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 5, !dbg !1310
  %37 = load ptr, ptr %36, align 8, !dbg !1310, !tbaa !1134
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 6, !dbg !1310
  %39 = load ptr, ptr %38, align 8, !dbg !1310, !tbaa !1137
  %40 = icmp ult ptr %37, %39, !dbg !1310
  br i1 %40, label %44, label %41, !dbg !1310, !prof !1138

41:                                               ; preds = %34
  %42 = zext i8 %5 to i32, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %42, metadata !1304, metadata !DIExpression()), !dbg !1307
  %43 = tail call i32 @__overflow(ptr noundef nonnull %35, i32 noundef %42) #36, !dbg !1310
  br label %46, !dbg !1310

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1310
  store ptr %45, ptr %36, align 8, !dbg !1310, !tbaa !1134
  store i8 %5, ptr %37, align 1, !dbg !1310, !tbaa !903
  br label %46, !dbg !1310

46:                                               ; preds = %41, %44
  call void @llvm.dbg.value(metadata i32 %3, metadata !1261, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i1 %4, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1312
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1312
  br i1 %4, label %49, label %47, !dbg !1315

47:                                               ; preds = %46
  %48 = zext i32 %3 to i64, !dbg !1316
  br label %58, !dbg !1315

49:                                               ; preds = %46
  %50 = tail call ptr @getgrgid(i32 noundef %3) #36, !dbg !1317
  call void @llvm.dbg.value(metadata ptr %50, metadata !1267, metadata !DIExpression()), !dbg !1312
  %51 = icmp eq ptr %50, null, !dbg !1318
  br i1 %51, label %52, label %55, !dbg !1319

52:                                               ; preds = %49
  %53 = zext i32 %3 to i64, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %53, metadata !1277, metadata !DIExpression()), !dbg !1321
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #36, !dbg !1322
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %54, i64 noundef %53) #36, !dbg !1322
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1312
  br label %58, !dbg !1323

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !1267, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1312
  %56 = load ptr, ptr %50, align 8, !dbg !1324, !tbaa !1298
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %56) #36, !dbg !1324
  br label %63, !dbg !1324

58:                                               ; preds = %52, %47
  %59 = phi i64 [ %48, %47 ], [ %53, %52 ], !dbg !1316
  %60 = xor i1 %4, true, !dbg !1312
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1312
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %59) #36, !dbg !1316
  %62 = select i1 %60, i1 %32, i1 false, !dbg !1325
  br label %63

63:                                               ; preds = %58, %55, %31
  %64 = phi i1 [ %32, %31 ], [ %62, %58 ], [ %32, %55 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #36, !dbg !1326
  %65 = icmp eq ptr %14, null, !dbg !1327
  br i1 %65, label %69, label %66, !dbg !1327

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.passwd, ptr %14, i64 0, i32 3, !dbg !1328
  %68 = load i32, ptr %67, align 4, !dbg !1328, !tbaa !1152
  br label %69, !dbg !1327

69:                                               ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %3, %63 ], !dbg !1327
  call void @llvm.dbg.value(metadata ptr %7, metadata !1247, metadata !DIExpression(DW_OP_deref)), !dbg !1329
  %71 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %7) #36, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %71, metadata !1249, metadata !DIExpression()), !dbg !1329
  %72 = icmp sgt i32 %71, -1, !dbg !1331
  br i1 %72, label %73, label %79, !dbg !1333

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !1250, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  %74 = icmp eq i32 %71, 0, !dbg !1335
  br i1 %74, label %87, label %75, !dbg !1337

75:                                               ; preds = %73
  %76 = zext i8 %5 to i32
  %77 = xor i1 %4, true
  %78 = zext i32 %71 to i64, !dbg !1335
  br label %90, !dbg !1337

79:                                               ; preds = %69
  %80 = tail call ptr @__errno_location() #39, !dbg !1338
  %81 = load i32, ptr %80, align 4, !dbg !1338, !tbaa !894
  br i1 %8, label %85, label %82, !dbg !1341

82:                                               ; preds = %79
  %83 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #36, !dbg !1342
  %84 = call ptr @quote(ptr noundef nonnull %0) #36, !dbg !1342
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %83, ptr noundef %84) #36, !dbg !1342
  br label %135, !dbg !1344

85:                                               ; preds = %79
  %86 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1345
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %86) #36, !dbg !1345
  br label %135

87:                                               ; preds = %131, %73
  %88 = phi i1 [ %64, %73 ], [ %132, %131 ]
  %89 = load ptr, ptr %7, align 8, !dbg !1347, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %89, metadata !1247, metadata !DIExpression()), !dbg !1329
  call void @free(ptr noundef %89) #36, !dbg !1348
  br label %135, !dbg !1349

90:                                               ; preds = %75, %131
  %91 = phi i64 [ 0, %75 ], [ %133, %131 ]
  %92 = phi i1 [ %64, %75 ], [ %132, %131 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1250, metadata !DIExpression()), !dbg !1334
  %93 = load ptr, ptr %7, align 8, !dbg !1350, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %93, metadata !1247, metadata !DIExpression()), !dbg !1329
  %94 = getelementptr inbounds i32, ptr %93, i64 %91, !dbg !1350
  %95 = load i32, ptr %94, align 4, !dbg !1350, !tbaa !894
  %96 = icmp eq i32 %95, %2, !dbg !1352
  %97 = icmp eq i32 %95, %3
  %98 = or i1 %96, %97, !dbg !1353
  br i1 %98, label %131, label %99, !dbg !1353

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  %100 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !834
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1357
  %102 = load ptr, ptr %101, align 8, !dbg !1357, !tbaa !1134
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1357
  %104 = load ptr, ptr %103, align 8, !dbg !1357, !tbaa !1137
  %105 = icmp ult ptr %102, %104, !dbg !1357
  br i1 %105, label %108, label %106, !dbg !1357, !prof !1138

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %76, metadata !1304, metadata !DIExpression()), !dbg !1354
  %107 = call i32 @__overflow(ptr noundef nonnull %100, i32 noundef %76) #36, !dbg !1357
  br label %110, !dbg !1357

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1357
  store ptr %109, ptr %101, align 8, !dbg !1357, !tbaa !1134
  store i8 %5, ptr %102, align 1, !dbg !1357, !tbaa !903
  br label %110, !dbg !1357

110:                                              ; preds = %106, %108
  %111 = load ptr, ptr %7, align 8, !dbg !1358, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %111, metadata !1247, metadata !DIExpression()), !dbg !1329
  %112 = getelementptr inbounds i32, ptr %111, i64 %91, !dbg !1358
  %113 = load i32, ptr %112, align 4, !dbg !1358, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %113, metadata !1261, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i1 %4, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1360
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1360
  br i1 %4, label %116, label %114, !dbg !1362

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1363
  br label %125, !dbg !1362

116:                                              ; preds = %110
  %117 = call ptr @getgrgid(i32 noundef %113) #36, !dbg !1364
  call void @llvm.dbg.value(metadata ptr %117, metadata !1267, metadata !DIExpression()), !dbg !1360
  %118 = icmp eq ptr %117, null, !dbg !1365
  br i1 %118, label %119, label %122, !dbg !1366

119:                                              ; preds = %116
  %120 = zext i32 %113 to i64, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %120, metadata !1277, metadata !DIExpression()), !dbg !1368
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #36, !dbg !1369
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %121, i64 noundef %120) #36, !dbg !1369
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1360
  br label %125, !dbg !1370

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %117, metadata !1267, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1360
  %123 = load ptr, ptr %117, align 8, !dbg !1371, !tbaa !1298
  %124 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %123) #36, !dbg !1371
  br label %128, !dbg !1371

125:                                              ; preds = %119, %114
  %126 = phi i64 [ %115, %114 ], [ %120, %119 ], !dbg !1363
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1360
  %127 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %126) #36, !dbg !1363
  br label %128

128:                                              ; preds = %122, %125
  %129 = phi i1 [ %77, %125 ], [ true, %122 ]
  %130 = select i1 %129, i1 %92, i1 false, !dbg !1372
  br label %131, !dbg !1372

131:                                              ; preds = %128, %90
  %132 = phi i1 [ %92, %90 ], [ %130, %128 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  %133 = add nuw nsw i64 %91, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %133, metadata !1250, metadata !DIExpression()), !dbg !1334
  %134 = icmp eq i64 %133, %78, !dbg !1335
  br i1 %134, label %87, label %90, !dbg !1337, !llvm.loop !1374

135:                                              ; preds = %82, %85, %87
  %136 = phi i1 [ false, %82 ], [ false, %85 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1235, metadata !DIExpression()), !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #36, !dbg !1349
  ret i1 %136, !dbg !1376
}

declare !dbg !1377 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1380 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1383 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #10 !dbg !1262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1261, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i1 %1, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1386
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1386
  br i1 %1, label %5, label %3, !dbg !1387

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1388
  br label %14, !dbg !1387

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #36, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %6, metadata !1267, metadata !DIExpression()), !dbg !1386
  %7 = icmp eq ptr %6, null, !dbg !1390
  br i1 %7, label %8, label %11, !dbg !1391

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %9, metadata !1277, metadata !DIExpression()), !dbg !1393
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #36, !dbg !1394
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #36, !dbg !1394
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1386
  br label %14, !dbg !1395

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !1267, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1386
  %12 = load ptr, ptr %6, align 8, !dbg !1396, !tbaa !1298
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #36, !dbg !1396
  br label %18, !dbg !1396

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1388
  %16 = xor i1 %1, true, !dbg !1386
  call void @llvm.dbg.value(metadata ptr null, metadata !1267, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1386
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %15) #36, !dbg !1388
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1397
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1400, metadata !DIExpression()), !dbg !1401
  store ptr %0, ptr @file_name, align 8, !dbg !1402, !tbaa !834
  ret void, !dbg !1403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1404 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1410, !tbaa !1411
  ret void, !dbg !1413
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1414 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1419, !tbaa !834
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1420
  %3 = icmp eq i32 %2, 0, !dbg !1421
  br i1 %3, label %22, label %4, !dbg !1422

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1423, !tbaa !1411, !range !1424, !noundef !879
  %6 = icmp eq i8 %5, 0, !dbg !1423
  br i1 %6, label %11, label %7, !dbg !1425

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1426
  %9 = load i32, ptr %8, align 4, !dbg !1426, !tbaa !894
  %10 = icmp eq i32 %9, 32, !dbg !1427
  br i1 %10, label %22, label %11, !dbg !1428

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1.29, i32 noundef 5) #36, !dbg !1429
  call void @llvm.dbg.value(metadata ptr %12, metadata !1416, metadata !DIExpression()), !dbg !1430
  %13 = load ptr, ptr @file_name, align 8, !dbg !1431, !tbaa !834
  %14 = icmp eq ptr %13, null, !dbg !1431
  %15 = tail call ptr @__errno_location() #39, !dbg !1433
  %16 = load i32, ptr %15, align 4, !dbg !1433, !tbaa !894
  br i1 %14, label %19, label %17, !dbg !1434

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1435
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.30, ptr noundef %18, ptr noundef %12) #36, !dbg !1435
  br label %20, !dbg !1435

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.31, ptr noundef %12) #36, !dbg !1436
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1437, !tbaa !894
  tail call void @_exit(i32 noundef %21) #38, !dbg !1438
  unreachable, !dbg !1438

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1439, !tbaa !834
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1441
  %25 = icmp eq i32 %24, 0, !dbg !1442
  br i1 %25, label %28, label %26, !dbg !1443

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1444, !tbaa !894
  tail call void @_exit(i32 noundef %27) #38, !dbg !1445
  unreachable, !dbg !1445

28:                                               ; preds = %22
  ret void, !dbg !1446
}

; Function Attrs: noreturn
declare !dbg !1447 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1448 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %1, metadata !1453, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1455, metadata !DIExpression()), !dbg !1457
  tail call fastcc void @flush_stdout(), !dbg !1458
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1459, !tbaa !834
  %7 = icmp eq ptr %6, null, !dbg !1459
  br i1 %7, label %9, label %8, !dbg !1461

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1462
  br label %13, !dbg !1462

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1463, !tbaa !834
  %11 = tail call ptr @getprogname() #37, !dbg !1463
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %11) #36, !dbg !1463
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1465, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1465
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1465
  ret void, !dbg !1467
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1468 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 1, metadata !1472, metadata !DIExpression()), !dbg !1475
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1478
  %2 = icmp slt i32 %1, 0, !dbg !1479
  br i1 %2, label %6, label %3, !dbg !1480

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1481, !tbaa !834
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1481
  br label %6, !dbg !1481

6:                                                ; preds = %3, %0
  ret void, !dbg !1482
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1483 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1485, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %1, metadata !1486, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr %2, metadata !1487, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1488, metadata !DIExpression()), !dbg !1490
  %7 = load ptr, ptr @stderr, align 8, !dbg !1491, !tbaa !834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1492, !noalias !1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %7, metadata !1532, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1534, metadata !DIExpression()), !dbg !1542
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1492
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1492, !noalias !1536
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1543, !tbaa !894
  %10 = add i32 %9, 1, !dbg !1543
  store i32 %10, ptr @error_message_count, align 4, !dbg !1543, !tbaa !894
  %11 = icmp eq i32 %1, 0, !dbg !1544
  br i1 %11, label %21, label %12, !dbg !1546

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1547, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1551, metadata !DIExpression()), !dbg !1558
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1559
  call void @llvm.dbg.value(metadata ptr %13, metadata !1550, metadata !DIExpression()), !dbg !1555
  %14 = icmp eq ptr %13, null, !dbg !1560
  br i1 %14, label %15, label %17, !dbg !1562

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.33, ptr noundef nonnull @.str.5.34, i32 noundef 5) #36, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %16, metadata !1550, metadata !DIExpression()), !dbg !1555
  br label %17, !dbg !1564

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1555
  call void @llvm.dbg.value(metadata ptr %18, metadata !1550, metadata !DIExpression()), !dbg !1555
  %19 = load ptr, ptr @stderr, align 8, !dbg !1565, !tbaa !834
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.35, ptr noundef %18) #36, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1566
  br label %21, !dbg !1567

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1568, !tbaa !834
  call void @llvm.dbg.value(metadata i32 10, metadata !1569, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata ptr %22, metadata !1574, metadata !DIExpression()), !dbg !1575
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1577
  %24 = load ptr, ptr %23, align 8, !dbg !1577, !tbaa !1134
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1577
  %26 = load ptr, ptr %25, align 8, !dbg !1577, !tbaa !1137
  %27 = icmp ult ptr %24, %26, !dbg !1577
  br i1 %27, label %30, label %28, !dbg !1577, !prof !1138

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1577
  br label %32, !dbg !1577

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1577
  store ptr %31, ptr %23, align 8, !dbg !1577, !tbaa !1134
  store i8 10, ptr %24, align 1, !dbg !1577, !tbaa !903
  br label %32, !dbg !1577

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1578, !tbaa !834
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1578
  %35 = icmp eq i32 %0, 0, !dbg !1579
  br i1 %35, label %37, label %36, !dbg !1581

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1582
  unreachable, !dbg !1582

37:                                               ; preds = %32
  ret void, !dbg !1583
}

declare !dbg !1584 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1587 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1590 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1594 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata ptr %2, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1603
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1601, metadata !DIExpression()), !dbg !1604
  call void @llvm.va_start(ptr nonnull %4), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1606, !tbaa.struct !1466
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1606
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1606
  call void @llvm.va_end(ptr nonnull %4), !dbg !1607
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1608
  ret void, !dbg !1608
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !375 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %1, metadata !393, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %3, metadata !395, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata ptr %4, metadata !396, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %5, metadata !397, metadata !DIExpression()), !dbg !1610
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1611, !tbaa !894
  %9 = icmp eq i32 %8, 0, !dbg !1611
  br i1 %9, label %24, label %10, !dbg !1613

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1614, !tbaa !894
  %12 = icmp eq i32 %11, %3, !dbg !1617
  br i1 %12, label %13, label %23, !dbg !1618

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1619, !tbaa !834
  %15 = icmp eq ptr %14, %2, !dbg !1620
  br i1 %15, label %37, label %16, !dbg !1621

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1622
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1623
  br i1 %19, label %20, label %23, !dbg !1623

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1624
  %22 = icmp eq i32 %21, 0, !dbg !1625
  br i1 %22, label %37, label %23, !dbg !1626

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1627, !tbaa !834
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1628, !tbaa !894
  br label %24, !dbg !1629

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1630
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1631, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !1631
  br i1 %26, label %28, label %27, !dbg !1633

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1634
  br label %32, !dbg !1634

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1635, !tbaa !834
  %30 = tail call ptr @getprogname() #37, !dbg !1635
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.38, ptr noundef %30) #36, !dbg !1635
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1637, !tbaa !834
  %34 = icmp eq ptr %2, null, !dbg !1637
  %35 = select i1 %34, ptr @.str.3.39, ptr @.str.2.40, !dbg !1637
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1637
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1638, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1638
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1638
  br label %37, !dbg !1639

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1639
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1640 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1644, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %1, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr %2, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %3, metadata !1647, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr %4, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.va_start(ptr nonnull %6), !dbg !1653
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1654, !tbaa.struct !1466
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1654
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1654
  call void @llvm.va_end(ptr nonnull %6), !dbg !1655
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1656
  ret void, !dbg !1656
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1657 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1695, metadata !DIExpression()), !dbg !1696
  tail call void @__fpurge(ptr noundef nonnull %0) #36, !dbg !1697
  ret i32 0, !dbg !1698
}

; Function Attrs: nounwind
declare !dbg !1699 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1703 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1706, !tbaa !834
  ret ptr %1, !dbg !1707
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1708 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1710, metadata !DIExpression()), !dbg !1713
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %2, metadata !1711, metadata !DIExpression()), !dbg !1713
  %3 = icmp eq ptr %2, null, !dbg !1715
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1715
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %5, metadata !1712, metadata !DIExpression()), !dbg !1713
  %6 = ptrtoint ptr %5 to i64, !dbg !1716
  %7 = ptrtoint ptr %0 to i64, !dbg !1716
  %8 = sub i64 %6, %7, !dbg !1716
  %9 = icmp sgt i64 %8, 6, !dbg !1718
  br i1 %9, label %10, label %19, !dbg !1719

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %11, metadata !1721, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 7, metadata !1727, metadata !DIExpression()), !dbg !1728
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.55, i64 7), !dbg !1730
  %13 = icmp eq i32 %12, 0, !dbg !1731
  br i1 %13, label %14, label %19, !dbg !1732

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1710, metadata !DIExpression()), !dbg !1713
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.56, i64 noundef 3) #37, !dbg !1733
  %16 = icmp eq i32 %15, 0, !dbg !1736
  %17 = select i1 %16, i64 3, i64 0, !dbg !1737
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1737
  br label %19, !dbg !1737

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1713
  call void @llvm.dbg.value(metadata ptr %21, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata ptr %20, metadata !1710, metadata !DIExpression()), !dbg !1713
  store ptr %20, ptr @program_name, align 8, !dbg !1738, !tbaa !834
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1739, !tbaa !834
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1740, !tbaa !834
  ret void, !dbg !1741
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1742 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !434 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !441, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata ptr %1, metadata !442, metadata !DIExpression()), !dbg !1743
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %5, metadata !443, metadata !DIExpression()), !dbg !1743
  %6 = icmp eq ptr %5, %0, !dbg !1745
  br i1 %6, label %7, label %14, !dbg !1747

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1748
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %4, metadata !449, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %4, metadata !1751, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata ptr %4, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 8, metadata !1767, metadata !DIExpression()), !dbg !1768
  store i64 0, ptr %4, align 8, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %3, metadata !444, metadata !DIExpression(DW_OP_deref)), !dbg !1743
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1771
  %9 = icmp eq i64 %8, 2, !dbg !1773
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !444, metadata !DIExpression()), !dbg !1743
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1774
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1743
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1775
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1743
  ret ptr %15, !dbg !1775
}

; Function Attrs: nounwind
declare !dbg !1776 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1782 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1787, metadata !DIExpression()), !dbg !1790
  %2 = tail call ptr @__errno_location() #39, !dbg !1791
  %3 = load i32, ptr %2, align 4, !dbg !1791, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %3, metadata !1788, metadata !DIExpression()), !dbg !1790
  %4 = icmp eq ptr %0, null, !dbg !1792
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1792
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %6, metadata !1789, metadata !DIExpression()), !dbg !1790
  store i32 %3, ptr %2, align 4, !dbg !1794, !tbaa !894
  ret ptr %6, !dbg !1795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1796 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %2 = icmp eq ptr %0, null, !dbg !1804
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1804
  %4 = load i32, ptr %3, align 8, !dbg !1805, !tbaa !1806
  ret i32 %4, !dbg !1808
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1809 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i32 %1, metadata !1814, metadata !DIExpression()), !dbg !1815
  %3 = icmp eq ptr %0, null, !dbg !1816
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1816
  store i32 %1, ptr %4, align 8, !dbg !1817, !tbaa !1806
  ret void, !dbg !1818
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1823, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 %1, metadata !1824, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i32 %2, metadata !1825, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 %1, metadata !1826, metadata !DIExpression()), !dbg !1831
  %4 = icmp eq ptr %0, null, !dbg !1832
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1832
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1833
  %7 = lshr i8 %1, 5, !dbg !1834
  %8 = zext i8 %7 to i64, !dbg !1834
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %9, metadata !1827, metadata !DIExpression()), !dbg !1831
  %10 = and i8 %1, 31, !dbg !1836
  %11 = zext i8 %10 to i32, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %11, metadata !1829, metadata !DIExpression()), !dbg !1831
  %12 = load i32, ptr %9, align 4, !dbg !1837, !tbaa !894
  %13 = lshr i32 %12, %11, !dbg !1838
  %14 = and i32 %13, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %14, metadata !1830, metadata !DIExpression()), !dbg !1831
  %15 = xor i32 %13, %2, !dbg !1840
  %16 = and i32 %15, 1, !dbg !1840
  %17 = shl nuw i32 %16, %11, !dbg !1841
  %18 = xor i32 %17, %12, !dbg !1842
  store i32 %18, ptr %9, align 4, !dbg !1842, !tbaa !894
  ret i32 %14, !dbg !1843
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1848, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %1, metadata !1849, metadata !DIExpression()), !dbg !1851
  %3 = icmp eq ptr %0, null, !dbg !1852
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %4, metadata !1848, metadata !DIExpression()), !dbg !1851
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1855
  %6 = load i32, ptr %5, align 4, !dbg !1855, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %6, metadata !1850, metadata !DIExpression()), !dbg !1851
  store i32 %1, ptr %5, align 4, !dbg !1857, !tbaa !1856
  ret i32 %6, !dbg !1858
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1863, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %1, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %2, metadata !1865, metadata !DIExpression()), !dbg !1866
  %4 = icmp eq ptr %0, null, !dbg !1867
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %5, metadata !1863, metadata !DIExpression()), !dbg !1866
  store i32 10, ptr %5, align 8, !dbg !1870, !tbaa !1806
  %6 = icmp ne ptr %1, null, !dbg !1871
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1873
  br i1 %8, label %10, label %9, !dbg !1873

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1874
  unreachable, !dbg !1874

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1875
  store ptr %1, ptr %11, align 8, !dbg !1876, !tbaa !1877
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1878
  store ptr %2, ptr %12, align 8, !dbg !1879, !tbaa !1880
  ret void, !dbg !1881
}

; Function Attrs: noreturn nounwind
declare !dbg !1882 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1883 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1887, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %1, metadata !1888, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %2, metadata !1889, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %3, metadata !1890, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %4, metadata !1891, metadata !DIExpression()), !dbg !1895
  %6 = icmp eq ptr %4, null, !dbg !1896
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %7, metadata !1892, metadata !DIExpression()), !dbg !1895
  %8 = tail call ptr @__errno_location() #39, !dbg !1897
  %9 = load i32, ptr %8, align 4, !dbg !1897, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %9, metadata !1893, metadata !DIExpression()), !dbg !1895
  %10 = load i32, ptr %7, align 8, !dbg !1898, !tbaa !1806
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1899
  %12 = load i32, ptr %11, align 4, !dbg !1899, !tbaa !1856
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1900
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1901
  %15 = load ptr, ptr %14, align 8, !dbg !1901, !tbaa !1877
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1902
  %17 = load ptr, ptr %16, align 8, !dbg !1902, !tbaa !1880
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %18, metadata !1894, metadata !DIExpression()), !dbg !1895
  store i32 %9, ptr %8, align 4, !dbg !1904, !tbaa !894
  ret i64 %18, !dbg !1905
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1906 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %1, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %2, metadata !1914, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %3, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %4, metadata !1916, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %5, metadata !1917, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %6, metadata !1918, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %7, metadata !1919, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %8, metadata !1920, metadata !DIExpression()), !dbg !1974
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1975
  %17 = icmp eq i64 %16, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i1 %17, metadata !1921, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr null, metadata !1924, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %5, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1974
  %18 = and i32 %5, 2, !dbg !1977
  %19 = icmp ne i32 %18, 0, !dbg !1977
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1977

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1978
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1979
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1980
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %34, metadata !1925, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %33, metadata !1924, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %32, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %31, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %30, metadata !1920, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %29, metadata !1919, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %28, metadata !1916, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.label(metadata !1967), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1974
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
  ], !dbg !1982

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 5, metadata !1916, metadata !DIExpression()), !dbg !1974
  br label %102, !dbg !1983

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 5, metadata !1916, metadata !DIExpression()), !dbg !1974
  br i1 %36, label %102, label %42, !dbg !1983

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1984
  br i1 %43, label %102, label %44, !dbg !1988

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1984, !tbaa !903
  br label %102, !dbg !1984

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.69, metadata !547, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %28, metadata !548, metadata !DIExpression()), !dbg !1989
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.11.69, i32 noundef 5) #36, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %46, metadata !549, metadata !DIExpression()), !dbg !1989
  %47 = icmp eq ptr %46, @.str.11.69, !dbg !1994
  br i1 %47, label %48, label %57, !dbg !1996

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1997
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %13, metadata !551, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %13, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata ptr %13, metadata !2008, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 8, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i64 0, ptr %13, align 8, !dbg !2015
  call void @llvm.dbg.value(metadata ptr %12, metadata !550, metadata !DIExpression(DW_OP_deref)), !dbg !1989
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2016
  %50 = icmp eq i64 %49, 3, !dbg !2018
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !550, metadata !DIExpression()), !dbg !1989
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2019
  %54 = icmp eq i32 %28, 9, !dbg !2019
  %55 = select i1 %54, ptr @.str.10.71, ptr @.str.12.72, !dbg !2019
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2019
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2020
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1989
  call void @llvm.dbg.value(metadata ptr %58, metadata !1919, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.12.72, metadata !547, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i32 %28, metadata !548, metadata !DIExpression()), !dbg !2021
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.70, ptr noundef nonnull @.str.12.72, i32 noundef 5) #36, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %59, metadata !549, metadata !DIExpression()), !dbg !2021
  %60 = icmp eq ptr %59, @.str.12.72, !dbg !2024
  br i1 %60, label %61, label %70, !dbg !2025

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2026
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %11, metadata !551, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata ptr %11, metadata !2000, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata ptr %11, metadata !2008, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i64 8, metadata !2012, metadata !DIExpression()), !dbg !2031
  store i64 0, ptr %11, align 8, !dbg !2033
  call void @llvm.dbg.value(metadata ptr %10, metadata !550, metadata !DIExpression(DW_OP_deref)), !dbg !2021
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2034
  %63 = icmp eq i64 %62, 3, !dbg !2035
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !550, metadata !DIExpression()), !dbg !2021
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2036
  %67 = icmp eq i32 %28, 9, !dbg !2036
  %68 = select i1 %67, ptr @.str.10.71, ptr @.str.12.72, !dbg !2036
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2036
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2037
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2037
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1920, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %71, metadata !1919, metadata !DIExpression()), !dbg !1974
  br i1 %36, label %88, label %73, !dbg !2038

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1931, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !1974
  %74 = load i8, ptr %71, align 1, !dbg !2040, !tbaa !903
  %75 = icmp eq i8 %74, 0, !dbg !2042
  br i1 %75, label %88, label %76, !dbg !2042

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1931, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %79, metadata !1922, metadata !DIExpression()), !dbg !1974
  %80 = icmp ult i64 %79, %39, !dbg !2043
  br i1 %80, label %81, label %83, !dbg !2046

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2043
  store i8 %77, ptr %82, align 1, !dbg !2043, !tbaa !903
  br label %83, !dbg !2043

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %84, metadata !1922, metadata !DIExpression()), !dbg !1974
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %85, metadata !1931, metadata !DIExpression()), !dbg !2039
  %86 = load i8, ptr %85, align 1, !dbg !2040, !tbaa !903
  %87 = icmp eq i8 %86, 0, !dbg !2042
  br i1 %87, label %88, label %76, !dbg !2042, !llvm.loop !2048

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2050
  call void @llvm.dbg.value(metadata i64 %89, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %72, metadata !1924, metadata !DIExpression()), !dbg !1974
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %90, metadata !1925, metadata !DIExpression()), !dbg !1974
  br label %102, !dbg !2052

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1926, metadata !DIExpression()), !dbg !1974
  br label %93, !dbg !2053

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1974
  br i1 %36, label %102, label %96, !dbg !2054

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 2, metadata !1916, metadata !DIExpression()), !dbg !1974
  br label %102, !dbg !2055

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 2, metadata !1916, metadata !DIExpression()), !dbg !1974
  br i1 %36, label %102, label %96, !dbg !2055

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2056
  br i1 %98, label %102, label %99, !dbg !2060

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2056, !tbaa !903
  br label %102, !dbg !2056

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1927, metadata !DIExpression()), !dbg !1974
  br label %102, !dbg !2061

101:                                              ; preds = %27
  call void @abort() #38, !dbg !2062
  unreachable, !dbg !2062

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2050
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.71, %42 ], [ @.str.10.71, %44 ], [ @.str.10.71, %41 ], [ %33, %27 ], [ @.str.12.72, %96 ], [ @.str.12.72, %99 ], [ @.str.12.72, %95 ], [ @.str.10.71, %40 ], [ @.str.12.72, %93 ], [ @.str.12.72, %92 ], !dbg !1974
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1974
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1926, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %108, metadata !1925, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %107, metadata !1924, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %106, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %105, metadata !1920, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %104, metadata !1919, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %103, metadata !1916, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1936, metadata !DIExpression()), !dbg !2063
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
  br label %122, !dbg !2064

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2050
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1978
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2065
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %129, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %125, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %124, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %123, metadata !1915, metadata !DIExpression()), !dbg !1974
  %131 = icmp eq i64 %123, -1, !dbg !2066
  br i1 %131, label %132, label %136, !dbg !2067

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2068
  %134 = load i8, ptr %133, align 1, !dbg !2068, !tbaa !903
  %135 = icmp eq i8 %134, 0, !dbg !2069
  br i1 %135, label %579, label %138, !dbg !2070

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2071
  br i1 %137, label %579, label %138, !dbg !2070

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !1942, metadata !DIExpression()), !dbg !2072
  br i1 %114, label %139, label %152, !dbg !2073

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2075
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2076
  br i1 %141, label %142, label %144, !dbg !2076

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %143, metadata !1915, metadata !DIExpression()), !dbg !1974
  br label %144, !dbg !2078

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2078
  call void @llvm.dbg.value(metadata i64 %145, metadata !1915, metadata !DIExpression()), !dbg !1974
  %146 = icmp ugt i64 %140, %145, !dbg !2079
  br i1 %146, label %152, label %147, !dbg !2080

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %148, metadata !2082, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata ptr %107, metadata !2085, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %108, metadata !2086, metadata !DIExpression()), !dbg !2087
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2089
  %150 = icmp eq i32 %149, 0, !dbg !2090
  %151 = and i1 %150, %110, !dbg !2091
  br i1 %151, label %630, label %152, !dbg !2091

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %153, metadata !1915, metadata !DIExpression()), !dbg !1974
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2092
  %156 = load i8, ptr %155, align 1, !dbg !2092, !tbaa !903
  call void @llvm.dbg.value(metadata i8 %156, metadata !1943, metadata !DIExpression()), !dbg !2072
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
  ], !dbg !2093

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2094

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2095

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2072
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2099
  br i1 %160, label %177, label %161, !dbg !2099

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2101
  br i1 %162, label %163, label %165, !dbg !2105

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2101
  store i8 39, ptr %164, align 1, !dbg !2101, !tbaa !903
  br label %165, !dbg !2101

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %166, metadata !1922, metadata !DIExpression()), !dbg !1974
  %167 = icmp ult i64 %166, %130, !dbg !2106
  br i1 %167, label %168, label %170, !dbg !2109

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2106
  store i8 36, ptr %169, align 1, !dbg !2106, !tbaa !903
  br label %170, !dbg !2106

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %171, metadata !1922, metadata !DIExpression()), !dbg !1974
  %172 = icmp ult i64 %171, %130, !dbg !2110
  br i1 %172, label %173, label %175, !dbg !2113

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2110
  store i8 39, ptr %174, align 1, !dbg !2110, !tbaa !903
  br label %175, !dbg !2110

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %176, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %177, !dbg !2114

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1974
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %178, metadata !1922, metadata !DIExpression()), !dbg !1974
  %180 = icmp ult i64 %178, %130, !dbg !2115
  br i1 %180, label %181, label %183, !dbg !2118

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2115
  store i8 92, ptr %182, align 1, !dbg !2115, !tbaa !903
  br label %183, !dbg !2115

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %184, metadata !1922, metadata !DIExpression()), !dbg !1974
  br i1 %111, label %185, label %482, !dbg !2119

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2121
  %187 = icmp ult i64 %186, %153, !dbg !2122
  br i1 %187, label %188, label %439, !dbg !2123

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2124
  %190 = load i8, ptr %189, align 1, !dbg !2124, !tbaa !903
  %191 = add i8 %190, -48, !dbg !2125
  %192 = icmp ult i8 %191, 10, !dbg !2125
  br i1 %192, label %193, label %439, !dbg !2125

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2126
  br i1 %194, label %195, label %197, !dbg !2130

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2126
  store i8 48, ptr %196, align 1, !dbg !2126, !tbaa !903
  br label %197, !dbg !2126

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %198, metadata !1922, metadata !DIExpression()), !dbg !1974
  %199 = icmp ult i64 %198, %130, !dbg !2131
  br i1 %199, label %200, label %202, !dbg !2134

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2131
  store i8 48, ptr %201, align 1, !dbg !2131, !tbaa !903
  br label %202, !dbg !2131

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %203, metadata !1922, metadata !DIExpression()), !dbg !1974
  br label %439, !dbg !2135

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2136

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2137

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2138

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2140

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2142
  %210 = icmp ult i64 %209, %153, !dbg !2143
  br i1 %210, label %211, label %439, !dbg !2144

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2145
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2146
  %214 = load i8, ptr %213, align 1, !dbg !2146, !tbaa !903
  %215 = icmp eq i8 %214, 63, !dbg !2147
  br i1 %215, label %216, label %439, !dbg !2148

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2149
  %218 = load i8, ptr %217, align 1, !dbg !2149, !tbaa !903
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
  ], !dbg !2150

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2151

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %209, metadata !1936, metadata !DIExpression()), !dbg !2063
  %221 = icmp ult i64 %124, %130, !dbg !2153
  br i1 %221, label %222, label %224, !dbg !2156

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2153
  store i8 63, ptr %223, align 1, !dbg !2153, !tbaa !903
  br label %224, !dbg !2153

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %225, metadata !1922, metadata !DIExpression()), !dbg !1974
  %226 = icmp ult i64 %225, %130, !dbg !2157
  br i1 %226, label %227, label %229, !dbg !2160

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2157
  store i8 34, ptr %228, align 1, !dbg !2157, !tbaa !903
  br label %229, !dbg !2157

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %230, metadata !1922, metadata !DIExpression()), !dbg !1974
  %231 = icmp ult i64 %230, %130, !dbg !2161
  br i1 %231, label %232, label %234, !dbg !2164

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2161
  store i8 34, ptr %233, align 1, !dbg !2161, !tbaa !903
  br label %234, !dbg !2161

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %235, metadata !1922, metadata !DIExpression()), !dbg !1974
  %236 = icmp ult i64 %235, %130, !dbg !2165
  br i1 %236, label %237, label %239, !dbg !2168

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2165
  store i8 63, ptr %238, align 1, !dbg !2165, !tbaa !903
  br label %239, !dbg !2165

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %240, metadata !1922, metadata !DIExpression()), !dbg !1974
  br label %439, !dbg !2169

241:                                              ; preds = %152
  br label %251, !dbg !2170

242:                                              ; preds = %152
  br label %251, !dbg !2171

243:                                              ; preds = %152
  br label %249, !dbg !2172

244:                                              ; preds = %152
  br label %249, !dbg !2173

245:                                              ; preds = %152
  br label %251, !dbg !2174

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2175

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2176

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2179

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2181
  call void @llvm.dbg.label(metadata !1968), !dbg !2182
  br i1 %119, label %621, label %251, !dbg !2183

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2181
  call void @llvm.dbg.label(metadata !1970), !dbg !2185
  br i1 %109, label %493, label %450, !dbg !2186

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2187

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2188, !tbaa !903
  %256 = icmp eq i8 %255, 0, !dbg !2190
  br i1 %256, label %257, label %439, !dbg !2191

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2192
  br i1 %258, label %259, label %439, !dbg !2194

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1942, metadata !DIExpression()), !dbg !2072
  br label %260, !dbg !2195

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1942, metadata !DIExpression()), !dbg !2072
  br i1 %116, label %262, label %439, !dbg !2196

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2198

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1942, metadata !DIExpression()), !dbg !2072
  br i1 %116, label %264, label %439, !dbg !2199

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2200

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2203
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2205
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2205
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %270, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %269, metadata !1923, metadata !DIExpression()), !dbg !1974
  %271 = icmp ult i64 %124, %270, !dbg !2206
  br i1 %271, label %272, label %274, !dbg !2209

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2206
  store i8 39, ptr %273, align 1, !dbg !2206, !tbaa !903
  br label %274, !dbg !2206

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %275, metadata !1922, metadata !DIExpression()), !dbg !1974
  %276 = icmp ult i64 %275, %270, !dbg !2210
  br i1 %276, label %277, label %279, !dbg !2213

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2210
  store i8 92, ptr %278, align 1, !dbg !2210, !tbaa !903
  br label %279, !dbg !2210

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %280, metadata !1922, metadata !DIExpression()), !dbg !1974
  %281 = icmp ult i64 %280, %270, !dbg !2214
  br i1 %281, label %282, label %284, !dbg !2217

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2214
  store i8 39, ptr %283, align 1, !dbg !2214, !tbaa !903
  br label %284, !dbg !2214

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %285, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %439, !dbg !2218

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2219

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1944, metadata !DIExpression()), !dbg !2220
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2221
  %289 = load ptr, ptr %288, align 8, !dbg !2221, !tbaa !834
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2221
  %292 = load i16, ptr %291, align 2, !dbg !2221, !tbaa !935
  %293 = and i16 %292, 16384, !dbg !2221
  %294 = icmp ne i16 %293, 0, !dbg !2223
  call void @llvm.dbg.value(metadata i1 %294, metadata !1947, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2220
  br label %337, !dbg !2224

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1948, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr %14, metadata !2000, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata ptr %14, metadata !2008, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i64 8, metadata !2012, metadata !DIExpression()), !dbg !2229
  store i64 0, ptr %14, align 8, !dbg !2231
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !1947, metadata !DIExpression()), !dbg !2220
  %296 = icmp eq i64 %153, -1, !dbg !2232
  br i1 %296, label %297, label %299, !dbg !2234

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %298, metadata !1915, metadata !DIExpression()), !dbg !1974
  br label %299, !dbg !2236

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2072
  call void @llvm.dbg.value(metadata i64 %300, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2237
  %301 = sub i64 %300, %129, !dbg !2238
  call void @llvm.dbg.value(metadata ptr %15, metadata !1951, metadata !DIExpression(DW_OP_deref)), !dbg !2239
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %302, metadata !1955, metadata !DIExpression()), !dbg !2239
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2241

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2220
  %304 = icmp ugt i64 %300, %129, !dbg !2242
  br i1 %304, label %306, label %332, !dbg !2244

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !2220
  br label %332, !dbg !2245

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1944, metadata !DIExpression()), !dbg !2220
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2247
  %310 = load i8, ptr %309, align 1, !dbg !2247, !tbaa !903
  %311 = icmp eq i8 %310, 0, !dbg !2244
  br i1 %311, label %332, label %312, !dbg !2248

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %313, metadata !1944, metadata !DIExpression()), !dbg !2220
  %314 = add i64 %313, %129, !dbg !2250
  %315 = icmp eq i64 %313, %301, !dbg !2242
  br i1 %315, label %332, label %306, !dbg !2244, !llvm.loop !2251

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2252
  %319 = and i1 %318, %110, !dbg !2252
  call void @llvm.dbg.value(metadata i64 1, metadata !1956, metadata !DIExpression()), !dbg !2253
  br i1 %319, label %320, label %328, !dbg !2252

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1956, metadata !DIExpression()), !dbg !2253
  %322 = add i64 %321, %129, !dbg !2254
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2256
  %324 = load i8, ptr %323, align 1, !dbg !2256, !tbaa !903
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2257

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %326, metadata !1956, metadata !DIExpression()), !dbg !2253
  %327 = icmp eq i64 %326, %302, !dbg !2259
  br i1 %327, label %328, label %320, !dbg !2260, !llvm.loop !2261

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2263, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %329, metadata !1951, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %329, metadata !2265, metadata !DIExpression()), !dbg !2273
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !2275
  %331 = icmp ne i32 %330, 0, !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !1947, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %302, metadata !1944, metadata !DIExpression()), !dbg !2220
  br label %332, !dbg !2277

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1947, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %333, metadata !1944, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2279
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1947, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2279
  call void @llvm.dbg.label(metadata !1973), !dbg !2280
  %336 = select i1 %109, i32 4, i32 2, !dbg !2281
  br label %626, !dbg !2281

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2072
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2283
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1947, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %339, metadata !1944, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %338, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i1 %340, metadata !1942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2072
  %341 = icmp ult i64 %339, 2, !dbg !2284
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2285
  br i1 %343, label %439, label %344, !dbg !2285

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %345, metadata !1964, metadata !DIExpression()), !dbg !2287
  br label %346, !dbg !2288

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1974
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2063
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2289
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2072
  call void @llvm.dbg.value(metadata i8 %352, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %351, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %349, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %347, metadata !1922, metadata !DIExpression()), !dbg !1974
  br i1 %342, label %397, label %353, !dbg !2290

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2295

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2072
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2298
  br i1 %355, label %372, label %356, !dbg !2298

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2300
  br i1 %357, label %358, label %360, !dbg !2304

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2300
  store i8 39, ptr %359, align 1, !dbg !2300, !tbaa !903
  br label %360, !dbg !2300

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %361, metadata !1922, metadata !DIExpression()), !dbg !1974
  %362 = icmp ult i64 %361, %130, !dbg !2305
  br i1 %362, label %363, label %365, !dbg !2308

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2305
  store i8 36, ptr %364, align 1, !dbg !2305, !tbaa !903
  br label %365, !dbg !2305

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %366, metadata !1922, metadata !DIExpression()), !dbg !1974
  %367 = icmp ult i64 %366, %130, !dbg !2309
  br i1 %367, label %368, label %370, !dbg !2312

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2309
  store i8 39, ptr %369, align 1, !dbg !2309, !tbaa !903
  br label %370, !dbg !2309

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %371, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %372, !dbg !2313

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1974
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %373, metadata !1922, metadata !DIExpression()), !dbg !1974
  %375 = icmp ult i64 %373, %130, !dbg !2314
  br i1 %375, label %376, label %378, !dbg !2317

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2314
  store i8 92, ptr %377, align 1, !dbg !2314, !tbaa !903
  br label %378, !dbg !2314

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %379, metadata !1922, metadata !DIExpression()), !dbg !1974
  %380 = icmp ult i64 %379, %130, !dbg !2318
  br i1 %380, label %381, label %385, !dbg !2321

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2318
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2318
  store i8 %383, ptr %384, align 1, !dbg !2318, !tbaa !903
  br label %385, !dbg !2318

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %386, metadata !1922, metadata !DIExpression()), !dbg !1974
  %387 = icmp ult i64 %386, %130, !dbg !2322
  br i1 %387, label %388, label %393, !dbg !2325

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2322
  %391 = or i8 %390, 48, !dbg !2322
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2322
  store i8 %391, ptr %392, align 1, !dbg !2322, !tbaa !903
  br label %393, !dbg !2322

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %394, metadata !1922, metadata !DIExpression()), !dbg !1974
  %395 = and i8 %352, 7, !dbg !2326
  %396 = or i8 %395, 48, !dbg !2327
  call void @llvm.dbg.value(metadata i8 %396, metadata !1943, metadata !DIExpression()), !dbg !2072
  br label %404, !dbg !2328

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2329

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2330
  br i1 %399, label %400, label %402, !dbg !2335

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2330
  store i8 92, ptr %401, align 1, !dbg !2330, !tbaa !903
  br label %402, !dbg !2330

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %403, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1938, metadata !DIExpression()), !dbg !2072
  br label %404, !dbg !2336

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1974
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2072
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2072
  call void @llvm.dbg.value(metadata i8 %409, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %408, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %405, metadata !1922, metadata !DIExpression()), !dbg !1974
  %410 = add i64 %349, 1, !dbg !2337
  %411 = icmp ugt i64 %345, %410, !dbg !2339
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2340

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2341
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2341
  br i1 %415, label %416, label %427, !dbg !2341

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2344
  br i1 %417, label %418, label %420, !dbg !2348

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2344
  store i8 39, ptr %419, align 1, !dbg !2344, !tbaa !903
  br label %420, !dbg !2344

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %421, metadata !1922, metadata !DIExpression()), !dbg !1974
  %422 = icmp ult i64 %421, %130, !dbg !2349
  br i1 %422, label %423, label %425, !dbg !2352

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2349
  store i8 39, ptr %424, align 1, !dbg !2349, !tbaa !903
  br label %425, !dbg !2349

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %426, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %427, !dbg !2353

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2354
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %428, metadata !1922, metadata !DIExpression()), !dbg !1974
  %430 = icmp ult i64 %428, %130, !dbg !2355
  br i1 %430, label %431, label %433, !dbg !2358

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2355
  store i8 %409, ptr %432, align 1, !dbg !2355, !tbaa !903
  br label %433, !dbg !2355

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %434, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %410, metadata !1936, metadata !DIExpression()), !dbg !2063
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2359
  %436 = load i8, ptr %435, align 1, !dbg !2359, !tbaa !903
  call void @llvm.dbg.value(metadata i8 %436, metadata !1943, metadata !DIExpression()), !dbg !2072
  br label %346, !dbg !2360, !llvm.loop !2361

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i1 %340, metadata !1942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %408, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %349, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %405, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %338, metadata !1915, metadata !DIExpression()), !dbg !1974
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2364
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1974
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1978
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2063
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2072
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %448, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1942, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1938, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %445, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %442, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %441, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %440, metadata !1915, metadata !DIExpression()), !dbg !1974
  br i1 %112, label %461, label %450, !dbg !2365

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
  br i1 %121, label %462, label %482, !dbg !2367

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2368

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
  %473 = lshr i8 %464, 5, !dbg !2369
  %474 = zext i8 %473 to i64, !dbg !2369
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2370
  %476 = load i32, ptr %475, align 4, !dbg !2370, !tbaa !894
  %477 = and i8 %464, 31, !dbg !2371
  %478 = zext i8 %477 to i32, !dbg !2371
  %479 = shl nuw i32 1, %478, !dbg !2372
  %480 = and i32 %476, %479, !dbg !2372
  %481 = icmp eq i32 %480, 0, !dbg !2372
  br i1 %481, label %482, label %493, !dbg !2373

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
  br i1 %154, label %493, label %529, !dbg !2374

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2364
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1974
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1978
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2375
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2072
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %501, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1942, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %499, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %496, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %495, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %494, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.label(metadata !1971), !dbg !2376
  br i1 %110, label %621, label %503, !dbg !2377

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2072
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2379
  br i1 %504, label %521, label %505, !dbg !2379

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2381
  br i1 %506, label %507, label %509, !dbg !2385

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2381
  store i8 39, ptr %508, align 1, !dbg !2381, !tbaa !903
  br label %509, !dbg !2381

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %510, metadata !1922, metadata !DIExpression()), !dbg !1974
  %511 = icmp ult i64 %510, %502, !dbg !2386
  br i1 %511, label %512, label %514, !dbg !2389

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2386
  store i8 36, ptr %513, align 1, !dbg !2386, !tbaa !903
  br label %514, !dbg !2386

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %515, metadata !1922, metadata !DIExpression()), !dbg !1974
  %516 = icmp ult i64 %515, %502, !dbg !2390
  br i1 %516, label %517, label %519, !dbg !2393

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2390
  store i8 39, ptr %518, align 1, !dbg !2390, !tbaa !903
  br label %519, !dbg !2390

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %520, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %521, !dbg !2394

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2072
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %522, metadata !1922, metadata !DIExpression()), !dbg !1974
  %524 = icmp ult i64 %522, %502, !dbg !2395
  br i1 %524, label %525, label %527, !dbg !2398

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2395
  store i8 92, ptr %526, align 1, !dbg !2395, !tbaa !903
  br label %527, !dbg !2395

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %502, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %501, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1942, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %499, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %496, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %528, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %494, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.label(metadata !1972), !dbg !2399
  br label %553, !dbg !2400

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2364
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1974
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1978
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2375
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2403
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %538, metadata !1943, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1942, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1941, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %535, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %532, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %531, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %530, metadata !1915, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.label(metadata !1972), !dbg !2399
  %540 = xor i1 %534, true, !dbg !2400
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2400
  br i1 %541, label %553, label %542, !dbg !2400

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2404
  br i1 %543, label %544, label %546, !dbg !2408

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2404
  store i8 39, ptr %545, align 1, !dbg !2404, !tbaa !903
  br label %546, !dbg !2404

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %547, metadata !1922, metadata !DIExpression()), !dbg !1974
  %548 = icmp ult i64 %547, %539, !dbg !2409
  br i1 %548, label %549, label %551, !dbg !2412

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2409
  store i8 39, ptr %550, align 1, !dbg !2409, !tbaa !903
  br label %551, !dbg !2409

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %552, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1974
  br label %553, !dbg !2413

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2072
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %561, metadata !1922, metadata !DIExpression()), !dbg !1974
  %563 = icmp ult i64 %561, %554, !dbg !2414
  br i1 %563, label %564, label %566, !dbg !2417

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2414
  store i8 %555, ptr %565, align 1, !dbg !2414, !tbaa !903
  br label %566, !dbg !2414

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %567, metadata !1922, metadata !DIExpression()), !dbg !1974
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2418
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1974
  br label %569, !dbg !2419

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2364
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1974
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1978
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2375
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %576, metadata !1936, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1930, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %572, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %571, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %570, metadata !1915, metadata !DIExpression()), !dbg !1974
  %578 = add i64 %576, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %578, metadata !1936, metadata !DIExpression()), !dbg !2063
  br label %122, !dbg !2421, !llvm.loop !2422

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1913, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 poison, metadata !1928, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %125, metadata !1923, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %124, metadata !1922, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %123, metadata !1915, metadata !DIExpression()), !dbg !1974
  %580 = icmp ne i64 %124, 0, !dbg !2424
  %581 = xor i1 %110, true, !dbg !2426
  %582 = or i1 %580, %581, !dbg !2426
  %583 = or i1 %582, %111, !dbg !2426
  br i1 %583, label %584, label %621, !dbg !2426

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2427
  %586 = xor i1 %126, true, !dbg !2427
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2427
  br i1 %587, label %595, label %588, !dbg !2427

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2429

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2431
  br label %636, !dbg !2433

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2434
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2436
  br i1 %594, label %27, label %595, !dbg !2436

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2437
  %598 = or i1 %597, %596, !dbg !2439
  br i1 %598, label %614, label %599, !dbg !2439

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1924, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %124, metadata !1922, metadata !DIExpression()), !dbg !1974
  %600 = load i8, ptr %107, align 1, !dbg !2440, !tbaa !903
  %601 = icmp eq i8 %600, 0, !dbg !2443
  br i1 %601, label %614, label %602, !dbg !2443

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1924, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %605, metadata !1922, metadata !DIExpression()), !dbg !1974
  %606 = icmp ult i64 %605, %130, !dbg !2444
  br i1 %606, label %607, label %609, !dbg !2447

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2444
  store i8 %603, ptr %608, align 1, !dbg !2444, !tbaa !903
  br label %609, !dbg !2444

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %610, metadata !1922, metadata !DIExpression()), !dbg !1974
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2448
  call void @llvm.dbg.value(metadata ptr %611, metadata !1924, metadata !DIExpression()), !dbg !1974
  %612 = load i8, ptr %611, align 1, !dbg !2440, !tbaa !903
  %613 = icmp eq i8 %612, 0, !dbg !2443
  br i1 %613, label %614, label %602, !dbg !2443, !llvm.loop !2449

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2050
  call void @llvm.dbg.value(metadata i64 %615, metadata !1922, metadata !DIExpression()), !dbg !1974
  %616 = icmp ult i64 %615, %130, !dbg !2451
  br i1 %616, label %617, label %636, !dbg !2453

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2454
  store i8 0, ptr %618, align 1, !dbg !2455, !tbaa !903
  br label %636, !dbg !2454

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1973), !dbg !2280
  %620 = icmp eq i32 %103, 2, !dbg !2456
  br i1 %620, label %626, label %630, !dbg !2281

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1973), !dbg !2280
  %624 = icmp eq i32 %103, 2, !dbg !2456
  %625 = select i1 %109, i32 4, i32 2, !dbg !2281
  br i1 %624, label %626, label %630, !dbg !2281

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2281

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1916, metadata !DIExpression()), !dbg !1974
  %634 = and i32 %5, -3, !dbg !2457
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2458
  br label %636, !dbg !2459

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2460
}

; Function Attrs: nounwind
declare !dbg !2461 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2464 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2467 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2469 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %1, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %2, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %0, metadata !2477, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2482, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata ptr null, metadata !2483, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata ptr %2, metadata !2484, metadata !DIExpression()), !dbg !2490
  %4 = icmp eq ptr %2, null, !dbg !2492
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %5, metadata !2485, metadata !DIExpression()), !dbg !2490
  %6 = tail call ptr @__errno_location() #39, !dbg !2493
  %7 = load i32, ptr %6, align 4, !dbg !2493, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2486, metadata !DIExpression()), !dbg !2490
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2494
  %9 = load i32, ptr %8, align 4, !dbg !2494, !tbaa !1856
  %10 = or i32 %9, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %10, metadata !2487, metadata !DIExpression()), !dbg !2490
  %11 = load i32, ptr %5, align 8, !dbg !2496, !tbaa !1806
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2497
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2498
  %14 = load ptr, ptr %13, align 8, !dbg !2498, !tbaa !1877
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2499
  %16 = load ptr, ptr %15, align 8, !dbg !2499, !tbaa !1880
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2500
  %18 = add i64 %17, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %18, metadata !2488, metadata !DIExpression()), !dbg !2490
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %19, metadata !2489, metadata !DIExpression()), !dbg !2490
  %20 = load i32, ptr %5, align 8, !dbg !2503, !tbaa !1806
  %21 = load ptr, ptr %13, align 8, !dbg !2504, !tbaa !1877
  %22 = load ptr, ptr %15, align 8, !dbg !2505, !tbaa !1880
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2506
  store i32 %7, ptr %6, align 4, !dbg !2507, !tbaa !894
  ret ptr %19, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2478 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2477, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %1, metadata !2482, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2483, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %3, metadata !2484, metadata !DIExpression()), !dbg !2509
  %5 = icmp eq ptr %3, null, !dbg !2510
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %6, metadata !2485, metadata !DIExpression()), !dbg !2509
  %7 = tail call ptr @__errno_location() #39, !dbg !2511
  %8 = load i32, ptr %7, align 4, !dbg !2511, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %8, metadata !2486, metadata !DIExpression()), !dbg !2509
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2512
  %10 = load i32, ptr %9, align 4, !dbg !2512, !tbaa !1856
  %11 = icmp eq ptr %2, null, !dbg !2513
  %12 = zext i1 %11 to i32, !dbg !2513
  %13 = or i32 %10, %12, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %13, metadata !2487, metadata !DIExpression()), !dbg !2509
  %14 = load i32, ptr %6, align 8, !dbg !2515, !tbaa !1806
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2516
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2517
  %17 = load ptr, ptr %16, align 8, !dbg !2517, !tbaa !1877
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2518
  %19 = load ptr, ptr %18, align 8, !dbg !2518, !tbaa !1880
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2519
  %21 = add i64 %20, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %21, metadata !2488, metadata !DIExpression()), !dbg !2509
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %22, metadata !2489, metadata !DIExpression()), !dbg !2509
  %23 = load i32, ptr %6, align 8, !dbg !2522, !tbaa !1806
  %24 = load ptr, ptr %16, align 8, !dbg !2523, !tbaa !1877
  %25 = load ptr, ptr %18, align 8, !dbg !2524, !tbaa !1880
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2525
  store i32 %8, ptr %7, align 4, !dbg !2526, !tbaa !894
  br i1 %11, label %28, label %27, !dbg !2527

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2528, !tbaa !2530
  br label %28, !dbg !2531

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2533 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2538, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2535, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 1, metadata !2536, metadata !DIExpression()), !dbg !2540
  %2 = load i32, ptr @nslots, align 4, !tbaa !894
  call void @llvm.dbg.value(metadata i32 1, metadata !2536, metadata !DIExpression()), !dbg !2540
  %3 = icmp sgt i32 %2, 1, !dbg !2541
  br i1 %3, label %4, label %6, !dbg !2543

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2541
  br label %10, !dbg !2543

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2544
  %8 = load ptr, ptr %7, align 8, !dbg !2544, !tbaa !2546
  %9 = icmp eq ptr %8, @slot0, !dbg !2548
  br i1 %9, label %17, label %16, !dbg !2549

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2536, metadata !DIExpression()), !dbg !2540
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2550
  %13 = load ptr, ptr %12, align 8, !dbg !2550, !tbaa !2546
  tail call void @free(ptr noundef %13) #36, !dbg !2551
  %14 = add nuw nsw i64 %11, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %14, metadata !2536, metadata !DIExpression()), !dbg !2540
  %15 = icmp eq i64 %14, %5, !dbg !2541
  br i1 %15, label %6, label %10, !dbg !2543, !llvm.loop !2553

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2555
  store i64 256, ptr @slotvec0, align 8, !dbg !2557, !tbaa !2558
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2559, !tbaa !2546
  br label %17, !dbg !2560

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2561
  br i1 %18, label %20, label %19, !dbg !2563

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2564
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2566, !tbaa !834
  br label %20, !dbg !2567

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2568, !tbaa !894
  ret void, !dbg !2569
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata ptr %1, metadata !2573, metadata !DIExpression()), !dbg !2574
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2575
  ret ptr %3, !dbg !2576
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2577 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %1, metadata !2582, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %2, metadata !2583, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %3, metadata !2584, metadata !DIExpression()), !dbg !2597
  %6 = tail call ptr @__errno_location() #39, !dbg !2598
  %7 = load i32, ptr %6, align 4, !dbg !2598, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2585, metadata !DIExpression()), !dbg !2597
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2599, !tbaa !834
  call void @llvm.dbg.value(metadata ptr %8, metadata !2586, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2587, metadata !DIExpression()), !dbg !2597
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2600
  br i1 %9, label %10, label %11, !dbg !2600

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2602
  unreachable, !dbg !2602

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2603, !tbaa !894
  %13 = icmp sgt i32 %12, %0, !dbg !2604
  br i1 %13, label %32, label %14, !dbg !2605

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2606
  call void @llvm.dbg.value(metadata i1 %15, metadata !2588, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2607
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2608
  %16 = sext i32 %12 to i64, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %16, metadata !2591, metadata !DIExpression()), !dbg !2607
  store i64 %16, ptr %5, align 8, !dbg !2610, !tbaa !2530
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2611
  %18 = add nuw nsw i32 %0, 1, !dbg !2612
  %19 = sub i32 %18, %12, !dbg !2613
  %20 = sext i32 %19 to i64, !dbg !2614
  call void @llvm.dbg.value(metadata ptr %5, metadata !2591, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2615
  call void @llvm.dbg.value(metadata ptr %21, metadata !2586, metadata !DIExpression()), !dbg !2597
  store ptr %21, ptr @slotvec, align 8, !dbg !2616, !tbaa !834
  br i1 %15, label %22, label %23, !dbg !2617

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2618, !tbaa.struct !2620
  br label %23, !dbg !2621

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2622, !tbaa !894
  %25 = sext i32 %24 to i64, !dbg !2623
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2623
  %27 = load i64, ptr %5, align 8, !dbg !2624, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %27, metadata !2591, metadata !DIExpression()), !dbg !2607
  %28 = sub nsw i64 %27, %25, !dbg !2625
  %29 = shl i64 %28, 4, !dbg !2626
  call void @llvm.dbg.value(metadata ptr %26, metadata !2008, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %29, metadata !2012, metadata !DIExpression()), !dbg !2627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2629
  %30 = load i64, ptr %5, align 8, !dbg !2630, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %30, metadata !2591, metadata !DIExpression()), !dbg !2607
  %31 = trunc i64 %30 to i32, !dbg !2630
  store i32 %31, ptr @nslots, align 4, !dbg !2631, !tbaa !894
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2632
  br label %32, !dbg !2633

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2597
  call void @llvm.dbg.value(metadata ptr %33, metadata !2586, metadata !DIExpression()), !dbg !2597
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2634
  %36 = load i64, ptr %35, align 8, !dbg !2635, !tbaa !2558
  call void @llvm.dbg.value(metadata i64 %36, metadata !2592, metadata !DIExpression()), !dbg !2636
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2637
  %38 = load ptr, ptr %37, align 8, !dbg !2637, !tbaa !2546
  call void @llvm.dbg.value(metadata ptr %38, metadata !2594, metadata !DIExpression()), !dbg !2636
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2638
  %40 = load i32, ptr %39, align 4, !dbg !2638, !tbaa !1856
  %41 = or i32 %40, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %41, metadata !2595, metadata !DIExpression()), !dbg !2636
  %42 = load i32, ptr %3, align 8, !dbg !2640, !tbaa !1806
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2641
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2642
  %45 = load ptr, ptr %44, align 8, !dbg !2642, !tbaa !1877
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2643
  %47 = load ptr, ptr %46, align 8, !dbg !2643, !tbaa !1880
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2644
  call void @llvm.dbg.value(metadata i64 %48, metadata !2596, metadata !DIExpression()), !dbg !2636
  %49 = icmp ugt i64 %36, %48, !dbg !2645
  br i1 %49, label %60, label %50, !dbg !2647

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %51, metadata !2592, metadata !DIExpression()), !dbg !2636
  store i64 %51, ptr %35, align 8, !dbg !2650, !tbaa !2558
  %52 = icmp eq ptr %38, @slot0, !dbg !2651
  br i1 %52, label %54, label %53, !dbg !2653

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2654
  br label %54, !dbg !2654

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %55, metadata !2594, metadata !DIExpression()), !dbg !2636
  store ptr %55, ptr %37, align 8, !dbg !2656, !tbaa !2546
  %56 = load i32, ptr %3, align 8, !dbg !2657, !tbaa !1806
  %57 = load ptr, ptr %44, align 8, !dbg !2658, !tbaa !1877
  %58 = load ptr, ptr %46, align 8, !dbg !2659, !tbaa !1880
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2660
  br label %60, !dbg !2661

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2636
  call void @llvm.dbg.value(metadata ptr %61, metadata !2594, metadata !DIExpression()), !dbg !2636
  store i32 %7, ptr %6, align 4, !dbg !2662, !tbaa !894
  ret ptr %61, !dbg !2663
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %2, metadata !2670, metadata !DIExpression()), !dbg !2671
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2672
  ret ptr %4, !dbg !2673
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2674 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %0, metadata !2573, metadata !DIExpression()), !dbg !2678
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2680
  ret ptr %2, !dbg !2681
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()), !dbg !2689
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2691
  ret ptr %3, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2693 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %2, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2700, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2716, !alias.scope !2704
  %5 = icmp eq i32 %1, 10, !dbg !2717
  br i1 %5, label %6, label %7, !dbg !2719

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2720, !noalias !2704
  unreachable, !dbg !2720

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2721, !tbaa !1806, !alias.scope !2704
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2722
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2723
  ret ptr %8, !dbg !2724
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2725 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2729, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 %1, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %3, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2733, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2713, metadata !DIExpression()), !dbg !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2743, !alias.scope !2737
  %6 = icmp eq i32 %1, 10, !dbg !2744
  br i1 %6, label %7, label %8, !dbg !2745

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2746, !noalias !2737
  unreachable, !dbg !2746

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2747, !tbaa !1806, !alias.scope !2737
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2748
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2749
  ret ptr %9, !dbg !2750
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2751 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %1, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %1, metadata !2699, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2760
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2700, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2713, metadata !DIExpression()), !dbg !2768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2768, !alias.scope !2762
  %4 = icmp eq i32 %0, 10, !dbg !2769
  br i1 %4, label %5, label %6, !dbg !2770

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2771, !noalias !2762
  unreachable, !dbg !2771

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2772, !tbaa !1806, !alias.scope !2762
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2773
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2774
  ret ptr %7, !dbg !2775
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2776 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %1, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %2, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2729, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %1, metadata !2731, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %2, metadata !2732, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2786
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2733, metadata !DIExpression()), !dbg !2787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2713, metadata !DIExpression()), !dbg !2794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2794, !alias.scope !2788
  %5 = icmp eq i32 %0, 10, !dbg !2795
  br i1 %5, label %6, label %7, !dbg !2796

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2797, !noalias !2788
  unreachable, !dbg !2797

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2798, !tbaa !1806, !alias.scope !2788
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2799
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2800
  ret ptr %8, !dbg !2801
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2802 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %1, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %2, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2809, metadata !DIExpression()), !dbg !2812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2813, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %4, metadata !1823, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 %2, metadata !1824, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 1, metadata !1825, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 %2, metadata !1826, metadata !DIExpression()), !dbg !2815
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2817
  %6 = lshr i8 %2, 5, !dbg !2818
  %7 = zext i8 %6 to i64, !dbg !2818
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2819
  call void @llvm.dbg.value(metadata ptr %8, metadata !1827, metadata !DIExpression()), !dbg !2815
  %9 = and i8 %2, 31, !dbg !2820
  %10 = zext i8 %9 to i32, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %10, metadata !1829, metadata !DIExpression()), !dbg !2815
  %11 = load i32, ptr %8, align 4, !dbg !2821, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %12, metadata !1830, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2815
  %13 = and i32 %12, 1, !dbg !2823
  %14 = xor i32 %13, 1, !dbg !2823
  %15 = shl nuw i32 %14, %10, !dbg !2824
  %16 = xor i32 %15, %11, !dbg !2825
  store i32 %16, ptr %8, align 4, !dbg !2825, !tbaa !894
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2826
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2827
  ret ptr %17, !dbg !2828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2829 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 %1, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 -1, metadata !2807, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 %1, metadata !2808, metadata !DIExpression()), !dbg !2836
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2838
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2809, metadata !DIExpression()), !dbg !2839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2840, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %3, metadata !1823, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8 %1, metadata !1824, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 1, metadata !1825, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8 %1, metadata !1826, metadata !DIExpression()), !dbg !2841
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2843
  %5 = lshr i8 %1, 5, !dbg !2844
  %6 = zext i8 %5 to i64, !dbg !2844
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2845
  call void @llvm.dbg.value(metadata ptr %7, metadata !1827, metadata !DIExpression()), !dbg !2841
  %8 = and i8 %1, 31, !dbg !2846
  %9 = zext i8 %8 to i32, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %9, metadata !1829, metadata !DIExpression()), !dbg !2841
  %10 = load i32, ptr %7, align 4, !dbg !2847, !tbaa !894
  %11 = lshr i32 %10, %9, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %11, metadata !1830, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2841
  %12 = and i32 %11, 1, !dbg !2849
  %13 = xor i32 %12, 1, !dbg !2849
  %14 = shl nuw i32 %13, %9, !dbg !2850
  %15 = xor i32 %14, %10, !dbg !2851
  store i32 %15, ptr %7, align 4, !dbg !2851, !tbaa !894
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2852
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2853
  ret ptr %16, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2855 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2857, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %0, metadata !2833, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 58, metadata !2834, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 -1, metadata !2807, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2863
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2809, metadata !DIExpression()), !dbg !2864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2865, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %2, metadata !1823, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 1, metadata !1825, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()), !dbg !2866
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2868
  call void @llvm.dbg.value(metadata ptr %3, metadata !1827, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 26, metadata !1829, metadata !DIExpression()), !dbg !2866
  %4 = load i32, ptr %3, align 4, !dbg !2869, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %4, metadata !1830, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2866
  %5 = or i32 %4, 67108864, !dbg !2870
  store i32 %5, ptr %3, align 4, !dbg !2870, !tbaa !894
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2871
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2872
  ret ptr %6, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2874 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2807, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2881
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2809, metadata !DIExpression()), !dbg !2882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2883, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %3, metadata !1823, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 1, metadata !1825, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()), !dbg !2884
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %4, metadata !1827, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 26, metadata !1829, metadata !DIExpression()), !dbg !2884
  %5 = load i32, ptr %4, align 4, !dbg !2887, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %5, metadata !1830, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2884
  %6 = or i32 %5, 67108864, !dbg !2888
  store i32 %6, ptr %4, align 4, !dbg !2888, !tbaa !894
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2889
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2890
  ret ptr %7, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2892 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %0, metadata !2894, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %1, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %2, metadata !2896, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2903
  %5 = icmp eq i32 %1, 10, !dbg !2904
  br i1 %5, label %6, label %7, !dbg !2905

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2906, !noalias !2907
  unreachable, !dbg !2906

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2903
  store i32 %1, ptr %4, align 8, !dbg !2910, !tbaa.struct !2814
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2910
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %4, metadata !1823, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8 58, metadata !1824, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 1, metadata !1825, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()), !dbg !2911
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2913
  call void @llvm.dbg.value(metadata ptr %9, metadata !1827, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 26, metadata !1829, metadata !DIExpression()), !dbg !2911
  %10 = load i32, ptr %9, align 4, !dbg !2914, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %10, metadata !1830, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2911
  %11 = or i32 %10, 67108864, !dbg !2915
  store i32 %11, ptr %9, align 4, !dbg !2915, !tbaa !894
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2916
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2917
  ret ptr %12, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2919 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2923, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %2, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %3, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %2, metadata !2934, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 -1, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2937, metadata !DIExpression()), !dbg !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2942, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %5, metadata !1863, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %1, metadata !1864, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %2, metadata !1865, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %5, metadata !1863, metadata !DIExpression()), !dbg !2943
  store i32 10, ptr %5, align 8, !dbg !2945, !tbaa !1806
  %6 = icmp ne ptr %1, null, !dbg !2946
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2947
  br i1 %8, label %10, label %9, !dbg !2947

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2948
  unreachable, !dbg !2948

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2949
  store ptr %1, ptr %11, align 8, !dbg !2950, !tbaa !1877
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2951
  store ptr %2, ptr %12, align 8, !dbg !2952, !tbaa !1880
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2953
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2954
  ret ptr %13, !dbg !2955
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2929 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %2, metadata !2934, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %4, metadata !2936, metadata !DIExpression()), !dbg !2956
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2937, metadata !DIExpression()), !dbg !2958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2959, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %6, metadata !1863, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %1, metadata !1864, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %2, metadata !1865, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %6, metadata !1863, metadata !DIExpression()), !dbg !2960
  store i32 10, ptr %6, align 8, !dbg !2962, !tbaa !1806
  %7 = icmp ne ptr %1, null, !dbg !2963
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2964
  br i1 %9, label %11, label %10, !dbg !2964

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2965
  unreachable, !dbg !2965

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2966
  store ptr %1, ptr %12, align 8, !dbg !2967, !tbaa !1877
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2968
  store ptr %2, ptr %13, align 8, !dbg !2969, !tbaa !1880
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2970
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2971
  ret ptr %14, !dbg !2972
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2973 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %2, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %1, metadata !2925, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %2, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %1, metadata !2934, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 -1, metadata !2936, metadata !DIExpression()), !dbg !2983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !2986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2987, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %4, metadata !1863, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata ptr %0, metadata !1864, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata ptr %1, metadata !1865, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata ptr %4, metadata !1863, metadata !DIExpression()), !dbg !2988
  store i32 10, ptr %4, align 8, !dbg !2990, !tbaa !1806
  %5 = icmp ne ptr %0, null, !dbg !2991
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2992
  br i1 %7, label %9, label %8, !dbg !2992

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2993
  unreachable, !dbg !2993

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2994
  store ptr %0, ptr %10, align 8, !dbg !2995, !tbaa !1877
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2996
  store ptr %1, ptr %11, align 8, !dbg !2997, !tbaa !1880
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2998
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2999
  ret ptr %12, !dbg !3000
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3001 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %1, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %3, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %1, metadata !2934, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %3, metadata !2936, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3012
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2937, metadata !DIExpression()), !dbg !3013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3014, !tbaa.struct !2814
  call void @llvm.dbg.value(metadata ptr %5, metadata !1863, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %0, metadata !1864, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %1, metadata !1865, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %5, metadata !1863, metadata !DIExpression()), !dbg !3015
  store i32 10, ptr %5, align 8, !dbg !3017, !tbaa !1806
  %6 = icmp ne ptr %0, null, !dbg !3018
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3019
  br i1 %8, label %10, label %9, !dbg !3019

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3020
  unreachable, !dbg !3020

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3021
  store ptr %0, ptr %11, align 8, !dbg !3022, !tbaa !1877
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3023
  store ptr %1, ptr %12, align 8, !dbg !3024, !tbaa !1880
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3025
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3026
  ret ptr %13, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %2, metadata !3034, metadata !DIExpression()), !dbg !3035
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3036
  ret ptr %4, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3045
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3047
  ret ptr %3, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()), !dbg !3056
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3058
  ret ptr %3, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3060 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()), !dbg !3068
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3070
  ret ptr %2, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3072 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %1, metadata !3112, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %2, metadata !3113, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %3, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %4, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %5, metadata !3116, metadata !DIExpression()), !dbg !3117
  %7 = icmp eq ptr %1, null, !dbg !3118
  br i1 %7, label %10, label %8, !dbg !3120

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3121
  br label %12, !dbg !3121

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %2, ptr noundef %3) #36, !dbg !3122
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.3.80, i32 noundef 5) #36, !dbg !3123
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3123
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3124
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.5.82, i32 noundef 5) #36, !dbg !3125
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.83) #36, !dbg !3125
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %0), !dbg !3126
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
  ], !dbg !3127

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.7.84, i32 noundef 5) #36, !dbg !3128
  %21 = load ptr, ptr %4, align 8, !dbg !3128, !tbaa !834
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3128
  br label %147, !dbg !3130

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.8.85, i32 noundef 5) #36, !dbg !3131
  %25 = load ptr, ptr %4, align 8, !dbg !3131, !tbaa !834
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3131
  %27 = load ptr, ptr %26, align 8, !dbg !3131, !tbaa !834
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3131
  br label %147, !dbg !3132

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.9.86, i32 noundef 5) #36, !dbg !3133
  %31 = load ptr, ptr %4, align 8, !dbg !3133, !tbaa !834
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3133
  %33 = load ptr, ptr %32, align 8, !dbg !3133, !tbaa !834
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3133
  %35 = load ptr, ptr %34, align 8, !dbg !3133, !tbaa !834
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3133
  br label %147, !dbg !3134

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.10.87, i32 noundef 5) #36, !dbg !3135
  %39 = load ptr, ptr %4, align 8, !dbg !3135, !tbaa !834
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3135
  %41 = load ptr, ptr %40, align 8, !dbg !3135, !tbaa !834
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3135
  %43 = load ptr, ptr %42, align 8, !dbg !3135, !tbaa !834
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3135
  %45 = load ptr, ptr %44, align 8, !dbg !3135, !tbaa !834
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3135
  br label %147, !dbg !3136

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.11.88, i32 noundef 5) #36, !dbg !3137
  %49 = load ptr, ptr %4, align 8, !dbg !3137, !tbaa !834
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3137
  %51 = load ptr, ptr %50, align 8, !dbg !3137, !tbaa !834
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3137
  %53 = load ptr, ptr %52, align 8, !dbg !3137, !tbaa !834
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3137
  %55 = load ptr, ptr %54, align 8, !dbg !3137, !tbaa !834
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3137
  %57 = load ptr, ptr %56, align 8, !dbg !3137, !tbaa !834
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3137
  br label %147, !dbg !3138

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.12.89, i32 noundef 5) #36, !dbg !3139
  %61 = load ptr, ptr %4, align 8, !dbg !3139, !tbaa !834
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3139
  %63 = load ptr, ptr %62, align 8, !dbg !3139, !tbaa !834
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3139
  %65 = load ptr, ptr %64, align 8, !dbg !3139, !tbaa !834
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3139
  %67 = load ptr, ptr %66, align 8, !dbg !3139, !tbaa !834
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3139
  %69 = load ptr, ptr %68, align 8, !dbg !3139, !tbaa !834
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3139
  %71 = load ptr, ptr %70, align 8, !dbg !3139, !tbaa !834
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3139
  br label %147, !dbg !3140

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.13.90, i32 noundef 5) #36, !dbg !3141
  %75 = load ptr, ptr %4, align 8, !dbg !3141, !tbaa !834
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3141
  %77 = load ptr, ptr %76, align 8, !dbg !3141, !tbaa !834
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3141
  %79 = load ptr, ptr %78, align 8, !dbg !3141, !tbaa !834
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3141
  %81 = load ptr, ptr %80, align 8, !dbg !3141, !tbaa !834
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3141
  %83 = load ptr, ptr %82, align 8, !dbg !3141, !tbaa !834
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3141
  %85 = load ptr, ptr %84, align 8, !dbg !3141, !tbaa !834
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3141
  %87 = load ptr, ptr %86, align 8, !dbg !3141, !tbaa !834
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3141
  br label %147, !dbg !3142

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.14.91, i32 noundef 5) #36, !dbg !3143
  %91 = load ptr, ptr %4, align 8, !dbg !3143, !tbaa !834
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3143
  %93 = load ptr, ptr %92, align 8, !dbg !3143, !tbaa !834
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3143
  %95 = load ptr, ptr %94, align 8, !dbg !3143, !tbaa !834
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3143
  %97 = load ptr, ptr %96, align 8, !dbg !3143, !tbaa !834
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3143
  %99 = load ptr, ptr %98, align 8, !dbg !3143, !tbaa !834
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3143
  %101 = load ptr, ptr %100, align 8, !dbg !3143, !tbaa !834
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3143
  %103 = load ptr, ptr %102, align 8, !dbg !3143, !tbaa !834
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3143
  %105 = load ptr, ptr %104, align 8, !dbg !3143, !tbaa !834
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3143
  br label %147, !dbg !3144

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.15.92, i32 noundef 5) #36, !dbg !3145
  %109 = load ptr, ptr %4, align 8, !dbg !3145, !tbaa !834
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3145
  %111 = load ptr, ptr %110, align 8, !dbg !3145, !tbaa !834
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3145
  %113 = load ptr, ptr %112, align 8, !dbg !3145, !tbaa !834
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3145
  %115 = load ptr, ptr %114, align 8, !dbg !3145, !tbaa !834
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3145
  %117 = load ptr, ptr %116, align 8, !dbg !3145, !tbaa !834
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3145
  %119 = load ptr, ptr %118, align 8, !dbg !3145, !tbaa !834
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3145
  %121 = load ptr, ptr %120, align 8, !dbg !3145, !tbaa !834
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3145
  %123 = load ptr, ptr %122, align 8, !dbg !3145, !tbaa !834
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3145
  %125 = load ptr, ptr %124, align 8, !dbg !3145, !tbaa !834
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3145
  br label %147, !dbg !3146

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.16.93, i32 noundef 5) #36, !dbg !3147
  %129 = load ptr, ptr %4, align 8, !dbg !3147, !tbaa !834
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3147
  %131 = load ptr, ptr %130, align 8, !dbg !3147, !tbaa !834
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3147
  %133 = load ptr, ptr %132, align 8, !dbg !3147, !tbaa !834
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3147
  %135 = load ptr, ptr %134, align 8, !dbg !3147, !tbaa !834
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3147
  %137 = load ptr, ptr %136, align 8, !dbg !3147, !tbaa !834
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3147
  %139 = load ptr, ptr %138, align 8, !dbg !3147, !tbaa !834
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3147
  %141 = load ptr, ptr %140, align 8, !dbg !3147, !tbaa !834
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3147
  %143 = load ptr, ptr %142, align 8, !dbg !3147, !tbaa !834
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3147
  %145 = load ptr, ptr %144, align 8, !dbg !3147, !tbaa !834
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3147
  br label %147, !dbg !3148

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3149
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3154, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %1, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %2, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %3, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %4, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 0, metadata !3159, metadata !DIExpression()), !dbg !3160
  br label %6, !dbg !3161

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3163
  call void @llvm.dbg.value(metadata i64 %7, metadata !3159, metadata !DIExpression()), !dbg !3160
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3164
  %9 = load ptr, ptr %8, align 8, !dbg !3164, !tbaa !834
  %10 = icmp eq ptr %9, null, !dbg !3166
  %11 = add i64 %7, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %11, metadata !3159, metadata !DIExpression()), !dbg !3160
  br i1 %10, label %12, label %6, !dbg !3166, !llvm.loop !3168

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3170
  ret void, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3172 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3187, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %2, metadata !3189, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %3, metadata !3190, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3193, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 0, metadata !3192, metadata !DIExpression()), !dbg !3195
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3192, metadata !DIExpression()), !dbg !3195
  %10 = icmp sgt i32 %9, -1, !dbg !3199
  br i1 %10, label %18, label %11, !dbg !3199

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3199
  store i32 %12, ptr %7, align 8, !dbg !3199
  %13 = icmp ult i32 %9, -7, !dbg !3199
  br i1 %13, label %14, label %18, !dbg !3199

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3199
  %16 = sext i32 %9 to i64, !dbg !3199
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3199
  br label %22, !dbg !3199

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3199
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3199
  store ptr %21, ptr %4, align 8, !dbg !3199
  br label %22, !dbg !3199

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3199
  %25 = load ptr, ptr %24, align 8, !dbg !3199
  store ptr %25, ptr %6, align 8, !dbg !3202, !tbaa !834
  %26 = icmp eq ptr %25, null, !dbg !3203
  br i1 %26, label %197, label %27, !dbg !3204

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 1, metadata !3192, metadata !DIExpression()), !dbg !3195
  %28 = icmp sgt i32 %23, -1, !dbg !3199
  br i1 %28, label %36, label %29, !dbg !3199

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3199
  store i32 %30, ptr %7, align 8, !dbg !3199
  %31 = icmp ult i32 %23, -7, !dbg !3199
  br i1 %31, label %32, label %36, !dbg !3199

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3199
  %34 = sext i32 %23 to i64, !dbg !3199
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3199
  br label %40, !dbg !3199

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3199
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3199
  store ptr %39, ptr %4, align 8, !dbg !3199
  br label %40, !dbg !3199

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3199
  %43 = load ptr, ptr %42, align 8, !dbg !3199
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3205
  store ptr %43, ptr %44, align 8, !dbg !3202, !tbaa !834
  %45 = icmp eq ptr %43, null, !dbg !3203
  br i1 %45, label %197, label %46, !dbg !3204

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 2, metadata !3192, metadata !DIExpression()), !dbg !3195
  %47 = icmp sgt i32 %41, -1, !dbg !3199
  br i1 %47, label %55, label %48, !dbg !3199

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3199
  store i32 %49, ptr %7, align 8, !dbg !3199
  %50 = icmp ult i32 %41, -7, !dbg !3199
  br i1 %50, label %51, label %55, !dbg !3199

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3199
  %53 = sext i32 %41 to i64, !dbg !3199
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3199
  br label %59, !dbg !3199

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3199
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3199
  store ptr %58, ptr %4, align 8, !dbg !3199
  br label %59, !dbg !3199

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3199
  %62 = load ptr, ptr %61, align 8, !dbg !3199
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3205
  store ptr %62, ptr %63, align 8, !dbg !3202, !tbaa !834
  %64 = icmp eq ptr %62, null, !dbg !3203
  br i1 %64, label %197, label %65, !dbg !3204

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 3, metadata !3192, metadata !DIExpression()), !dbg !3195
  %66 = icmp sgt i32 %60, -1, !dbg !3199
  br i1 %66, label %74, label %67, !dbg !3199

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3199
  store i32 %68, ptr %7, align 8, !dbg !3199
  %69 = icmp ult i32 %60, -7, !dbg !3199
  br i1 %69, label %70, label %74, !dbg !3199

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3199
  %72 = sext i32 %60 to i64, !dbg !3199
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3199
  br label %78, !dbg !3199

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3199
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3199
  store ptr %77, ptr %4, align 8, !dbg !3199
  br label %78, !dbg !3199

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3199
  %81 = load ptr, ptr %80, align 8, !dbg !3199
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3205
  store ptr %81, ptr %82, align 8, !dbg !3202, !tbaa !834
  %83 = icmp eq ptr %81, null, !dbg !3203
  br i1 %83, label %197, label %84, !dbg !3204

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 4, metadata !3192, metadata !DIExpression()), !dbg !3195
  %85 = icmp sgt i32 %79, -1, !dbg !3199
  br i1 %85, label %93, label %86, !dbg !3199

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3199
  store i32 %87, ptr %7, align 8, !dbg !3199
  %88 = icmp ult i32 %79, -7, !dbg !3199
  br i1 %88, label %89, label %93, !dbg !3199

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3199
  %91 = sext i32 %79 to i64, !dbg !3199
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3199
  br label %97, !dbg !3199

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3199
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3199
  store ptr %96, ptr %4, align 8, !dbg !3199
  br label %97, !dbg !3199

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3199
  %100 = load ptr, ptr %99, align 8, !dbg !3199
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3205
  store ptr %100, ptr %101, align 8, !dbg !3202, !tbaa !834
  %102 = icmp eq ptr %100, null, !dbg !3203
  br i1 %102, label %197, label %103, !dbg !3204

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 5, metadata !3192, metadata !DIExpression()), !dbg !3195
  %104 = icmp sgt i32 %98, -1, !dbg !3199
  br i1 %104, label %112, label %105, !dbg !3199

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3199
  store i32 %106, ptr %7, align 8, !dbg !3199
  %107 = icmp ult i32 %98, -7, !dbg !3199
  br i1 %107, label %108, label %112, !dbg !3199

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3199
  %110 = sext i32 %98 to i64, !dbg !3199
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3199
  br label %116, !dbg !3199

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3199
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3199
  store ptr %115, ptr %4, align 8, !dbg !3199
  br label %116, !dbg !3199

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3199
  %119 = load ptr, ptr %118, align 8, !dbg !3199
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3205
  store ptr %119, ptr %120, align 8, !dbg !3202, !tbaa !834
  %121 = icmp eq ptr %119, null, !dbg !3203
  br i1 %121, label %197, label %122, !dbg !3204

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 6, metadata !3192, metadata !DIExpression()), !dbg !3195
  %123 = icmp sgt i32 %117, -1, !dbg !3199
  br i1 %123, label %131, label %124, !dbg !3199

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3199
  store i32 %125, ptr %7, align 8, !dbg !3199
  %126 = icmp ult i32 %117, -7, !dbg !3199
  br i1 %126, label %127, label %131, !dbg !3199

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3199
  %129 = sext i32 %117 to i64, !dbg !3199
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3199
  br label %135, !dbg !3199

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3199
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3199
  store ptr %134, ptr %4, align 8, !dbg !3199
  br label %135, !dbg !3199

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3199
  %138 = load ptr, ptr %137, align 8, !dbg !3199
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3205
  store ptr %138, ptr %139, align 8, !dbg !3202, !tbaa !834
  %140 = icmp eq ptr %138, null, !dbg !3203
  br i1 %140, label %197, label %141, !dbg !3204

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 7, metadata !3192, metadata !DIExpression()), !dbg !3195
  %142 = icmp sgt i32 %136, -1, !dbg !3199
  br i1 %142, label %150, label %143, !dbg !3199

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3199
  store i32 %144, ptr %7, align 8, !dbg !3199
  %145 = icmp ult i32 %136, -7, !dbg !3199
  br i1 %145, label %146, label %150, !dbg !3199

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3199
  %148 = sext i32 %136 to i64, !dbg !3199
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3199
  br label %154, !dbg !3199

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3199
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3199
  store ptr %153, ptr %4, align 8, !dbg !3199
  br label %154, !dbg !3199

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3199
  %157 = load ptr, ptr %156, align 8, !dbg !3199
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3205
  store ptr %157, ptr %158, align 8, !dbg !3202, !tbaa !834
  %159 = icmp eq ptr %157, null, !dbg !3203
  br i1 %159, label %197, label %160, !dbg !3204

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 8, metadata !3192, metadata !DIExpression()), !dbg !3195
  %161 = icmp sgt i32 %155, -1, !dbg !3199
  br i1 %161, label %169, label %162, !dbg !3199

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3199
  store i32 %163, ptr %7, align 8, !dbg !3199
  %164 = icmp ult i32 %155, -7, !dbg !3199
  br i1 %164, label %165, label %169, !dbg !3199

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3199
  %167 = sext i32 %155 to i64, !dbg !3199
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3199
  br label %173, !dbg !3199

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3199
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3199
  store ptr %172, ptr %4, align 8, !dbg !3199
  br label %173, !dbg !3199

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3199
  %176 = load ptr, ptr %175, align 8, !dbg !3199
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3205
  store ptr %176, ptr %177, align 8, !dbg !3202, !tbaa !834
  %178 = icmp eq ptr %176, null, !dbg !3203
  br i1 %178, label %197, label %179, !dbg !3204

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 9, metadata !3192, metadata !DIExpression()), !dbg !3195
  %180 = icmp sgt i32 %174, -1, !dbg !3199
  br i1 %180, label %188, label %181, !dbg !3199

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3199
  store i32 %182, ptr %7, align 8, !dbg !3199
  %183 = icmp ult i32 %174, -7, !dbg !3199
  br i1 %183, label %184, label %188, !dbg !3199

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3199
  %186 = sext i32 %174 to i64, !dbg !3199
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3199
  br label %191, !dbg !3199

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3199
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3199
  store ptr %190, ptr %4, align 8, !dbg !3199
  br label %191, !dbg !3199

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3199
  %193 = load ptr, ptr %192, align 8, !dbg !3199
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3205
  store ptr %193, ptr %194, align 8, !dbg !3202, !tbaa !834
  %195 = icmp eq ptr %193, null, !dbg !3203
  %196 = select i1 %195, i64 9, i64 10, !dbg !3204
  br label %197, !dbg !3204

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3206
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3207
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3208
  ret void, !dbg !3208
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3209 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %2, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3217, metadata !DIExpression()), !dbg !3220
  call void @llvm.va_start(ptr nonnull %5), !dbg !3221
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !3222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3222, !tbaa.struct !1466
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !3222
  call void @llvm.va_end(ptr nonnull %5), !dbg !3223
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !3224
  ret void, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3225 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3226, !tbaa !834
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.81, ptr noundef %1), !dbg !3226
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.17.98, i32 noundef 5) #36, !dbg !3227
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.99) #36, !dbg !3227
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.19.100, i32 noundef 5) #36, !dbg !3228
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.101, ptr noundef nonnull @.str.21.102) #36, !dbg !3228
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !3229
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3229
  ret void, !dbg !3230
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3231 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3236, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %2, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %2, metadata !3244, metadata !DIExpression()), !dbg !3245
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3253
  %5 = icmp eq ptr %4, null, !dbg !3255
  br i1 %5, label %6, label %7, !dbg !3257

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3258
  unreachable, !dbg !3258

7:                                                ; preds = %3
  ret ptr %4, !dbg !3259
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %2, metadata !3244, metadata !DIExpression()), !dbg !3260
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3261
  call void @llvm.dbg.value(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3262
  %5 = icmp eq ptr %4, null, !dbg !3264
  br i1 %5, label %6, label %7, !dbg !3265

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3266
  unreachable, !dbg !3266

7:                                                ; preds = %3
  ret ptr %4, !dbg !3267
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3268 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3273
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3275
  %3 = icmp eq ptr %2, null, !dbg !3277
  br i1 %3, label %4, label %5, !dbg !3278

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3279
  unreachable, !dbg !3279

5:                                                ; preds = %1
  ret ptr %2, !dbg !3280
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3281 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3282 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %0, metadata !3288, metadata !DIExpression()), !dbg !3292
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3295
  %3 = icmp eq ptr %2, null, !dbg !3297
  br i1 %3, label %4, label %5, !dbg !3298

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3299
  unreachable, !dbg !3299

5:                                                ; preds = %1
  ret ptr %2, !dbg !3300
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3301 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3307
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3310
  %3 = icmp eq ptr %2, null, !dbg !3312
  br i1 %3, label %4, label %5, !dbg !3313

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3314
  unreachable, !dbg !3314

5:                                                ; preds = %1
  ret ptr %2, !dbg !3315
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3316 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3328
  %3 = icmp eq i64 %1, 0, !dbg !3330
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3330
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3331
  call void @llvm.dbg.value(metadata ptr %5, metadata !3248, metadata !DIExpression()), !dbg !3332
  %6 = icmp eq ptr %5, null, !dbg !3334
  br i1 %6, label %7, label %8, !dbg !3335

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3336
  unreachable, !dbg !3336

8:                                                ; preds = %2
  ret ptr %5, !dbg !3337
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3338 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3339 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata ptr %0, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3352
  %3 = icmp eq i64 %1, 0, !dbg !3354
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3354
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3355
  call void @llvm.dbg.value(metadata ptr %5, metadata !3248, metadata !DIExpression()), !dbg !3356
  %6 = icmp eq ptr %5, null, !dbg !3358
  br i1 %6, label %7, label %8, !dbg !3359

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3360
  unreachable, !dbg !3360

8:                                                ; preds = %2
  ret ptr %5, !dbg !3361
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3362 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3370, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %2, metadata !3374, metadata !DIExpression()), !dbg !3375
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3377
  call void @llvm.dbg.value(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3378
  %5 = icmp eq ptr %4, null, !dbg !3380
  br i1 %5, label %6, label %7, !dbg !3381

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3382
  unreachable, !dbg !3382

7:                                                ; preds = %3
  ret ptr %4, !dbg !3383
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3384 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3388, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %1, metadata !3389, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr null, metadata !3240, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %0, metadata !3243, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3391
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3393
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3394
  %4 = icmp eq ptr %3, null, !dbg !3396
  br i1 %4, label %5, label %6, !dbg !3397

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3398
  unreachable, !dbg !3398

6:                                                ; preds = %2
  ret ptr %3, !dbg !3399
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3400 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %1, metadata !3405, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr null, metadata !3366, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %0, metadata !3367, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata ptr null, metadata !3370, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %0, metadata !3373, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3409
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3412
  %4 = icmp eq ptr %3, null, !dbg !3414
  br i1 %4, label %5, label %6, !dbg !3415

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3416
  unreachable, !dbg !3416

6:                                                ; preds = %2
  ret ptr %3, !dbg !3417
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3418 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %1, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %0, metadata !728, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %1, metadata !729, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 1, metadata !730, metadata !DIExpression()), !dbg !3425
  %3 = load i64, ptr %1, align 8, !dbg !3427, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %3, metadata !731, metadata !DIExpression()), !dbg !3425
  %4 = icmp eq ptr %0, null, !dbg !3428
  br i1 %4, label %5, label %8, !dbg !3430

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3431
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3434
  br label %15, !dbg !3434

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3435
  %10 = add nuw i64 %9, 1, !dbg !3435
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3435
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3435
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %13, metadata !731, metadata !DIExpression()), !dbg !3425
  br i1 %12, label %14, label %15, !dbg !3438

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3439
  unreachable, !dbg !3439

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3425
  call void @llvm.dbg.value(metadata i64 %16, metadata !731, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %16, metadata !3243, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 1, metadata !3244, metadata !DIExpression()), !dbg !3440
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %17, metadata !3248, metadata !DIExpression()), !dbg !3443
  %18 = icmp eq ptr %17, null, !dbg !3445
  br i1 %18, label %19, label %20, !dbg !3446

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3447
  unreachable, !dbg !3447

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !728, metadata !DIExpression()), !dbg !3425
  store i64 %16, ptr %1, align 8, !dbg !3448, !tbaa !2530
  ret ptr %17, !dbg !3449
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !728, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %1, metadata !729, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %2, metadata !730, metadata !DIExpression()), !dbg !3450
  %4 = load i64, ptr %1, align 8, !dbg !3451, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %4, metadata !731, metadata !DIExpression()), !dbg !3450
  %5 = icmp eq ptr %0, null, !dbg !3452
  br i1 %5, label %6, label %13, !dbg !3453

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3454
  br i1 %7, label %8, label %20, !dbg !3455

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %9, metadata !731, metadata !DIExpression()), !dbg !3450
  %10 = icmp ugt i64 %2, 128, !dbg !3458
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %12, metadata !731, metadata !DIExpression()), !dbg !3450
  br label %20, !dbg !3460

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3461
  %15 = add nuw i64 %14, 1, !dbg !3461
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3461
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3461
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %18, metadata !731, metadata !DIExpression()), !dbg !3450
  br i1 %17, label %19, label %20, !dbg !3462

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3463
  unreachable, !dbg !3463

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3450
  call void @llvm.dbg.value(metadata i64 %21, metadata !731, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %21, metadata !3243, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %2, metadata !3244, metadata !DIExpression()), !dbg !3464
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %22, metadata !3248, metadata !DIExpression()), !dbg !3467
  %23 = icmp eq ptr %22, null, !dbg !3469
  br i1 %23, label %24, label %25, !dbg !3470

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3471
  unreachable, !dbg !3471

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !728, metadata !DIExpression()), !dbg !3450
  store i64 %21, ptr %1, align 8, !dbg !3472, !tbaa !2530
  ret ptr %22, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !743, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %1, metadata !744, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %2, metadata !745, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %3, metadata !746, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %4, metadata !747, metadata !DIExpression()), !dbg !3474
  %6 = load i64, ptr %1, align 8, !dbg !3475, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %6, metadata !748, metadata !DIExpression()), !dbg !3474
  %7 = ashr i64 %6, 1, !dbg !3476
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3476
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3476
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %10, metadata !749, metadata !DIExpression()), !dbg !3474
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %11, metadata !749, metadata !DIExpression()), !dbg !3474
  %12 = icmp sgt i64 %3, -1, !dbg !3479
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3481
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %15, metadata !749, metadata !DIExpression()), !dbg !3474
  %16 = icmp slt i64 %4, 0, !dbg !3482
  br i1 %16, label %17, label %30, !dbg !3482

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3482
  br i1 %18, label %19, label %24, !dbg !3482

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3482
  %21 = udiv i64 9223372036854775807, %20, !dbg !3482
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3482
  br i1 %23, label %46, label %43, !dbg !3482

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3482
  br i1 %25, label %43, label %26, !dbg !3482

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3482
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3482
  %29 = icmp ult i64 %28, %15, !dbg !3482
  br i1 %29, label %46, label %43, !dbg !3482

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3482
  br i1 %31, label %43, label %32, !dbg !3482

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3482
  br i1 %33, label %34, label %40, !dbg !3482

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3482
  br i1 %35, label %43, label %36, !dbg !3482

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3482
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3482
  %39 = icmp ult i64 %38, %4, !dbg !3482
  br i1 %39, label %46, label %43, !dbg !3482

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3482
  br i1 %42, label %46, label %43, !dbg !3482

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !750, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3474
  %44 = mul i64 %15, %4, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %44, metadata !750, metadata !DIExpression()), !dbg !3474
  %45 = icmp slt i64 %44, 128, !dbg !3482
  br i1 %45, label %46, label %52, !dbg !3482

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !751, metadata !DIExpression()), !dbg !3474
  %48 = sdiv i64 %47, %4, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %48, metadata !749, metadata !DIExpression()), !dbg !3474
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %51, metadata !750, metadata !DIExpression()), !dbg !3474
  br label %52, !dbg !3487

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3474
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3474
  call void @llvm.dbg.value(metadata i64 %54, metadata !750, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %53, metadata !749, metadata !DIExpression()), !dbg !3474
  %55 = icmp eq ptr %0, null, !dbg !3488
  br i1 %55, label %56, label %57, !dbg !3490

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3491, !tbaa !2530
  br label %57, !dbg !3492

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3493
  %59 = icmp slt i64 %58, %2, !dbg !3495
  br i1 %59, label %60, label %97, !dbg !3496

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3497
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3497
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %63, metadata !749, metadata !DIExpression()), !dbg !3474
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3498
  br i1 %66, label %96, label %67, !dbg !3498

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3499

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3499
  br i1 %69, label %70, label %75, !dbg !3499

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3499
  %72 = udiv i64 9223372036854775807, %71, !dbg !3499
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3499
  br i1 %74, label %96, label %94, !dbg !3499

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3499
  br i1 %76, label %94, label %77, !dbg !3499

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3499
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3499
  %80 = icmp ult i64 %79, %63, !dbg !3499
  br i1 %80, label %96, label %94, !dbg !3499

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3499
  br i1 %82, label %94, label %83, !dbg !3499

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3499
  br i1 %84, label %85, label %91, !dbg !3499

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3499
  br i1 %86, label %94, label %87, !dbg !3499

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3499
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3499
  %90 = icmp ult i64 %89, %4, !dbg !3499
  br i1 %90, label %96, label %94, !dbg !3499

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3499
  br i1 %93, label %96, label %94, !dbg !3499

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !750, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3474
  %95 = mul i64 %63, %4, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %95, metadata !750, metadata !DIExpression()), !dbg !3474
  br label %97, !dbg !3500

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3501
  unreachable, !dbg !3501

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3474
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3474
  call void @llvm.dbg.value(metadata i64 %99, metadata !750, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %98, metadata !749, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %0, metadata !3320, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %99, metadata !3321, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %99, metadata !3327, metadata !DIExpression()), !dbg !3504
  %100 = icmp eq i64 %99, 0, !dbg !3506
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3506
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %102, metadata !3248, metadata !DIExpression()), !dbg !3508
  %103 = icmp eq ptr %102, null, !dbg !3510
  br i1 %103, label %104, label %105, !dbg !3511

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3512
  unreachable, !dbg !3512

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !743, metadata !DIExpression()), !dbg !3474
  store i64 %98, ptr %1, align 8, !dbg !3513, !tbaa !2530
  ret ptr %102, !dbg !3514
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3515 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 1, metadata !3522, metadata !DIExpression()), !dbg !3523
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3525
  call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3526
  %3 = icmp eq ptr %2, null, !dbg !3528
  br i1 %3, label %4, label %5, !dbg !3529

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3530
  unreachable, !dbg !3530

5:                                                ; preds = %1
  ret ptr %2, !dbg !3531
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3532 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3520 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3519, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3533
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3535
  %4 = icmp eq ptr %3, null, !dbg !3537
  br i1 %4, label %5, label %6, !dbg !3538

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3539
  unreachable, !dbg !3539

6:                                                ; preds = %2
  ret ptr %3, !dbg !3540
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3541 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 1, metadata !3548, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %0, metadata !3551, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 1, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %0, metadata !3551, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 1, metadata !3554, metadata !DIExpression()), !dbg !3555
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3557
  call void @llvm.dbg.value(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3558
  %3 = icmp eq ptr %2, null, !dbg !3560
  br i1 %3, label %4, label %5, !dbg !3561

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3562
  unreachable, !dbg !3562

5:                                                ; preds = %1
  ret ptr %2, !dbg !3563
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %0, metadata !3551, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %0, metadata !3551, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3565
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3567
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3568
  %4 = icmp eq ptr %3, null, !dbg !3570
  br i1 %4, label %5, label %6, !dbg !3571

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3572
  unreachable, !dbg !3572

6:                                                ; preds = %2
  ret ptr %3, !dbg !3573
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3581
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3583
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3584
  %4 = icmp eq ptr %3, null, !dbg !3586
  br i1 %4, label %5, label %6, !dbg !3587

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3588
  unreachable, !dbg !3588

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3599
  ret ptr %3, !dbg !3600
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3610
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3613
  %4 = icmp eq ptr %3, null, !dbg !3615
  br i1 %4, label %5, label %6, !dbg !3616

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3617
  unreachable, !dbg !3617

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3589, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3618
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3620
  ret ptr %3, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %1, metadata !3627, metadata !DIExpression()), !dbg !3629
  %3 = add nsw i64 %1, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %3, metadata !3286, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %3, metadata !3288, metadata !DIExpression()), !dbg !3633
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3635
  call void @llvm.dbg.value(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3636
  %5 = icmp eq ptr %4, null, !dbg !3638
  br i1 %5, label %6, label %7, !dbg !3639

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3640
  unreachable, !dbg !3640

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3628, metadata !DIExpression()), !dbg !3629
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3641
  store i8 0, ptr %8, align 1, !dbg !3642, !tbaa !903
  call void @llvm.dbg.value(metadata ptr %4, metadata !3589, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3643
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3645
  ret ptr %4, !dbg !3646
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3647 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3650
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3651
  %3 = add i64 %2, 1, !dbg !3652
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %3, metadata !3579, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %3, metadata !3272, metadata !DIExpression()), !dbg !3655
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3658
  %5 = icmp eq ptr %4, null, !dbg !3660
  br i1 %5, label %6, label %7, !dbg !3661

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3662
  unreachable, !dbg !3662

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3589, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %3, metadata !3596, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3665
  ret ptr %4, !dbg !3666
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3667 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3672, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %1, metadata !3669, metadata !DIExpression()), !dbg !3673
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.113, ptr noundef nonnull @.str.2.114, i32 noundef 5) #36, !dbg !3672
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef %2) #36, !dbg !3672
  %3 = icmp eq i32 %1, 0, !dbg !3672
  tail call void @llvm.assume(i1 %3), !dbg !3672
  tail call void @abort() #38, !dbg !3674
  unreachable, !dbg !3674
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3675 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 %1, metadata !3678, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %2, metadata !3679, metadata !DIExpression()), !dbg !3681
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #36, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %4, metadata !3680, metadata !DIExpression()), !dbg !3681
  %5 = icmp eq i32 %4, -1, !dbg !3683
  br i1 %5, label %6, label %11, !dbg !3685

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #39, !dbg !3686
  %8 = load i32, ptr %7, align 4, !dbg !3686, !tbaa !894
  %9 = icmp eq i32 %8, 12, !dbg !3687
  br i1 %9, label %10, label %11, !dbg !3688

10:                                               ; preds = %6
  tail call void @xalloc_die() #38, !dbg !3689
  unreachable, !dbg !3689

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3729, metadata !DIExpression()), !dbg !3734
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3735
  call void @llvm.dbg.value(metadata i1 poison, metadata !3730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !3736, metadata !DIExpression()), !dbg !3739
  %3 = load i32, ptr %0, align 8, !dbg !3741, !tbaa !1172
  %4 = and i32 %3, 32, !dbg !3742
  %5 = icmp eq i32 %4, 0, !dbg !3742
  call void @llvm.dbg.value(metadata i1 %5, metadata !3732, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3734
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3743
  %7 = icmp eq i32 %6, 0, !dbg !3744
  call void @llvm.dbg.value(metadata i1 %7, metadata !3733, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3734
  br i1 %5, label %8, label %18, !dbg !3745

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3747
  call void @llvm.dbg.value(metadata i1 %9, metadata !3730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3734
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3748
  %11 = xor i1 %7, true, !dbg !3748
  %12 = sext i1 %11 to i32, !dbg !3748
  br i1 %10, label %21, label %13, !dbg !3748

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3749
  %15 = load i32, ptr %14, align 4, !dbg !3749, !tbaa !894
  %16 = icmp ne i32 %15, 9, !dbg !3750
  %17 = sext i1 %16 to i32, !dbg !3751
  br label %21, !dbg !3751

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3752

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3754
  store i32 0, ptr %20, align 4, !dbg !3756, !tbaa !894
  br label %21, !dbg !3754

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3734
  ret i32 %22, !dbg !3757
}

; Function Attrs: nounwind
declare !dbg !3758 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3800, metadata !DIExpression()), !dbg !3803
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %2, metadata !3801, metadata !DIExpression()), !dbg !3803
  %3 = icmp slt i32 %2, 0, !dbg !3805
  br i1 %3, label %4, label %6, !dbg !3807

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3808
  br label %24, !dbg !3809

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3810
  %8 = icmp eq i32 %7, 0, !dbg !3810
  br i1 %8, label %13, label %9, !dbg !3812

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3813
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3814
  %12 = icmp eq i64 %11, -1, !dbg !3815
  br i1 %12, label %16, label %13, !dbg !3816

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3817
  %15 = icmp eq i32 %14, 0, !dbg !3817
  br i1 %15, label %16, label %18, !dbg !3818

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3800, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3802, metadata !DIExpression()), !dbg !3803
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %17, metadata !3802, metadata !DIExpression()), !dbg !3803
  br label %24, !dbg !3820

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3821
  %20 = load i32, ptr %19, align 4, !dbg !3821, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %20, metadata !3800, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3802, metadata !DIExpression()), !dbg !3803
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %21, metadata !3802, metadata !DIExpression()), !dbg !3803
  %22 = icmp eq i32 %20, 0, !dbg !3822
  br i1 %22, label %24, label %23, !dbg !3820

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3824, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !3802, metadata !DIExpression()), !dbg !3803
  br label %24, !dbg !3826

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3803
  ret i32 %25, !dbg !3827
}

; Function Attrs: nofree nounwind
declare !dbg !3828 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3829 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3830 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3831 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3834 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3873
  %2 = icmp eq ptr %0, null, !dbg !3874
  br i1 %2, label %6, label %3, !dbg !3876

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3877
  %5 = icmp eq i32 %4, 0, !dbg !3877
  br i1 %5, label %6, label %8, !dbg !3878

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3879
  br label %16, !dbg !3880

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3886
  %9 = load i32, ptr %0, align 8, !dbg !3888, !tbaa !1172
  %10 = and i32 %9, 256, !dbg !3890
  %11 = icmp eq i32 %10, 0, !dbg !3890
  br i1 %11, label %14, label %12, !dbg !3891

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3892
  br label %14, !dbg !3892

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3893
  br label %16, !dbg !3894

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3873
  ret i32 %17, !dbg !3895
}

; Function Attrs: nofree nounwind
declare !dbg !3896 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3897 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3936, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %2, metadata !3938, metadata !DIExpression()), !dbg !3942
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3943
  %5 = load ptr, ptr %4, align 8, !dbg !3943, !tbaa !3944
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3945
  %7 = load ptr, ptr %6, align 8, !dbg !3945, !tbaa !3946
  %8 = icmp eq ptr %5, %7, !dbg !3947
  br i1 %8, label %9, label %27, !dbg !3948

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3949
  %11 = load ptr, ptr %10, align 8, !dbg !3949, !tbaa !1134
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3950
  %13 = load ptr, ptr %12, align 8, !dbg !3950, !tbaa !3951
  %14 = icmp eq ptr %11, %13, !dbg !3952
  br i1 %14, label %15, label %27, !dbg !3953

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3954
  %17 = load ptr, ptr %16, align 8, !dbg !3954, !tbaa !3955
  %18 = icmp eq ptr %17, null, !dbg !3956
  br i1 %18, label %19, label %27, !dbg !3957

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3958
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %21, metadata !3939, metadata !DIExpression()), !dbg !3960
  %22 = icmp eq i64 %21, -1, !dbg !3961
  br i1 %22, label %29, label %23, !dbg !3963

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3964, !tbaa !1172
  %25 = and i32 %24, -17, !dbg !3964
  store i32 %25, ptr %0, align 8, !dbg !3964, !tbaa !1172
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3965
  store i64 %21, ptr %26, align 8, !dbg !3966, !tbaa !3967
  br label %29, !dbg !3968

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3969
  br label %29, !dbg !3970

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3942
  ret i32 %30, !dbg !3971
}

; Function Attrs: nofree nounwind
declare !dbg !3972 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3980, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %1, metadata !3981, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %2, metadata !3982, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %3, metadata !3983, metadata !DIExpression()), !dbg !3985
  %5 = icmp eq ptr %1, null, !dbg !3986
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3988
  %7 = select i1 %5, ptr @.str.128, ptr %1, !dbg !3988
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %8, metadata !3982, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %7, metadata !3981, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %6, metadata !3980, metadata !DIExpression()), !dbg !3985
  %9 = icmp eq ptr %3, null, !dbg !3989
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3991
  call void @llvm.dbg.value(metadata ptr %10, metadata !3983, metadata !DIExpression()), !dbg !3985
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %11, metadata !3984, metadata !DIExpression()), !dbg !3985
  %12 = icmp ult i64 %11, -3, !dbg !3993
  br i1 %12, label %13, label %17, !dbg !3995

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3996
  %15 = icmp eq i32 %14, 0, !dbg !3996
  br i1 %15, label %16, label %29, !dbg !3997

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3998, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata ptr %10, metadata !4005, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 0, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 8, metadata !4009, metadata !DIExpression()), !dbg !4010
  store i64 0, ptr %10, align 1, !dbg !4012
  br label %29, !dbg !4013

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4014
  br i1 %18, label %19, label %20, !dbg !4016

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4017
  unreachable, !dbg !4017

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4018

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !4020
  br i1 %23, label %29, label %24, !dbg !4021

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4022
  br i1 %25, label %29, label %26, !dbg !4025

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4026, !tbaa !903
  %28 = zext i8 %27 to i32, !dbg !4027
  store i32 %28, ptr %6, align 4, !dbg !4028, !tbaa !894
  br label %29, !dbg !4029

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3985
  ret i64 %30, !dbg !4030
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4031 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !769 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %2, metadata !780, metadata !DIExpression()), !dbg !4037
  %5 = icmp eq ptr %0, null, !dbg !4038
  br i1 %5, label %37, label %6, !dbg !4039

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #36, !dbg !4040
  call void @llvm.dbg.value(metadata i32 10, metadata !781, metadata !DIExpression()), !dbg !4041
  store i32 10, ptr %4, align 4, !dbg !4042, !tbaa !894
  call void @llvm.dbg.value(metadata ptr null, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 10, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr null, metadata !4051, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 40, metadata !4054, metadata !DIExpression()), !dbg !4055
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %7, metadata !784, metadata !DIExpression()), !dbg !4041
  %8 = icmp eq ptr %7, null, !dbg !4058
  br i1 %8, label %35, label %9, !dbg !4060

9:                                                ; preds = %6, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %6 ], !dbg !4061
  %11 = phi ptr [ %29, %32 ], [ %7, %6 ], !dbg !4062
  call void @llvm.dbg.value(metadata ptr %11, metadata !784, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i32 %10, metadata !785, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata ptr %4, metadata !781, metadata !DIExpression(DW_OP_deref)), !dbg !4041
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #36, !dbg !4064
  call void @llvm.dbg.value(metadata i32 %12, metadata !787, metadata !DIExpression()), !dbg !4063
  %13 = icmp slt i32 %12, 0, !dbg !4065
  %14 = load i32, ptr %4, align 4, !dbg !4063, !tbaa !894
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %14, metadata !781, metadata !DIExpression()), !dbg !4041
  br i1 %16, label %17, label %19, !dbg !4067

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i32 %18, metadata !781, metadata !DIExpression()), !dbg !4041
  store i32 %18, ptr %4, align 4, !dbg !4068, !tbaa !894
  br label %19, !dbg !4069

19:                                               ; preds = %9, %17
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4070
  call void @llvm.dbg.value(metadata i32 %20, metadata !781, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %11, metadata !4043, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %20, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4071
  %21 = icmp slt i32 %20, 0, !dbg !4073
  br i1 %21, label %22, label %24, !dbg !4075

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #39, !dbg !4076
  store i32 12, ptr %23, align 4, !dbg !4078, !tbaa !894
  call void @llvm.dbg.value(metadata ptr null, metadata !788, metadata !DIExpression()), !dbg !4063
  br label %31, !dbg !4079

24:                                               ; preds = %19
  %25 = zext i32 %20 to i64, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %25, metadata !4048, metadata !DIExpression()), !dbg !4071
  %26 = shl nuw nsw i64 %25, 2, !dbg !4080
  call void @llvm.dbg.value(metadata ptr %11, metadata !4051, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %26, metadata !4054, metadata !DIExpression()), !dbg !4081
  %27 = icmp eq i32 %20, 0, !dbg !4083
  %28 = select i1 %27, i64 1, i64 %26, !dbg !4083
  %29 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %28) #42, !dbg !4084
  call void @llvm.dbg.value(metadata ptr %29, metadata !788, metadata !DIExpression()), !dbg !4063
  %30 = icmp eq ptr %29, null, !dbg !4085
  br i1 %30, label %31, label %32, !dbg !4079

31:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #36, !dbg !4087
  br label %35, !dbg !4089

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %29, metadata !784, metadata !DIExpression()), !dbg !4041
  %33 = icmp sgt i32 %12, -1, !dbg !4090
  br i1 %33, label %34, label %9, !dbg !4092, !llvm.loop !4093

34:                                               ; preds = %32
  store ptr %29, ptr %2, align 8, !dbg !4096, !tbaa !834
  call void @llvm.dbg.value(metadata i32 %20, metadata !781, metadata !DIExpression()), !dbg !4041
  br label %35, !dbg !4098

35:                                               ; preds = %31, %34, %6
  %36 = phi i32 [ -1, %6 ], [ -1, %31 ], [ %20, %34 ], !dbg !4041
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #36, !dbg !4099
  br label %98

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #36, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %38, metadata !789, metadata !DIExpression()), !dbg !4037
  %39 = icmp slt i32 %38, 0, !dbg !4101
  br i1 %39, label %40, label %50, !dbg !4102

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #39, !dbg !4103
  %42 = load i32, ptr %41, align 4, !dbg !4103, !tbaa !894
  %43 = icmp eq i32 %42, 38, !dbg !4104
  br i1 %43, label %44, label %98, !dbg !4105

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !4043, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 1, metadata !4048, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata ptr null, metadata !4051, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 4, metadata !4054, metadata !DIExpression()), !dbg !4108
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %45, metadata !790, metadata !DIExpression()), !dbg !4111
  %46 = icmp eq ptr %45, null, !dbg !4112
  br i1 %46, label %98, label %47, !dbg !4114

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !4115, !tbaa !834
  store i32 %1, ptr %45, align 4, !dbg !4117, !tbaa !894
  %48 = icmp ne i32 %1, -1, !dbg !4118
  %49 = zext i1 %48 to i32, !dbg !4118
  br label %98

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !4119
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !4121
  %54 = zext i1 %53 to i32, !dbg !4121
  %55 = add nuw nsw i32 %38, %54, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %55, metadata !789, metadata !DIExpression()), !dbg !4037
  %56 = zext i32 %55 to i64, !dbg !4122
  call void @llvm.dbg.value(metadata ptr null, metadata !4043, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %56, metadata !4048, metadata !DIExpression()), !dbg !4123
  %57 = shl nuw nsw i64 %56, 2, !dbg !4125
  call void @llvm.dbg.value(metadata ptr null, metadata !4051, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %57, metadata !4054, metadata !DIExpression()), !dbg !4126
  %58 = tail call ptr @malloc(i64 %57), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %58, metadata !795, metadata !DIExpression()), !dbg !4037
  %59 = icmp eq ptr %58, null, !dbg !4129
  br i1 %59, label %98, label %60, !dbg !4131

60:                                               ; preds = %50
  %61 = sext i1 %52 to i32, !dbg !4132
  %62 = add nsw i32 %55, %61, !dbg !4133
  %63 = zext i1 %52 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !4134
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #36, !dbg !4135
  call void @llvm.dbg.value(metadata i32 %65, metadata !796, metadata !DIExpression()), !dbg !4037
  %66 = icmp slt i32 %65, 0, !dbg !4136
  br i1 %66, label %67, label %68, !dbg !4138

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #36, !dbg !4139
  br label %98, !dbg !4141

68:                                               ; preds = %60
  br i1 %52, label %69, label %71, !dbg !4142

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !4144, !tbaa !894
  %70 = add nuw nsw i32 %65, 1, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %70, metadata !796, metadata !DIExpression()), !dbg !4037
  br label %71, !dbg !4147

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !4037
  call void @llvm.dbg.value(metadata i32 %72, metadata !796, metadata !DIExpression()), !dbg !4037
  store ptr %58, ptr %2, align 8, !dbg !4148, !tbaa !834
  %73 = icmp ugt i32 %72, 1, !dbg !4149
  br i1 %73, label %74, label %98, !dbg !4150

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !4151, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %75, metadata !797, metadata !DIExpression()), !dbg !4152
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !4153
  call void @llvm.dbg.value(metadata ptr %77, metadata !800, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %58, metadata !801, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %72, metadata !796, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %58, metadata !795, metadata !DIExpression()), !dbg !4037
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %78, metadata !801, metadata !DIExpression()), !dbg !4154
  br label %79, !dbg !4156

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !796, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %83, metadata !795, metadata !DIExpression()), !dbg !4037
  %84 = load i32, ptr %81, align 4, !dbg !4157, !tbaa !894
  %85 = icmp eq i32 %84, %75, !dbg !4161
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !4162
  br i1 %87, label %88, label %90, !dbg !4162

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !4163
  call void @llvm.dbg.value(metadata i32 %89, metadata !796, metadata !DIExpression()), !dbg !4037
  br label %92, !dbg !4164

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !4165
  call void @llvm.dbg.value(metadata ptr %91, metadata !795, metadata !DIExpression()), !dbg !4037
  store i32 %84, ptr %91, align 4, !dbg !4166, !tbaa !894
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !4037
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !4037
  call void @llvm.dbg.value(metadata i32 %95, metadata !796, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %94, metadata !795, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %81, metadata !801, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4154
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %96, metadata !801, metadata !DIExpression()), !dbg !4154
  %97 = icmp ult ptr %96, %77, !dbg !4167
  br i1 %97, label %79, label %98, !dbg !4156, !llvm.loop !4168

98:                                               ; preds = %92, %44, %40, %47, %67, %71, %50, %35
  %99 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %67 ], [ %72, %71 ], [ -1, %40 ], [ -1, %44 ], [ %95, %92 ], !dbg !4037
  ret i32 %99, !dbg !4170
}

declare !dbg !4171 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4175 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4177, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %2, metadata !4179, metadata !DIExpression()), !dbg !4181
  %4 = icmp eq i64 %2, 0, !dbg !4182
  br i1 %4, label %8, label %5, !dbg !4182

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4182
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4182
  br i1 %7, label %13, label %8, !dbg !4182

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4180, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4181
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4180, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4181
  %9 = mul i64 %2, %1, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %9, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata ptr %0, metadata !4184, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 %9, metadata !4187, metadata !DIExpression()), !dbg !4188
  %10 = icmp eq i64 %9, 0, !dbg !4190
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4190
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !4191
  br label %15, !dbg !4192

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4180, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4181
  %14 = tail call ptr @__errno_location() #39, !dbg !4193
  store i32 12, ptr %14, align 4, !dbg !4195, !tbaa !894
  br label %15, !dbg !4196

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4181
  ret ptr %16, !dbg !4197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4198 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4202, metadata !DIExpression()), !dbg !4207
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4208
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4203, metadata !DIExpression()), !dbg !4209
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4210
  %4 = icmp eq i32 %3, 0, !dbg !4210
  br i1 %4, label %5, label %12, !dbg !4212

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr @.str.135, metadata !4216, metadata !DIExpression()), !dbg !4217
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.135, i64 2), !dbg !4220
  %7 = icmp eq i32 %6, 0, !dbg !4221
  br i1 %7, label %11, label %8, !dbg !4222

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !4216, metadata !DIExpression()), !dbg !4223
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !4225
  %10 = icmp eq i32 %9, 0, !dbg !4226
  br i1 %10, label %11, label %12, !dbg !4227

11:                                               ; preds = %8, %5
  br label %12, !dbg !4228

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4207
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4229
  ret i1 %13, !dbg !4229
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata ptr %1, metadata !4235, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %2, metadata !4236, metadata !DIExpression()), !dbg !4237
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4238
  ret i32 %4, !dbg !4239
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4244, metadata !DIExpression()), !dbg !4245
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4246
  ret ptr %2, !dbg !4247
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4250, metadata !DIExpression()), !dbg !4252
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4253
  call void @llvm.dbg.value(metadata ptr %2, metadata !4251, metadata !DIExpression()), !dbg !4252
  ret ptr %2, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4257, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata ptr %1, metadata !4258, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %2, metadata !4259, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i32 %0, metadata !4250, metadata !DIExpression()), !dbg !4265
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %4, metadata !4251, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4264
  %5 = icmp eq ptr %4, null, !dbg !4268
  br i1 %5, label %6, label %9, !dbg !4269

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4270
  br i1 %7, label %19, label %8, !dbg !4273

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4274, !tbaa !903
  br label %19, !dbg !4275

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %10, metadata !4261, metadata !DIExpression()), !dbg !4277
  %11 = icmp ult i64 %10, %2, !dbg !4278
  br i1 %11, label %12, label %14, !dbg !4280

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %1, metadata !4283, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr %4, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %13, metadata !4287, metadata !DIExpression()), !dbg !4288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4290
  br label %19, !dbg !4291

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4292
  br i1 %15, label %19, label %16, !dbg !4295

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4296
  call void @llvm.dbg.value(metadata ptr %1, metadata !4283, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %4, metadata !4286, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %17, metadata !4287, metadata !DIExpression()), !dbg !4298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4300
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4301
  store i8 0, ptr %18, align 1, !dbg !4302, !tbaa !903
  br label %19, !dbg !4303

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4304
  ret i32 %20, !dbg !4305
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!49, !702, !348, !352, !367, !668, !708, !710, !424, !438, !489, !712, !660, !719, !753, !755, !757, !759, !761, !763, !684, !765, !806, !809, !811, !813}
!llvm.ident = !{!815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815, !815}
!llvm.module.flags = !{!816, !817, !818, !819, !820, !821, !822}

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
!49 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !73, globals: !83, splitDebugInlining: false, nameTableKind: None)
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
!366 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !367, file: !368, line: 66, type: !419, isLocal: false, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !369, globals: !370, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!369 = !{!75, !82}
!370 = !{!371, !373, !398, !400, !402, !404, !365, !406, !408, !410, !412, !417}
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !368, line: 272, type: !203, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "old_file_name", scope: !375, file: !368, line: 304, type: !80, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "verror_at_line", scope: !368, file: !368, line: 298, type: !376, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !391)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !53, !53, !80, !59, !80, !378}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !379, line: 52, baseType: !380)
!379 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !381, line: 14, baseType: !382)
!381 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !383, baseType: !384)
!383 = !DIFile(filename: "lib/error.c", directory: "/src")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !385)
!385 = !{!386, !387, !388, !389, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !384, file: !383, baseType: !75, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !384, file: !383, baseType: !75, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !384, file: !383, baseType: !75, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !384, file: !383, baseType: !53, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !384, file: !383, baseType: !53, size: 32, offset: 224)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DILocalVariable(name: "status", arg: 1, scope: !375, file: !368, line: 298, type: !53)
!393 = !DILocalVariable(name: "errnum", arg: 2, scope: !375, file: !368, line: 298, type: !53)
!394 = !DILocalVariable(name: "file_name", arg: 3, scope: !375, file: !368, line: 298, type: !80)
!395 = !DILocalVariable(name: "line_number", arg: 4, scope: !375, file: !368, line: 298, type: !59)
!396 = !DILocalVariable(name: "message", arg: 5, scope: !375, file: !368, line: 298, type: !80)
!397 = !DILocalVariable(name: "args", arg: 6, scope: !375, file: !368, line: 298, type: !378)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "old_line_number", scope: !375, file: !368, line: 305, type: !59, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !368, line: 338, type: !210, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !239, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !368, line: 346, type: !217, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "error_message_count", scope: !367, file: !368, line: 69, type: !59, isLocal: false, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !367, file: !368, line: 295, type: !53, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !19, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !368, line: 208, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 21)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !368, line: 214, type: !203, isLocal: true, isDefinition: true)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null}
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "program_name", scope: !424, file: !425, line: 31, type: !80, isLocal: false, isDefinition: true)
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !425, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !426, globals: !427, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!426 = !{!74}
!427 = !{!422, !428, !430}
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !425, line: 46, type: !239, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !425, line: 49, type: !210, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "utf07FF", scope: !434, file: !435, line: 46, type: !462, isLocal: true, isDefinition: true)
!434 = distinct !DISubprogram(name: "proper_name_lite", scope: !435, file: !435, line: 38, type: !436, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !440)
!435 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!436 = !DISubroutineType(types: !437)
!437 = !{!80, !80, !80}
!438 = distinct !DICompileUnit(language: DW_LANG_C11, file: !435, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !439, splitDebugInlining: false, nameTableKind: None)
!439 = !{!432}
!440 = !{!441, !442, !443, !444, !449}
!441 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !434, file: !435, line: 38, type: !80)
!442 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !434, file: !435, line: 38, type: !80)
!443 = !DILocalVariable(name: "translation", scope: !434, file: !435, line: 40, type: !80)
!444 = !DILocalVariable(name: "w", scope: !434, file: !435, line: 47, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !446, line: 37, baseType: !447)
!446 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !173, line: 57, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !59)
!449 = !DILocalVariable(name: "mbs", scope: !434, file: !435, line: 48, type: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !451, line: 6, baseType: !452)
!451 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !453, line: 21, baseType: !454)
!453 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 13, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !454, file: !453, line: 15, baseType: !53, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !454, file: !453, line: 20, baseType: !458, size: 32, offset: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !453, line: 16, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !458, file: !453, line: 18, baseType: !59, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !458, file: !453, line: 19, baseType: !210, size: 32)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !218)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !465, line: 78, type: !239, isLocal: true, isDefinition: true)
!465 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !465, line: 79, type: !118, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !465, line: 80, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 13)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !465, line: 81, type: !470, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !465, line: 82, type: !101, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !465, line: 83, type: !217, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !465, line: 84, type: !239, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !465, line: 85, type: !19, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !465, line: 86, type: !19, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !465, line: 87, type: !239, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !489, file: !465, line: 76, type: !575, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !465, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !490, retainedTypes: !510, globals: !511, splitDebugInlining: false, nameTableKind: None)
!490 = !{!491, !505, !57}
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !492, line: 42, baseType: !59, size: 32, elements: !493)
!492 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!494 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!495 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!496 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!497 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!498 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!499 = !DIEnumerator(name: "c_quoting_style", value: 5)
!500 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!501 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!502 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!503 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!504 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !492, line: 254, baseType: !59, size: 32, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!508 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!509 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!510 = !{!53, !76, !77}
!511 = !{!463, !466, !468, !473, !475, !477, !479, !481, !483, !485, !487, !512, !516, !526, !528, !533, !535, !537, !539, !541, !564, !571, !573}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !489, file: !465, line: 92, type: !514, isLocal: false, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 320, elements: !40)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !489, file: !465, line: 1040, type: !518, isLocal: false, isDefinition: true)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !465, line: 56, size: 448, elements: !519)
!519 = !{!520, !521, !522, !524, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !518, file: !465, line: 59, baseType: !491, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !465, line: 62, baseType: !53, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !518, file: !465, line: 66, baseType: !523, size: 256, offset: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !240)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !518, file: !465, line: 69, baseType: !80, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !518, file: !465, line: 72, baseType: !80, size: 64, offset: 384)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !489, file: !465, line: 107, type: !518, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "slot0", scope: !489, file: !465, line: 831, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 256)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !465, line: 321, type: !217, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !465, line: 357, type: !217, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !465, line: 358, type: !217, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !465, line: 199, type: !19, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quote", scope: !543, file: !465, line: 228, type: !562, isLocal: true, isDefinition: true)
!543 = distinct !DISubprogram(name: "gettext_quote", scope: !465, file: !465, line: 197, type: !544, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!80, !80, !491}
!546 = !{!547, !548, !549, !550, !551}
!547 = !DILocalVariable(name: "msgid", arg: 1, scope: !543, file: !465, line: 197, type: !80)
!548 = !DILocalVariable(name: "s", arg: 2, scope: !543, file: !465, line: 197, type: !491)
!549 = !DILocalVariable(name: "translation", scope: !543, file: !465, line: 199, type: !80)
!550 = !DILocalVariable(name: "w", scope: !543, file: !465, line: 229, type: !445)
!551 = !DILocalVariable(name: "mbs", scope: !543, file: !465, line: 230, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !451, line: 6, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !453, line: 21, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 13, size: 64, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !554, file: !453, line: 15, baseType: !53, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !554, file: !453, line: 20, baseType: !558, size: 32, offset: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !453, line: 16, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !558, file: !453, line: 18, baseType: !59, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !558, file: !453, line: 19, baseType: !210, size: 32)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !563)
!563 = !{!219, !212}
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "slotvec", scope: !489, file: !465, line: 834, type: !566, isLocal: true, isDefinition: true)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !465, line: 823, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !465, line: 825, baseType: !77, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !567, file: !465, line: 826, baseType: !74, size: 64, offset: 64)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "nslots", scope: !489, file: !465, line: 832, type: !53, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "slotvec0", scope: !489, file: !465, line: 833, type: !567, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 704, elements: !577)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!577 = !{!578}
!578 = !DISubrange(count: 11)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !581, line: 67, type: !304, isLocal: true, isDefinition: true)
!581 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !581, line: 69, type: !19, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !19, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !210, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !581, line: 85, type: !217, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 171)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !581, line: 88, type: !336, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !581, line: 105, type: !91, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !581, line: 109, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 23)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !581, line: 113, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 28)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !581, line: 120, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 32)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !581, line: 127, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 36)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !581, line: 134, type: !258, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !581, line: 142, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 44)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !581, line: 150, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 48)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !581, line: 159, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 52)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !581, line: 170, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 60)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !101, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !581, line: 248, type: !280, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !101, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !86, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !581, line: 254, type: !258, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !3, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !581, line: 259, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 29)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !660, file: !661, line: 26, type: !663, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!662 = !{!658}
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 47)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "exit_failure", scope: !668, file: !669, line: 24, type: !671, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!670 = !{!666}
!671 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !226, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !19, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !674, line: 34, type: !113, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 108, type: !34, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "internal_state", scope: !684, file: !681, line: 97, type: !687, isLocal: true, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !{!75, !77, !82}
!686 = !{!679, !682}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !451, line: 6, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !453, line: 21, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 13, size: 64, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !689, file: !453, line: 15, baseType: !53, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !689, file: !453, line: 20, baseType: !693, size: 32, offset: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !453, line: 16, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !693, file: !453, line: 18, baseType: !59, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !693, file: !453, line: 19, baseType: !210, size: 32)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !217, isLocal: true, isDefinition: true)
!699 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !699, line: 35, type: !118, isLocal: true, isDefinition: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !325, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !703, globals: !707, splitDebugInlining: false, nameTableKind: None)
!703 = !{!75, !704, !82}
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !705, line: 102, baseType: !706)
!705 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !173, line: 73, baseType: !79)
!707 = !{!323, !329, !334, !339, !341}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !581, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !717, globals: !718, splitDebugInlining: false, nameTableKind: None)
!713 = !{!714}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 40, baseType: !59, size: 32, elements: !715)
!715 = !{!716}
!716 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!717 = !{!75}
!718 = !{!579, !582, !584, !586, !588, !590, !595, !597, !599, !604, !609, !614, !619, !621, !626, !631, !636, !641, !643, !645, !647, !649, !651, !653}
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !721, retainedTypes: !752, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!721 = !{!722, !734}
!722 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !723, file: !720, line: 188, baseType: !59, size: 32, elements: !732)
!723 = distinct !DISubprogram(name: "x2nrealloc", scope: !720, file: !720, line: 176, type: !724, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !727)
!724 = !DISubroutineType(types: !725)
!725 = !{!75, !75, !726, !77}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(name: "p", arg: 1, scope: !723, file: !720, line: 176, type: !75)
!729 = !DILocalVariable(name: "pn", arg: 2, scope: !723, file: !720, line: 176, type: !726)
!730 = !DILocalVariable(name: "s", arg: 3, scope: !723, file: !720, line: 176, type: !77)
!731 = !DILocalVariable(name: "n", scope: !723, file: !720, line: 178, type: !77)
!732 = !{!733}
!733 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!734 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !735, file: !720, line: 228, baseType: !59, size: 32, elements: !732)
!735 = distinct !DISubprogram(name: "xpalloc", scope: !720, file: !720, line: 223, type: !736, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !742)
!736 = !DISubroutineType(types: !737)
!737 = !{!75, !75, !738, !739, !741, !739}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !740, line: 130, baseType: !741)
!740 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !78, line: 35, baseType: !174)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751}
!743 = !DILocalVariable(name: "pa", arg: 1, scope: !735, file: !720, line: 223, type: !75)
!744 = !DILocalVariable(name: "pn", arg: 2, scope: !735, file: !720, line: 223, type: !738)
!745 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !735, file: !720, line: 223, type: !739)
!746 = !DILocalVariable(name: "n_max", arg: 4, scope: !735, file: !720, line: 223, type: !741)
!747 = !DILocalVariable(name: "s", arg: 5, scope: !735, file: !720, line: 223, type: !739)
!748 = !DILocalVariable(name: "n0", scope: !735, file: !720, line: 230, type: !739)
!749 = !DILocalVariable(name: "n", scope: !735, file: !720, line: 237, type: !739)
!750 = !DILocalVariable(name: "nbytes", scope: !735, file: !720, line: 248, type: !739)
!751 = !DILocalVariable(name: "adjusted_nbytes", scope: !735, file: !720, line: 252, type: !739)
!752 = !{!74, !75, !133, !174, !79}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !754, splitDebugInlining: false, nameTableKind: None)
!754 = !{!672, !675, !677}
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !767, retainedTypes: !805, splitDebugInlining: false, nameTableKind: None)
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
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!808 = !{!133, !79, !75}
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !810, splitDebugInlining: false, nameTableKind: None)
!810 = !{!697, !700}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!815 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!816 = !{i32 7, !"Dwarf Version", i32 5}
!817 = !{i32 2, !"Debug Info Version", i32 3}
!818 = !{i32 1, !"wchar_size", i32 4}
!819 = !{i32 8, !"PIC Level", i32 2}
!820 = !{i32 7, !"PIE Level", i32 2}
!821 = !{i32 7, !"uwtable", i32 2}
!822 = !{i32 7, !"frame-pointer", i32 1}
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
!862 = !DILocation(line: 857, column: 3, scope: !844, inlinedAt: !861)
!863 = !DILocation(line: 861, column: 29, scope: !844, inlinedAt: !861)
!864 = !DILocation(line: 862, column: 7, scope: !865, inlinedAt: !861)
!865 = distinct !DILexicalBlock(scope: !844, file: !52, line: 862, column: 7)
!866 = !DILocation(line: 862, column: 19, scope: !865, inlinedAt: !861)
!867 = !DILocation(line: 862, column: 22, scope: !865, inlinedAt: !861)
!868 = !DILocation(line: 862, column: 7, scope: !844, inlinedAt: !861)
!869 = !DILocation(line: 868, column: 7, scope: !870, inlinedAt: !861)
!870 = distinct !DILexicalBlock(scope: !865, file: !52, line: 863, column: 5)
!871 = !DILocation(line: 870, column: 5, scope: !870, inlinedAt: !861)
!872 = !DILocation(line: 875, column: 3, scope: !844, inlinedAt: !861)
!873 = !DILocation(line: 877, column: 3, scope: !844, inlinedAt: !861)
!874 = !DILocation(line: 63, column: 3, scope: !823)
!875 = !DISubprogram(name: "dcgettext", scope: !876, file: !876, line: 51, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!876 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!877 = !DISubroutineType(types: !878)
!878 = !{!74, !80, !80, !53}
!879 = !{}
!880 = !DISubprogram(name: "__fprintf_chk", scope: !881, file: !881, line: 93, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!881 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!882 = !DISubroutineType(types: !883)
!883 = !{!53, !884, !53, !885, null}
!884 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!885 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!886 = !DISubprogram(name: "__printf_chk", scope: !881, file: !881, line: 95, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!887 = !DISubroutineType(types: !888)
!888 = !{!53, !53, !885, null}
!889 = !DISubprogram(name: "fputs_unlocked", scope: !379, file: !379, line: 691, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
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
!1006 = !DISubprogram(name: "setlocale", scope: !1007, file: !1007, line: 122, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1007 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!74, !53, !80}
!1010 = !DISubprogram(name: "strncmp", scope: !1011, file: !1011, line: 159, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1011 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!53, !80, !80, !77}
!1014 = !DISubprogram(name: "exit", scope: !1015, file: !1015, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1015 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1016 = !DISubprogram(name: "getenv", scope: !1015, file: !1015, line: 641, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!74, !80}
!1019 = !DISubprogram(name: "strcmp", scope: !1011, file: !1011, line: 156, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!53, !80, !80}
!1022 = !DISubprogram(name: "strspn", scope: !1011, file: !1011, line: 297, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!79, !80, !80}
!1025 = !DISubprogram(name: "strchr", scope: !1011, file: !1011, line: 246, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!74, !80, !53}
!1028 = !DISubprogram(name: "__ctype_b_loc", scope: !58, file: !58, line: 79, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1034 = !DISubprogram(name: "strcspn", scope: !1011, file: !1011, line: 293, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1035 = !DISubprogram(name: "fwrite_unlocked", scope: !379, file: !379, line: 704, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
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
!1175 = distinct !DISubprogram(name: "write_error", scope: !52, file: !52, line: 946, type: !420, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1176)
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
!1190 = !DISubprogram(name: "bindtextdomain", scope: !876, file: !876, line: 86, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!74, !80, !80}
!1193 = !DISubprogram(name: "textdomain", scope: !876, file: !876, line: 82, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1194 = !DISubprogram(name: "atexit", scope: !1015, file: !1015, line: 602, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!53, !419}
!1197 = !DISubprogram(name: "getopt_long", scope: !316, file: !316, line: 66, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!53, !53, !1200, !80, !1202, !321}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1203 = !DISubprogram(name: "__errno_location", scope: !1204, file: !1204, line: 37, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1204 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!321}
!1207 = !DISubprogram(name: "getuid", scope: !1208, file: !1208, line: 697, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1208 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1054}
!1211 = !DISubprogram(name: "getegid", scope: !1208, file: !1208, line: 706, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!774}
!1214 = !DISubprogram(name: "getgid", scope: !1208, file: !1208, line: 703, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1215 = !DISubprogram(name: "__overflow", scope: !379, file: !379, line: 886, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!53, !146, !53}
!1218 = !DISubprogram(name: "getpwnam", scope: !1066, file: !1066, line: 116, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1064, !80}
!1221 = !DISubprogram(name: "fflush_unlocked", scope: !379, file: !379, line: 239, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1222 = !DISubprogram(name: "clearerr_unlocked", scope: !379, file: !379, line: 794, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !146}
!1225 = distinct !DISubprogram(name: "print_group_list", scope: !325, file: !325, line: 35, type: !1226, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !1228)
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
!1252 = !DILocation(line: 0, scope: !1225)
!1253 = !DILocation(line: 42, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 42, column: 7)
!1255 = !DILocation(line: 42, column: 7, scope: !1225)
!1256 = !DILocation(line: 44, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !325, line: 43, column: 5)
!1258 = !DILocation(line: 45, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !325, line: 45, column: 11)
!1260 = !DILocation(line: 45, column: 11, scope: !1257)
!1261 = !DILocalVariable(name: "gid", arg: 1, scope: !1262, file: !325, line: 91, type: !772)
!1262 = distinct !DISubprogram(name: "print_group", scope: !325, file: !325, line: 91, type: !1263, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!133, !772, !133}
!1265 = !{!1261, !1266, !1267, !1276, !1277}
!1266 = !DILocalVariable(name: "use_name", arg: 2, scope: !1262, file: !325, line: 91, type: !133)
!1267 = !DILocalVariable(name: "grp", scope: !1262, file: !325, line: 93, type: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1270, line: 42, size: 256, elements: !1271)
!1270 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1269, file: !1270, line: 44, baseType: !74, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1269, file: !1270, line: 45, baseType: !74, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1269, file: !1270, line: 46, baseType: !774, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1269, file: !1270, line: 47, baseType: !1044, size: 64, offset: 192)
!1276 = !DILocalVariable(name: "ok", scope: !1262, file: !325, line: 94, type: !133)
!1277 = !DILocalVariable(name: "g", scope: !1278, file: !325, line: 108, type: !704)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !325, line: 107, column: 13)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !325, line: 101, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !325, line: 100, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !325, line: 99, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !325, line: 97, column: 5)
!1283 = distinct !DILexicalBlock(scope: !1262, file: !325, line: 96, column: 7)
!1284 = !DILocation(line: 0, scope: !1262, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 49, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 49, column: 7)
!1287 = !DILocation(line: 96, column: 7, scope: !1262, inlinedAt: !1285)
!1288 = !DILocation(line: 118, column: 5, scope: !1289, inlinedAt: !1285)
!1289 = distinct !DILexicalBlock(scope: !1262, file: !325, line: 115, column: 7)
!1290 = !DILocation(line: 98, column: 13, scope: !1282, inlinedAt: !1285)
!1291 = !DILocation(line: 99, column: 15, scope: !1281, inlinedAt: !1285)
!1292 = !DILocation(line: 99, column: 11, scope: !1282, inlinedAt: !1285)
!1293 = !DILocation(line: 108, column: 29, scope: !1278, inlinedAt: !1285)
!1294 = !DILocation(line: 0, scope: !1278, inlinedAt: !1285)
!1295 = !DILocation(line: 109, column: 15, scope: !1278, inlinedAt: !1285)
!1296 = !DILocation(line: 112, column: 9, scope: !1280, inlinedAt: !1285)
!1297 = !DILocation(line: 116, column: 5, scope: !1289, inlinedAt: !1285)
!1298 = !{!1299, !835, i64 0}
!1299 = !{!"group", !835, i64 0, !835, i64 8, !895, i64 16, !835, i64 24}
!1300 = !DILocation(line: 49, column: 7, scope: !1225)
!1301 = !DILocation(line: 52, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1225, file: !325, line: 52, column: 7)
!1303 = !DILocation(line: 52, column: 7, scope: !1225)
!1304 = !DILocalVariable(name: "__c", arg: 1, scope: !1305, file: !1127, line: 108, type: !53)
!1305 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1127, file: !1127, line: 108, type: !1128, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !1306)
!1306 = !{!1304}
!1307 = !DILocation(line: 0, scope: !1305, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 54, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !325, line: 53, column: 5)
!1310 = !DILocation(line: 110, column: 10, scope: !1305, inlinedAt: !1308)
!1311 = !DILocation(line: 54, column: 7, scope: !1309)
!1312 = !DILocation(line: 0, scope: !1262, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 55, column: 12, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !325, line: 55, column: 11)
!1315 = !DILocation(line: 96, column: 7, scope: !1262, inlinedAt: !1313)
!1316 = !DILocation(line: 118, column: 5, scope: !1289, inlinedAt: !1313)
!1317 = !DILocation(line: 98, column: 13, scope: !1282, inlinedAt: !1313)
!1318 = !DILocation(line: 99, column: 15, scope: !1281, inlinedAt: !1313)
!1319 = !DILocation(line: 99, column: 11, scope: !1282, inlinedAt: !1313)
!1320 = !DILocation(line: 108, column: 29, scope: !1278, inlinedAt: !1313)
!1321 = !DILocation(line: 0, scope: !1278, inlinedAt: !1313)
!1322 = !DILocation(line: 109, column: 15, scope: !1278, inlinedAt: !1313)
!1323 = !DILocation(line: 112, column: 9, scope: !1280, inlinedAt: !1313)
!1324 = !DILocation(line: 116, column: 5, scope: !1289, inlinedAt: !1313)
!1325 = !DILocation(line: 55, column: 11, scope: !1309)
!1326 = !DILocation(line: 60, column: 5, scope: !1248)
!1327 = !DILocation(line: 62, column: 43, scope: !1248)
!1328 = !DILocation(line: 62, column: 54, scope: !1248)
!1329 = !DILocation(line: 0, scope: !1248)
!1330 = !DILocation(line: 62, column: 20, scope: !1248)
!1331 = !DILocation(line: 63, column: 18, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1248, file: !325, line: 63, column: 9)
!1333 = !DILocation(line: 63, column: 9, scope: !1248)
!1334 = !DILocation(line: 0, scope: !1251)
!1335 = !DILocation(line: 77, column: 23, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1251, file: !325, line: 77, column: 5)
!1337 = !DILocation(line: 77, column: 5, scope: !1251)
!1338 = !DILocation(line: 0, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !325, line: 65, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1332, file: !325, line: 64, column: 7)
!1341 = !DILocation(line: 65, column: 13, scope: !1340)
!1342 = !DILocation(line: 67, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !325, line: 66, column: 11)
!1344 = !DILocation(line: 69, column: 11, scope: !1343)
!1345 = !DILocation(line: 72, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !325, line: 71, column: 11)
!1347 = !DILocation(line: 84, column: 11, scope: !1248)
!1348 = !DILocation(line: 84, column: 5, scope: !1248)
!1349 = !DILocation(line: 85, column: 3, scope: !1225)
!1350 = !DILocation(line: 78, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1336, file: !325, line: 78, column: 11)
!1352 = !DILocation(line: 78, column: 21, scope: !1351)
!1353 = !DILocation(line: 78, column: 29, scope: !1351)
!1354 = !DILocation(line: 0, scope: !1305, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 80, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !325, line: 79, column: 9)
!1357 = !DILocation(line: 110, column: 10, scope: !1305, inlinedAt: !1355)
!1358 = !DILocation(line: 81, column: 29, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !325, line: 81, column: 15)
!1360 = !DILocation(line: 0, scope: !1262, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 81, column: 16, scope: !1359)
!1362 = !DILocation(line: 96, column: 7, scope: !1262, inlinedAt: !1361)
!1363 = !DILocation(line: 118, column: 5, scope: !1289, inlinedAt: !1361)
!1364 = !DILocation(line: 98, column: 13, scope: !1282, inlinedAt: !1361)
!1365 = !DILocation(line: 99, column: 15, scope: !1281, inlinedAt: !1361)
!1366 = !DILocation(line: 99, column: 11, scope: !1282, inlinedAt: !1361)
!1367 = !DILocation(line: 108, column: 29, scope: !1278, inlinedAt: !1361)
!1368 = !DILocation(line: 0, scope: !1278, inlinedAt: !1361)
!1369 = !DILocation(line: 109, column: 15, scope: !1278, inlinedAt: !1361)
!1370 = !DILocation(line: 112, column: 9, scope: !1280, inlinedAt: !1361)
!1371 = !DILocation(line: 116, column: 5, scope: !1289, inlinedAt: !1361)
!1372 = !DILocation(line: 81, column: 15, scope: !1356)
!1373 = !DILocation(line: 77, column: 36, scope: !1336)
!1374 = distinct !{!1374, !1337, !1375, !941}
!1375 = !DILocation(line: 83, column: 9, scope: !1251)
!1376 = !DILocation(line: 87, column: 1, scope: !1225)
!1377 = !DISubprogram(name: "getpwuid", scope: !1066, file: !1066, line: 110, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1237, !1054}
!1380 = !DISubprogram(name: "getgrgid", scope: !1270, file: !1270, line: 101, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1268, !774}
!1383 = !DISubprogram(name: "free", scope: !1015, file: !1015, line: 555, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !75}
!1386 = !DILocation(line: 0, scope: !1262)
!1387 = !DILocation(line: 96, column: 7, scope: !1262)
!1388 = !DILocation(line: 118, column: 5, scope: !1289)
!1389 = !DILocation(line: 98, column: 13, scope: !1282)
!1390 = !DILocation(line: 99, column: 15, scope: !1281)
!1391 = !DILocation(line: 99, column: 11, scope: !1282)
!1392 = !DILocation(line: 108, column: 29, scope: !1278)
!1393 = !DILocation(line: 0, scope: !1278)
!1394 = !DILocation(line: 109, column: 15, scope: !1278)
!1395 = !DILocation(line: 112, column: 9, scope: !1280)
!1396 = !DILocation(line: 116, column: 5, scope: !1289)
!1397 = !DILocation(line: 119, column: 3, scope: !1262)
!1398 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !353, file: !353, line: 50, type: !845, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1399)
!1399 = !{!1400}
!1400 = !DILocalVariable(name: "file", arg: 1, scope: !1398, file: !353, line: 50, type: !80)
!1401 = !DILocation(line: 0, scope: !1398)
!1402 = !DILocation(line: 52, column: 13, scope: !1398)
!1403 = !DILocation(line: 53, column: 1, scope: !1398)
!1404 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !353, file: !353, line: 87, type: !1405, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !133}
!1407 = !{!1408}
!1408 = !DILocalVariable(name: "ignore", arg: 1, scope: !1404, file: !353, line: 87, type: !133)
!1409 = !DILocation(line: 0, scope: !1404)
!1410 = !DILocation(line: 89, column: 16, scope: !1404)
!1411 = !{!1412, !1412, i64 0}
!1412 = !{!"_Bool", !836, i64 0}
!1413 = !DILocation(line: 90, column: 1, scope: !1404)
!1414 = distinct !DISubprogram(name: "close_stdout", scope: !353, file: !353, line: 116, type: !420, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1415)
!1415 = !{!1416}
!1416 = !DILocalVariable(name: "write_error", scope: !1417, file: !353, line: 121, type: !80)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !353, line: 120, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !353, line: 118, column: 7)
!1419 = !DILocation(line: 118, column: 21, scope: !1418)
!1420 = !DILocation(line: 118, column: 7, scope: !1418)
!1421 = !DILocation(line: 118, column: 29, scope: !1418)
!1422 = !DILocation(line: 119, column: 7, scope: !1418)
!1423 = !DILocation(line: 119, column: 12, scope: !1418)
!1424 = !{i8 0, i8 2}
!1425 = !DILocation(line: 119, column: 25, scope: !1418)
!1426 = !DILocation(line: 119, column: 28, scope: !1418)
!1427 = !DILocation(line: 119, column: 34, scope: !1418)
!1428 = !DILocation(line: 118, column: 7, scope: !1414)
!1429 = !DILocation(line: 121, column: 33, scope: !1417)
!1430 = !DILocation(line: 0, scope: !1417)
!1431 = !DILocation(line: 122, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1417, file: !353, line: 122, column: 11)
!1433 = !DILocation(line: 0, scope: !1432)
!1434 = !DILocation(line: 122, column: 11, scope: !1417)
!1435 = !DILocation(line: 123, column: 9, scope: !1432)
!1436 = !DILocation(line: 126, column: 9, scope: !1432)
!1437 = !DILocation(line: 128, column: 14, scope: !1417)
!1438 = !DILocation(line: 128, column: 7, scope: !1417)
!1439 = !DILocation(line: 133, column: 42, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1414, file: !353, line: 133, column: 7)
!1441 = !DILocation(line: 133, column: 28, scope: !1440)
!1442 = !DILocation(line: 133, column: 50, scope: !1440)
!1443 = !DILocation(line: 133, column: 7, scope: !1414)
!1444 = !DILocation(line: 134, column: 12, scope: !1440)
!1445 = !DILocation(line: 134, column: 5, scope: !1440)
!1446 = !DILocation(line: 135, column: 1, scope: !1414)
!1447 = !DISubprogram(name: "_exit", scope: !1208, file: !1208, line: 624, type: !824, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1448 = distinct !DISubprogram(name: "verror", scope: !368, file: !368, line: 251, type: !1449, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !53, !53, !80, !378}
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DILocalVariable(name: "status", arg: 1, scope: !1448, file: !368, line: 251, type: !53)
!1453 = !DILocalVariable(name: "errnum", arg: 2, scope: !1448, file: !368, line: 251, type: !53)
!1454 = !DILocalVariable(name: "message", arg: 3, scope: !1448, file: !368, line: 251, type: !80)
!1455 = !DILocalVariable(name: "args", arg: 4, scope: !1448, file: !368, line: 251, type: !378)
!1456 = !DILocation(line: 0, scope: !1448)
!1457 = !DILocation(line: 251, column: 1, scope: !1448)
!1458 = !DILocation(line: 261, column: 3, scope: !1448)
!1459 = !DILocation(line: 265, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !368, line: 265, column: 7)
!1461 = !DILocation(line: 265, column: 7, scope: !1448)
!1462 = !DILocation(line: 266, column: 5, scope: !1460)
!1463 = !DILocation(line: 272, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !368, line: 268, column: 5)
!1465 = !DILocation(line: 276, column: 3, scope: !1448)
!1466 = !{i64 0, i64 8, !834, i64 8, i64 8, !834, i64 16, i64 8, !834, i64 24, i64 4, !894, i64 28, i64 4, !894}
!1467 = !DILocation(line: 282, column: 1, scope: !1448)
!1468 = distinct !DISubprogram(name: "flush_stdout", scope: !368, file: !368, line: 163, type: !420, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1469)
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
!1483 = distinct !DISubprogram(name: "error_tail", scope: !368, file: !368, line: 219, type: !1449, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DILocalVariable(name: "status", arg: 1, scope: !1483, file: !368, line: 219, type: !53)
!1486 = !DILocalVariable(name: "errnum", arg: 2, scope: !1483, file: !368, line: 219, type: !53)
!1487 = !DILocalVariable(name: "message", arg: 3, scope: !1483, file: !368, line: 219, type: !80)
!1488 = !DILocalVariable(name: "args", arg: 4, scope: !1483, file: !368, line: 219, type: !378)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 219, column: 1, scope: !1483)
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
!1542 = !DILocation(line: 133, column: 49, scope: !1493, inlinedAt: !1535)
!1543 = !DILocation(line: 232, column: 3, scope: !1483)
!1544 = !DILocation(line: 233, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1483, file: !368, line: 233, column: 7)
!1546 = !DILocation(line: 233, column: 7, scope: !1483)
!1547 = !DILocalVariable(name: "errnum", arg: 1, scope: !1548, file: !368, line: 188, type: !53)
!1548 = distinct !DISubprogram(name: "print_errno_message", scope: !368, file: !368, line: 188, type: !824, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1549)
!1549 = !{!1547, !1550, !1551}
!1550 = !DILocalVariable(name: "s", scope: !1548, file: !368, line: 190, type: !80)
!1551 = !DILocalVariable(name: "errbuf", scope: !1548, file: !368, line: 193, type: !1552)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 1024)
!1555 = !DILocation(line: 0, scope: !1548, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 234, column: 5, scope: !1545)
!1557 = !DILocation(line: 193, column: 3, scope: !1548, inlinedAt: !1556)
!1558 = !DILocation(line: 193, column: 8, scope: !1548, inlinedAt: !1556)
!1559 = !DILocation(line: 195, column: 7, scope: !1548, inlinedAt: !1556)
!1560 = !DILocation(line: 207, column: 9, scope: !1561, inlinedAt: !1556)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !368, line: 207, column: 7)
!1562 = !DILocation(line: 207, column: 7, scope: !1548, inlinedAt: !1556)
!1563 = !DILocation(line: 208, column: 9, scope: !1561, inlinedAt: !1556)
!1564 = !DILocation(line: 208, column: 5, scope: !1561, inlinedAt: !1556)
!1565 = !DILocation(line: 214, column: 3, scope: !1548, inlinedAt: !1556)
!1566 = !DILocation(line: 216, column: 1, scope: !1548, inlinedAt: !1556)
!1567 = !DILocation(line: 234, column: 5, scope: !1545)
!1568 = !DILocation(line: 238, column: 3, scope: !1483)
!1569 = !DILocalVariable(name: "__c", arg: 1, scope: !1570, file: !1127, line: 101, type: !53)
!1570 = distinct !DISubprogram(name: "putc_unlocked", scope: !1127, file: !1127, line: 101, type: !1571, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!53, !53, !1497}
!1573 = !{!1569, !1574}
!1574 = !DILocalVariable(name: "__stream", arg: 2, scope: !1570, file: !1127, line: 101, type: !1497)
!1575 = !DILocation(line: 0, scope: !1570, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 238, column: 3, scope: !1483)
!1577 = !DILocation(line: 103, column: 10, scope: !1570, inlinedAt: !1576)
!1578 = !DILocation(line: 240, column: 3, scope: !1483)
!1579 = !DILocation(line: 241, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1483, file: !368, line: 241, column: 7)
!1581 = !DILocation(line: 241, column: 7, scope: !1483)
!1582 = !DILocation(line: 242, column: 5, scope: !1580)
!1583 = !DILocation(line: 243, column: 1, scope: !1483)
!1584 = !DISubprogram(name: "__vfprintf_chk", scope: !881, file: !881, line: 96, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!53, !1496, !53, !885, !380}
!1587 = !DISubprogram(name: "strerror_r", scope: !1011, file: !1011, line: 444, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!74, !53, !74, !77}
!1590 = !DISubprogram(name: "fcntl", scope: !1591, file: !1591, line: 149, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1591 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!53, !53, !53, null}
!1594 = distinct !DISubprogram(name: "error", scope: !368, file: !368, line: 285, type: !1595, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !53, !53, !80, null}
!1597 = !{!1598, !1599, !1600, !1601}
!1598 = !DILocalVariable(name: "status", arg: 1, scope: !1594, file: !368, line: 285, type: !53)
!1599 = !DILocalVariable(name: "errnum", arg: 2, scope: !1594, file: !368, line: 285, type: !53)
!1600 = !DILocalVariable(name: "message", arg: 3, scope: !1594, file: !368, line: 285, type: !80)
!1601 = !DILocalVariable(name: "ap", scope: !1594, file: !368, line: 287, type: !378)
!1602 = !DILocation(line: 0, scope: !1594)
!1603 = !DILocation(line: 287, column: 3, scope: !1594)
!1604 = !DILocation(line: 287, column: 11, scope: !1594)
!1605 = !DILocation(line: 288, column: 3, scope: !1594)
!1606 = !DILocation(line: 289, column: 3, scope: !1594)
!1607 = !DILocation(line: 290, column: 3, scope: !1594)
!1608 = !DILocation(line: 291, column: 1, scope: !1594)
!1609 = !DILocation(line: 0, scope: !375)
!1610 = !DILocation(line: 298, column: 1, scope: !375)
!1611 = !DILocation(line: 302, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !375, file: !368, line: 302, column: 7)
!1613 = !DILocation(line: 302, column: 7, scope: !375)
!1614 = !DILocation(line: 307, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !368, line: 307, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !368, line: 303, column: 5)
!1617 = !DILocation(line: 307, column: 27, scope: !1615)
!1618 = !DILocation(line: 308, column: 11, scope: !1615)
!1619 = !DILocation(line: 308, column: 28, scope: !1615)
!1620 = !DILocation(line: 308, column: 25, scope: !1615)
!1621 = !DILocation(line: 309, column: 15, scope: !1615)
!1622 = !DILocation(line: 309, column: 33, scope: !1615)
!1623 = !DILocation(line: 310, column: 19, scope: !1615)
!1624 = !DILocation(line: 311, column: 22, scope: !1615)
!1625 = !DILocation(line: 311, column: 56, scope: !1615)
!1626 = !DILocation(line: 307, column: 11, scope: !1616)
!1627 = !DILocation(line: 316, column: 21, scope: !1616)
!1628 = !DILocation(line: 317, column: 23, scope: !1616)
!1629 = !DILocation(line: 318, column: 5, scope: !1616)
!1630 = !DILocation(line: 327, column: 3, scope: !375)
!1631 = !DILocation(line: 331, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !375, file: !368, line: 331, column: 7)
!1633 = !DILocation(line: 331, column: 7, scope: !375)
!1634 = !DILocation(line: 332, column: 5, scope: !1632)
!1635 = !DILocation(line: 338, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !368, line: 334, column: 5)
!1637 = !DILocation(line: 346, column: 3, scope: !375)
!1638 = !DILocation(line: 350, column: 3, scope: !375)
!1639 = !DILocation(line: 356, column: 1, scope: !375)
!1640 = distinct !DISubprogram(name: "error_at_line", scope: !368, file: !368, line: 359, type: !1641, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !53, !53, !80, !59, !80, null}
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649}
!1644 = !DILocalVariable(name: "status", arg: 1, scope: !1640, file: !368, line: 359, type: !53)
!1645 = !DILocalVariable(name: "errnum", arg: 2, scope: !1640, file: !368, line: 359, type: !53)
!1646 = !DILocalVariable(name: "file_name", arg: 3, scope: !1640, file: !368, line: 359, type: !80)
!1647 = !DILocalVariable(name: "line_number", arg: 4, scope: !1640, file: !368, line: 360, type: !59)
!1648 = !DILocalVariable(name: "message", arg: 5, scope: !1640, file: !368, line: 360, type: !80)
!1649 = !DILocalVariable(name: "ap", scope: !1640, file: !368, line: 362, type: !378)
!1650 = !DILocation(line: 0, scope: !1640)
!1651 = !DILocation(line: 362, column: 3, scope: !1640)
!1652 = !DILocation(line: 362, column: 11, scope: !1640)
!1653 = !DILocation(line: 363, column: 3, scope: !1640)
!1654 = !DILocation(line: 364, column: 3, scope: !1640)
!1655 = !DILocation(line: 366, column: 3, scope: !1640)
!1656 = !DILocation(line: 367, column: 1, scope: !1640)
!1657 = distinct !DISubprogram(name: "fpurge", scope: !709, file: !709, line: 32, type: !1658, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1694)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!53, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1662, file: !150, line: 51, baseType: !53, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1662, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1662, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1662, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1662, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1662, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1662, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1662, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1662, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1662, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1662, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1662, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1662, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1662, file: !150, line: 70, baseType: !1678, size: 64, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1662, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1662, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1662, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1662, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1662, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1662, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1662, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1662, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1662, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1662, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1662, file: !150, line: 93, baseType: !1678, size: 64, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1662, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1662, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1662, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1662, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "fp", arg: 1, scope: !1657, file: !709, line: 32, type: !1660)
!1696 = !DILocation(line: 0, scope: !1657)
!1697 = !DILocation(line: 36, column: 3, scope: !1657)
!1698 = !DILocation(line: 38, column: 3, scope: !1657)
!1699 = !DISubprogram(name: "__fpurge", scope: !1700, file: !1700, line: 72, type: !1701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1700 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !1660}
!1703 = distinct !DISubprogram(name: "getprogname", scope: !711, file: !711, line: 54, type: !1704, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !879)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!80}
!1706 = !DILocation(line: 58, column: 10, scope: !1703)
!1707 = !DILocation(line: 58, column: 3, scope: !1703)
!1708 = distinct !DISubprogram(name: "set_program_name", scope: !425, file: !425, line: 37, type: !845, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DILocalVariable(name: "argv0", arg: 1, scope: !1708, file: !425, line: 37, type: !80)
!1711 = !DILocalVariable(name: "slash", scope: !1708, file: !425, line: 44, type: !80)
!1712 = !DILocalVariable(name: "base", scope: !1708, file: !425, line: 45, type: !80)
!1713 = !DILocation(line: 0, scope: !1708)
!1714 = !DILocation(line: 44, column: 23, scope: !1708)
!1715 = !DILocation(line: 45, column: 22, scope: !1708)
!1716 = !DILocation(line: 46, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1708, file: !425, line: 46, column: 7)
!1718 = !DILocation(line: 46, column: 9, scope: !1717)
!1719 = !DILocation(line: 46, column: 25, scope: !1717)
!1720 = !DILocation(line: 46, column: 40, scope: !1717)
!1721 = !DILocalVariable(name: "__s1", arg: 1, scope: !1722, file: !907, line: 974, type: !1039)
!1722 = distinct !DISubprogram(name: "memeq", scope: !907, file: !907, line: 974, type: !1723, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!133, !1039, !1039, !77}
!1725 = !{!1721, !1726, !1727}
!1726 = !DILocalVariable(name: "__s2", arg: 2, scope: !1722, file: !907, line: 974, type: !1039)
!1727 = !DILocalVariable(name: "__n", arg: 3, scope: !1722, file: !907, line: 974, type: !77)
!1728 = !DILocation(line: 0, scope: !1722, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 46, column: 28, scope: !1717)
!1730 = !DILocation(line: 976, column: 11, scope: !1722, inlinedAt: !1729)
!1731 = !DILocation(line: 976, column: 10, scope: !1722, inlinedAt: !1729)
!1732 = !DILocation(line: 46, column: 7, scope: !1708)
!1733 = !DILocation(line: 49, column: 11, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !425, line: 49, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !425, line: 47, column: 5)
!1736 = !DILocation(line: 49, column: 36, scope: !1734)
!1737 = !DILocation(line: 49, column: 11, scope: !1735)
!1738 = !DILocation(line: 65, column: 16, scope: !1708)
!1739 = !DILocation(line: 71, column: 27, scope: !1708)
!1740 = !DILocation(line: 74, column: 33, scope: !1708)
!1741 = !DILocation(line: 76, column: 1, scope: !1708)
!1742 = !DISubprogram(name: "strrchr", scope: !1011, file: !1011, line: 273, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1743 = !DILocation(line: 0, scope: !434)
!1744 = !DILocation(line: 40, column: 29, scope: !434)
!1745 = !DILocation(line: 41, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !434, file: !435, line: 41, column: 7)
!1747 = !DILocation(line: 41, column: 7, scope: !434)
!1748 = !DILocation(line: 47, column: 3, scope: !434)
!1749 = !DILocation(line: 48, column: 3, scope: !434)
!1750 = !DILocation(line: 48, column: 13, scope: !434)
!1751 = !DILocalVariable(name: "ps", arg: 1, scope: !1752, file: !1753, line: 1135, type: !1756)
!1752 = distinct !DISubprogram(name: "mbszero", scope: !1753, file: !1753, line: 1135, type: !1754, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !1757)
!1753 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!1757 = !{!1751}
!1758 = !DILocation(line: 0, scope: !1752, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 48, column: 18, scope: !434)
!1760 = !DILocalVariable(name: "__dest", arg: 1, scope: !1761, file: !1762, line: 57, type: !75)
!1761 = distinct !DISubprogram(name: "memset", scope: !1762, file: !1762, line: 57, type: !1763, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !1765)
!1762 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!75, !75, !53, !77}
!1765 = !{!1760, !1766, !1767}
!1766 = !DILocalVariable(name: "__ch", arg: 2, scope: !1761, file: !1762, line: 57, type: !53)
!1767 = !DILocalVariable(name: "__len", arg: 3, scope: !1761, file: !1762, line: 57, type: !77)
!1768 = !DILocation(line: 0, scope: !1761, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 1137, column: 3, scope: !1752, inlinedAt: !1759)
!1770 = !DILocation(line: 59, column: 10, scope: !1761, inlinedAt: !1769)
!1771 = !DILocation(line: 49, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !434, file: !435, line: 49, column: 7)
!1773 = !DILocation(line: 49, column: 39, scope: !1772)
!1774 = !DILocation(line: 49, column: 44, scope: !1772)
!1775 = !DILocation(line: 54, column: 1, scope: !434)
!1776 = !DISubprogram(name: "mbrtoc32", scope: !446, file: !446, line: 57, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!77, !1779, !885, !77, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1780)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1756)
!1782 = distinct !DISubprogram(name: "clone_quoting_options", scope: !465, file: !465, line: 113, type: !1783, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1786)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1785, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1786 = !{!1787, !1788, !1789}
!1787 = !DILocalVariable(name: "o", arg: 1, scope: !1782, file: !465, line: 113, type: !1785)
!1788 = !DILocalVariable(name: "saved_errno", scope: !1782, file: !465, line: 115, type: !53)
!1789 = !DILocalVariable(name: "p", scope: !1782, file: !465, line: 116, type: !1785)
!1790 = !DILocation(line: 0, scope: !1782)
!1791 = !DILocation(line: 115, column: 21, scope: !1782)
!1792 = !DILocation(line: 116, column: 40, scope: !1782)
!1793 = !DILocation(line: 116, column: 31, scope: !1782)
!1794 = !DILocation(line: 118, column: 9, scope: !1782)
!1795 = !DILocation(line: 119, column: 3, scope: !1782)
!1796 = distinct !DISubprogram(name: "get_quoting_style", scope: !465, file: !465, line: 124, type: !1797, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1801)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!491, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "o", arg: 1, scope: !1796, file: !465, line: 124, type: !1799)
!1803 = !DILocation(line: 0, scope: !1796)
!1804 = !DILocation(line: 126, column: 11, scope: !1796)
!1805 = !DILocation(line: 126, column: 46, scope: !1796)
!1806 = !{!1807, !836, i64 0}
!1807 = !{!"quoting_options", !836, i64 0, !895, i64 4, !836, i64 8, !835, i64 40, !835, i64 48}
!1808 = !DILocation(line: 126, column: 3, scope: !1796)
!1809 = distinct !DISubprogram(name: "set_quoting_style", scope: !465, file: !465, line: 132, type: !1810, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1785, !491}
!1812 = !{!1813, !1814}
!1813 = !DILocalVariable(name: "o", arg: 1, scope: !1809, file: !465, line: 132, type: !1785)
!1814 = !DILocalVariable(name: "s", arg: 2, scope: !1809, file: !465, line: 132, type: !491)
!1815 = !DILocation(line: 0, scope: !1809)
!1816 = !DILocation(line: 134, column: 4, scope: !1809)
!1817 = !DILocation(line: 134, column: 45, scope: !1809)
!1818 = !DILocation(line: 135, column: 1, scope: !1809)
!1819 = distinct !DISubprogram(name: "set_char_quoting", scope: !465, file: !465, line: 143, type: !1820, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!53, !1785, !4, !53}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1829, !1830}
!1823 = !DILocalVariable(name: "o", arg: 1, scope: !1819, file: !465, line: 143, type: !1785)
!1824 = !DILocalVariable(name: "c", arg: 2, scope: !1819, file: !465, line: 143, type: !4)
!1825 = !DILocalVariable(name: "i", arg: 3, scope: !1819, file: !465, line: 143, type: !53)
!1826 = !DILocalVariable(name: "uc", scope: !1819, file: !465, line: 145, type: !82)
!1827 = !DILocalVariable(name: "p", scope: !1819, file: !465, line: 146, type: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1829 = !DILocalVariable(name: "shift", scope: !1819, file: !465, line: 148, type: !53)
!1830 = !DILocalVariable(name: "r", scope: !1819, file: !465, line: 149, type: !59)
!1831 = !DILocation(line: 0, scope: !1819)
!1832 = !DILocation(line: 147, column: 6, scope: !1819)
!1833 = !DILocation(line: 147, column: 41, scope: !1819)
!1834 = !DILocation(line: 147, column: 62, scope: !1819)
!1835 = !DILocation(line: 147, column: 57, scope: !1819)
!1836 = !DILocation(line: 148, column: 15, scope: !1819)
!1837 = !DILocation(line: 149, column: 21, scope: !1819)
!1838 = !DILocation(line: 149, column: 24, scope: !1819)
!1839 = !DILocation(line: 149, column: 34, scope: !1819)
!1840 = !DILocation(line: 150, column: 19, scope: !1819)
!1841 = !DILocation(line: 150, column: 24, scope: !1819)
!1842 = !DILocation(line: 150, column: 6, scope: !1819)
!1843 = !DILocation(line: 151, column: 3, scope: !1819)
!1844 = distinct !DISubprogram(name: "set_quoting_flags", scope: !465, file: !465, line: 159, type: !1845, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!53, !1785, !53}
!1847 = !{!1848, !1849, !1850}
!1848 = !DILocalVariable(name: "o", arg: 1, scope: !1844, file: !465, line: 159, type: !1785)
!1849 = !DILocalVariable(name: "i", arg: 2, scope: !1844, file: !465, line: 159, type: !53)
!1850 = !DILocalVariable(name: "r", scope: !1844, file: !465, line: 163, type: !53)
!1851 = !DILocation(line: 0, scope: !1844)
!1852 = !DILocation(line: 161, column: 8, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !465, line: 161, column: 7)
!1854 = !DILocation(line: 161, column: 7, scope: !1844)
!1855 = !DILocation(line: 163, column: 14, scope: !1844)
!1856 = !{!1807, !895, i64 4}
!1857 = !DILocation(line: 164, column: 12, scope: !1844)
!1858 = !DILocation(line: 165, column: 3, scope: !1844)
!1859 = distinct !DISubprogram(name: "set_custom_quoting", scope: !465, file: !465, line: 169, type: !1860, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1785, !80, !80}
!1862 = !{!1863, !1864, !1865}
!1863 = !DILocalVariable(name: "o", arg: 1, scope: !1859, file: !465, line: 169, type: !1785)
!1864 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1859, file: !465, line: 170, type: !80)
!1865 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1859, file: !465, line: 170, type: !80)
!1866 = !DILocation(line: 0, scope: !1859)
!1867 = !DILocation(line: 172, column: 8, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1859, file: !465, line: 172, column: 7)
!1869 = !DILocation(line: 172, column: 7, scope: !1859)
!1870 = !DILocation(line: 174, column: 12, scope: !1859)
!1871 = !DILocation(line: 175, column: 8, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1859, file: !465, line: 175, column: 7)
!1873 = !DILocation(line: 175, column: 19, scope: !1872)
!1874 = !DILocation(line: 176, column: 5, scope: !1872)
!1875 = !DILocation(line: 177, column: 6, scope: !1859)
!1876 = !DILocation(line: 177, column: 17, scope: !1859)
!1877 = !{!1807, !835, i64 40}
!1878 = !DILocation(line: 178, column: 6, scope: !1859)
!1879 = !DILocation(line: 178, column: 18, scope: !1859)
!1880 = !{!1807, !835, i64 48}
!1881 = !DILocation(line: 179, column: 1, scope: !1859)
!1882 = !DISubprogram(name: "abort", scope: !1015, file: !1015, line: 598, type: !420, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !879)
!1883 = distinct !DISubprogram(name: "quotearg_buffer", scope: !465, file: !465, line: 774, type: !1884, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!77, !74, !77, !80, !77, !1799}
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1887 = !DILocalVariable(name: "buffer", arg: 1, scope: !1883, file: !465, line: 774, type: !74)
!1888 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1883, file: !465, line: 774, type: !77)
!1889 = !DILocalVariable(name: "arg", arg: 3, scope: !1883, file: !465, line: 775, type: !80)
!1890 = !DILocalVariable(name: "argsize", arg: 4, scope: !1883, file: !465, line: 775, type: !77)
!1891 = !DILocalVariable(name: "o", arg: 5, scope: !1883, file: !465, line: 776, type: !1799)
!1892 = !DILocalVariable(name: "p", scope: !1883, file: !465, line: 778, type: !1799)
!1893 = !DILocalVariable(name: "saved_errno", scope: !1883, file: !465, line: 779, type: !53)
!1894 = !DILocalVariable(name: "r", scope: !1883, file: !465, line: 780, type: !77)
!1895 = !DILocation(line: 0, scope: !1883)
!1896 = !DILocation(line: 778, column: 37, scope: !1883)
!1897 = !DILocation(line: 779, column: 21, scope: !1883)
!1898 = !DILocation(line: 781, column: 43, scope: !1883)
!1899 = !DILocation(line: 781, column: 53, scope: !1883)
!1900 = !DILocation(line: 781, column: 63, scope: !1883)
!1901 = !DILocation(line: 782, column: 43, scope: !1883)
!1902 = !DILocation(line: 782, column: 58, scope: !1883)
!1903 = !DILocation(line: 780, column: 14, scope: !1883)
!1904 = !DILocation(line: 783, column: 9, scope: !1883)
!1905 = !DILocation(line: 784, column: 3, scope: !1883)
!1906 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !465, file: !465, line: 251, type: !1907, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !1911)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!77, !74, !77, !80, !77, !491, !53, !1909, !80, !80}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1936, !1938, !1941, !1942, !1943, !1944, !1947, !1948, !1951, !1955, !1956, !1964, !1967, !1968, !1970, !1971, !1972, !1973}
!1912 = !DILocalVariable(name: "buffer", arg: 1, scope: !1906, file: !465, line: 251, type: !74)
!1913 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1906, file: !465, line: 251, type: !77)
!1914 = !DILocalVariable(name: "arg", arg: 3, scope: !1906, file: !465, line: 252, type: !80)
!1915 = !DILocalVariable(name: "argsize", arg: 4, scope: !1906, file: !465, line: 252, type: !77)
!1916 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1906, file: !465, line: 253, type: !491)
!1917 = !DILocalVariable(name: "flags", arg: 6, scope: !1906, file: !465, line: 253, type: !53)
!1918 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1906, file: !465, line: 254, type: !1909)
!1919 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1906, file: !465, line: 255, type: !80)
!1920 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1906, file: !465, line: 256, type: !80)
!1921 = !DILocalVariable(name: "unibyte_locale", scope: !1906, file: !465, line: 258, type: !133)
!1922 = !DILocalVariable(name: "len", scope: !1906, file: !465, line: 260, type: !77)
!1923 = !DILocalVariable(name: "orig_buffersize", scope: !1906, file: !465, line: 261, type: !77)
!1924 = !DILocalVariable(name: "quote_string", scope: !1906, file: !465, line: 262, type: !80)
!1925 = !DILocalVariable(name: "quote_string_len", scope: !1906, file: !465, line: 263, type: !77)
!1926 = !DILocalVariable(name: "backslash_escapes", scope: !1906, file: !465, line: 264, type: !133)
!1927 = !DILocalVariable(name: "elide_outer_quotes", scope: !1906, file: !465, line: 265, type: !133)
!1928 = !DILocalVariable(name: "encountered_single_quote", scope: !1906, file: !465, line: 266, type: !133)
!1929 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1906, file: !465, line: 267, type: !133)
!1930 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1906, file: !465, line: 309, type: !133)
!1931 = !DILocalVariable(name: "lq", scope: !1932, file: !465, line: 361, type: !80)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !465, line: 361, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !465, line: 360, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !465, line: 333, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 312, column: 5)
!1936 = !DILocalVariable(name: "i", scope: !1937, file: !465, line: 395, type: !77)
!1937 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 395, column: 3)
!1938 = !DILocalVariable(name: "is_right_quote", scope: !1939, file: !465, line: 397, type: !133)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !465, line: 396, column: 5)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !465, line: 395, column: 3)
!1941 = !DILocalVariable(name: "escaping", scope: !1939, file: !465, line: 398, type: !133)
!1942 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1939, file: !465, line: 399, type: !133)
!1943 = !DILocalVariable(name: "c", scope: !1939, file: !465, line: 417, type: !82)
!1944 = !DILocalVariable(name: "m", scope: !1945, file: !465, line: 598, type: !77)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 596, column: 11)
!1946 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 419, column: 9)
!1947 = !DILocalVariable(name: "printable", scope: !1945, file: !465, line: 600, type: !133)
!1948 = !DILocalVariable(name: "mbs", scope: !1949, file: !465, line: 609, type: !552)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !465, line: 608, column: 15)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !465, line: 602, column: 17)
!1951 = !DILocalVariable(name: "w", scope: !1952, file: !465, line: 618, type: !445)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !465, line: 617, column: 19)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !465, line: 616, column: 17)
!1954 = distinct !DILexicalBlock(scope: !1949, file: !465, line: 616, column: 17)
!1955 = !DILocalVariable(name: "bytes", scope: !1952, file: !465, line: 619, type: !77)
!1956 = !DILocalVariable(name: "j", scope: !1957, file: !465, line: 648, type: !77)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !465, line: 648, column: 29)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !465, line: 647, column: 27)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !465, line: 645, column: 29)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !465, line: 636, column: 23)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !465, line: 628, column: 30)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !465, line: 623, column: 30)
!1963 = distinct !DILexicalBlock(scope: !1952, file: !465, line: 621, column: 25)
!1964 = !DILocalVariable(name: "ilim", scope: !1965, file: !465, line: 674, type: !77)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !465, line: 671, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1945, file: !465, line: 670, column: 17)
!1967 = !DILabel(scope: !1906, name: "process_input", file: !465, line: 308)
!1968 = !DILabel(scope: !1969, name: "c_and_shell_escape", file: !465, line: 502)
!1969 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 478, column: 9)
!1970 = !DILabel(scope: !1969, name: "c_escape", file: !465, line: 507)
!1971 = !DILabel(scope: !1939, name: "store_escape", file: !465, line: 709)
!1972 = !DILabel(scope: !1939, name: "store_c", file: !465, line: 712)
!1973 = !DILabel(scope: !1906, name: "force_outer_quoting_style", file: !465, line: 753)
!1974 = !DILocation(line: 0, scope: !1906)
!1975 = !DILocation(line: 258, column: 25, scope: !1906)
!1976 = !DILocation(line: 258, column: 36, scope: !1906)
!1977 = !DILocation(line: 267, column: 3, scope: !1906)
!1978 = !DILocation(line: 261, column: 10, scope: !1906)
!1979 = !DILocation(line: 262, column: 15, scope: !1906)
!1980 = !DILocation(line: 263, column: 10, scope: !1906)
!1981 = !DILocation(line: 308, column: 2, scope: !1906)
!1982 = !DILocation(line: 311, column: 3, scope: !1906)
!1983 = !DILocation(line: 318, column: 11, scope: !1935)
!1984 = !DILocation(line: 319, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !465, line: 319, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !465, line: 319, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1935, file: !465, line: 318, column: 11)
!1988 = !DILocation(line: 319, column: 9, scope: !1986)
!1989 = !DILocation(line: 0, scope: !543, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 357, column: 26, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !465, line: 335, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1934, file: !465, line: 334, column: 13)
!1993 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !1990)
!1994 = !DILocation(line: 201, column: 19, scope: !1995, inlinedAt: !1990)
!1995 = distinct !DILexicalBlock(scope: !543, file: !465, line: 201, column: 7)
!1996 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !1990)
!1997 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !1990)
!1998 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !1990)
!1999 = !DILocation(line: 230, column: 13, scope: !543, inlinedAt: !1990)
!2000 = !DILocalVariable(name: "ps", arg: 1, scope: !2001, file: !1753, line: 1135, type: !2004)
!2001 = distinct !DISubprogram(name: "mbszero", scope: !1753, file: !1753, line: 1135, type: !2002, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2005)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2005 = !{!2000}
!2006 = !DILocation(line: 0, scope: !2001, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !1990)
!2008 = !DILocalVariable(name: "__dest", arg: 1, scope: !2009, file: !1762, line: 57, type: !75)
!2009 = distinct !DISubprogram(name: "memset", scope: !1762, file: !1762, line: 57, type: !1763, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2010)
!2010 = !{!2008, !2011, !2012}
!2011 = !DILocalVariable(name: "__ch", arg: 2, scope: !2009, file: !1762, line: 57, type: !53)
!2012 = !DILocalVariable(name: "__len", arg: 3, scope: !2009, file: !1762, line: 57, type: !77)
!2013 = !DILocation(line: 0, scope: !2009, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 1137, column: 3, scope: !2001, inlinedAt: !2007)
!2015 = !DILocation(line: 59, column: 10, scope: !2009, inlinedAt: !2014)
!2016 = !DILocation(line: 231, column: 7, scope: !2017, inlinedAt: !1990)
!2017 = distinct !DILexicalBlock(scope: !543, file: !465, line: 231, column: 7)
!2018 = !DILocation(line: 231, column: 40, scope: !2017, inlinedAt: !1990)
!2019 = !DILocation(line: 231, column: 45, scope: !2017, inlinedAt: !1990)
!2020 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !1990)
!2021 = !DILocation(line: 0, scope: !543, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 358, column: 27, scope: !1991)
!2023 = !DILocation(line: 199, column: 29, scope: !543, inlinedAt: !2022)
!2024 = !DILocation(line: 201, column: 19, scope: !1995, inlinedAt: !2022)
!2025 = !DILocation(line: 201, column: 7, scope: !543, inlinedAt: !2022)
!2026 = !DILocation(line: 229, column: 3, scope: !543, inlinedAt: !2022)
!2027 = !DILocation(line: 230, column: 3, scope: !543, inlinedAt: !2022)
!2028 = !DILocation(line: 230, column: 13, scope: !543, inlinedAt: !2022)
!2029 = !DILocation(line: 0, scope: !2001, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 230, column: 18, scope: !543, inlinedAt: !2022)
!2031 = !DILocation(line: 0, scope: !2009, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 1137, column: 3, scope: !2001, inlinedAt: !2030)
!2033 = !DILocation(line: 59, column: 10, scope: !2009, inlinedAt: !2032)
!2034 = !DILocation(line: 231, column: 7, scope: !2017, inlinedAt: !2022)
!2035 = !DILocation(line: 231, column: 40, scope: !2017, inlinedAt: !2022)
!2036 = !DILocation(line: 231, column: 45, scope: !2017, inlinedAt: !2022)
!2037 = !DILocation(line: 235, column: 1, scope: !543, inlinedAt: !2022)
!2038 = !DILocation(line: 360, column: 13, scope: !1934)
!2039 = !DILocation(line: 0, scope: !1932)
!2040 = !DILocation(line: 361, column: 45, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1932, file: !465, line: 361, column: 11)
!2042 = !DILocation(line: 361, column: 11, scope: !1932)
!2043 = !DILocation(line: 362, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !465, line: 362, column: 13)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !465, line: 362, column: 13)
!2046 = !DILocation(line: 362, column: 13, scope: !2045)
!2047 = !DILocation(line: 361, column: 52, scope: !2041)
!2048 = distinct !{!2048, !2042, !2049, !941}
!2049 = !DILocation(line: 362, column: 13, scope: !1932)
!2050 = !DILocation(line: 260, column: 10, scope: !1906)
!2051 = !DILocation(line: 365, column: 28, scope: !1934)
!2052 = !DILocation(line: 367, column: 7, scope: !1935)
!2053 = !DILocation(line: 370, column: 7, scope: !1935)
!2054 = !DILocation(line: 376, column: 11, scope: !1935)
!2055 = !DILocation(line: 381, column: 11, scope: !1935)
!2056 = !DILocation(line: 382, column: 9, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !465, line: 382, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !465, line: 382, column: 9)
!2059 = distinct !DILexicalBlock(scope: !1935, file: !465, line: 381, column: 11)
!2060 = !DILocation(line: 382, column: 9, scope: !2058)
!2061 = !DILocation(line: 389, column: 7, scope: !1935)
!2062 = !DILocation(line: 392, column: 7, scope: !1935)
!2063 = !DILocation(line: 0, scope: !1937)
!2064 = !DILocation(line: 395, column: 8, scope: !1937)
!2065 = !DILocation(line: 395, scope: !1937)
!2066 = !DILocation(line: 395, column: 34, scope: !1940)
!2067 = !DILocation(line: 395, column: 26, scope: !1940)
!2068 = !DILocation(line: 395, column: 48, scope: !1940)
!2069 = !DILocation(line: 395, column: 55, scope: !1940)
!2070 = !DILocation(line: 395, column: 3, scope: !1937)
!2071 = !DILocation(line: 395, column: 67, scope: !1940)
!2072 = !DILocation(line: 0, scope: !1939)
!2073 = !DILocation(line: 402, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 401, column: 11)
!2075 = !DILocation(line: 404, column: 17, scope: !2074)
!2076 = !DILocation(line: 405, column: 39, scope: !2074)
!2077 = !DILocation(line: 409, column: 32, scope: !2074)
!2078 = !DILocation(line: 405, column: 19, scope: !2074)
!2079 = !DILocation(line: 405, column: 15, scope: !2074)
!2080 = !DILocation(line: 410, column: 11, scope: !2074)
!2081 = !DILocation(line: 410, column: 25, scope: !2074)
!2082 = !DILocalVariable(name: "__s1", arg: 1, scope: !2083, file: !907, line: 974, type: !1039)
!2083 = distinct !DISubprogram(name: "memeq", scope: !907, file: !907, line: 974, type: !1723, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2084)
!2084 = !{!2082, !2085, !2086}
!2085 = !DILocalVariable(name: "__s2", arg: 2, scope: !2083, file: !907, line: 974, type: !1039)
!2086 = !DILocalVariable(name: "__n", arg: 3, scope: !2083, file: !907, line: 974, type: !77)
!2087 = !DILocation(line: 0, scope: !2083, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 410, column: 14, scope: !2074)
!2089 = !DILocation(line: 976, column: 11, scope: !2083, inlinedAt: !2088)
!2090 = !DILocation(line: 976, column: 10, scope: !2083, inlinedAt: !2088)
!2091 = !DILocation(line: 401, column: 11, scope: !1939)
!2092 = !DILocation(line: 417, column: 25, scope: !1939)
!2093 = !DILocation(line: 418, column: 7, scope: !1939)
!2094 = !DILocation(line: 421, column: 15, scope: !1946)
!2095 = !DILocation(line: 423, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !465, line: 423, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !465, line: 422, column: 13)
!2098 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 421, column: 15)
!2099 = !DILocation(line: 423, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !465, line: 423, column: 15)
!2101 = !DILocation(line: 423, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !465, line: 423, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !465, line: 423, column: 15)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !465, line: 423, column: 15)
!2105 = !DILocation(line: 423, column: 15, scope: !2103)
!2106 = !DILocation(line: 423, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !465, line: 423, column: 15)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !465, line: 423, column: 15)
!2109 = !DILocation(line: 423, column: 15, scope: !2108)
!2110 = !DILocation(line: 423, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !465, line: 423, column: 15)
!2112 = distinct !DILexicalBlock(scope: !2104, file: !465, line: 423, column: 15)
!2113 = !DILocation(line: 423, column: 15, scope: !2112)
!2114 = !DILocation(line: 423, column: 15, scope: !2104)
!2115 = !DILocation(line: 423, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !465, line: 423, column: 15)
!2117 = distinct !DILexicalBlock(scope: !2096, file: !465, line: 423, column: 15)
!2118 = !DILocation(line: 423, column: 15, scope: !2117)
!2119 = !DILocation(line: 431, column: 19, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2097, file: !465, line: 430, column: 19)
!2121 = !DILocation(line: 431, column: 24, scope: !2120)
!2122 = !DILocation(line: 431, column: 28, scope: !2120)
!2123 = !DILocation(line: 431, column: 38, scope: !2120)
!2124 = !DILocation(line: 431, column: 48, scope: !2120)
!2125 = !DILocation(line: 431, column: 59, scope: !2120)
!2126 = !DILocation(line: 433, column: 19, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !465, line: 433, column: 19)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !465, line: 433, column: 19)
!2129 = distinct !DILexicalBlock(scope: !2120, file: !465, line: 432, column: 17)
!2130 = !DILocation(line: 433, column: 19, scope: !2128)
!2131 = !DILocation(line: 434, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !465, line: 434, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !465, line: 434, column: 19)
!2134 = !DILocation(line: 434, column: 19, scope: !2133)
!2135 = !DILocation(line: 435, column: 17, scope: !2129)
!2136 = !DILocation(line: 442, column: 20, scope: !2098)
!2137 = !DILocation(line: 447, column: 11, scope: !1946)
!2138 = !DILocation(line: 450, column: 19, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 448, column: 13)
!2140 = !DILocation(line: 456, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !465, line: 455, column: 19)
!2142 = !DILocation(line: 456, column: 24, scope: !2141)
!2143 = !DILocation(line: 456, column: 28, scope: !2141)
!2144 = !DILocation(line: 456, column: 38, scope: !2141)
!2145 = !DILocation(line: 456, column: 47, scope: !2141)
!2146 = !DILocation(line: 456, column: 41, scope: !2141)
!2147 = !DILocation(line: 456, column: 52, scope: !2141)
!2148 = !DILocation(line: 455, column: 19, scope: !2139)
!2149 = !DILocation(line: 457, column: 25, scope: !2141)
!2150 = !DILocation(line: 457, column: 17, scope: !2141)
!2151 = !DILocation(line: 464, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2141, file: !465, line: 458, column: 19)
!2153 = !DILocation(line: 468, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !465, line: 468, column: 21)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !465, line: 468, column: 21)
!2156 = !DILocation(line: 468, column: 21, scope: !2155)
!2157 = !DILocation(line: 469, column: 21, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !465, line: 469, column: 21)
!2159 = distinct !DILexicalBlock(scope: !2152, file: !465, line: 469, column: 21)
!2160 = !DILocation(line: 469, column: 21, scope: !2159)
!2161 = !DILocation(line: 470, column: 21, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !465, line: 470, column: 21)
!2163 = distinct !DILexicalBlock(scope: !2152, file: !465, line: 470, column: 21)
!2164 = !DILocation(line: 470, column: 21, scope: !2163)
!2165 = !DILocation(line: 471, column: 21, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !465, line: 471, column: 21)
!2167 = distinct !DILexicalBlock(scope: !2152, file: !465, line: 471, column: 21)
!2168 = !DILocation(line: 471, column: 21, scope: !2167)
!2169 = !DILocation(line: 472, column: 21, scope: !2152)
!2170 = !DILocation(line: 482, column: 33, scope: !1969)
!2171 = !DILocation(line: 483, column: 33, scope: !1969)
!2172 = !DILocation(line: 485, column: 33, scope: !1969)
!2173 = !DILocation(line: 486, column: 33, scope: !1969)
!2174 = !DILocation(line: 487, column: 33, scope: !1969)
!2175 = !DILocation(line: 490, column: 17, scope: !1969)
!2176 = !DILocation(line: 492, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !465, line: 491, column: 15)
!2178 = distinct !DILexicalBlock(scope: !1969, file: !465, line: 490, column: 17)
!2179 = !DILocation(line: 499, column: 35, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1969, file: !465, line: 499, column: 17)
!2181 = !DILocation(line: 0, scope: !1969)
!2182 = !DILocation(line: 502, column: 11, scope: !1969)
!2183 = !DILocation(line: 504, column: 17, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !1969, file: !465, line: 503, column: 17)
!2185 = !DILocation(line: 507, column: 11, scope: !1969)
!2186 = !DILocation(line: 508, column: 17, scope: !1969)
!2187 = !DILocation(line: 517, column: 15, scope: !1946)
!2188 = !DILocation(line: 517, column: 40, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 517, column: 15)
!2190 = !DILocation(line: 517, column: 47, scope: !2189)
!2191 = !DILocation(line: 517, column: 18, scope: !2189)
!2192 = !DILocation(line: 521, column: 17, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 521, column: 15)
!2194 = !DILocation(line: 521, column: 15, scope: !1946)
!2195 = !DILocation(line: 525, column: 11, scope: !1946)
!2196 = !DILocation(line: 537, column: 15, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 536, column: 15)
!2198 = !DILocation(line: 536, column: 15, scope: !1946)
!2199 = !DILocation(line: 544, column: 15, scope: !1946)
!2200 = !DILocation(line: 546, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !465, line: 545, column: 13)
!2202 = distinct !DILexicalBlock(scope: !1946, file: !465, line: 544, column: 15)
!2203 = !DILocation(line: 549, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !465, line: 549, column: 19)
!2205 = !DILocation(line: 549, column: 30, scope: !2204)
!2206 = !DILocation(line: 558, column: 15, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !465, line: 558, column: 15)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !465, line: 558, column: 15)
!2209 = !DILocation(line: 558, column: 15, scope: !2208)
!2210 = !DILocation(line: 559, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !465, line: 559, column: 15)
!2212 = distinct !DILexicalBlock(scope: !2201, file: !465, line: 559, column: 15)
!2213 = !DILocation(line: 559, column: 15, scope: !2212)
!2214 = !DILocation(line: 560, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !465, line: 560, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2201, file: !465, line: 560, column: 15)
!2217 = !DILocation(line: 560, column: 15, scope: !2216)
!2218 = !DILocation(line: 562, column: 13, scope: !2201)
!2219 = !DILocation(line: 602, column: 17, scope: !1945)
!2220 = !DILocation(line: 0, scope: !1945)
!2221 = !DILocation(line: 605, column: 29, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1950, file: !465, line: 603, column: 15)
!2223 = !DILocation(line: 605, column: 41, scope: !2222)
!2224 = !DILocation(line: 606, column: 15, scope: !2222)
!2225 = !DILocation(line: 609, column: 17, scope: !1949)
!2226 = !DILocation(line: 609, column: 27, scope: !1949)
!2227 = !DILocation(line: 0, scope: !2001, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 609, column: 32, scope: !1949)
!2229 = !DILocation(line: 0, scope: !2009, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 1137, column: 3, scope: !2001, inlinedAt: !2228)
!2231 = !DILocation(line: 59, column: 10, scope: !2009, inlinedAt: !2230)
!2232 = !DILocation(line: 613, column: 29, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1949, file: !465, line: 613, column: 21)
!2234 = !DILocation(line: 613, column: 21, scope: !1949)
!2235 = !DILocation(line: 614, column: 29, scope: !2233)
!2236 = !DILocation(line: 614, column: 19, scope: !2233)
!2237 = !DILocation(line: 618, column: 21, scope: !1952)
!2238 = !DILocation(line: 620, column: 54, scope: !1952)
!2239 = !DILocation(line: 0, scope: !1952)
!2240 = !DILocation(line: 619, column: 36, scope: !1952)
!2241 = !DILocation(line: 621, column: 25, scope: !1952)
!2242 = !DILocation(line: 631, column: 38, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1961, file: !465, line: 629, column: 23)
!2244 = !DILocation(line: 631, column: 48, scope: !2243)
!2245 = !DILocation(line: 626, column: 25, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1962, file: !465, line: 624, column: 23)
!2247 = !DILocation(line: 631, column: 51, scope: !2243)
!2248 = !DILocation(line: 631, column: 25, scope: !2243)
!2249 = !DILocation(line: 632, column: 28, scope: !2243)
!2250 = !DILocation(line: 631, column: 34, scope: !2243)
!2251 = distinct !{!2251, !2248, !2249, !941}
!2252 = !DILocation(line: 646, column: 29, scope: !1959)
!2253 = !DILocation(line: 0, scope: !1957)
!2254 = !DILocation(line: 649, column: 49, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1957, file: !465, line: 648, column: 29)
!2256 = !DILocation(line: 649, column: 39, scope: !2255)
!2257 = !DILocation(line: 649, column: 31, scope: !2255)
!2258 = !DILocation(line: 648, column: 60, scope: !2255)
!2259 = !DILocation(line: 648, column: 50, scope: !2255)
!2260 = !DILocation(line: 648, column: 29, scope: !1957)
!2261 = distinct !{!2261, !2260, !2262, !941}
!2262 = !DILocation(line: 654, column: 33, scope: !1957)
!2263 = !DILocation(line: 657, column: 43, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1960, file: !465, line: 657, column: 29)
!2265 = !DILocalVariable(name: "wc", arg: 1, scope: !2266, file: !2267, line: 865, type: !2270)
!2266 = distinct !DISubprogram(name: "c32isprint", scope: !2267, file: !2267, line: 865, type: !2268, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2272)
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
!2277 = !DILocation(line: 664, column: 23, scope: !1952)
!2278 = !DILocation(line: 665, column: 19, scope: !1953)
!2279 = !DILocation(line: 666, column: 15, scope: !1950)
!2280 = !DILocation(line: 753, column: 2, scope: !1906)
!2281 = !DILocation(line: 756, column: 51, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 756, column: 7)
!2283 = !DILocation(line: 0, scope: !1950)
!2284 = !DILocation(line: 670, column: 19, scope: !1966)
!2285 = !DILocation(line: 670, column: 23, scope: !1966)
!2286 = !DILocation(line: 674, column: 33, scope: !1965)
!2287 = !DILocation(line: 0, scope: !1965)
!2288 = !DILocation(line: 676, column: 17, scope: !1965)
!2289 = !DILocation(line: 398, column: 12, scope: !1939)
!2290 = !DILocation(line: 678, column: 43, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !465, line: 678, column: 25)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !465, line: 677, column: 19)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !465, line: 676, column: 17)
!2294 = distinct !DILexicalBlock(scope: !1965, file: !465, line: 676, column: 17)
!2295 = !DILocation(line: 680, column: 25, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !465, line: 680, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !465, line: 679, column: 23)
!2298 = !DILocation(line: 680, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !465, line: 680, column: 25)
!2300 = !DILocation(line: 680, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !465, line: 680, column: 25)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !465, line: 680, column: 25)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !465, line: 680, column: 25)
!2304 = !DILocation(line: 680, column: 25, scope: !2302)
!2305 = !DILocation(line: 680, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !465, line: 680, column: 25)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !465, line: 680, column: 25)
!2308 = !DILocation(line: 680, column: 25, scope: !2307)
!2309 = !DILocation(line: 680, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !465, line: 680, column: 25)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !465, line: 680, column: 25)
!2312 = !DILocation(line: 680, column: 25, scope: !2311)
!2313 = !DILocation(line: 680, column: 25, scope: !2303)
!2314 = !DILocation(line: 680, column: 25, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !465, line: 680, column: 25)
!2316 = distinct !DILexicalBlock(scope: !2296, file: !465, line: 680, column: 25)
!2317 = !DILocation(line: 680, column: 25, scope: !2316)
!2318 = !DILocation(line: 681, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !465, line: 681, column: 25)
!2320 = distinct !DILexicalBlock(scope: !2297, file: !465, line: 681, column: 25)
!2321 = !DILocation(line: 681, column: 25, scope: !2320)
!2322 = !DILocation(line: 682, column: 25, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !465, line: 682, column: 25)
!2324 = distinct !DILexicalBlock(scope: !2297, file: !465, line: 682, column: 25)
!2325 = !DILocation(line: 682, column: 25, scope: !2324)
!2326 = !DILocation(line: 683, column: 38, scope: !2297)
!2327 = !DILocation(line: 683, column: 33, scope: !2297)
!2328 = !DILocation(line: 684, column: 23, scope: !2297)
!2329 = !DILocation(line: 685, column: 30, scope: !2291)
!2330 = !DILocation(line: 687, column: 25, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !465, line: 687, column: 25)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !465, line: 687, column: 25)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !465, line: 686, column: 23)
!2334 = distinct !DILexicalBlock(scope: !2291, file: !465, line: 685, column: 30)
!2335 = !DILocation(line: 687, column: 25, scope: !2332)
!2336 = !DILocation(line: 689, column: 23, scope: !2333)
!2337 = !DILocation(line: 690, column: 35, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2292, file: !465, line: 690, column: 25)
!2339 = !DILocation(line: 690, column: 30, scope: !2338)
!2340 = !DILocation(line: 690, column: 25, scope: !2292)
!2341 = !DILocation(line: 692, column: 21, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !465, line: 692, column: 21)
!2343 = distinct !DILexicalBlock(scope: !2292, file: !465, line: 692, column: 21)
!2344 = !DILocation(line: 692, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !465, line: 692, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !465, line: 692, column: 21)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !465, line: 692, column: 21)
!2348 = !DILocation(line: 692, column: 21, scope: !2346)
!2349 = !DILocation(line: 692, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !465, line: 692, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !465, line: 692, column: 21)
!2352 = !DILocation(line: 692, column: 21, scope: !2351)
!2353 = !DILocation(line: 692, column: 21, scope: !2347)
!2354 = !DILocation(line: 0, scope: !2292)
!2355 = !DILocation(line: 693, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !465, line: 693, column: 21)
!2357 = distinct !DILexicalBlock(scope: !2292, file: !465, line: 693, column: 21)
!2358 = !DILocation(line: 693, column: 21, scope: !2357)
!2359 = !DILocation(line: 694, column: 25, scope: !2292)
!2360 = !DILocation(line: 676, column: 17, scope: !2293)
!2361 = distinct !{!2361, !2362, !2363}
!2362 = !DILocation(line: 676, column: 17, scope: !2294)
!2363 = !DILocation(line: 695, column: 19, scope: !2294)
!2364 = !DILocation(line: 409, column: 30, scope: !2074)
!2365 = !DILocation(line: 702, column: 34, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 702, column: 11)
!2367 = !DILocation(line: 704, column: 14, scope: !2366)
!2368 = !DILocation(line: 705, column: 14, scope: !2366)
!2369 = !DILocation(line: 705, column: 35, scope: !2366)
!2370 = !DILocation(line: 705, column: 17, scope: !2366)
!2371 = !DILocation(line: 705, column: 47, scope: !2366)
!2372 = !DILocation(line: 705, column: 65, scope: !2366)
!2373 = !DILocation(line: 706, column: 11, scope: !2366)
!2374 = !DILocation(line: 702, column: 11, scope: !1939)
!2375 = !DILocation(line: 395, column: 15, scope: !1937)
!2376 = !DILocation(line: 709, column: 5, scope: !1939)
!2377 = !DILocation(line: 710, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 710, column: 7)
!2379 = !DILocation(line: 710, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2378, file: !465, line: 710, column: 7)
!2381 = !DILocation(line: 710, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !465, line: 710, column: 7)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !465, line: 710, column: 7)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !465, line: 710, column: 7)
!2385 = !DILocation(line: 710, column: 7, scope: !2383)
!2386 = !DILocation(line: 710, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !465, line: 710, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !465, line: 710, column: 7)
!2389 = !DILocation(line: 710, column: 7, scope: !2388)
!2390 = !DILocation(line: 710, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !465, line: 710, column: 7)
!2392 = distinct !DILexicalBlock(scope: !2384, file: !465, line: 710, column: 7)
!2393 = !DILocation(line: 710, column: 7, scope: !2392)
!2394 = !DILocation(line: 710, column: 7, scope: !2384)
!2395 = !DILocation(line: 710, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !465, line: 710, column: 7)
!2397 = distinct !DILexicalBlock(scope: !2378, file: !465, line: 710, column: 7)
!2398 = !DILocation(line: 710, column: 7, scope: !2397)
!2399 = !DILocation(line: 712, column: 5, scope: !1939)
!2400 = !DILocation(line: 713, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !465, line: 713, column: 7)
!2402 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 713, column: 7)
!2403 = !DILocation(line: 417, column: 21, scope: !1939)
!2404 = !DILocation(line: 713, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !465, line: 713, column: 7)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !465, line: 713, column: 7)
!2407 = distinct !DILexicalBlock(scope: !2401, file: !465, line: 713, column: 7)
!2408 = !DILocation(line: 713, column: 7, scope: !2406)
!2409 = !DILocation(line: 713, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !465, line: 713, column: 7)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !465, line: 713, column: 7)
!2412 = !DILocation(line: 713, column: 7, scope: !2411)
!2413 = !DILocation(line: 713, column: 7, scope: !2407)
!2414 = !DILocation(line: 714, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !465, line: 714, column: 7)
!2416 = distinct !DILexicalBlock(scope: !1939, file: !465, line: 714, column: 7)
!2417 = !DILocation(line: 714, column: 7, scope: !2416)
!2418 = !DILocation(line: 716, column: 11, scope: !1939)
!2419 = !DILocation(line: 718, column: 5, scope: !1940)
!2420 = !DILocation(line: 395, column: 82, scope: !1940)
!2421 = !DILocation(line: 395, column: 3, scope: !1940)
!2422 = distinct !{!2422, !2070, !2423, !941}
!2423 = !DILocation(line: 718, column: 5, scope: !1937)
!2424 = !DILocation(line: 720, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 720, column: 7)
!2426 = !DILocation(line: 720, column: 16, scope: !2425)
!2427 = !DILocation(line: 728, column: 51, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 728, column: 7)
!2429 = !DILocation(line: 731, column: 11, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2428, file: !465, line: 730, column: 5)
!2431 = !DILocation(line: 732, column: 16, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !465, line: 731, column: 11)
!2433 = !DILocation(line: 732, column: 9, scope: !2432)
!2434 = !DILocation(line: 736, column: 18, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !465, line: 736, column: 16)
!2436 = !DILocation(line: 736, column: 29, scope: !2435)
!2437 = !DILocation(line: 745, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 745, column: 7)
!2439 = !DILocation(line: 745, column: 20, scope: !2438)
!2440 = !DILocation(line: 746, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !465, line: 746, column: 5)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !465, line: 746, column: 5)
!2443 = !DILocation(line: 746, column: 5, scope: !2442)
!2444 = !DILocation(line: 747, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !465, line: 747, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !465, line: 747, column: 7)
!2447 = !DILocation(line: 747, column: 7, scope: !2446)
!2448 = !DILocation(line: 746, column: 39, scope: !2441)
!2449 = distinct !{!2449, !2443, !2450, !941}
!2450 = !DILocation(line: 747, column: 7, scope: !2442)
!2451 = !DILocation(line: 749, column: 11, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !1906, file: !465, line: 749, column: 7)
!2453 = !DILocation(line: 749, column: 7, scope: !1906)
!2454 = !DILocation(line: 750, column: 5, scope: !2452)
!2455 = !DILocation(line: 750, column: 17, scope: !2452)
!2456 = !DILocation(line: 756, column: 21, scope: !2282)
!2457 = !DILocation(line: 760, column: 42, scope: !1906)
!2458 = !DILocation(line: 758, column: 10, scope: !1906)
!2459 = !DILocation(line: 758, column: 3, scope: !1906)
!2460 = !DILocation(line: 762, column: 1, scope: !1906)
!2461 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1015, file: !1015, line: 98, type: !2462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!77}
!2464 = !DISubprogram(name: "strlen", scope: !1011, file: !1011, line: 407, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!79, !80}
!2467 = !DISubprogram(name: "iswprint", scope: !2468, file: !2468, line: 120, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!2468 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2469 = distinct !DISubprogram(name: "quotearg_alloc", scope: !465, file: !465, line: 788, type: !2470, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!74, !80, !77, !1799}
!2472 = !{!2473, !2474, !2475}
!2473 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !465, line: 788, type: !80)
!2474 = !DILocalVariable(name: "argsize", arg: 2, scope: !2469, file: !465, line: 788, type: !77)
!2475 = !DILocalVariable(name: "o", arg: 3, scope: !2469, file: !465, line: 789, type: !1799)
!2476 = !DILocation(line: 0, scope: !2469)
!2477 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !465, line: 801, type: !80)
!2478 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !465, file: !465, line: 801, type: !2479, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!74, !80, !77, !726, !1799}
!2481 = !{!2477, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2482 = !DILocalVariable(name: "argsize", arg: 2, scope: !2478, file: !465, line: 801, type: !77)
!2483 = !DILocalVariable(name: "size", arg: 3, scope: !2478, file: !465, line: 801, type: !726)
!2484 = !DILocalVariable(name: "o", arg: 4, scope: !2478, file: !465, line: 802, type: !1799)
!2485 = !DILocalVariable(name: "p", scope: !2478, file: !465, line: 804, type: !1799)
!2486 = !DILocalVariable(name: "saved_errno", scope: !2478, file: !465, line: 805, type: !53)
!2487 = !DILocalVariable(name: "flags", scope: !2478, file: !465, line: 807, type: !53)
!2488 = !DILocalVariable(name: "bufsize", scope: !2478, file: !465, line: 808, type: !77)
!2489 = !DILocalVariable(name: "buf", scope: !2478, file: !465, line: 812, type: !74)
!2490 = !DILocation(line: 0, scope: !2478, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 791, column: 10, scope: !2469)
!2492 = !DILocation(line: 804, column: 37, scope: !2478, inlinedAt: !2491)
!2493 = !DILocation(line: 805, column: 21, scope: !2478, inlinedAt: !2491)
!2494 = !DILocation(line: 807, column: 18, scope: !2478, inlinedAt: !2491)
!2495 = !DILocation(line: 807, column: 24, scope: !2478, inlinedAt: !2491)
!2496 = !DILocation(line: 808, column: 72, scope: !2478, inlinedAt: !2491)
!2497 = !DILocation(line: 809, column: 56, scope: !2478, inlinedAt: !2491)
!2498 = !DILocation(line: 810, column: 49, scope: !2478, inlinedAt: !2491)
!2499 = !DILocation(line: 811, column: 49, scope: !2478, inlinedAt: !2491)
!2500 = !DILocation(line: 808, column: 20, scope: !2478, inlinedAt: !2491)
!2501 = !DILocation(line: 811, column: 62, scope: !2478, inlinedAt: !2491)
!2502 = !DILocation(line: 812, column: 15, scope: !2478, inlinedAt: !2491)
!2503 = !DILocation(line: 813, column: 60, scope: !2478, inlinedAt: !2491)
!2504 = !DILocation(line: 815, column: 32, scope: !2478, inlinedAt: !2491)
!2505 = !DILocation(line: 815, column: 47, scope: !2478, inlinedAt: !2491)
!2506 = !DILocation(line: 813, column: 3, scope: !2478, inlinedAt: !2491)
!2507 = !DILocation(line: 816, column: 9, scope: !2478, inlinedAt: !2491)
!2508 = !DILocation(line: 791, column: 3, scope: !2469)
!2509 = !DILocation(line: 0, scope: !2478)
!2510 = !DILocation(line: 804, column: 37, scope: !2478)
!2511 = !DILocation(line: 805, column: 21, scope: !2478)
!2512 = !DILocation(line: 807, column: 18, scope: !2478)
!2513 = !DILocation(line: 807, column: 27, scope: !2478)
!2514 = !DILocation(line: 807, column: 24, scope: !2478)
!2515 = !DILocation(line: 808, column: 72, scope: !2478)
!2516 = !DILocation(line: 809, column: 56, scope: !2478)
!2517 = !DILocation(line: 810, column: 49, scope: !2478)
!2518 = !DILocation(line: 811, column: 49, scope: !2478)
!2519 = !DILocation(line: 808, column: 20, scope: !2478)
!2520 = !DILocation(line: 811, column: 62, scope: !2478)
!2521 = !DILocation(line: 812, column: 15, scope: !2478)
!2522 = !DILocation(line: 813, column: 60, scope: !2478)
!2523 = !DILocation(line: 815, column: 32, scope: !2478)
!2524 = !DILocation(line: 815, column: 47, scope: !2478)
!2525 = !DILocation(line: 813, column: 3, scope: !2478)
!2526 = !DILocation(line: 816, column: 9, scope: !2478)
!2527 = !DILocation(line: 817, column: 7, scope: !2478)
!2528 = !DILocation(line: 818, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2478, file: !465, line: 817, column: 7)
!2530 = !{!1136, !1136, i64 0}
!2531 = !DILocation(line: 818, column: 5, scope: !2529)
!2532 = !DILocation(line: 819, column: 3, scope: !2478)
!2533 = distinct !DISubprogram(name: "quotearg_free", scope: !465, file: !465, line: 837, type: !420, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2534)
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "sv", scope: !2533, file: !465, line: 839, type: !566)
!2536 = !DILocalVariable(name: "i", scope: !2537, file: !465, line: 840, type: !53)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !465, line: 840, column: 3)
!2538 = !DILocation(line: 839, column: 24, scope: !2533)
!2539 = !DILocation(line: 0, scope: !2533)
!2540 = !DILocation(line: 0, scope: !2537)
!2541 = !DILocation(line: 840, column: 21, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !465, line: 840, column: 3)
!2543 = !DILocation(line: 840, column: 3, scope: !2537)
!2544 = !DILocation(line: 842, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2533, file: !465, line: 842, column: 7)
!2546 = !{!2547, !835, i64 8}
!2547 = !{!"slotvec", !1136, i64 0, !835, i64 8}
!2548 = !DILocation(line: 842, column: 17, scope: !2545)
!2549 = !DILocation(line: 842, column: 7, scope: !2533)
!2550 = !DILocation(line: 841, column: 17, scope: !2542)
!2551 = !DILocation(line: 841, column: 5, scope: !2542)
!2552 = !DILocation(line: 840, column: 32, scope: !2542)
!2553 = distinct !{!2553, !2543, !2554, !941}
!2554 = !DILocation(line: 841, column: 20, scope: !2537)
!2555 = !DILocation(line: 844, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2545, file: !465, line: 843, column: 5)
!2557 = !DILocation(line: 845, column: 21, scope: !2556)
!2558 = !{!2547, !1136, i64 0}
!2559 = !DILocation(line: 846, column: 20, scope: !2556)
!2560 = !DILocation(line: 847, column: 5, scope: !2556)
!2561 = !DILocation(line: 848, column: 10, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2533, file: !465, line: 848, column: 7)
!2563 = !DILocation(line: 848, column: 7, scope: !2533)
!2564 = !DILocation(line: 850, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2562, file: !465, line: 849, column: 5)
!2566 = !DILocation(line: 851, column: 15, scope: !2565)
!2567 = !DILocation(line: 852, column: 5, scope: !2565)
!2568 = !DILocation(line: 853, column: 10, scope: !2533)
!2569 = !DILocation(line: 854, column: 1, scope: !2533)
!2570 = distinct !DISubprogram(name: "quotearg_n", scope: !465, file: !465, line: 919, type: !1008, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2571)
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2570, file: !465, line: 919, type: !53)
!2573 = !DILocalVariable(name: "arg", arg: 2, scope: !2570, file: !465, line: 919, type: !80)
!2574 = !DILocation(line: 0, scope: !2570)
!2575 = !DILocation(line: 921, column: 10, scope: !2570)
!2576 = !DILocation(line: 921, column: 3, scope: !2570)
!2577 = distinct !DISubprogram(name: "quotearg_n_options", scope: !465, file: !465, line: 866, type: !2578, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!74, !53, !80, !77, !1799}
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2591, !2592, !2594, !2595, !2596}
!2581 = !DILocalVariable(name: "n", arg: 1, scope: !2577, file: !465, line: 866, type: !53)
!2582 = !DILocalVariable(name: "arg", arg: 2, scope: !2577, file: !465, line: 866, type: !80)
!2583 = !DILocalVariable(name: "argsize", arg: 3, scope: !2577, file: !465, line: 866, type: !77)
!2584 = !DILocalVariable(name: "options", arg: 4, scope: !2577, file: !465, line: 867, type: !1799)
!2585 = !DILocalVariable(name: "saved_errno", scope: !2577, file: !465, line: 869, type: !53)
!2586 = !DILocalVariable(name: "sv", scope: !2577, file: !465, line: 871, type: !566)
!2587 = !DILocalVariable(name: "nslots_max", scope: !2577, file: !465, line: 873, type: !53)
!2588 = !DILocalVariable(name: "preallocated", scope: !2589, file: !465, line: 879, type: !133)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !465, line: 878, column: 5)
!2590 = distinct !DILexicalBlock(scope: !2577, file: !465, line: 877, column: 7)
!2591 = !DILocalVariable(name: "new_nslots", scope: !2589, file: !465, line: 880, type: !739)
!2592 = !DILocalVariable(name: "size", scope: !2593, file: !465, line: 891, type: !77)
!2593 = distinct !DILexicalBlock(scope: !2577, file: !465, line: 890, column: 3)
!2594 = !DILocalVariable(name: "val", scope: !2593, file: !465, line: 892, type: !74)
!2595 = !DILocalVariable(name: "flags", scope: !2593, file: !465, line: 894, type: !53)
!2596 = !DILocalVariable(name: "qsize", scope: !2593, file: !465, line: 895, type: !77)
!2597 = !DILocation(line: 0, scope: !2577)
!2598 = !DILocation(line: 869, column: 21, scope: !2577)
!2599 = !DILocation(line: 871, column: 24, scope: !2577)
!2600 = !DILocation(line: 874, column: 17, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2577, file: !465, line: 874, column: 7)
!2602 = !DILocation(line: 875, column: 5, scope: !2601)
!2603 = !DILocation(line: 877, column: 7, scope: !2590)
!2604 = !DILocation(line: 877, column: 14, scope: !2590)
!2605 = !DILocation(line: 877, column: 7, scope: !2577)
!2606 = !DILocation(line: 879, column: 31, scope: !2589)
!2607 = !DILocation(line: 0, scope: !2589)
!2608 = !DILocation(line: 880, column: 7, scope: !2589)
!2609 = !DILocation(line: 880, column: 26, scope: !2589)
!2610 = !DILocation(line: 880, column: 13, scope: !2589)
!2611 = !DILocation(line: 882, column: 31, scope: !2589)
!2612 = !DILocation(line: 883, column: 33, scope: !2589)
!2613 = !DILocation(line: 883, column: 42, scope: !2589)
!2614 = !DILocation(line: 883, column: 31, scope: !2589)
!2615 = !DILocation(line: 882, column: 22, scope: !2589)
!2616 = !DILocation(line: 882, column: 15, scope: !2589)
!2617 = !DILocation(line: 884, column: 11, scope: !2589)
!2618 = !DILocation(line: 885, column: 15, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2589, file: !465, line: 884, column: 11)
!2620 = !{i64 0, i64 8, !2530, i64 8, i64 8, !834}
!2621 = !DILocation(line: 885, column: 9, scope: !2619)
!2622 = !DILocation(line: 886, column: 20, scope: !2589)
!2623 = !DILocation(line: 886, column: 18, scope: !2589)
!2624 = !DILocation(line: 886, column: 32, scope: !2589)
!2625 = !DILocation(line: 886, column: 43, scope: !2589)
!2626 = !DILocation(line: 886, column: 53, scope: !2589)
!2627 = !DILocation(line: 0, scope: !2009, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 886, column: 7, scope: !2589)
!2629 = !DILocation(line: 59, column: 10, scope: !2009, inlinedAt: !2628)
!2630 = !DILocation(line: 887, column: 16, scope: !2589)
!2631 = !DILocation(line: 887, column: 14, scope: !2589)
!2632 = !DILocation(line: 888, column: 5, scope: !2590)
!2633 = !DILocation(line: 888, column: 5, scope: !2589)
!2634 = !DILocation(line: 891, column: 19, scope: !2593)
!2635 = !DILocation(line: 891, column: 25, scope: !2593)
!2636 = !DILocation(line: 0, scope: !2593)
!2637 = !DILocation(line: 892, column: 23, scope: !2593)
!2638 = !DILocation(line: 894, column: 26, scope: !2593)
!2639 = !DILocation(line: 894, column: 32, scope: !2593)
!2640 = !DILocation(line: 896, column: 55, scope: !2593)
!2641 = !DILocation(line: 897, column: 55, scope: !2593)
!2642 = !DILocation(line: 898, column: 55, scope: !2593)
!2643 = !DILocation(line: 899, column: 55, scope: !2593)
!2644 = !DILocation(line: 895, column: 20, scope: !2593)
!2645 = !DILocation(line: 901, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2593, file: !465, line: 901, column: 9)
!2647 = !DILocation(line: 901, column: 9, scope: !2593)
!2648 = !DILocation(line: 903, column: 35, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !465, line: 902, column: 7)
!2650 = !DILocation(line: 903, column: 20, scope: !2649)
!2651 = !DILocation(line: 904, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !465, line: 904, column: 13)
!2653 = !DILocation(line: 904, column: 13, scope: !2649)
!2654 = !DILocation(line: 905, column: 11, scope: !2652)
!2655 = !DILocation(line: 906, column: 27, scope: !2649)
!2656 = !DILocation(line: 906, column: 19, scope: !2649)
!2657 = !DILocation(line: 907, column: 69, scope: !2649)
!2658 = !DILocation(line: 909, column: 44, scope: !2649)
!2659 = !DILocation(line: 910, column: 44, scope: !2649)
!2660 = !DILocation(line: 907, column: 9, scope: !2649)
!2661 = !DILocation(line: 911, column: 7, scope: !2649)
!2662 = !DILocation(line: 913, column: 11, scope: !2593)
!2663 = !DILocation(line: 914, column: 5, scope: !2593)
!2664 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !465, file: !465, line: 925, type: !2665, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!74, !53, !80, !77}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !465, line: 925, type: !53)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !465, line: 925, type: !80)
!2670 = !DILocalVariable(name: "argsize", arg: 3, scope: !2664, file: !465, line: 925, type: !77)
!2671 = !DILocation(line: 0, scope: !2664)
!2672 = !DILocation(line: 927, column: 10, scope: !2664)
!2673 = !DILocation(line: 927, column: 3, scope: !2664)
!2674 = distinct !DISubprogram(name: "quotearg", scope: !465, file: !465, line: 931, type: !1017, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2675)
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "arg", arg: 1, scope: !2674, file: !465, line: 931, type: !80)
!2677 = !DILocation(line: 0, scope: !2674)
!2678 = !DILocation(line: 0, scope: !2570, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 933, column: 10, scope: !2674)
!2680 = !DILocation(line: 921, column: 10, scope: !2570, inlinedAt: !2679)
!2681 = !DILocation(line: 933, column: 3, scope: !2674)
!2682 = distinct !DISubprogram(name: "quotearg_mem", scope: !465, file: !465, line: 937, type: !2683, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!74, !80, !77}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !465, line: 937, type: !80)
!2687 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !465, line: 937, type: !77)
!2688 = !DILocation(line: 0, scope: !2682)
!2689 = !DILocation(line: 0, scope: !2664, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 939, column: 10, scope: !2682)
!2691 = !DILocation(line: 927, column: 10, scope: !2664, inlinedAt: !2690)
!2692 = !DILocation(line: 939, column: 3, scope: !2682)
!2693 = distinct !DISubprogram(name: "quotearg_n_style", scope: !465, file: !465, line: 943, type: !2694, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!74, !53, !491, !80}
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !465, line: 943, type: !53)
!2698 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !465, line: 943, type: !491)
!2699 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !465, line: 943, type: !80)
!2700 = !DILocalVariable(name: "o", scope: !2693, file: !465, line: 945, type: !1800)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 945, column: 3, scope: !2693)
!2703 = !DILocation(line: 945, column: 32, scope: !2693)
!2704 = !{!2705}
!2705 = distinct !{!2705, !2706, !"quoting_options_from_style: argument 0"}
!2706 = distinct !{!2706, !"quoting_options_from_style"}
!2707 = !DILocation(line: 945, column: 36, scope: !2693)
!2708 = !DILocalVariable(name: "style", arg: 1, scope: !2709, file: !465, line: 183, type: !491)
!2709 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !465, file: !465, line: 183, type: !2710, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!518, !491}
!2712 = !{!2708, !2713}
!2713 = !DILocalVariable(name: "o", scope: !2709, file: !465, line: 185, type: !518)
!2714 = !DILocation(line: 0, scope: !2709, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 945, column: 36, scope: !2693)
!2716 = !DILocation(line: 185, column: 26, scope: !2709, inlinedAt: !2715)
!2717 = !DILocation(line: 186, column: 13, scope: !2718, inlinedAt: !2715)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !465, line: 186, column: 7)
!2719 = !DILocation(line: 186, column: 7, scope: !2709, inlinedAt: !2715)
!2720 = !DILocation(line: 187, column: 5, scope: !2718, inlinedAt: !2715)
!2721 = !DILocation(line: 188, column: 11, scope: !2709, inlinedAt: !2715)
!2722 = !DILocation(line: 946, column: 10, scope: !2693)
!2723 = !DILocation(line: 947, column: 1, scope: !2693)
!2724 = !DILocation(line: 946, column: 3, scope: !2693)
!2725 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !465, file: !465, line: 950, type: !2726, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!74, !53, !491, !80, !77}
!2728 = !{!2729, !2730, !2731, !2732, !2733}
!2729 = !DILocalVariable(name: "n", arg: 1, scope: !2725, file: !465, line: 950, type: !53)
!2730 = !DILocalVariable(name: "s", arg: 2, scope: !2725, file: !465, line: 950, type: !491)
!2731 = !DILocalVariable(name: "arg", arg: 3, scope: !2725, file: !465, line: 951, type: !80)
!2732 = !DILocalVariable(name: "argsize", arg: 4, scope: !2725, file: !465, line: 951, type: !77)
!2733 = !DILocalVariable(name: "o", scope: !2725, file: !465, line: 953, type: !1800)
!2734 = !DILocation(line: 0, scope: !2725)
!2735 = !DILocation(line: 953, column: 3, scope: !2725)
!2736 = !DILocation(line: 953, column: 32, scope: !2725)
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"quoting_options_from_style: argument 0"}
!2739 = distinct !{!2739, !"quoting_options_from_style"}
!2740 = !DILocation(line: 953, column: 36, scope: !2725)
!2741 = !DILocation(line: 0, scope: !2709, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 953, column: 36, scope: !2725)
!2743 = !DILocation(line: 185, column: 26, scope: !2709, inlinedAt: !2742)
!2744 = !DILocation(line: 186, column: 13, scope: !2718, inlinedAt: !2742)
!2745 = !DILocation(line: 186, column: 7, scope: !2709, inlinedAt: !2742)
!2746 = !DILocation(line: 187, column: 5, scope: !2718, inlinedAt: !2742)
!2747 = !DILocation(line: 188, column: 11, scope: !2709, inlinedAt: !2742)
!2748 = !DILocation(line: 954, column: 10, scope: !2725)
!2749 = !DILocation(line: 955, column: 1, scope: !2725)
!2750 = !DILocation(line: 954, column: 3, scope: !2725)
!2751 = distinct !DISubprogram(name: "quotearg_style", scope: !465, file: !465, line: 958, type: !2752, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!74, !491, !80}
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "s", arg: 1, scope: !2751, file: !465, line: 958, type: !491)
!2756 = !DILocalVariable(name: "arg", arg: 2, scope: !2751, file: !465, line: 958, type: !80)
!2757 = !DILocation(line: 0, scope: !2751)
!2758 = !DILocation(line: 0, scope: !2693, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 960, column: 10, scope: !2751)
!2760 = !DILocation(line: 945, column: 3, scope: !2693, inlinedAt: !2759)
!2761 = !DILocation(line: 945, column: 32, scope: !2693, inlinedAt: !2759)
!2762 = !{!2763}
!2763 = distinct !{!2763, !2764, !"quoting_options_from_style: argument 0"}
!2764 = distinct !{!2764, !"quoting_options_from_style"}
!2765 = !DILocation(line: 945, column: 36, scope: !2693, inlinedAt: !2759)
!2766 = !DILocation(line: 0, scope: !2709, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 945, column: 36, scope: !2693, inlinedAt: !2759)
!2768 = !DILocation(line: 185, column: 26, scope: !2709, inlinedAt: !2767)
!2769 = !DILocation(line: 186, column: 13, scope: !2718, inlinedAt: !2767)
!2770 = !DILocation(line: 186, column: 7, scope: !2709, inlinedAt: !2767)
!2771 = !DILocation(line: 187, column: 5, scope: !2718, inlinedAt: !2767)
!2772 = !DILocation(line: 188, column: 11, scope: !2709, inlinedAt: !2767)
!2773 = !DILocation(line: 946, column: 10, scope: !2693, inlinedAt: !2759)
!2774 = !DILocation(line: 947, column: 1, scope: !2693, inlinedAt: !2759)
!2775 = !DILocation(line: 960, column: 3, scope: !2751)
!2776 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !465, file: !465, line: 964, type: !2777, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!74, !491, !80, !77}
!2779 = !{!2780, !2781, !2782}
!2780 = !DILocalVariable(name: "s", arg: 1, scope: !2776, file: !465, line: 964, type: !491)
!2781 = !DILocalVariable(name: "arg", arg: 2, scope: !2776, file: !465, line: 964, type: !80)
!2782 = !DILocalVariable(name: "argsize", arg: 3, scope: !2776, file: !465, line: 964, type: !77)
!2783 = !DILocation(line: 0, scope: !2776)
!2784 = !DILocation(line: 0, scope: !2725, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 966, column: 10, scope: !2776)
!2786 = !DILocation(line: 953, column: 3, scope: !2725, inlinedAt: !2785)
!2787 = !DILocation(line: 953, column: 32, scope: !2725, inlinedAt: !2785)
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"quoting_options_from_style: argument 0"}
!2790 = distinct !{!2790, !"quoting_options_from_style"}
!2791 = !DILocation(line: 953, column: 36, scope: !2725, inlinedAt: !2785)
!2792 = !DILocation(line: 0, scope: !2709, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 953, column: 36, scope: !2725, inlinedAt: !2785)
!2794 = !DILocation(line: 185, column: 26, scope: !2709, inlinedAt: !2793)
!2795 = !DILocation(line: 186, column: 13, scope: !2718, inlinedAt: !2793)
!2796 = !DILocation(line: 186, column: 7, scope: !2709, inlinedAt: !2793)
!2797 = !DILocation(line: 187, column: 5, scope: !2718, inlinedAt: !2793)
!2798 = !DILocation(line: 188, column: 11, scope: !2709, inlinedAt: !2793)
!2799 = !DILocation(line: 954, column: 10, scope: !2725, inlinedAt: !2785)
!2800 = !DILocation(line: 955, column: 1, scope: !2725, inlinedAt: !2785)
!2801 = !DILocation(line: 966, column: 3, scope: !2776)
!2802 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !465, file: !465, line: 970, type: !2803, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!74, !80, !77, !4}
!2805 = !{!2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "arg", arg: 1, scope: !2802, file: !465, line: 970, type: !80)
!2807 = !DILocalVariable(name: "argsize", arg: 2, scope: !2802, file: !465, line: 970, type: !77)
!2808 = !DILocalVariable(name: "ch", arg: 3, scope: !2802, file: !465, line: 970, type: !4)
!2809 = !DILocalVariable(name: "options", scope: !2802, file: !465, line: 972, type: !518)
!2810 = !DILocation(line: 0, scope: !2802)
!2811 = !DILocation(line: 972, column: 3, scope: !2802)
!2812 = !DILocation(line: 972, column: 26, scope: !2802)
!2813 = !DILocation(line: 973, column: 13, scope: !2802)
!2814 = !{i64 0, i64 4, !903, i64 4, i64 4, !894, i64 8, i64 32, !903, i64 40, i64 8, !834, i64 48, i64 8, !834}
!2815 = !DILocation(line: 0, scope: !1819, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 974, column: 3, scope: !2802)
!2817 = !DILocation(line: 147, column: 41, scope: !1819, inlinedAt: !2816)
!2818 = !DILocation(line: 147, column: 62, scope: !1819, inlinedAt: !2816)
!2819 = !DILocation(line: 147, column: 57, scope: !1819, inlinedAt: !2816)
!2820 = !DILocation(line: 148, column: 15, scope: !1819, inlinedAt: !2816)
!2821 = !DILocation(line: 149, column: 21, scope: !1819, inlinedAt: !2816)
!2822 = !DILocation(line: 149, column: 24, scope: !1819, inlinedAt: !2816)
!2823 = !DILocation(line: 150, column: 19, scope: !1819, inlinedAt: !2816)
!2824 = !DILocation(line: 150, column: 24, scope: !1819, inlinedAt: !2816)
!2825 = !DILocation(line: 150, column: 6, scope: !1819, inlinedAt: !2816)
!2826 = !DILocation(line: 975, column: 10, scope: !2802)
!2827 = !DILocation(line: 976, column: 1, scope: !2802)
!2828 = !DILocation(line: 975, column: 3, scope: !2802)
!2829 = distinct !DISubprogram(name: "quotearg_char", scope: !465, file: !465, line: 979, type: !2830, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!74, !80, !4}
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "arg", arg: 1, scope: !2829, file: !465, line: 979, type: !80)
!2834 = !DILocalVariable(name: "ch", arg: 2, scope: !2829, file: !465, line: 979, type: !4)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = !DILocation(line: 0, scope: !2802, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 981, column: 10, scope: !2829)
!2838 = !DILocation(line: 972, column: 3, scope: !2802, inlinedAt: !2837)
!2839 = !DILocation(line: 972, column: 26, scope: !2802, inlinedAt: !2837)
!2840 = !DILocation(line: 973, column: 13, scope: !2802, inlinedAt: !2837)
!2841 = !DILocation(line: 0, scope: !1819, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 974, column: 3, scope: !2802, inlinedAt: !2837)
!2843 = !DILocation(line: 147, column: 41, scope: !1819, inlinedAt: !2842)
!2844 = !DILocation(line: 147, column: 62, scope: !1819, inlinedAt: !2842)
!2845 = !DILocation(line: 147, column: 57, scope: !1819, inlinedAt: !2842)
!2846 = !DILocation(line: 148, column: 15, scope: !1819, inlinedAt: !2842)
!2847 = !DILocation(line: 149, column: 21, scope: !1819, inlinedAt: !2842)
!2848 = !DILocation(line: 149, column: 24, scope: !1819, inlinedAt: !2842)
!2849 = !DILocation(line: 150, column: 19, scope: !1819, inlinedAt: !2842)
!2850 = !DILocation(line: 150, column: 24, scope: !1819, inlinedAt: !2842)
!2851 = !DILocation(line: 150, column: 6, scope: !1819, inlinedAt: !2842)
!2852 = !DILocation(line: 975, column: 10, scope: !2802, inlinedAt: !2837)
!2853 = !DILocation(line: 976, column: 1, scope: !2802, inlinedAt: !2837)
!2854 = !DILocation(line: 981, column: 3, scope: !2829)
!2855 = distinct !DISubprogram(name: "quotearg_colon", scope: !465, file: !465, line: 985, type: !1017, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2856)
!2856 = !{!2857}
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2855, file: !465, line: 985, type: !80)
!2858 = !DILocation(line: 0, scope: !2855)
!2859 = !DILocation(line: 0, scope: !2829, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 987, column: 10, scope: !2855)
!2861 = !DILocation(line: 0, scope: !2802, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 981, column: 10, scope: !2829, inlinedAt: !2860)
!2863 = !DILocation(line: 972, column: 3, scope: !2802, inlinedAt: !2862)
!2864 = !DILocation(line: 972, column: 26, scope: !2802, inlinedAt: !2862)
!2865 = !DILocation(line: 973, column: 13, scope: !2802, inlinedAt: !2862)
!2866 = !DILocation(line: 0, scope: !1819, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 974, column: 3, scope: !2802, inlinedAt: !2862)
!2868 = !DILocation(line: 147, column: 57, scope: !1819, inlinedAt: !2867)
!2869 = !DILocation(line: 149, column: 21, scope: !1819, inlinedAt: !2867)
!2870 = !DILocation(line: 150, column: 6, scope: !1819, inlinedAt: !2867)
!2871 = !DILocation(line: 975, column: 10, scope: !2802, inlinedAt: !2862)
!2872 = !DILocation(line: 976, column: 1, scope: !2802, inlinedAt: !2862)
!2873 = !DILocation(line: 987, column: 3, scope: !2855)
!2874 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !465, file: !465, line: 991, type: !2683, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2875)
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !465, line: 991, type: !80)
!2877 = !DILocalVariable(name: "argsize", arg: 2, scope: !2874, file: !465, line: 991, type: !77)
!2878 = !DILocation(line: 0, scope: !2874)
!2879 = !DILocation(line: 0, scope: !2802, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 993, column: 10, scope: !2874)
!2881 = !DILocation(line: 972, column: 3, scope: !2802, inlinedAt: !2880)
!2882 = !DILocation(line: 972, column: 26, scope: !2802, inlinedAt: !2880)
!2883 = !DILocation(line: 973, column: 13, scope: !2802, inlinedAt: !2880)
!2884 = !DILocation(line: 0, scope: !1819, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 974, column: 3, scope: !2802, inlinedAt: !2880)
!2886 = !DILocation(line: 147, column: 57, scope: !1819, inlinedAt: !2885)
!2887 = !DILocation(line: 149, column: 21, scope: !1819, inlinedAt: !2885)
!2888 = !DILocation(line: 150, column: 6, scope: !1819, inlinedAt: !2885)
!2889 = !DILocation(line: 975, column: 10, scope: !2802, inlinedAt: !2880)
!2890 = !DILocation(line: 976, column: 1, scope: !2802, inlinedAt: !2880)
!2891 = !DILocation(line: 993, column: 3, scope: !2874)
!2892 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !465, file: !465, line: 997, type: !2694, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2893)
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !465, line: 997, type: !53)
!2895 = !DILocalVariable(name: "s", arg: 2, scope: !2892, file: !465, line: 997, type: !491)
!2896 = !DILocalVariable(name: "arg", arg: 3, scope: !2892, file: !465, line: 997, type: !80)
!2897 = !DILocalVariable(name: "options", scope: !2892, file: !465, line: 999, type: !518)
!2898 = !DILocation(line: 185, column: 26, scope: !2709, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1000, column: 13, scope: !2892)
!2900 = !DILocation(line: 0, scope: !2892)
!2901 = !DILocation(line: 999, column: 3, scope: !2892)
!2902 = !DILocation(line: 999, column: 26, scope: !2892)
!2903 = !DILocation(line: 0, scope: !2709, inlinedAt: !2899)
!2904 = !DILocation(line: 186, column: 13, scope: !2718, inlinedAt: !2899)
!2905 = !DILocation(line: 186, column: 7, scope: !2709, inlinedAt: !2899)
!2906 = !DILocation(line: 187, column: 5, scope: !2718, inlinedAt: !2899)
!2907 = !{!2908}
!2908 = distinct !{!2908, !2909, !"quoting_options_from_style: argument 0"}
!2909 = distinct !{!2909, !"quoting_options_from_style"}
!2910 = !DILocation(line: 1000, column: 13, scope: !2892)
!2911 = !DILocation(line: 0, scope: !1819, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 1001, column: 3, scope: !2892)
!2913 = !DILocation(line: 147, column: 57, scope: !1819, inlinedAt: !2912)
!2914 = !DILocation(line: 149, column: 21, scope: !1819, inlinedAt: !2912)
!2915 = !DILocation(line: 150, column: 6, scope: !1819, inlinedAt: !2912)
!2916 = !DILocation(line: 1002, column: 10, scope: !2892)
!2917 = !DILocation(line: 1003, column: 1, scope: !2892)
!2918 = !DILocation(line: 1002, column: 3, scope: !2892)
!2919 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !465, file: !465, line: 1006, type: !2920, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!74, !53, !80, !80, !80}
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !465, line: 1006, type: !53)
!2924 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2919, file: !465, line: 1006, type: !80)
!2925 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2919, file: !465, line: 1007, type: !80)
!2926 = !DILocalVariable(name: "arg", arg: 4, scope: !2919, file: !465, line: 1007, type: !80)
!2927 = !DILocation(line: 0, scope: !2919)
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !465, line: 1014, type: !53)
!2929 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !465, file: !465, line: 1014, type: !2930, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!74, !53, !80, !80, !80, !77}
!2932 = !{!2928, !2933, !2934, !2935, !2936, !2937}
!2933 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2929, file: !465, line: 1014, type: !80)
!2934 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2929, file: !465, line: 1015, type: !80)
!2935 = !DILocalVariable(name: "arg", arg: 4, scope: !2929, file: !465, line: 1016, type: !80)
!2936 = !DILocalVariable(name: "argsize", arg: 5, scope: !2929, file: !465, line: 1016, type: !77)
!2937 = !DILocalVariable(name: "o", scope: !2929, file: !465, line: 1018, type: !518)
!2938 = !DILocation(line: 0, scope: !2929, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 1009, column: 10, scope: !2919)
!2940 = !DILocation(line: 1018, column: 3, scope: !2929, inlinedAt: !2939)
!2941 = !DILocation(line: 1018, column: 26, scope: !2929, inlinedAt: !2939)
!2942 = !DILocation(line: 1018, column: 30, scope: !2929, inlinedAt: !2939)
!2943 = !DILocation(line: 0, scope: !1859, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1019, column: 3, scope: !2929, inlinedAt: !2939)
!2945 = !DILocation(line: 174, column: 12, scope: !1859, inlinedAt: !2944)
!2946 = !DILocation(line: 175, column: 8, scope: !1872, inlinedAt: !2944)
!2947 = !DILocation(line: 175, column: 19, scope: !1872, inlinedAt: !2944)
!2948 = !DILocation(line: 176, column: 5, scope: !1872, inlinedAt: !2944)
!2949 = !DILocation(line: 177, column: 6, scope: !1859, inlinedAt: !2944)
!2950 = !DILocation(line: 177, column: 17, scope: !1859, inlinedAt: !2944)
!2951 = !DILocation(line: 178, column: 6, scope: !1859, inlinedAt: !2944)
!2952 = !DILocation(line: 178, column: 18, scope: !1859, inlinedAt: !2944)
!2953 = !DILocation(line: 1020, column: 10, scope: !2929, inlinedAt: !2939)
!2954 = !DILocation(line: 1021, column: 1, scope: !2929, inlinedAt: !2939)
!2955 = !DILocation(line: 1009, column: 3, scope: !2919)
!2956 = !DILocation(line: 0, scope: !2929)
!2957 = !DILocation(line: 1018, column: 3, scope: !2929)
!2958 = !DILocation(line: 1018, column: 26, scope: !2929)
!2959 = !DILocation(line: 1018, column: 30, scope: !2929)
!2960 = !DILocation(line: 0, scope: !1859, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 1019, column: 3, scope: !2929)
!2962 = !DILocation(line: 174, column: 12, scope: !1859, inlinedAt: !2961)
!2963 = !DILocation(line: 175, column: 8, scope: !1872, inlinedAt: !2961)
!2964 = !DILocation(line: 175, column: 19, scope: !1872, inlinedAt: !2961)
!2965 = !DILocation(line: 176, column: 5, scope: !1872, inlinedAt: !2961)
!2966 = !DILocation(line: 177, column: 6, scope: !1859, inlinedAt: !2961)
!2967 = !DILocation(line: 177, column: 17, scope: !1859, inlinedAt: !2961)
!2968 = !DILocation(line: 178, column: 6, scope: !1859, inlinedAt: !2961)
!2969 = !DILocation(line: 178, column: 18, scope: !1859, inlinedAt: !2961)
!2970 = !DILocation(line: 1020, column: 10, scope: !2929)
!2971 = !DILocation(line: 1021, column: 1, scope: !2929)
!2972 = !DILocation(line: 1020, column: 3, scope: !2929)
!2973 = distinct !DISubprogram(name: "quotearg_custom", scope: !465, file: !465, line: 1024, type: !2974, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!74, !80, !80, !80}
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2973, file: !465, line: 1024, type: !80)
!2978 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2973, file: !465, line: 1024, type: !80)
!2979 = !DILocalVariable(name: "arg", arg: 3, scope: !2973, file: !465, line: 1025, type: !80)
!2980 = !DILocation(line: 0, scope: !2973)
!2981 = !DILocation(line: 0, scope: !2919, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 1027, column: 10, scope: !2973)
!2983 = !DILocation(line: 0, scope: !2929, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1009, column: 10, scope: !2919, inlinedAt: !2982)
!2985 = !DILocation(line: 1018, column: 3, scope: !2929, inlinedAt: !2984)
!2986 = !DILocation(line: 1018, column: 26, scope: !2929, inlinedAt: !2984)
!2987 = !DILocation(line: 1018, column: 30, scope: !2929, inlinedAt: !2984)
!2988 = !DILocation(line: 0, scope: !1859, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1019, column: 3, scope: !2929, inlinedAt: !2984)
!2990 = !DILocation(line: 174, column: 12, scope: !1859, inlinedAt: !2989)
!2991 = !DILocation(line: 175, column: 8, scope: !1872, inlinedAt: !2989)
!2992 = !DILocation(line: 175, column: 19, scope: !1872, inlinedAt: !2989)
!2993 = !DILocation(line: 176, column: 5, scope: !1872, inlinedAt: !2989)
!2994 = !DILocation(line: 177, column: 6, scope: !1859, inlinedAt: !2989)
!2995 = !DILocation(line: 177, column: 17, scope: !1859, inlinedAt: !2989)
!2996 = !DILocation(line: 178, column: 6, scope: !1859, inlinedAt: !2989)
!2997 = !DILocation(line: 178, column: 18, scope: !1859, inlinedAt: !2989)
!2998 = !DILocation(line: 1020, column: 10, scope: !2929, inlinedAt: !2984)
!2999 = !DILocation(line: 1021, column: 1, scope: !2929, inlinedAt: !2984)
!3000 = !DILocation(line: 1027, column: 3, scope: !2973)
!3001 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !465, file: !465, line: 1031, type: !3002, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!74, !80, !80, !80, !77}
!3004 = !{!3005, !3006, !3007, !3008}
!3005 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3001, file: !465, line: 1031, type: !80)
!3006 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3001, file: !465, line: 1031, type: !80)
!3007 = !DILocalVariable(name: "arg", arg: 3, scope: !3001, file: !465, line: 1032, type: !80)
!3008 = !DILocalVariable(name: "argsize", arg: 4, scope: !3001, file: !465, line: 1032, type: !77)
!3009 = !DILocation(line: 0, scope: !3001)
!3010 = !DILocation(line: 0, scope: !2929, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1034, column: 10, scope: !3001)
!3012 = !DILocation(line: 1018, column: 3, scope: !2929, inlinedAt: !3011)
!3013 = !DILocation(line: 1018, column: 26, scope: !2929, inlinedAt: !3011)
!3014 = !DILocation(line: 1018, column: 30, scope: !2929, inlinedAt: !3011)
!3015 = !DILocation(line: 0, scope: !1859, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1019, column: 3, scope: !2929, inlinedAt: !3011)
!3017 = !DILocation(line: 174, column: 12, scope: !1859, inlinedAt: !3016)
!3018 = !DILocation(line: 175, column: 8, scope: !1872, inlinedAt: !3016)
!3019 = !DILocation(line: 175, column: 19, scope: !1872, inlinedAt: !3016)
!3020 = !DILocation(line: 176, column: 5, scope: !1872, inlinedAt: !3016)
!3021 = !DILocation(line: 177, column: 6, scope: !1859, inlinedAt: !3016)
!3022 = !DILocation(line: 177, column: 17, scope: !1859, inlinedAt: !3016)
!3023 = !DILocation(line: 178, column: 6, scope: !1859, inlinedAt: !3016)
!3024 = !DILocation(line: 178, column: 18, scope: !1859, inlinedAt: !3016)
!3025 = !DILocation(line: 1020, column: 10, scope: !2929, inlinedAt: !3011)
!3026 = !DILocation(line: 1021, column: 1, scope: !2929, inlinedAt: !3011)
!3027 = !DILocation(line: 1034, column: 3, scope: !3001)
!3028 = distinct !DISubprogram(name: "quote_n_mem", scope: !465, file: !465, line: 1049, type: !3029, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!80, !53, !80, !77}
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !465, line: 1049, type: !53)
!3033 = !DILocalVariable(name: "arg", arg: 2, scope: !3028, file: !465, line: 1049, type: !80)
!3034 = !DILocalVariable(name: "argsize", arg: 3, scope: !3028, file: !465, line: 1049, type: !77)
!3035 = !DILocation(line: 0, scope: !3028)
!3036 = !DILocation(line: 1051, column: 10, scope: !3028)
!3037 = !DILocation(line: 1051, column: 3, scope: !3028)
!3038 = distinct !DISubprogram(name: "quote_mem", scope: !465, file: !465, line: 1055, type: !3039, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!80, !80, !77}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "arg", arg: 1, scope: !3038, file: !465, line: 1055, type: !80)
!3043 = !DILocalVariable(name: "argsize", arg: 2, scope: !3038, file: !465, line: 1055, type: !77)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 0, scope: !3028, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1057, column: 10, scope: !3038)
!3047 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3046)
!3048 = !DILocation(line: 1057, column: 3, scope: !3038)
!3049 = distinct !DISubprogram(name: "quote_n", scope: !465, file: !465, line: 1061, type: !3050, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!80, !53, !80}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3049, file: !465, line: 1061, type: !53)
!3054 = !DILocalVariable(name: "arg", arg: 2, scope: !3049, file: !465, line: 1061, type: !80)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 0, scope: !3028, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 1063, column: 10, scope: !3049)
!3058 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3057)
!3059 = !DILocation(line: 1063, column: 3, scope: !3049)
!3060 = distinct !DISubprogram(name: "quote", scope: !465, file: !465, line: 1067, type: !3061, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!80, !80}
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "arg", arg: 1, scope: !3060, file: !465, line: 1067, type: !80)
!3065 = !DILocation(line: 0, scope: !3060)
!3066 = !DILocation(line: 0, scope: !3049, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1069, column: 10, scope: !3060)
!3068 = !DILocation(line: 0, scope: !3028, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1063, column: 10, scope: !3049, inlinedAt: !3067)
!3070 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3069)
!3071 = !DILocation(line: 1069, column: 3, scope: !3060)
!3072 = distinct !DISubprogram(name: "version_etc_arn", scope: !581, file: !581, line: 61, type: !3073, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3110)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3075, !80, !80, !80, !3109, !77}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3077, file: !150, line: 51, baseType: !53, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3077, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3077, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3077, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3077, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3077, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3077, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3077, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3077, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3077, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3077, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3077, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3077, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3077, file: !150, line: 70, baseType: !3093, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3077, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3077, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3077, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3077, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3077, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3077, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3077, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3077, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3077, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3077, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3077, file: !150, line: 93, baseType: !3093, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3077, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3077, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3077, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3077, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116}
!3111 = !DILocalVariable(name: "stream", arg: 1, scope: !3072, file: !581, line: 61, type: !3075)
!3112 = !DILocalVariable(name: "command_name", arg: 2, scope: !3072, file: !581, line: 62, type: !80)
!3113 = !DILocalVariable(name: "package", arg: 3, scope: !3072, file: !581, line: 62, type: !80)
!3114 = !DILocalVariable(name: "version", arg: 4, scope: !3072, file: !581, line: 63, type: !80)
!3115 = !DILocalVariable(name: "authors", arg: 5, scope: !3072, file: !581, line: 64, type: !3109)
!3116 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3072, file: !581, line: 64, type: !77)
!3117 = !DILocation(line: 0, scope: !3072)
!3118 = !DILocation(line: 66, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3072, file: !581, line: 66, column: 7)
!3120 = !DILocation(line: 66, column: 7, scope: !3072)
!3121 = !DILocation(line: 67, column: 5, scope: !3119)
!3122 = !DILocation(line: 69, column: 5, scope: !3119)
!3123 = !DILocation(line: 83, column: 3, scope: !3072)
!3124 = !DILocation(line: 85, column: 3, scope: !3072)
!3125 = !DILocation(line: 88, column: 3, scope: !3072)
!3126 = !DILocation(line: 95, column: 3, scope: !3072)
!3127 = !DILocation(line: 97, column: 3, scope: !3072)
!3128 = !DILocation(line: 105, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3072, file: !581, line: 98, column: 5)
!3130 = !DILocation(line: 106, column: 7, scope: !3129)
!3131 = !DILocation(line: 109, column: 7, scope: !3129)
!3132 = !DILocation(line: 110, column: 7, scope: !3129)
!3133 = !DILocation(line: 113, column: 7, scope: !3129)
!3134 = !DILocation(line: 115, column: 7, scope: !3129)
!3135 = !DILocation(line: 120, column: 7, scope: !3129)
!3136 = !DILocation(line: 122, column: 7, scope: !3129)
!3137 = !DILocation(line: 127, column: 7, scope: !3129)
!3138 = !DILocation(line: 129, column: 7, scope: !3129)
!3139 = !DILocation(line: 134, column: 7, scope: !3129)
!3140 = !DILocation(line: 137, column: 7, scope: !3129)
!3141 = !DILocation(line: 142, column: 7, scope: !3129)
!3142 = !DILocation(line: 145, column: 7, scope: !3129)
!3143 = !DILocation(line: 150, column: 7, scope: !3129)
!3144 = !DILocation(line: 154, column: 7, scope: !3129)
!3145 = !DILocation(line: 159, column: 7, scope: !3129)
!3146 = !DILocation(line: 163, column: 7, scope: !3129)
!3147 = !DILocation(line: 170, column: 7, scope: !3129)
!3148 = !DILocation(line: 174, column: 7, scope: !3129)
!3149 = !DILocation(line: 176, column: 1, scope: !3072)
!3150 = distinct !DISubprogram(name: "version_etc_ar", scope: !581, file: !581, line: 183, type: !3151, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3075, !80, !80, !80, !3109}
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159}
!3154 = !DILocalVariable(name: "stream", arg: 1, scope: !3150, file: !581, line: 183, type: !3075)
!3155 = !DILocalVariable(name: "command_name", arg: 2, scope: !3150, file: !581, line: 184, type: !80)
!3156 = !DILocalVariable(name: "package", arg: 3, scope: !3150, file: !581, line: 184, type: !80)
!3157 = !DILocalVariable(name: "version", arg: 4, scope: !3150, file: !581, line: 185, type: !80)
!3158 = !DILocalVariable(name: "authors", arg: 5, scope: !3150, file: !581, line: 185, type: !3109)
!3159 = !DILocalVariable(name: "n_authors", scope: !3150, file: !581, line: 187, type: !77)
!3160 = !DILocation(line: 0, scope: !3150)
!3161 = !DILocation(line: 189, column: 8, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3150, file: !581, line: 189, column: 3)
!3163 = !DILocation(line: 189, scope: !3162)
!3164 = !DILocation(line: 189, column: 23, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !581, line: 189, column: 3)
!3166 = !DILocation(line: 189, column: 3, scope: !3162)
!3167 = !DILocation(line: 189, column: 52, scope: !3165)
!3168 = distinct !{!3168, !3166, !3169, !941}
!3169 = !DILocation(line: 190, column: 5, scope: !3162)
!3170 = !DILocation(line: 191, column: 3, scope: !3150)
!3171 = !DILocation(line: 192, column: 1, scope: !3150)
!3172 = distinct !DISubprogram(name: "version_etc_va", scope: !581, file: !581, line: 199, type: !3173, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3186)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !3075, !80, !80, !80, !3175}
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !379, line: 52, baseType: !3176)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !381, line: 14, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3178, baseType: !3179)
!3178 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3179, file: !3178, line: 192, baseType: !75, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3179, file: !3178, line: 192, baseType: !75, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3179, file: !3178, line: 192, baseType: !75, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3179, file: !3178, line: 192, baseType: !53, size: 32, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3179, file: !3178, line: 192, baseType: !53, size: 32, offset: 224)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3187 = !DILocalVariable(name: "stream", arg: 1, scope: !3172, file: !581, line: 199, type: !3075)
!3188 = !DILocalVariable(name: "command_name", arg: 2, scope: !3172, file: !581, line: 200, type: !80)
!3189 = !DILocalVariable(name: "package", arg: 3, scope: !3172, file: !581, line: 200, type: !80)
!3190 = !DILocalVariable(name: "version", arg: 4, scope: !3172, file: !581, line: 201, type: !80)
!3191 = !DILocalVariable(name: "authors", arg: 5, scope: !3172, file: !581, line: 201, type: !3175)
!3192 = !DILocalVariable(name: "n_authors", scope: !3172, file: !581, line: 203, type: !77)
!3193 = !DILocalVariable(name: "authtab", scope: !3172, file: !581, line: 204, type: !3194)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!3195 = !DILocation(line: 0, scope: !3172)
!3196 = !DILocation(line: 201, column: 46, scope: !3172)
!3197 = !DILocation(line: 204, column: 3, scope: !3172)
!3198 = !DILocation(line: 204, column: 15, scope: !3172)
!3199 = !DILocation(line: 208, column: 35, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !581, line: 206, column: 3)
!3201 = distinct !DILexicalBlock(scope: !3172, file: !581, line: 206, column: 3)
!3202 = !DILocation(line: 208, column: 33, scope: !3200)
!3203 = !DILocation(line: 208, column: 67, scope: !3200)
!3204 = !DILocation(line: 206, column: 3, scope: !3201)
!3205 = !DILocation(line: 208, column: 14, scope: !3200)
!3206 = !DILocation(line: 0, scope: !3201)
!3207 = !DILocation(line: 211, column: 3, scope: !3172)
!3208 = !DILocation(line: 213, column: 1, scope: !3172)
!3209 = distinct !DISubprogram(name: "version_etc", scope: !581, file: !581, line: 230, type: !3210, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3075, !80, !80, !80, null}
!3212 = !{!3213, !3214, !3215, !3216, !3217}
!3213 = !DILocalVariable(name: "stream", arg: 1, scope: !3209, file: !581, line: 230, type: !3075)
!3214 = !DILocalVariable(name: "command_name", arg: 2, scope: !3209, file: !581, line: 231, type: !80)
!3215 = !DILocalVariable(name: "package", arg: 3, scope: !3209, file: !581, line: 231, type: !80)
!3216 = !DILocalVariable(name: "version", arg: 4, scope: !3209, file: !581, line: 232, type: !80)
!3217 = !DILocalVariable(name: "authors", scope: !3209, file: !581, line: 234, type: !3175)
!3218 = !DILocation(line: 0, scope: !3209)
!3219 = !DILocation(line: 234, column: 3, scope: !3209)
!3220 = !DILocation(line: 234, column: 11, scope: !3209)
!3221 = !DILocation(line: 235, column: 3, scope: !3209)
!3222 = !DILocation(line: 236, column: 3, scope: !3209)
!3223 = !DILocation(line: 237, column: 3, scope: !3209)
!3224 = !DILocation(line: 238, column: 1, scope: !3209)
!3225 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !581, file: !581, line: 241, type: !420, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !879)
!3226 = !DILocation(line: 243, column: 3, scope: !3225)
!3227 = !DILocation(line: 248, column: 3, scope: !3225)
!3228 = !DILocation(line: 254, column: 3, scope: !3225)
!3229 = !DILocation(line: 259, column: 3, scope: !3225)
!3230 = !DILocation(line: 261, column: 1, scope: !3225)
!3231 = distinct !DISubprogram(name: "xnrealloc", scope: !3232, file: !3232, line: 147, type: !3233, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3235)
!3232 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!75, !75, !77, !77}
!3235 = !{!3236, !3237, !3238}
!3236 = !DILocalVariable(name: "p", arg: 1, scope: !3231, file: !3232, line: 147, type: !75)
!3237 = !DILocalVariable(name: "n", arg: 2, scope: !3231, file: !3232, line: 147, type: !77)
!3238 = !DILocalVariable(name: "s", arg: 3, scope: !3231, file: !3232, line: 147, type: !77)
!3239 = !DILocation(line: 0, scope: !3231)
!3240 = !DILocalVariable(name: "p", arg: 1, scope: !3241, file: !720, line: 83, type: !75)
!3241 = distinct !DISubprogram(name: "xreallocarray", scope: !720, file: !720, line: 83, type: !3233, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3242)
!3242 = !{!3240, !3243, !3244}
!3243 = !DILocalVariable(name: "n", arg: 2, scope: !3241, file: !720, line: 83, type: !77)
!3244 = !DILocalVariable(name: "s", arg: 3, scope: !3241, file: !720, line: 83, type: !77)
!3245 = !DILocation(line: 0, scope: !3241, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 149, column: 10, scope: !3231)
!3247 = !DILocation(line: 85, column: 25, scope: !3241, inlinedAt: !3246)
!3248 = !DILocalVariable(name: "p", arg: 1, scope: !3249, file: !720, line: 37, type: !75)
!3249 = distinct !DISubprogram(name: "check_nonnull", scope: !720, file: !720, line: 37, type: !3250, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!75, !75}
!3252 = !{!3248}
!3253 = !DILocation(line: 0, scope: !3249, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 85, column: 10, scope: !3241, inlinedAt: !3246)
!3255 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3254)
!3256 = distinct !DILexicalBlock(scope: !3249, file: !720, line: 39, column: 7)
!3257 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3254)
!3258 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3254)
!3259 = !DILocation(line: 149, column: 3, scope: !3231)
!3260 = !DILocation(line: 0, scope: !3241)
!3261 = !DILocation(line: 85, column: 25, scope: !3241)
!3262 = !DILocation(line: 0, scope: !3249, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 85, column: 10, scope: !3241)
!3264 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3263)
!3265 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3263)
!3266 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3263)
!3267 = !DILocation(line: 85, column: 3, scope: !3241)
!3268 = distinct !DISubprogram(name: "xmalloc", scope: !720, file: !720, line: 47, type: !3269, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!75, !77}
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "s", arg: 1, scope: !3268, file: !720, line: 47, type: !77)
!3273 = !DILocation(line: 0, scope: !3268)
!3274 = !DILocation(line: 49, column: 25, scope: !3268)
!3275 = !DILocation(line: 0, scope: !3249, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 49, column: 10, scope: !3268)
!3277 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3276)
!3278 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3276)
!3279 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3276)
!3280 = !DILocation(line: 49, column: 3, scope: !3268)
!3281 = !DISubprogram(name: "malloc", scope: !1015, file: !1015, line: 540, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3282 = distinct !DISubprogram(name: "ximalloc", scope: !720, file: !720, line: 53, type: !3283, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!75, !739}
!3285 = !{!3286}
!3286 = !DILocalVariable(name: "s", arg: 1, scope: !3282, file: !720, line: 53, type: !739)
!3287 = !DILocation(line: 0, scope: !3282)
!3288 = !DILocalVariable(name: "s", arg: 1, scope: !3289, file: !3290, line: 55, type: !739)
!3289 = distinct !DISubprogram(name: "imalloc", scope: !3290, file: !3290, line: 55, type: !3283, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3291)
!3290 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3291 = !{!3288}
!3292 = !DILocation(line: 0, scope: !3289, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 55, column: 25, scope: !3282)
!3294 = !DILocation(line: 57, column: 26, scope: !3289, inlinedAt: !3293)
!3295 = !DILocation(line: 0, scope: !3249, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 55, column: 10, scope: !3282)
!3297 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3296)
!3300 = !DILocation(line: 55, column: 3, scope: !3282)
!3301 = distinct !DISubprogram(name: "xcharalloc", scope: !720, file: !720, line: 59, type: !3302, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!74, !77}
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "n", arg: 1, scope: !3301, file: !720, line: 59, type: !77)
!3306 = !DILocation(line: 0, scope: !3301)
!3307 = !DILocation(line: 0, scope: !3268, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 61, column: 10, scope: !3301)
!3309 = !DILocation(line: 49, column: 25, scope: !3268, inlinedAt: !3308)
!3310 = !DILocation(line: 0, scope: !3249, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 49, column: 10, scope: !3268, inlinedAt: !3308)
!3312 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3311)
!3313 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3311)
!3314 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3311)
!3315 = !DILocation(line: 61, column: 3, scope: !3301)
!3316 = distinct !DISubprogram(name: "xrealloc", scope: !720, file: !720, line: 68, type: !3317, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!75, !75, !77}
!3319 = !{!3320, !3321}
!3320 = !DILocalVariable(name: "p", arg: 1, scope: !3316, file: !720, line: 68, type: !75)
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !720, line: 68, type: !77)
!3322 = !DILocation(line: 0, scope: !3316)
!3323 = !DILocalVariable(name: "ptr", arg: 1, scope: !3324, file: !3325, line: 2057, type: !75)
!3324 = distinct !DISubprogram(name: "rpl_realloc", scope: !3325, file: !3325, line: 2057, type: !3317, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3326)
!3325 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3326 = !{!3323, !3327}
!3327 = !DILocalVariable(name: "size", arg: 2, scope: !3324, file: !3325, line: 2057, type: !77)
!3328 = !DILocation(line: 0, scope: !3324, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 70, column: 25, scope: !3316)
!3330 = !DILocation(line: 2059, column: 24, scope: !3324, inlinedAt: !3329)
!3331 = !DILocation(line: 2059, column: 10, scope: !3324, inlinedAt: !3329)
!3332 = !DILocation(line: 0, scope: !3249, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 70, column: 10, scope: !3316)
!3334 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3333)
!3335 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3333)
!3336 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3333)
!3337 = !DILocation(line: 70, column: 3, scope: !3316)
!3338 = !DISubprogram(name: "realloc", scope: !1015, file: !1015, line: 551, type: !3317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3339 = distinct !DISubprogram(name: "xirealloc", scope: !720, file: !720, line: 74, type: !3340, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!75, !75, !739}
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !720, line: 74, type: !75)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !720, line: 74, type: !739)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !3290, line: 66, type: !75)
!3347 = distinct !DISubprogram(name: "irealloc", scope: !3290, file: !3290, line: 66, type: !3340, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3348)
!3348 = !{!3346, !3349}
!3349 = !DILocalVariable(name: "s", arg: 2, scope: !3347, file: !3290, line: 66, type: !739)
!3350 = !DILocation(line: 0, scope: !3347, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 76, column: 25, scope: !3339)
!3352 = !DILocation(line: 0, scope: !3324, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 68, column: 26, scope: !3347, inlinedAt: !3351)
!3354 = !DILocation(line: 2059, column: 24, scope: !3324, inlinedAt: !3353)
!3355 = !DILocation(line: 2059, column: 10, scope: !3324, inlinedAt: !3353)
!3356 = !DILocation(line: 0, scope: !3249, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 76, column: 10, scope: !3339)
!3358 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3357)
!3359 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3357)
!3360 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3357)
!3361 = !DILocation(line: 76, column: 3, scope: !3339)
!3362 = distinct !DISubprogram(name: "xireallocarray", scope: !720, file: !720, line: 89, type: !3363, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!75, !75, !739, !739}
!3365 = !{!3366, !3367, !3368}
!3366 = !DILocalVariable(name: "p", arg: 1, scope: !3362, file: !720, line: 89, type: !75)
!3367 = !DILocalVariable(name: "n", arg: 2, scope: !3362, file: !720, line: 89, type: !739)
!3368 = !DILocalVariable(name: "s", arg: 3, scope: !3362, file: !720, line: 89, type: !739)
!3369 = !DILocation(line: 0, scope: !3362)
!3370 = !DILocalVariable(name: "p", arg: 1, scope: !3371, file: !3290, line: 98, type: !75)
!3371 = distinct !DISubprogram(name: "ireallocarray", scope: !3290, file: !3290, line: 98, type: !3363, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3372)
!3372 = !{!3370, !3373, !3374}
!3373 = !DILocalVariable(name: "n", arg: 2, scope: !3371, file: !3290, line: 98, type: !739)
!3374 = !DILocalVariable(name: "s", arg: 3, scope: !3371, file: !3290, line: 98, type: !739)
!3375 = !DILocation(line: 0, scope: !3371, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 91, column: 25, scope: !3362)
!3377 = !DILocation(line: 101, column: 13, scope: !3371, inlinedAt: !3376)
!3378 = !DILocation(line: 0, scope: !3249, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 91, column: 10, scope: !3362)
!3380 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3379)
!3381 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3379)
!3382 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3379)
!3383 = !DILocation(line: 91, column: 3, scope: !3362)
!3384 = distinct !DISubprogram(name: "xnmalloc", scope: !720, file: !720, line: 98, type: !3385, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!75, !77, !77}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "n", arg: 1, scope: !3384, file: !720, line: 98, type: !77)
!3389 = !DILocalVariable(name: "s", arg: 2, scope: !3384, file: !720, line: 98, type: !77)
!3390 = !DILocation(line: 0, scope: !3384)
!3391 = !DILocation(line: 0, scope: !3241, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 100, column: 10, scope: !3384)
!3393 = !DILocation(line: 85, column: 25, scope: !3241, inlinedAt: !3392)
!3394 = !DILocation(line: 0, scope: !3249, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 85, column: 10, scope: !3241, inlinedAt: !3392)
!3396 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3395)
!3397 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3395)
!3398 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3395)
!3399 = !DILocation(line: 100, column: 3, scope: !3384)
!3400 = distinct !DISubprogram(name: "xinmalloc", scope: !720, file: !720, line: 104, type: !3401, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!75, !739, !739}
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "n", arg: 1, scope: !3400, file: !720, line: 104, type: !739)
!3405 = !DILocalVariable(name: "s", arg: 2, scope: !3400, file: !720, line: 104, type: !739)
!3406 = !DILocation(line: 0, scope: !3400)
!3407 = !DILocation(line: 0, scope: !3362, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 106, column: 10, scope: !3400)
!3409 = !DILocation(line: 0, scope: !3371, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 91, column: 25, scope: !3362, inlinedAt: !3408)
!3411 = !DILocation(line: 101, column: 13, scope: !3371, inlinedAt: !3410)
!3412 = !DILocation(line: 0, scope: !3249, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 91, column: 10, scope: !3362, inlinedAt: !3408)
!3414 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3413)
!3415 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3413)
!3416 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3413)
!3417 = !DILocation(line: 106, column: 3, scope: !3400)
!3418 = distinct !DISubprogram(name: "x2realloc", scope: !720, file: !720, line: 116, type: !3419, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!75, !75, !726}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3418, file: !720, line: 116, type: !75)
!3423 = !DILocalVariable(name: "ps", arg: 2, scope: !3418, file: !720, line: 116, type: !726)
!3424 = !DILocation(line: 0, scope: !3418)
!3425 = !DILocation(line: 0, scope: !723, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 118, column: 10, scope: !3418)
!3427 = !DILocation(line: 178, column: 14, scope: !723, inlinedAt: !3426)
!3428 = !DILocation(line: 180, column: 9, scope: !3429, inlinedAt: !3426)
!3429 = distinct !DILexicalBlock(scope: !723, file: !720, line: 180, column: 7)
!3430 = !DILocation(line: 180, column: 7, scope: !723, inlinedAt: !3426)
!3431 = !DILocation(line: 182, column: 13, scope: !3432, inlinedAt: !3426)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !720, line: 182, column: 11)
!3433 = distinct !DILexicalBlock(scope: !3429, file: !720, line: 181, column: 5)
!3434 = !DILocation(line: 182, column: 11, scope: !3433, inlinedAt: !3426)
!3435 = !DILocation(line: 197, column: 11, scope: !3436, inlinedAt: !3426)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !720, line: 197, column: 11)
!3437 = distinct !DILexicalBlock(scope: !3429, file: !720, line: 195, column: 5)
!3438 = !DILocation(line: 197, column: 11, scope: !3437, inlinedAt: !3426)
!3439 = !DILocation(line: 198, column: 9, scope: !3436, inlinedAt: !3426)
!3440 = !DILocation(line: 0, scope: !3241, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 201, column: 7, scope: !723, inlinedAt: !3426)
!3442 = !DILocation(line: 85, column: 25, scope: !3241, inlinedAt: !3441)
!3443 = !DILocation(line: 0, scope: !3249, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 85, column: 10, scope: !3241, inlinedAt: !3441)
!3445 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3444)
!3448 = !DILocation(line: 202, column: 7, scope: !723, inlinedAt: !3426)
!3449 = !DILocation(line: 118, column: 3, scope: !3418)
!3450 = !DILocation(line: 0, scope: !723)
!3451 = !DILocation(line: 178, column: 14, scope: !723)
!3452 = !DILocation(line: 180, column: 9, scope: !3429)
!3453 = !DILocation(line: 180, column: 7, scope: !723)
!3454 = !DILocation(line: 182, column: 13, scope: !3432)
!3455 = !DILocation(line: 182, column: 11, scope: !3433)
!3456 = !DILocation(line: 190, column: 30, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3432, file: !720, line: 183, column: 9)
!3458 = !DILocation(line: 191, column: 16, scope: !3457)
!3459 = !DILocation(line: 191, column: 13, scope: !3457)
!3460 = !DILocation(line: 192, column: 9, scope: !3457)
!3461 = !DILocation(line: 197, column: 11, scope: !3436)
!3462 = !DILocation(line: 197, column: 11, scope: !3437)
!3463 = !DILocation(line: 198, column: 9, scope: !3436)
!3464 = !DILocation(line: 0, scope: !3241, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 201, column: 7, scope: !723)
!3466 = !DILocation(line: 85, column: 25, scope: !3241, inlinedAt: !3465)
!3467 = !DILocation(line: 0, scope: !3249, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 85, column: 10, scope: !3241, inlinedAt: !3465)
!3469 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3468)
!3470 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3468)
!3471 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3468)
!3472 = !DILocation(line: 202, column: 7, scope: !723)
!3473 = !DILocation(line: 203, column: 3, scope: !723)
!3474 = !DILocation(line: 0, scope: !735)
!3475 = !DILocation(line: 230, column: 14, scope: !735)
!3476 = !DILocation(line: 238, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !735, file: !720, line: 238, column: 7)
!3478 = !DILocation(line: 238, column: 7, scope: !735)
!3479 = !DILocation(line: 240, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !735, file: !720, line: 240, column: 7)
!3481 = !DILocation(line: 240, column: 18, scope: !3480)
!3482 = !DILocation(line: 253, column: 8, scope: !735)
!3483 = !DILocation(line: 258, column: 27, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !720, line: 257, column: 5)
!3485 = distinct !DILexicalBlock(scope: !735, file: !720, line: 256, column: 7)
!3486 = !DILocation(line: 259, column: 32, scope: !3484)
!3487 = !DILocation(line: 260, column: 5, scope: !3484)
!3488 = !DILocation(line: 262, column: 9, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !735, file: !720, line: 262, column: 7)
!3490 = !DILocation(line: 262, column: 7, scope: !735)
!3491 = !DILocation(line: 263, column: 9, scope: !3489)
!3492 = !DILocation(line: 263, column: 5, scope: !3489)
!3493 = !DILocation(line: 264, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !735, file: !720, line: 264, column: 7)
!3495 = !DILocation(line: 264, column: 14, scope: !3494)
!3496 = !DILocation(line: 265, column: 7, scope: !3494)
!3497 = !DILocation(line: 265, column: 11, scope: !3494)
!3498 = !DILocation(line: 266, column: 11, scope: !3494)
!3499 = !DILocation(line: 267, column: 14, scope: !3494)
!3500 = !DILocation(line: 264, column: 7, scope: !735)
!3501 = !DILocation(line: 268, column: 5, scope: !3494)
!3502 = !DILocation(line: 0, scope: !3316, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 269, column: 8, scope: !735)
!3504 = !DILocation(line: 0, scope: !3324, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 70, column: 25, scope: !3316, inlinedAt: !3503)
!3506 = !DILocation(line: 2059, column: 24, scope: !3324, inlinedAt: !3505)
!3507 = !DILocation(line: 2059, column: 10, scope: !3324, inlinedAt: !3505)
!3508 = !DILocation(line: 0, scope: !3249, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 70, column: 10, scope: !3316, inlinedAt: !3503)
!3510 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3509)
!3511 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3509)
!3512 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3509)
!3513 = !DILocation(line: 270, column: 7, scope: !735)
!3514 = !DILocation(line: 271, column: 3, scope: !735)
!3515 = distinct !DISubprogram(name: "xzalloc", scope: !720, file: !720, line: 279, type: !3269, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3516)
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "s", arg: 1, scope: !3515, file: !720, line: 279, type: !77)
!3518 = !DILocation(line: 0, scope: !3515)
!3519 = !DILocalVariable(name: "n", arg: 1, scope: !3520, file: !720, line: 294, type: !77)
!3520 = distinct !DISubprogram(name: "xcalloc", scope: !720, file: !720, line: 294, type: !3385, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3521)
!3521 = !{!3519, !3522}
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3520, file: !720, line: 294, type: !77)
!3523 = !DILocation(line: 0, scope: !3520, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 281, column: 10, scope: !3515)
!3525 = !DILocation(line: 296, column: 25, scope: !3520, inlinedAt: !3524)
!3526 = !DILocation(line: 0, scope: !3249, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 296, column: 10, scope: !3520, inlinedAt: !3524)
!3528 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3527)
!3529 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3527)
!3530 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3527)
!3531 = !DILocation(line: 281, column: 3, scope: !3515)
!3532 = !DISubprogram(name: "calloc", scope: !1015, file: !1015, line: 543, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3533 = !DILocation(line: 0, scope: !3520)
!3534 = !DILocation(line: 296, column: 25, scope: !3520)
!3535 = !DILocation(line: 0, scope: !3249, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 296, column: 10, scope: !3520)
!3537 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3536)
!3538 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3536)
!3539 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3536)
!3540 = !DILocation(line: 296, column: 3, scope: !3520)
!3541 = distinct !DISubprogram(name: "xizalloc", scope: !720, file: !720, line: 285, type: !3283, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3542)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "s", arg: 1, scope: !3541, file: !720, line: 285, type: !739)
!3544 = !DILocation(line: 0, scope: !3541)
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !720, line: 300, type: !739)
!3546 = distinct !DISubprogram(name: "xicalloc", scope: !720, file: !720, line: 300, type: !3401, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3547)
!3547 = !{!3545, !3548}
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3546, file: !720, line: 300, type: !739)
!3549 = !DILocation(line: 0, scope: !3546, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 287, column: 10, scope: !3541)
!3551 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !3290, line: 77, type: !739)
!3552 = distinct !DISubprogram(name: "icalloc", scope: !3290, file: !3290, line: 77, type: !3401, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3553)
!3553 = !{!3551, !3554}
!3554 = !DILocalVariable(name: "s", arg: 2, scope: !3552, file: !3290, line: 77, type: !739)
!3555 = !DILocation(line: 0, scope: !3552, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 302, column: 25, scope: !3546, inlinedAt: !3550)
!3557 = !DILocation(line: 91, column: 10, scope: !3552, inlinedAt: !3556)
!3558 = !DILocation(line: 0, scope: !3249, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 302, column: 10, scope: !3546, inlinedAt: !3550)
!3560 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3559)
!3561 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3559)
!3562 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3559)
!3563 = !DILocation(line: 287, column: 3, scope: !3541)
!3564 = !DILocation(line: 0, scope: !3546)
!3565 = !DILocation(line: 0, scope: !3552, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 302, column: 25, scope: !3546)
!3567 = !DILocation(line: 91, column: 10, scope: !3552, inlinedAt: !3566)
!3568 = !DILocation(line: 0, scope: !3249, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 302, column: 10, scope: !3546)
!3570 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3569)
!3571 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3569)
!3572 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3569)
!3573 = !DILocation(line: 302, column: 3, scope: !3546)
!3574 = distinct !DISubprogram(name: "xmemdup", scope: !720, file: !720, line: 310, type: !3575, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!75, !1039, !77}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "p", arg: 1, scope: !3574, file: !720, line: 310, type: !1039)
!3579 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !720, line: 310, type: !77)
!3580 = !DILocation(line: 0, scope: !3574)
!3581 = !DILocation(line: 0, scope: !3268, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 312, column: 18, scope: !3574)
!3583 = !DILocation(line: 49, column: 25, scope: !3268, inlinedAt: !3582)
!3584 = !DILocation(line: 0, scope: !3249, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 49, column: 10, scope: !3268, inlinedAt: !3582)
!3586 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3585)
!3587 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3585)
!3588 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3585)
!3589 = !DILocalVariable(name: "__dest", arg: 1, scope: !3590, file: !1762, line: 26, type: !3593)
!3590 = distinct !DISubprogram(name: "memcpy", scope: !1762, file: !1762, line: 26, type: !3591, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3594)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!75, !3593, !1038, !77}
!3593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!3594 = !{!3589, !3595, !3596}
!3595 = !DILocalVariable(name: "__src", arg: 2, scope: !3590, file: !1762, line: 26, type: !1038)
!3596 = !DILocalVariable(name: "__len", arg: 3, scope: !3590, file: !1762, line: 26, type: !77)
!3597 = !DILocation(line: 0, scope: !3590, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 312, column: 10, scope: !3574)
!3599 = !DILocation(line: 29, column: 10, scope: !3590, inlinedAt: !3598)
!3600 = !DILocation(line: 312, column: 3, scope: !3574)
!3601 = distinct !DISubprogram(name: "ximemdup", scope: !720, file: !720, line: 316, type: !3602, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!75, !1039, !739}
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "p", arg: 1, scope: !3601, file: !720, line: 316, type: !1039)
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !720, line: 316, type: !739)
!3607 = !DILocation(line: 0, scope: !3601)
!3608 = !DILocation(line: 0, scope: !3282, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 318, column: 18, scope: !3601)
!3610 = !DILocation(line: 0, scope: !3289, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 55, column: 25, scope: !3282, inlinedAt: !3609)
!3612 = !DILocation(line: 57, column: 26, scope: !3289, inlinedAt: !3611)
!3613 = !DILocation(line: 0, scope: !3249, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 55, column: 10, scope: !3282, inlinedAt: !3609)
!3615 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3614)
!3616 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3614)
!3617 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3614)
!3618 = !DILocation(line: 0, scope: !3590, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 318, column: 10, scope: !3601)
!3620 = !DILocation(line: 29, column: 10, scope: !3590, inlinedAt: !3619)
!3621 = !DILocation(line: 318, column: 3, scope: !3601)
!3622 = distinct !DISubprogram(name: "ximemdup0", scope: !720, file: !720, line: 325, type: !3623, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!74, !1039, !739}
!3625 = !{!3626, !3627, !3628}
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3622, file: !720, line: 325, type: !1039)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3622, file: !720, line: 325, type: !739)
!3628 = !DILocalVariable(name: "result", scope: !3622, file: !720, line: 327, type: !74)
!3629 = !DILocation(line: 0, scope: !3622)
!3630 = !DILocation(line: 327, column: 30, scope: !3622)
!3631 = !DILocation(line: 0, scope: !3282, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 327, column: 18, scope: !3622)
!3633 = !DILocation(line: 0, scope: !3289, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 55, column: 25, scope: !3282, inlinedAt: !3632)
!3635 = !DILocation(line: 57, column: 26, scope: !3289, inlinedAt: !3634)
!3636 = !DILocation(line: 0, scope: !3249, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 55, column: 10, scope: !3282, inlinedAt: !3632)
!3638 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3637)
!3639 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3637)
!3640 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3637)
!3641 = !DILocation(line: 328, column: 3, scope: !3622)
!3642 = !DILocation(line: 328, column: 13, scope: !3622)
!3643 = !DILocation(line: 0, scope: !3590, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 329, column: 10, scope: !3622)
!3645 = !DILocation(line: 29, column: 10, scope: !3590, inlinedAt: !3644)
!3646 = !DILocation(line: 329, column: 3, scope: !3622)
!3647 = distinct !DISubprogram(name: "xstrdup", scope: !720, file: !720, line: 335, type: !1017, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3648)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "string", arg: 1, scope: !3647, file: !720, line: 335, type: !80)
!3650 = !DILocation(line: 0, scope: !3647)
!3651 = !DILocation(line: 337, column: 27, scope: !3647)
!3652 = !DILocation(line: 337, column: 43, scope: !3647)
!3653 = !DILocation(line: 0, scope: !3574, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 337, column: 10, scope: !3647)
!3655 = !DILocation(line: 0, scope: !3268, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 312, column: 18, scope: !3574, inlinedAt: !3654)
!3657 = !DILocation(line: 49, column: 25, scope: !3268, inlinedAt: !3656)
!3658 = !DILocation(line: 0, scope: !3249, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 49, column: 10, scope: !3268, inlinedAt: !3656)
!3660 = !DILocation(line: 39, column: 8, scope: !3256, inlinedAt: !3659)
!3661 = !DILocation(line: 39, column: 7, scope: !3249, inlinedAt: !3659)
!3662 = !DILocation(line: 40, column: 5, scope: !3256, inlinedAt: !3659)
!3663 = !DILocation(line: 0, scope: !3590, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 312, column: 10, scope: !3574, inlinedAt: !3654)
!3665 = !DILocation(line: 29, column: 10, scope: !3590, inlinedAt: !3664)
!3666 = !DILocation(line: 337, column: 3, scope: !3647)
!3667 = distinct !DISubprogram(name: "xalloc_die", scope: !674, file: !674, line: 32, type: !420, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3668)
!3668 = !{!3669}
!3669 = !DILocalVariable(name: "__errstatus", scope: !3670, file: !674, line: 34, type: !3671)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !674, line: 34, column: 3)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3672 = !DILocation(line: 34, column: 3, scope: !3670)
!3673 = !DILocation(line: 0, scope: !3670)
!3674 = !DILocation(line: 40, column: 3, scope: !3667)
!3675 = distinct !DISubprogram(name: "xgetgroups", scope: !756, file: !756, line: 31, type: !770, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3676)
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DILocalVariable(name: "username", arg: 1, scope: !3675, file: !756, line: 31, type: !80)
!3678 = !DILocalVariable(name: "gid", arg: 2, scope: !3675, file: !756, line: 31, type: !772)
!3679 = !DILocalVariable(name: "groups", arg: 3, scope: !3675, file: !756, line: 31, type: !775)
!3680 = !DILocalVariable(name: "result", scope: !3675, file: !756, line: 33, type: !53)
!3681 = !DILocation(line: 0, scope: !3675)
!3682 = !DILocation(line: 33, column: 16, scope: !3675)
!3683 = !DILocation(line: 34, column: 14, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3675, file: !756, line: 34, column: 7)
!3685 = !DILocation(line: 34, column: 20, scope: !3684)
!3686 = !DILocation(line: 34, column: 23, scope: !3684)
!3687 = !DILocation(line: 34, column: 29, scope: !3684)
!3688 = !DILocation(line: 34, column: 7, scope: !3675)
!3689 = !DILocation(line: 35, column: 5, scope: !3684)
!3690 = !DILocation(line: 36, column: 3, scope: !3675)
!3691 = distinct !DISubprogram(name: "close_stream", scope: !758, file: !758, line: 55, type: !3692, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3728)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!53, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3696, file: !150, line: 51, baseType: !53, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3696, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3696, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3696, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3696, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3696, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3696, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3696, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3696, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3696, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3696, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3696, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3696, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3696, file: !150, line: 70, baseType: !3712, size: 64, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3696, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3696, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3696, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3696, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3696, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3696, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3696, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3696, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3696, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3696, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3696, file: !150, line: 93, baseType: !3712, size: 64, offset: 1344)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3696, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3696, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3696, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3696, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3728 = !{!3729, !3730, !3732, !3733}
!3729 = !DILocalVariable(name: "stream", arg: 1, scope: !3691, file: !758, line: 55, type: !3694)
!3730 = !DILocalVariable(name: "some_pending", scope: !3691, file: !758, line: 57, type: !3731)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3732 = !DILocalVariable(name: "prev_fail", scope: !3691, file: !758, line: 58, type: !3731)
!3733 = !DILocalVariable(name: "fclose_fail", scope: !3691, file: !758, line: 59, type: !3731)
!3734 = !DILocation(line: 0, scope: !3691)
!3735 = !DILocation(line: 57, column: 30, scope: !3691)
!3736 = !DILocalVariable(name: "__stream", arg: 1, scope: !3737, file: !1127, line: 135, type: !3694)
!3737 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1127, file: !1127, line: 135, type: !3692, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3738)
!3738 = !{!3736}
!3739 = !DILocation(line: 0, scope: !3737, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 58, column: 27, scope: !3691)
!3741 = !DILocation(line: 137, column: 10, scope: !3737, inlinedAt: !3740)
!3742 = !DILocation(line: 58, column: 43, scope: !3691)
!3743 = !DILocation(line: 59, column: 29, scope: !3691)
!3744 = !DILocation(line: 59, column: 45, scope: !3691)
!3745 = !DILocation(line: 69, column: 17, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3691, file: !758, line: 69, column: 7)
!3747 = !DILocation(line: 57, column: 50, scope: !3691)
!3748 = !DILocation(line: 69, column: 33, scope: !3746)
!3749 = !DILocation(line: 69, column: 53, scope: !3746)
!3750 = !DILocation(line: 69, column: 59, scope: !3746)
!3751 = !DILocation(line: 69, column: 7, scope: !3691)
!3752 = !DILocation(line: 71, column: 11, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3746, file: !758, line: 70, column: 5)
!3754 = !DILocation(line: 72, column: 9, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3753, file: !758, line: 71, column: 11)
!3756 = !DILocation(line: 72, column: 15, scope: !3755)
!3757 = !DILocation(line: 77, column: 1, scope: !3691)
!3758 = !DISubprogram(name: "__fpending", scope: !1700, file: !1700, line: 75, type: !3759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!77, !3694}
!3761 = distinct !DISubprogram(name: "rpl_fclose", scope: !760, file: !760, line: 58, type: !3762, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3798)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!53, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3766, file: !150, line: 51, baseType: !53, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3766, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3766, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3766, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3766, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3766, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3766, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3766, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3766, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3766, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3766, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3766, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3766, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3766, file: !150, line: 70, baseType: !3782, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3766, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3766, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3766, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3766, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3766, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3766, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3766, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3766, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3766, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3766, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3766, file: !150, line: 93, baseType: !3782, size: 64, offset: 1344)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3766, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3766, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3766, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3766, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "fp", arg: 1, scope: !3761, file: !760, line: 58, type: !3764)
!3800 = !DILocalVariable(name: "saved_errno", scope: !3761, file: !760, line: 60, type: !53)
!3801 = !DILocalVariable(name: "fd", scope: !3761, file: !760, line: 63, type: !53)
!3802 = !DILocalVariable(name: "result", scope: !3761, file: !760, line: 74, type: !53)
!3803 = !DILocation(line: 0, scope: !3761)
!3804 = !DILocation(line: 63, column: 12, scope: !3761)
!3805 = !DILocation(line: 64, column: 10, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3761, file: !760, line: 64, column: 7)
!3807 = !DILocation(line: 64, column: 7, scope: !3761)
!3808 = !DILocation(line: 65, column: 12, scope: !3806)
!3809 = !DILocation(line: 65, column: 5, scope: !3806)
!3810 = !DILocation(line: 70, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3761, file: !760, line: 70, column: 7)
!3812 = !DILocation(line: 70, column: 23, scope: !3811)
!3813 = !DILocation(line: 70, column: 33, scope: !3811)
!3814 = !DILocation(line: 70, column: 26, scope: !3811)
!3815 = !DILocation(line: 70, column: 59, scope: !3811)
!3816 = !DILocation(line: 71, column: 7, scope: !3811)
!3817 = !DILocation(line: 71, column: 10, scope: !3811)
!3818 = !DILocation(line: 70, column: 7, scope: !3761)
!3819 = !DILocation(line: 100, column: 12, scope: !3761)
!3820 = !DILocation(line: 105, column: 7, scope: !3761)
!3821 = !DILocation(line: 72, column: 19, scope: !3811)
!3822 = !DILocation(line: 105, column: 19, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3761, file: !760, line: 105, column: 7)
!3824 = !DILocation(line: 107, column: 13, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3823, file: !760, line: 106, column: 5)
!3826 = !DILocation(line: 109, column: 5, scope: !3825)
!3827 = !DILocation(line: 112, column: 1, scope: !3761)
!3828 = !DISubprogram(name: "fileno", scope: !379, file: !379, line: 809, type: !3762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3829 = !DISubprogram(name: "fclose", scope: !379, file: !379, line: 178, type: !3762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3830 = !DISubprogram(name: "__freading", scope: !1700, file: !1700, line: 51, type: !3762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3831 = !DISubprogram(name: "lseek", scope: !1208, file: !1208, line: 339, type: !3832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!172, !53, !172, !53}
!3834 = distinct !DISubprogram(name: "rpl_fflush", scope: !762, file: !762, line: 130, type: !3835, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3871)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!53, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3839)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3839, file: !150, line: 51, baseType: !53, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3839, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3839, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3839, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3839, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3839, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3839, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3839, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3839, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3839, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3839, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3839, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3839, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3839, file: !150, line: 70, baseType: !3855, size: 64, offset: 832)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3839, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3839, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3839, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3839, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3839, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3839, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3839, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3839, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3839, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3839, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3839, file: !150, line: 93, baseType: !3855, size: 64, offset: 1344)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3839, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3839, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3839, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3839, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3871 = !{!3872}
!3872 = !DILocalVariable(name: "stream", arg: 1, scope: !3834, file: !762, line: 130, type: !3837)
!3873 = !DILocation(line: 0, scope: !3834)
!3874 = !DILocation(line: 151, column: 14, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3834, file: !762, line: 151, column: 7)
!3876 = !DILocation(line: 151, column: 22, scope: !3875)
!3877 = !DILocation(line: 151, column: 27, scope: !3875)
!3878 = !DILocation(line: 151, column: 7, scope: !3834)
!3879 = !DILocation(line: 152, column: 12, scope: !3875)
!3880 = !DILocation(line: 152, column: 5, scope: !3875)
!3881 = !DILocalVariable(name: "fp", arg: 1, scope: !3882, file: !762, line: 42, type: !3837)
!3882 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !762, file: !762, line: 42, type: !3883, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{null, !3837}
!3885 = !{!3881}
!3886 = !DILocation(line: 0, scope: !3882, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 157, column: 3, scope: !3834)
!3888 = !DILocation(line: 44, column: 12, scope: !3889, inlinedAt: !3887)
!3889 = distinct !DILexicalBlock(scope: !3882, file: !762, line: 44, column: 7)
!3890 = !DILocation(line: 44, column: 19, scope: !3889, inlinedAt: !3887)
!3891 = !DILocation(line: 44, column: 7, scope: !3882, inlinedAt: !3887)
!3892 = !DILocation(line: 46, column: 5, scope: !3889, inlinedAt: !3887)
!3893 = !DILocation(line: 159, column: 10, scope: !3834)
!3894 = !DILocation(line: 159, column: 3, scope: !3834)
!3895 = !DILocation(line: 236, column: 1, scope: !3834)
!3896 = !DISubprogram(name: "fflush", scope: !379, file: !379, line: 230, type: !3835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3897 = distinct !DISubprogram(name: "rpl_fseeko", scope: !764, file: !764, line: 28, type: !3898, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3935)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!53, !3900, !3934, !53}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !148, line: 7, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 49, size: 1728, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3902, file: !150, line: 51, baseType: !53, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3902, file: !150, line: 54, baseType: !74, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3902, file: !150, line: 55, baseType: !74, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3902, file: !150, line: 56, baseType: !74, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3902, file: !150, line: 57, baseType: !74, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3902, file: !150, line: 58, baseType: !74, size: 64, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3902, file: !150, line: 59, baseType: !74, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3902, file: !150, line: 60, baseType: !74, size: 64, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3902, file: !150, line: 61, baseType: !74, size: 64, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3902, file: !150, line: 64, baseType: !74, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3902, file: !150, line: 65, baseType: !74, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3902, file: !150, line: 66, baseType: !74, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3902, file: !150, line: 68, baseType: !165, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3902, file: !150, line: 70, baseType: !3918, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3902, file: !150, line: 72, baseType: !53, size: 32, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3902, file: !150, line: 73, baseType: !53, size: 32, offset: 928)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3902, file: !150, line: 74, baseType: !172, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3902, file: !150, line: 77, baseType: !76, size: 16, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3902, file: !150, line: 78, baseType: !177, size: 8, offset: 1040)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3902, file: !150, line: 79, baseType: !34, size: 8, offset: 1048)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3902, file: !150, line: 81, baseType: !180, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3902, file: !150, line: 89, baseType: !183, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3902, file: !150, line: 91, baseType: !185, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3902, file: !150, line: 92, baseType: !188, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3902, file: !150, line: 93, baseType: !3918, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3902, file: !150, line: 94, baseType: !75, size: 64, offset: 1408)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3902, file: !150, line: 95, baseType: !77, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3902, file: !150, line: 96, baseType: !53, size: 32, offset: 1536)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3902, file: !150, line: 98, baseType: !101, size: 160, offset: 1568)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !379, line: 63, baseType: !172)
!3935 = !{!3936, !3937, !3938, !3939}
!3936 = !DILocalVariable(name: "fp", arg: 1, scope: !3897, file: !764, line: 28, type: !3900)
!3937 = !DILocalVariable(name: "offset", arg: 2, scope: !3897, file: !764, line: 28, type: !3934)
!3938 = !DILocalVariable(name: "whence", arg: 3, scope: !3897, file: !764, line: 28, type: !53)
!3939 = !DILocalVariable(name: "pos", scope: !3940, file: !764, line: 123, type: !3934)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !764, line: 119, column: 5)
!3941 = distinct !DILexicalBlock(scope: !3897, file: !764, line: 55, column: 7)
!3942 = !DILocation(line: 0, scope: !3897)
!3943 = !DILocation(line: 55, column: 12, scope: !3941)
!3944 = !{!1135, !835, i64 16}
!3945 = !DILocation(line: 55, column: 33, scope: !3941)
!3946 = !{!1135, !835, i64 8}
!3947 = !DILocation(line: 55, column: 25, scope: !3941)
!3948 = !DILocation(line: 56, column: 7, scope: !3941)
!3949 = !DILocation(line: 56, column: 15, scope: !3941)
!3950 = !DILocation(line: 56, column: 37, scope: !3941)
!3951 = !{!1135, !835, i64 32}
!3952 = !DILocation(line: 56, column: 29, scope: !3941)
!3953 = !DILocation(line: 57, column: 7, scope: !3941)
!3954 = !DILocation(line: 57, column: 15, scope: !3941)
!3955 = !{!1135, !835, i64 72}
!3956 = !DILocation(line: 57, column: 29, scope: !3941)
!3957 = !DILocation(line: 55, column: 7, scope: !3897)
!3958 = !DILocation(line: 123, column: 26, scope: !3940)
!3959 = !DILocation(line: 123, column: 19, scope: !3940)
!3960 = !DILocation(line: 0, scope: !3940)
!3961 = !DILocation(line: 124, column: 15, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3940, file: !764, line: 124, column: 11)
!3963 = !DILocation(line: 124, column: 11, scope: !3940)
!3964 = !DILocation(line: 135, column: 19, scope: !3940)
!3965 = !DILocation(line: 136, column: 12, scope: !3940)
!3966 = !DILocation(line: 136, column: 20, scope: !3940)
!3967 = !{!1135, !1136, i64 144}
!3968 = !DILocation(line: 167, column: 7, scope: !3940)
!3969 = !DILocation(line: 169, column: 10, scope: !3897)
!3970 = !DILocation(line: 169, column: 3, scope: !3897)
!3971 = !DILocation(line: 170, column: 1, scope: !3897)
!3972 = !DISubprogram(name: "fseeko", scope: !379, file: !379, line: 736, type: !3973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!53, !3900, !172, !53}
!3975 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !681, file: !681, line: 100, type: !3976, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3979)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!77, !1780, !80, !77, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3979 = !{!3980, !3981, !3982, !3983, !3984}
!3980 = !DILocalVariable(name: "pwc", arg: 1, scope: !3975, file: !681, line: 100, type: !1780)
!3981 = !DILocalVariable(name: "s", arg: 2, scope: !3975, file: !681, line: 100, type: !80)
!3982 = !DILocalVariable(name: "n", arg: 3, scope: !3975, file: !681, line: 100, type: !77)
!3983 = !DILocalVariable(name: "ps", arg: 4, scope: !3975, file: !681, line: 100, type: !3978)
!3984 = !DILocalVariable(name: "ret", scope: !3975, file: !681, line: 130, type: !77)
!3985 = !DILocation(line: 0, scope: !3975)
!3986 = !DILocation(line: 105, column: 9, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3975, file: !681, line: 105, column: 7)
!3988 = !DILocation(line: 105, column: 7, scope: !3975)
!3989 = !DILocation(line: 117, column: 10, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3975, file: !681, line: 117, column: 7)
!3991 = !DILocation(line: 117, column: 7, scope: !3975)
!3992 = !DILocation(line: 130, column: 16, scope: !3975)
!3993 = !DILocation(line: 135, column: 11, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3975, file: !681, line: 135, column: 7)
!3995 = !DILocation(line: 135, column: 25, scope: !3994)
!3996 = !DILocation(line: 135, column: 30, scope: !3994)
!3997 = !DILocation(line: 135, column: 7, scope: !3975)
!3998 = !DILocalVariable(name: "ps", arg: 1, scope: !3999, file: !1753, line: 1135, type: !3978)
!3999 = distinct !DISubprogram(name: "mbszero", scope: !1753, file: !1753, line: 1135, type: !4000, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !3978}
!4002 = !{!3998}
!4003 = !DILocation(line: 0, scope: !3999, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 137, column: 5, scope: !3994)
!4005 = !DILocalVariable(name: "__dest", arg: 1, scope: !4006, file: !1762, line: 57, type: !75)
!4006 = distinct !DISubprogram(name: "memset", scope: !1762, file: !1762, line: 57, type: !1763, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4007)
!4007 = !{!4005, !4008, !4009}
!4008 = !DILocalVariable(name: "__ch", arg: 2, scope: !4006, file: !1762, line: 57, type: !53)
!4009 = !DILocalVariable(name: "__len", arg: 3, scope: !4006, file: !1762, line: 57, type: !77)
!4010 = !DILocation(line: 0, scope: !4006, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 1137, column: 3, scope: !3999, inlinedAt: !4004)
!4012 = !DILocation(line: 59, column: 10, scope: !4006, inlinedAt: !4011)
!4013 = !DILocation(line: 137, column: 5, scope: !3994)
!4014 = !DILocation(line: 138, column: 11, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3975, file: !681, line: 138, column: 7)
!4016 = !DILocation(line: 138, column: 7, scope: !3975)
!4017 = !DILocation(line: 139, column: 5, scope: !4015)
!4018 = !DILocation(line: 143, column: 26, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3975, file: !681, line: 143, column: 7)
!4020 = !DILocation(line: 143, column: 41, scope: !4019)
!4021 = !DILocation(line: 143, column: 7, scope: !3975)
!4022 = !DILocation(line: 145, column: 15, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !681, line: 145, column: 11)
!4024 = distinct !DILexicalBlock(scope: !4019, file: !681, line: 144, column: 5)
!4025 = !DILocation(line: 145, column: 11, scope: !4024)
!4026 = !DILocation(line: 146, column: 32, scope: !4023)
!4027 = !DILocation(line: 146, column: 16, scope: !4023)
!4028 = !DILocation(line: 146, column: 14, scope: !4023)
!4029 = !DILocation(line: 146, column: 9, scope: !4023)
!4030 = !DILocation(line: 286, column: 1, scope: !3975)
!4031 = !DISubprogram(name: "mbsinit", scope: !4032, file: !4032, line: 293, type: !4033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4032 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!53, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!4037 = !DILocation(line: 0, scope: !769)
!4038 = !DILocation(line: 77, column: 7, scope: !783)
!4039 = !DILocation(line: 77, column: 7, scope: !769)
!4040 = !DILocation(line: 80, column: 7, scope: !782)
!4041 = !DILocation(line: 0, scope: !782)
!4042 = !DILocation(line: 80, column: 11, scope: !782)
!4043 = !DILocalVariable(name: "g", arg: 1, scope: !4044, file: !766, line: 43, type: !776)
!4044 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !766, file: !766, line: 43, type: !4045, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!776, !776, !77}
!4047 = !{!4043, !4048}
!4048 = !DILocalVariable(name: "num", arg: 2, scope: !4044, file: !766, line: 43, type: !77)
!4049 = !DILocation(line: 0, scope: !4044, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 82, column: 18, scope: !782)
!4051 = !DILocalVariable(name: "ptr", arg: 1, scope: !4052, file: !3325, line: 2057, type: !75)
!4052 = distinct !DISubprogram(name: "rpl_realloc", scope: !3325, file: !3325, line: 2057, type: !3317, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !4053)
!4053 = !{!4051, !4054}
!4054 = !DILocalVariable(name: "size", arg: 2, scope: !4052, file: !3325, line: 2057, type: !77)
!4055 = !DILocation(line: 0, scope: !4052, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 51, column: 10, scope: !4044, inlinedAt: !4050)
!4057 = !DILocation(line: 2059, column: 10, scope: !4052, inlinedAt: !4056)
!4058 = !DILocation(line: 83, column: 13, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !782, file: !766, line: 83, column: 11)
!4060 = !DILocation(line: 83, column: 11, scope: !782)
!4061 = !DILocation(line: 88, column: 31, scope: !786)
!4062 = !DILocation(line: 82, column: 14, scope: !782)
!4063 = !DILocation(line: 0, scope: !786)
!4064 = !DILocation(line: 91, column: 20, scope: !786)
!4065 = !DILocation(line: 95, column: 18, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !786, file: !766, line: 95, column: 15)
!4067 = !DILocation(line: 95, column: 22, scope: !4066)
!4068 = !DILocation(line: 96, column: 26, scope: !4066)
!4069 = !DILocation(line: 96, column: 13, scope: !4066)
!4070 = !DILocation(line: 98, column: 43, scope: !786)
!4071 = !DILocation(line: 0, scope: !4044, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 98, column: 22, scope: !786)
!4073 = !DILocation(line: 45, column: 7, scope: !4074, inlinedAt: !4072)
!4074 = distinct !DILexicalBlock(scope: !4044, file: !766, line: 45, column: 7)
!4075 = !DILocation(line: 45, column: 7, scope: !4044, inlinedAt: !4072)
!4076 = !DILocation(line: 47, column: 7, scope: !4077, inlinedAt: !4072)
!4077 = distinct !DILexicalBlock(scope: !4074, file: !766, line: 46, column: 5)
!4078 = !DILocation(line: 47, column: 13, scope: !4077, inlinedAt: !4072)
!4079 = !DILocation(line: 99, column: 15, scope: !786)
!4080 = !DILocation(line: 51, column: 26, scope: !4044, inlinedAt: !4072)
!4081 = !DILocation(line: 0, scope: !4052, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 51, column: 10, scope: !4044, inlinedAt: !4072)
!4083 = !DILocation(line: 2059, column: 24, scope: !4052, inlinedAt: !4082)
!4084 = !DILocation(line: 2059, column: 10, scope: !4052, inlinedAt: !4082)
!4085 = !DILocation(line: 99, column: 17, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !786, file: !766, line: 99, column: 15)
!4087 = !DILocation(line: 101, column: 15, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4086, file: !766, line: 100, column: 13)
!4089 = !DILocation(line: 102, column: 15, scope: !4088)
!4090 = !DILocation(line: 106, column: 17, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !786, file: !766, line: 106, column: 15)
!4092 = !DILocation(line: 106, column: 15, scope: !786)
!4093 = distinct !{!4093, !4094, !4095}
!4094 = !DILocation(line: 86, column: 7, scope: !782)
!4095 = !DILocation(line: 113, column: 9, scope: !782)
!4096 = !DILocation(line: 108, column: 23, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !766, line: 107, column: 13)
!4098 = !DILocation(line: 111, column: 15, scope: !4097)
!4099 = !DILocation(line: 114, column: 5, scope: !783)
!4100 = !DILocation(line: 120, column: 25, scope: !769)
!4101 = !DILocation(line: 125, column: 20, scope: !794)
!4102 = !DILocation(line: 125, column: 7, scope: !769)
!4103 = !DILocation(line: 127, column: 11, scope: !792)
!4104 = !DILocation(line: 127, column: 17, scope: !792)
!4105 = !DILocation(line: 127, column: 11, scope: !793)
!4106 = !DILocation(line: 0, scope: !4044, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 129, column: 22, scope: !791)
!4108 = !DILocation(line: 0, scope: !4052, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 51, column: 10, scope: !4044, inlinedAt: !4107)
!4110 = !DILocation(line: 2059, column: 10, scope: !4052, inlinedAt: !4109)
!4111 = !DILocation(line: 0, scope: !791)
!4112 = !DILocation(line: 130, column: 15, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !791, file: !766, line: 130, column: 15)
!4114 = !DILocation(line: 130, column: 15, scope: !791)
!4115 = !DILocation(line: 132, column: 23, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4113, file: !766, line: 131, column: 13)
!4117 = !DILocation(line: 133, column: 18, scope: !4116)
!4118 = !DILocation(line: 134, column: 26, scope: !4116)
!4119 = !DILocation(line: 140, column: 20, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !769, file: !766, line: 140, column: 7)
!4121 = !DILocation(line: 140, column: 25, scope: !4120)
!4122 = !DILocation(line: 142, column: 38, scope: !769)
!4123 = !DILocation(line: 0, scope: !4044, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 142, column: 14, scope: !769)
!4125 = !DILocation(line: 51, column: 26, scope: !4044, inlinedAt: !4124)
!4126 = !DILocation(line: 0, scope: !4052, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 51, column: 10, scope: !4044, inlinedAt: !4124)
!4128 = !DILocation(line: 2059, column: 10, scope: !4052, inlinedAt: !4127)
!4129 = !DILocation(line: 143, column: 9, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !769, file: !766, line: 143, column: 7)
!4131 = !DILocation(line: 143, column: 7, scope: !769)
!4132 = !DILocation(line: 148, column: 46, scope: !769)
!4133 = !DILocation(line: 148, column: 39, scope: !769)
!4134 = !DILocation(line: 149, column: 39, scope: !769)
!4135 = !DILocation(line: 148, column: 15, scope: !769)
!4136 = !DILocation(line: 151, column: 10, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !769, file: !766, line: 151, column: 7)
!4138 = !DILocation(line: 151, column: 7, scope: !769)
!4139 = !DILocation(line: 154, column: 7, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4137, file: !766, line: 152, column: 5)
!4141 = !DILocation(line: 155, column: 7, scope: !4140)
!4142 = !DILocation(line: 158, column: 17, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !769, file: !766, line: 158, column: 7)
!4144 = !DILocation(line: 160, column: 10, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !766, line: 159, column: 5)
!4146 = !DILocation(line: 161, column: 9, scope: !4145)
!4147 = !DILocation(line: 162, column: 5, scope: !4145)
!4148 = !DILocation(line: 163, column: 11, scope: !769)
!4149 = !DILocation(line: 181, column: 9, scope: !799)
!4150 = !DILocation(line: 181, column: 7, scope: !769)
!4151 = !DILocation(line: 183, column: 21, scope: !798)
!4152 = !DILocation(line: 0, scope: !798)
!4153 = !DILocation(line: 184, column: 29, scope: !798)
!4154 = !DILocation(line: 0, scope: !802)
!4155 = !DILocation(line: 186, scope: !802)
!4156 = !DILocation(line: 186, column: 7, scope: !802)
!4157 = !DILocation(line: 188, column: 15, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !766, line: 188, column: 15)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !766, line: 187, column: 9)
!4160 = distinct !DILexicalBlock(scope: !802, file: !766, line: 186, column: 7)
!4161 = !DILocation(line: 188, column: 21, scope: !4158)
!4162 = !DILocation(line: 188, column: 30, scope: !4158)
!4163 = !DILocation(line: 189, column: 15, scope: !4158)
!4164 = !DILocation(line: 189, column: 13, scope: !4158)
!4165 = !DILocation(line: 191, column: 14, scope: !4158)
!4166 = !DILocation(line: 191, column: 18, scope: !4158)
!4167 = !DILocation(line: 186, column: 38, scope: !4160)
!4168 = distinct !{!4168, !4156, !4169, !941}
!4169 = !DILocation(line: 192, column: 9, scope: !802)
!4170 = !DILocation(line: 196, column: 1, scope: !769)
!4171 = !DISubprogram(name: "getgrouplist", scope: !1270, file: !1270, line: 186, type: !4172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !879)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!53, !80, !774, !4174, !321}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!4175 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !807, file: !807, line: 27, type: !3233, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4176)
!4176 = !{!4177, !4178, !4179, !4180}
!4177 = !DILocalVariable(name: "ptr", arg: 1, scope: !4175, file: !807, line: 27, type: !75)
!4178 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4175, file: !807, line: 27, type: !77)
!4179 = !DILocalVariable(name: "size", arg: 3, scope: !4175, file: !807, line: 27, type: !77)
!4180 = !DILocalVariable(name: "nbytes", scope: !4175, file: !807, line: 29, type: !77)
!4181 = !DILocation(line: 0, scope: !4175)
!4182 = !DILocation(line: 30, column: 7, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4175, file: !807, line: 30, column: 7)
!4184 = !DILocalVariable(name: "ptr", arg: 1, scope: !4185, file: !3325, line: 2057, type: !75)
!4185 = distinct !DISubprogram(name: "rpl_realloc", scope: !3325, file: !3325, line: 2057, type: !3317, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4186)
!4186 = !{!4184, !4187}
!4187 = !DILocalVariable(name: "size", arg: 2, scope: !4185, file: !3325, line: 2057, type: !77)
!4188 = !DILocation(line: 0, scope: !4185, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 37, column: 10, scope: !4175)
!4190 = !DILocation(line: 2059, column: 24, scope: !4185, inlinedAt: !4189)
!4191 = !DILocation(line: 2059, column: 10, scope: !4185, inlinedAt: !4189)
!4192 = !DILocation(line: 37, column: 3, scope: !4175)
!4193 = !DILocation(line: 32, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4183, file: !807, line: 31, column: 5)
!4195 = !DILocation(line: 32, column: 13, scope: !4194)
!4196 = !DILocation(line: 33, column: 7, scope: !4194)
!4197 = !DILocation(line: 38, column: 1, scope: !4175)
!4198 = distinct !DISubprogram(name: "hard_locale", scope: !699, file: !699, line: 28, type: !4199, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!133, !53}
!4201 = !{!4202, !4203}
!4202 = !DILocalVariable(name: "category", arg: 1, scope: !4198, file: !699, line: 28, type: !53)
!4203 = !DILocalVariable(name: "locale", scope: !4198, file: !699, line: 30, type: !4204)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4205)
!4205 = !{!4206}
!4206 = !DISubrange(count: 257)
!4207 = !DILocation(line: 0, scope: !4198)
!4208 = !DILocation(line: 30, column: 3, scope: !4198)
!4209 = !DILocation(line: 30, column: 8, scope: !4198)
!4210 = !DILocation(line: 32, column: 7, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4198, file: !699, line: 32, column: 7)
!4212 = !DILocation(line: 32, column: 7, scope: !4198)
!4213 = !DILocalVariable(name: "__s1", arg: 1, scope: !4214, file: !907, line: 1359, type: !80)
!4214 = distinct !DISubprogram(name: "streq", scope: !907, file: !907, line: 1359, type: !908, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4215)
!4215 = !{!4213, !4216}
!4216 = !DILocalVariable(name: "__s2", arg: 2, scope: !4214, file: !907, line: 1359, type: !80)
!4217 = !DILocation(line: 0, scope: !4214, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 35, column: 9, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4198, file: !699, line: 35, column: 7)
!4220 = !DILocation(line: 1361, column: 11, scope: !4214, inlinedAt: !4218)
!4221 = !DILocation(line: 1361, column: 10, scope: !4214, inlinedAt: !4218)
!4222 = !DILocation(line: 35, column: 29, scope: !4219)
!4223 = !DILocation(line: 0, scope: !4214, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 35, column: 32, scope: !4219)
!4225 = !DILocation(line: 1361, column: 11, scope: !4214, inlinedAt: !4224)
!4226 = !DILocation(line: 1361, column: 10, scope: !4214, inlinedAt: !4224)
!4227 = !DILocation(line: 35, column: 7, scope: !4198)
!4228 = !DILocation(line: 46, column: 3, scope: !4198)
!4229 = !DILocation(line: 47, column: 1, scope: !4198)
!4230 = distinct !DISubprogram(name: "setlocale_null_r", scope: !812, file: !812, line: 154, type: !4231, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!53, !53, !74, !77}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "category", arg: 1, scope: !4230, file: !812, line: 154, type: !53)
!4235 = !DILocalVariable(name: "buf", arg: 2, scope: !4230, file: !812, line: 154, type: !74)
!4236 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4230, file: !812, line: 154, type: !77)
!4237 = !DILocation(line: 0, scope: !4230)
!4238 = !DILocation(line: 159, column: 10, scope: !4230)
!4239 = !DILocation(line: 159, column: 3, scope: !4230)
!4240 = distinct !DISubprogram(name: "setlocale_null", scope: !812, file: !812, line: 186, type: !4241, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!80, !53}
!4243 = !{!4244}
!4244 = !DILocalVariable(name: "category", arg: 1, scope: !4240, file: !812, line: 186, type: !53)
!4245 = !DILocation(line: 0, scope: !4240)
!4246 = !DILocation(line: 189, column: 10, scope: !4240)
!4247 = !DILocation(line: 189, column: 3, scope: !4240)
!4248 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !814, file: !814, line: 35, type: !4241, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4249)
!4249 = !{!4250, !4251}
!4250 = !DILocalVariable(name: "category", arg: 1, scope: !4248, file: !814, line: 35, type: !53)
!4251 = !DILocalVariable(name: "result", scope: !4248, file: !814, line: 37, type: !80)
!4252 = !DILocation(line: 0, scope: !4248)
!4253 = !DILocation(line: 37, column: 24, scope: !4248)
!4254 = !DILocation(line: 62, column: 3, scope: !4248)
!4255 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !814, file: !814, line: 66, type: !4231, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261}
!4257 = !DILocalVariable(name: "category", arg: 1, scope: !4255, file: !814, line: 66, type: !53)
!4258 = !DILocalVariable(name: "buf", arg: 2, scope: !4255, file: !814, line: 66, type: !74)
!4259 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4255, file: !814, line: 66, type: !77)
!4260 = !DILocalVariable(name: "result", scope: !4255, file: !814, line: 111, type: !80)
!4261 = !DILocalVariable(name: "length", scope: !4262, file: !814, line: 125, type: !77)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !814, line: 124, column: 5)
!4263 = distinct !DILexicalBlock(scope: !4255, file: !814, line: 113, column: 7)
!4264 = !DILocation(line: 0, scope: !4255)
!4265 = !DILocation(line: 0, scope: !4248, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 111, column: 24, scope: !4255)
!4267 = !DILocation(line: 37, column: 24, scope: !4248, inlinedAt: !4266)
!4268 = !DILocation(line: 113, column: 14, scope: !4263)
!4269 = !DILocation(line: 113, column: 7, scope: !4255)
!4270 = !DILocation(line: 116, column: 19, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !814, line: 116, column: 11)
!4272 = distinct !DILexicalBlock(scope: !4263, file: !814, line: 114, column: 5)
!4273 = !DILocation(line: 116, column: 11, scope: !4272)
!4274 = !DILocation(line: 120, column: 16, scope: !4271)
!4275 = !DILocation(line: 120, column: 9, scope: !4271)
!4276 = !DILocation(line: 125, column: 23, scope: !4262)
!4277 = !DILocation(line: 0, scope: !4262)
!4278 = !DILocation(line: 126, column: 18, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4262, file: !814, line: 126, column: 11)
!4280 = !DILocation(line: 126, column: 11, scope: !4262)
!4281 = !DILocation(line: 128, column: 39, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !814, line: 127, column: 9)
!4283 = !DILocalVariable(name: "__dest", arg: 1, scope: !4284, file: !1762, line: 26, type: !3593)
!4284 = distinct !DISubprogram(name: "memcpy", scope: !1762, file: !1762, line: 26, type: !3591, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4285)
!4285 = !{!4283, !4286, !4287}
!4286 = !DILocalVariable(name: "__src", arg: 2, scope: !4284, file: !1762, line: 26, type: !1038)
!4287 = !DILocalVariable(name: "__len", arg: 3, scope: !4284, file: !1762, line: 26, type: !77)
!4288 = !DILocation(line: 0, scope: !4284, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 128, column: 11, scope: !4282)
!4290 = !DILocation(line: 29, column: 10, scope: !4284, inlinedAt: !4289)
!4291 = !DILocation(line: 129, column: 11, scope: !4282)
!4292 = !DILocation(line: 133, column: 23, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !814, line: 133, column: 15)
!4294 = distinct !DILexicalBlock(scope: !4279, file: !814, line: 132, column: 9)
!4295 = !DILocation(line: 133, column: 15, scope: !4294)
!4296 = !DILocation(line: 138, column: 44, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !814, line: 134, column: 13)
!4298 = !DILocation(line: 0, scope: !4284, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 138, column: 15, scope: !4297)
!4300 = !DILocation(line: 29, column: 10, scope: !4284, inlinedAt: !4299)
!4301 = !DILocation(line: 139, column: 15, scope: !4297)
!4302 = !DILocation(line: 139, column: 32, scope: !4297)
!4303 = !DILocation(line: 140, column: 13, scope: !4297)
!4304 = !DILocation(line: 0, scope: !4263)
!4305 = !DILocation(line: 145, column: 1, scope: !4255)
