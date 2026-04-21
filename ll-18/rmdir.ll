; ModuleID = 'src/rmdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [95 x i8] c"      --ignore-fail-on-non-empty\0A         ignore each failure to remove a non-empty directory\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [120 x i8] c"  -p, --parents\0A         remove DIRECTORY and its ancestors;\0A         e.g., 'rmdir -p a/b' is similar to 'rmdir a/b a'\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [76 x i8] c"  -v, --verbose\0A         output a diagnostic for every directory processed\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !47
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [3 x i8] c"pv\00", align 1, !dbg !62
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !67
@remove_empty_parents = internal unnamed_addr global i1 false, align 1, !dbg !378
@ignore_fail_on_non_empty = internal unnamed_addr global i1 false, align 1, !dbg !379
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !380
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !126
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !131
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !136
@.str.16 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1, !dbg !138
@.str.17 = private unnamed_addr constant [48 x i8] c"failed to remove %s: Symbolic link not followed\00", align 1, !dbg !143
@.str.18 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1, !dbg !145
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !157
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !236
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !241
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !243
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !248
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !285
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !287
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !289
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !294
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !299
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !304
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !309
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !311
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !313
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !315
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !326
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !328
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !333
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !338
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !343
@.str.54 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1, !dbg !348
@.str.55 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !dbg !353
@.str.56 = private unnamed_addr constant [8 x i8] c"parents\00", align 1, !dbg !355
@.str.57 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !357
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !359
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !361
@.str.60 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1, !dbg !363
@.str.23 = private unnamed_addr constant [3 x i8] c": \00", align 1, !dbg !381
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !384
@Version = dso_local local_unnamed_addr global ptr @.str.26, align 8, !dbg !387
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !391
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !404
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !396
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !398
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !400
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !402
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !406
@stderr = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !412
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !448
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !414
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !438
@.str.1.41 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !440
@.str.2.43 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !442
@.str.3.42 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !444
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !446
@.str.4.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !450
@.str.5.37 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !452
@.str.6.38 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !457
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !462
@.str.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !468
@.str.1.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !470
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !472
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !503
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !506
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !508
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !513
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !515
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !517
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !519
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !521
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !523
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !525
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.65, ptr @.str.1.66, ptr @.str.2.67, ptr @.str.3.68, ptr @.str.4.69, ptr @.str.5.70, ptr @.str.6.71, ptr @.str.7.72, ptr @.str.8.73, ptr @.str.9.74, ptr null], align 8, !dbg !527
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !540
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !554
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !592
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !599
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !556
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !601
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !544
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !561
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !563
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !565
@.str.13.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !569
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !607
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !610
@.str.2.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !612
@.str.3.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !614
@.str.4.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !616
@.str.5.88 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !618
@.str.6.89 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !623
@.str.7.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !628
@.str.8.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !630
@.str.9.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !632
@.str.10.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !637
@.str.11.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !642
@.str.12.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !644
@.str.13.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !646
@.str.14.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !651
@.str.15.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !653
@.str.16.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !658
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.104 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !663
@.str.18.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !665
@.str.19.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !667
@.str.20.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !669
@.str.21.108 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !671
@.str.22.109 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !673
@.str.23.110 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !675
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !680
@exit_failure = dso_local global i32 1, align 4, !dbg !688
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !694
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !697
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !699
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !701
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !704
@.str.145 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !719
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !722

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !803 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !808
  %2 = icmp eq i32 %0, 0, !dbg !809
  br i1 %2, label %8, label %3, !dbg !811

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !812, !tbaa !814
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !812
  %6 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !814
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !812
  br label %34, !dbg !812

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !818
  %10 = load ptr, ptr @program_name, align 8, !dbg !818, !tbaa !814
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !818
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !820
  %13 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !814
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !820
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !821
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !822
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !823
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !823
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !824
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !824
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !825
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata !845, metadata !839, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr poison, metadata !838, metadata !DIExpression()), !dbg !843
  tail call void @emit_bug_reporting_address() #39, !dbg !846
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !847
  call void @llvm.dbg.value(metadata ptr %20, metadata !841, metadata !DIExpression()), !dbg !843
  %21 = icmp eq ptr %20, null, !dbg !848
  br i1 %21, label %29, label %22, !dbg !850

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !851
  %24 = icmp eq i32 %23, 0, !dbg !851
  br i1 %24, label %29, label %25, !dbg !852

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !853
  %27 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !814
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !853
  br label %29, !dbg !855

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !842, metadata !DIExpression()), !dbg !843
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !856
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !856
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !857
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !857
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !858
  unreachable, !dbg !858
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !859 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !863 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !869 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !872 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !159 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !163, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !875
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !876, !tbaa !877
  %3 = icmp eq i32 %2, -1, !dbg !879
  br i1 %3, label %4, label %16, !dbg !880

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !881
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !165, metadata !DIExpression()), !dbg !882
  %6 = icmp eq ptr %5, null, !dbg !883
  br i1 %6, label %14, label %7, !dbg !884

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !885, !tbaa !886
  %9 = icmp eq i8 %8, 0, !dbg !885
  br i1 %9, label %14, label %10, !dbg !887

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !888, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !894, metadata !DIExpression()), !dbg !895
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !897
  %12 = icmp eq i32 %11, 0, !dbg !898
  %13 = zext i1 %12 to i32, !dbg !887
  br label %14, !dbg !887

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !899, !tbaa !877
  br label %16, !dbg !900

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !901
  %18 = icmp eq i32 %17, 0, !dbg !901
  br i1 %18, label %22, label %19, !dbg !903

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !904, !tbaa !814
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !904
  br label %121, !dbg !906

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !168, metadata !DIExpression()), !dbg !875
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !907
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !908
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !169, metadata !DIExpression()), !dbg !875
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !909
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !170, metadata !DIExpression()), !dbg !875
  %26 = icmp eq ptr %25, null, !dbg !910
  br i1 %26, label %53, label %27, !dbg !911

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !912
  br i1 %28, label %53, label %29, !dbg !913

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !171, metadata !DIExpression()), !dbg !914
  tail call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()), !dbg !914
  %30 = icmp ult ptr %24, %25, !dbg !915
  br i1 %30, label %31, label %53, !dbg !916

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !875
  %33 = load ptr, ptr %32, align 8, !tbaa !814
  br label %34, !dbg !916

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !171, metadata !DIExpression()), !dbg !914
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !175, metadata !DIExpression()), !dbg !914
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !171, metadata !DIExpression()), !dbg !914
  %38 = load i8, ptr %35, align 1, !dbg !917, !tbaa !886
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !917
  %41 = load i16, ptr %40, align 2, !dbg !917, !tbaa !918
  %42 = freeze i16 %41, !dbg !920
  %43 = lshr i16 %42, 13, !dbg !920
  %44 = and i16 %43, 1, !dbg !920
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !921
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !175, metadata !DIExpression()), !dbg !914
  %47 = icmp ult ptr %37, %25, !dbg !915
  %48 = icmp ult i64 %46, 2, !dbg !922
  %49 = select i1 %47, i1 %48, i1 false, !dbg !922
  br i1 %49, label %34, label %50, !dbg !916, !llvm.loop !923

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !921
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !925
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !927
  br label %53, !dbg !927

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !875
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !170, metadata !DIExpression()), !dbg !875
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.22) #40, !dbg !928
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !176, metadata !DIExpression()), !dbg !875
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !929
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !177, metadata !DIExpression()), !dbg !875
  br label %58, !dbg !930

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !875
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !177, metadata !DIExpression()), !dbg !875
  %61 = load i8, ptr %59, align 1, !dbg !931, !tbaa !886
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !932

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !933
  %64 = load i8, ptr %63, align 1, !dbg !936, !tbaa !886
  %65 = icmp ne i8 %64, 45, !dbg !937
  %66 = select i1 %65, i1 %60, i1 false, !dbg !938
  br label %67, !dbg !938

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !875
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !939
  %70 = load ptr, ptr %69, align 8, !dbg !939, !tbaa !814
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !939
  %73 = load i16, ptr %72, align 2, !dbg !939, !tbaa !918
  %74 = and i16 %73, 8192, !dbg !939
  %75 = icmp eq i16 %74, 0, !dbg !939
  br i1 %75, label %89, label %76, !dbg !941

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !942
  br i1 %77, label %91, label %78, !dbg !945

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !946
  %80 = load i8, ptr %79, align 1, !dbg !946, !tbaa !886
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !946
  %83 = load i16, ptr %82, align 2, !dbg !946, !tbaa !918
  %84 = and i16 %83, 8192, !dbg !946
  %85 = icmp eq i16 %84, 0, !dbg !946
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !947
  br i1 %88, label %89, label %91, !dbg !947

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !948
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !177, metadata !DIExpression()), !dbg !875
  br label %58, !dbg !930, !llvm.loop !949

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !875
  %92 = ptrtoint ptr %24 to i64, !dbg !951
  %93 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !814
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !845, metadata !894, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !875
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !972
  %96 = icmp eq i32 %95, 0, !dbg !972
  br i1 %96, label %100, label %97, !dbg !974

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !975
  %99 = icmp eq i32 %98, 0, !dbg !975
  br i1 %99, label %100, label %103, !dbg !976

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !977
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !977
  br label %106, !dbg !979

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !980
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !980
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !814
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %107), !dbg !982
  %109 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !814
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %109), !dbg !983
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !984
  %112 = sub i64 %111, %92, !dbg !984
  %113 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !814
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !984
  %115 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !814
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %115), !dbg !985
  %117 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !814
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %117), !dbg !986
  %119 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !814
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !987
  br label %121, !dbg !988

121:                                              ; preds = %106, %19
  ret void, !dbg !988
}

; Function Attrs: nounwind
declare !dbg !989 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !993 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !997 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !999 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1008 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1011 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1017 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1018 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1024 {
  %3 = alloca [1 x i8], align 1, !DIAssignID !1086
  %4 = alloca %struct.stat, align 8, !DIAssignID !1087
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1044, metadata !DIExpression(), metadata !1087, metadata ptr %4, metadata !DIExpression()), !dbg !1088
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1029, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !1089
  %5 = load ptr, ptr %1, align 8, !dbg !1090, !tbaa !814
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1091
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #39, !dbg !1092
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #39, !dbg !1093
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #39, !dbg !1094
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1095
  br label %10, !dbg !1096

10:                                               ; preds = %20, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1031, metadata !DIExpression()), !dbg !1089
  switch i32 %11, label %19 [
    i32 -1, label %22
    i32 112, label %20
    i32 256, label %12
    i32 118, label %13
    i32 -2, label %14
    i32 -3, label %15
  ], !dbg !1096

12:                                               ; preds = %10
  br label %20, !dbg !1098

13:                                               ; preds = %10
  br label %20, !dbg !1101

14:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #43, !dbg !1102
  unreachable, !dbg !1102

15:                                               ; preds = %10
  %16 = load ptr, ptr @stdout, align 8, !dbg !1103, !tbaa !814
  %17 = load ptr, ptr @Version, align 8, !dbg !1103, !tbaa !814
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #39, !dbg !1103
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %17, ptr noundef %18, ptr noundef null) #39, !dbg !1103
  tail call void @exit(i32 noundef 0) #41, !dbg !1103
  unreachable, !dbg !1103

19:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #43, !dbg !1104
  unreachable, !dbg !1104

20:                                               ; preds = %10, %13, %12
  %21 = phi ptr [ @verbose, %13 ], [ @ignore_fail_on_non_empty, %12 ], [ @remove_empty_parents, %10 ]
  store i1 true, ptr %21, align 1, !dbg !1105
  br label %10, !dbg !1096, !llvm.loop !1106

22:                                               ; preds = %10
  %23 = load i32, ptr @optind, align 4, !dbg !1108, !tbaa !877
  %24 = icmp eq i32 %23, %0, !dbg !1110
  br i1 %24, label %29, label %25, !dbg !1111

25:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1032, metadata !DIExpression()), !dbg !1089
  %26 = icmp slt i32 %23, %0, !dbg !1112
  br i1 %26, label %27, label %134, !dbg !1113

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2
  br label %31, !dbg !1113

29:                                               ; preds = %22
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1114
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #39, !dbg !1114
  tail call void @usage(i32 noundef 1) #43, !dbg !1116
  unreachable, !dbg !1116

31:                                               ; preds = %27, %126
  %32 = phi i32 [ %23, %27 ], [ %129, %126 ]
  %33 = phi i1 [ true, %27 ], [ %127, %126 ]
  %34 = sext i32 %32 to i64, !dbg !1117
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1117
  %36 = load ptr, ptr %35, align 8, !dbg !1117, !tbaa !814
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1033, metadata !DIExpression()), !dbg !1118
  %37 = load i1, ptr @verbose, align 1, !dbg !1119
  br i1 %37, label %38, label %42, !dbg !1121

38:                                               ; preds = %31
  %39 = load ptr, ptr @stdout, align 8, !dbg !1122, !tbaa !814
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1123
  %41 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1124
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %41) #39, !dbg !1125
  br label %42, !dbg !1125

42:                                               ; preds = %38, %31
  %43 = tail call i32 @rmdir(ptr noundef %36) #39, !dbg !1126
  %44 = icmp eq i32 %43, 0, !dbg !1127
  br i1 %44, label %81, label %45, !dbg !1128

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #42, !dbg !1129
  %47 = load i32, ptr %46, align 4, !dbg !1129, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1037, metadata !DIExpression()), !dbg !1130
  %48 = tail call fastcc i1 @ignorable_failure(i32 noundef %47, ptr noundef %36), !dbg !1131
  br i1 %48, label %126, label %49, !dbg !1133

49:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1040, metadata !DIExpression()), !dbg !1130
  %50 = icmp eq i32 %47, 20, !dbg !1134
  br i1 %50, label %51, label %78, !dbg !1135

51:                                               ; preds = %49
  %52 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #40, !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1041, metadata !DIExpression()), !dbg !1137
  %53 = icmp eq ptr %52, null, !dbg !1138
  br i1 %53, label %78, label %54, !dbg !1139

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1140
  %56 = load i8, ptr %55, align 1, !dbg !1141, !tbaa !886
  %57 = icmp eq i8 %56, 0, !dbg !1142
  br i1 %57, label %58, label %78, !dbg !1143

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #39, !dbg !1144
  %59 = call i32 @stat(ptr noundef %36, ptr noundef nonnull %4) #39, !dbg !1145
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1082, metadata !DIExpression()), !dbg !1088
  %60 = icmp eq i32 %59, 0, !dbg !1146
  br i1 %60, label %64, label %61, !dbg !1146

61:                                               ; preds = %58
  %62 = load i32, ptr %46, align 4, !dbg !1147, !tbaa !877
  %63 = icmp eq i32 %62, 20, !dbg !1148
  br i1 %63, label %77, label %68, !dbg !1149

64:                                               ; preds = %58
  %65 = load i32, ptr %28, align 8, !dbg !1150, !tbaa !1151
  %66 = and i32 %65, 61440, !dbg !1150
  %67 = icmp eq i32 %66, 16384, !dbg !1150
  br i1 %67, label %68, label %77, !dbg !1155

68:                                               ; preds = %64, %61
  %69 = tail call noalias nonnull ptr @xstrdup(ptr noundef %36) #39, !dbg !1156
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !1083, metadata !DIExpression()), !dbg !1157
  %70 = tail call i1 @strip_trailing_slashes(ptr noundef %36) #39, !dbg !1158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1159, metadata !DIExpression(), metadata !1086, metadata ptr %3, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %36, metadata !1165, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #39, !dbg !1169
  %71 = call i64 @readlink(ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef 1) #39, !dbg !1170
  %72 = icmp sgt i64 %71, -1, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #39, !dbg !1173
  br i1 %72, label %73, label %76, !dbg !1174

73:                                               ; preds = %68
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1175
  %75 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %69) #39, !dbg !1175
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #39, !dbg !1175
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1040, metadata !DIExpression()), !dbg !1130
  tail call void @free(ptr noundef nonnull %69) #39, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39, !dbg !1178
  br label %126, !dbg !1179

76:                                               ; preds = %68
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1040, metadata !DIExpression()), !dbg !1130
  tail call void @free(ptr noundef nonnull %69) #39, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39, !dbg !1178
  br label %78, !dbg !1179

77:                                               ; preds = %61, %64
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1040, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39, !dbg !1178
  br label %78, !dbg !1179

78:                                               ; preds = %76, %49, %54, %51, %77
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1180
  %80 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1180
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %47, ptr noundef %79, ptr noundef %80) #39, !dbg !1180
  br label %126, !dbg !1180

81:                                               ; preds = %42
  %82 = load i1, ptr @remove_empty_parents, align 1, !dbg !1182
  br i1 %82, label %83, label %126, !dbg !1184

83:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr %36, metadata !1185, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1199
  %84 = ptrtoint ptr %36 to i64, !dbg !1202
  %85 = tail call i1 @strip_trailing_slashes(ptr noundef %36) #39, !dbg !1202
  br label %86, !dbg !1203

86:                                               ; preds = %111, %83
  call void @llvm.dbg.value(metadata i8 poison, metadata !1190, metadata !DIExpression()), !dbg !1199
  %87 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #40, !dbg !1204
  %88 = ptrtoint ptr %87 to i64, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %87, metadata !1191, metadata !DIExpression()), !dbg !1207
  %89 = icmp eq ptr %87, null, !dbg !1205
  br i1 %89, label %.loopexit1, label %90, !dbg !1208

90:                                               ; preds = %86
  call void @llvm.dbg.value(metadata ptr %87, metadata !1191, metadata !DIExpression()), !dbg !1207
  %91 = icmp ugt ptr %87, %36, !dbg !1209
  br i1 %91, label %92, label %103, !dbg !1210

92:                                               ; preds = %90
  %93 = getelementptr i8, ptr %87, i64 %84, !dbg !1211
  %94 = sub i64 0, %88, !dbg !1211
  %95 = getelementptr i8, ptr %93, i64 %94, !dbg !1211
  br label %96, !dbg !1211

96:                                               ; preds = %100, %92
  %97 = phi ptr [ %101, %100 ], [ %87, %92 ]
  call void @llvm.dbg.value(metadata ptr %97, metadata !1191, metadata !DIExpression()), !dbg !1207
  %98 = load i8, ptr %97, align 1, !dbg !1212, !tbaa !886
  %99 = icmp eq i8 %98, 47, !dbg !1213
  br i1 %99, label %100, label %.loopexit, !dbg !1211

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 -1, !dbg !1214
  call void @llvm.dbg.value(metadata ptr %101, metadata !1191, metadata !DIExpression()), !dbg !1207
  %102 = icmp ugt ptr %101, %36, !dbg !1209
  br i1 %102, label %96, label %.loopexit, !dbg !1210, !llvm.loop !1215

.loopexit:                                        ; preds = %96, %100
  %.ph = phi ptr [ %95, %100 ], [ %97, %96 ]
  br label %103, !dbg !1217

103:                                              ; preds = %.loopexit, %90
  %104 = phi ptr [ %87, %90 ], [ %.ph, %.loopexit ], !dbg !1207
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1217
  store i8 0, ptr %105, align 1, !dbg !1218, !tbaa !886
  %106 = load i1, ptr @verbose, align 1, !dbg !1219
  br i1 %106, label %107, label %111, !dbg !1221

107:                                              ; preds = %103
  %108 = load ptr, ptr @stdout, align 8, !dbg !1222, !tbaa !814
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1223
  %110 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1224
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %108, ptr noundef %109, ptr noundef %110) #39, !dbg !1225
  br label %111, !dbg !1225

111:                                              ; preds = %107, %103
  %112 = tail call i32 @rmdir(ptr noundef %36) #39, !dbg !1226
  %113 = icmp eq i32 %112, 0, !dbg !1227
  call void @llvm.dbg.value(metadata i1 %113, metadata !1190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1199
  %114 = tail call ptr @__errno_location() #42, !dbg !1228
  %115 = load i32, ptr %114, align 4, !dbg !1228, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %115, metadata !1193, metadata !DIExpression()), !dbg !1207
  br i1 %113, label %86, label %116, !dbg !1229

116:                                              ; preds = %111
  %.lcssa = phi i32 [ %115, %111 ], !dbg !1228
  %117 = tail call fastcc i1 @ignorable_failure(i32 noundef %.lcssa, ptr noundef %36), !dbg !1230
  br i1 %117, label %123, label %118, !dbg !1231

118:                                              ; preds = %116
  %119 = icmp eq i32 %.lcssa, 20, !dbg !1232
  %120 = select i1 %119, ptr @.str.18, ptr @.str.60
  call void @llvm.dbg.value(metadata ptr %120, metadata !1194, metadata !DIExpression()), !dbg !1234
  %121 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %120, i32 noundef 5) #39, !dbg !1235
  %122 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1235
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.lcssa, ptr noundef %121, ptr noundef %122) #39, !dbg !1235
  br label %123

.loopexit1:                                       ; preds = %86
  br label %123, !dbg !1236

123:                                              ; preds = %.loopexit1, %116, %118
  %124 = phi i1 [ true, %116 ], [ false, %118 ], [ true, %.loopexit1 ]
  %125 = and i1 %33, %124, !dbg !1236
  tail call void @llvm.dbg.value(metadata i1 %125, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1089
  br label %126, !dbg !1237

126:                                              ; preds = %73, %45, %78, %123, %81
  %127 = phi i1 [ %125, %123 ], [ %33, %81 ], [ %33, %45 ], [ false, %78 ], [ false, %73 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1032, metadata !DIExpression()), !dbg !1089
  %128 = load i32, ptr @optind, align 4, !dbg !1238, !tbaa !877
  %129 = add nsw i32 %128, 1, !dbg !1238
  store i32 %129, ptr @optind, align 4, !dbg !1238, !tbaa !877
  %130 = icmp slt i32 %129, %0, !dbg !1112
  br i1 %130, label %31, label %131, !dbg !1113, !llvm.loop !1239

131:                                              ; preds = %126
  %.lcssa2 = phi i1 [ %127, %126 ]
  %132 = xor i1 %.lcssa2, true, !dbg !1241
  %133 = zext i1 %132 to i32, !dbg !1241
  br label %134, !dbg !1241

134:                                              ; preds = %131, %25
  %135 = phi i32 [ 0, %25 ], [ %133, %131 ]
  ret i32 %135, !dbg !1242
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1243 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1246 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1247 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1250 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1256 noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1258 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i1 @ignorable_failure(i32 noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1262 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1267, metadata !DIExpression()), !dbg !1268
  %3 = load i1, ptr @ignore_fail_on_non_empty, align 1, !dbg !1269
  br i1 %3, label %4, label %47, !dbg !1270

4:                                                ; preds = %2
  switch i32 %0, label %46 [
    i32 39, label %47
    i32 17, label %47
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !1271

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !1272, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %1, metadata !1277, metadata !DIExpression()), !dbg !1286
  %6 = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef -100, ptr noundef %1, i32 noundef 51456) #39, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %6, metadata !1285, metadata !DIExpression()), !dbg !1286
  %7 = icmp slt i32 %6, 0, !dbg !1289
  br i1 %7, label %8, label %11, !dbg !1291

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #42, !dbg !1292
  %10 = load i32, ptr %9, align 4, !dbg !1292, !tbaa !877
  br label %43, !dbg !1293

11:                                               ; preds = %5
  %12 = tail call ptr @fdopendir(i32 noundef %6) #39, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %12, metadata !1278, metadata !DIExpression()), !dbg !1286
  %13 = icmp eq ptr %12, null, !dbg !1295
  %14 = tail call ptr @__errno_location() #42, !dbg !1286
  br i1 %13, label %15, label %18, !dbg !1297

15:                                               ; preds = %11
  %16 = load i32, ptr %14, align 4, !dbg !1298, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %16, metadata !1284, metadata !DIExpression()), !dbg !1286
  %17 = tail call i32 @close(i32 noundef %6) #39, !dbg !1300
  br label %43, !dbg !1301

18:                                               ; preds = %11
  store i32 0, ptr %14, align 4, !dbg !1302, !tbaa !877
  call void @llvm.dbg.value(metadata ptr %12, metadata !1303, metadata !DIExpression()), !dbg !1320
  br label %19, !dbg !1322

19:                                               ; preds = %26, %18
  %20 = tail call ptr @readdir(ptr noundef nonnull %12) #39, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %20, metadata !1318, metadata !DIExpression()), !dbg !1324
  %21 = icmp eq ptr %20, null, !dbg !1325
  br i1 %21, label %37, label %22, !dbg !1327

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %23, metadata !1329, metadata !DIExpression()), !dbg !1337
  %24 = load i8, ptr %23, align 1, !dbg !1339, !tbaa !886
  %25 = icmp eq i8 %24, 46, !dbg !1340
  br i1 %25, label %26, label %37, !dbg !1341

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, i64 1, !dbg !1342
  %28 = load i8, ptr %27, align 1, !dbg !1342, !tbaa !886
  %29 = icmp eq i8 %28, 46, !dbg !1343
  %30 = select i1 %29, i64 2, i64 1, !dbg !1344
  %31 = getelementptr inbounds i8, ptr %23, i64 %30, !dbg !1345
  %32 = load i8, ptr %31, align 1, !dbg !1345, !tbaa !886
  call void @llvm.dbg.value(metadata i8 %32, metadata !1334, metadata !DIExpression()), !dbg !1346
  %33 = icmp eq i8 %32, 0, !dbg !1347
  %34 = icmp eq i8 %32, 47, !dbg !1348
  %35 = or i1 %33, %34, !dbg !1348
  %36 = freeze i1 %35
  br i1 %36, label %19, label %37, !dbg !1349

37:                                               ; preds = %26, %22, %19
  %.lcssa = phi i1 [ %21, %26 ], [ %21, %22 ], [ %21, %19 ], !dbg !1325
  call void @llvm.dbg.value(metadata i1 %.lcssa, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  %38 = load i32, ptr %14, align 4, !dbg !1350, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %38, metadata !1284, metadata !DIExpression()), !dbg !1286
  %39 = tail call i32 @closedir(ptr noundef nonnull %12), !dbg !1351
  %40 = icmp eq i32 %38, 0
  %41 = select i1 %.lcssa, i1 %40, i1 false, !dbg !1352
  %42 = select i1 %41, i32 -1, i32 %38, !dbg !1352
  br label %43, !dbg !1353

43:                                               ; preds = %8, %15, %37
  %44 = phi i32 [ %10, %8 ], [ %16, %15 ], [ %42, %37 ], !dbg !1286
  %45 = icmp eq i32 %44, 0, !dbg !1354
  br label %47

46:                                               ; preds = %4
  br label %47, !dbg !1355

47:                                               ; preds = %4, %4, %46, %43, %2
  %48 = phi i1 [ false, %2 ], [ true, %4 ], [ %45, %43 ], [ true, %4 ], [ false, %46 ], !dbg !1268
  ret i1 %48, !dbg !1355
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1356 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1357 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1363 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare !dbg !1366 i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare !dbg !1370 ptr @fdopendir(i32 noundef) local_unnamed_addr #3

declare !dbg !1373 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1376 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1380 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1383 {
  %3 = alloca %struct.__va_list, align 8
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1423, metadata !DIExpression(), metadata !1434, metadata ptr %4, metadata !DIExpression()), !dbg !1435
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1421, metadata !DIExpression()), !dbg !1435
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1436
  %5 = load ptr, ptr @program_name, align 8, !dbg !1437, !tbaa !814
  %6 = tail call i32 @fputs_unlocked(ptr noundef %5, ptr noundef nonnull %0), !dbg !1437
  %7 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.23, ptr noundef nonnull %0), !dbg !1438
  call void @llvm.va_start(ptr nonnull %4), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1440, !noalias !1450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %0, metadata !1446, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata ptr %1, metadata !1447, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata ptr poison, metadata !1448, metadata !DIExpression(DW_OP_deref)), !dbg !1455
  %8 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #39, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1440, !noalias !1450
  call void @llvm.va_end(ptr nonnull %4), !dbg !1456
  call void @llvm.dbg.value(metadata i32 10, metadata !1457, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata ptr %0, metadata !1463, metadata !DIExpression()), !dbg !1464
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1466
  %10 = load ptr, ptr %9, align 8, !dbg !1466, !tbaa !1467
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1466
  %12 = load ptr, ptr %11, align 8, !dbg !1466, !tbaa !1469
  %13 = icmp ult ptr %10, %12, !dbg !1466
  br i1 %13, label %16, label %14, !dbg !1466, !prof !1470

14:                                               ; preds = %2
  %15 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #39, !dbg !1466
  br label %18, !dbg !1466

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1466
  store ptr %17, ptr %9, align 8, !dbg !1466, !tbaa !1467
  store i8 10, ptr %10, align 1, !dbg !1466, !tbaa !886
  br label %18, !dbg !1466

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1471
  ret void, !dbg !1471
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare !dbg !1472 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare !dbg !1475 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1480, metadata !DIExpression()), !dbg !1481
  store ptr %0, ptr @file_name, align 8, !dbg !1482, !tbaa !814
  ret void, !dbg !1483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1484 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1490, !tbaa !1491
  ret void, !dbg !1493
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1494 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1499, !tbaa !814
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1500
  %3 = icmp eq i32 %2, 0, !dbg !1501
  br i1 %3, label %22, label %4, !dbg !1502

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1503, !tbaa !1491, !range !1504, !noundef !845
  %6 = icmp eq i8 %5, 0, !dbg !1503
  br i1 %6, label %11, label %7, !dbg !1505

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1506
  %9 = load i32, ptr %8, align 4, !dbg !1506, !tbaa !877
  %10 = icmp eq i32 %9, 32, !dbg !1507
  br i1 %10, label %22, label %11, !dbg !1508

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #39, !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1496, metadata !DIExpression()), !dbg !1510
  %13 = load ptr, ptr @file_name, align 8, !dbg !1511, !tbaa !814
  %14 = icmp eq ptr %13, null, !dbg !1511
  %15 = tail call ptr @__errno_location() #42, !dbg !1513
  %16 = load i32, ptr %15, align 4, !dbg !1513, !tbaa !877
  br i1 %14, label %19, label %17, !dbg !1514

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1515
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #39, !dbg !1515
  br label %20, !dbg !1515

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #39, !dbg !1516
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1517, !tbaa !877
  tail call void @_exit(i32 noundef %21) #41, !dbg !1518
  unreachable, !dbg !1518

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1519, !tbaa !814
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1521
  %25 = icmp eq i32 %24, 0, !dbg !1522
  br i1 %25, label %28, label %26, !dbg !1523

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1524, !tbaa !877
  tail call void @_exit(i32 noundef %27) #41, !dbg !1525
  unreachable, !dbg !1525

28:                                               ; preds = %22
  ret void, !dbg !1526
}

; Function Attrs: noreturn
declare !dbg !1527 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #17 !dbg !1528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1530, metadata !DIExpression()), !dbg !1534
  %2 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1535
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !1534
  %3 = load i8, ptr %2, align 1, !dbg !1536, !tbaa !886
  %4 = icmp eq i8 %3, 0, !dbg !1536
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1531, metadata !DIExpression()), !dbg !1534
  %6 = tail call i64 @base_len(ptr noundef %5) #40, !dbg !1539
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1540
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1532, metadata !DIExpression()), !dbg !1534
  %8 = load i8, ptr %7, align 1, !dbg !1541, !tbaa !886
  %9 = icmp ne i8 %8, 0, !dbg !1542
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1533, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1534
  store i8 0, ptr %7, align 1, !dbg !1543, !tbaa !886
  ret i1 %9, !dbg !1544
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1545 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1549, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1552, metadata !DIExpression(DW_OP_deref)), !dbg !1553
  tail call fastcc void @flush_stdout(), !dbg !1554
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1555, !tbaa !814
  %7 = icmp eq ptr %6, null, !dbg !1555
  br i1 %7, label %9, label %8, !dbg !1557

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1558
  br label %13, !dbg !1558

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1559, !tbaa !814
  %11 = tail call ptr @getprogname() #40, !dbg !1559
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %11) #39, !dbg !1559
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1561, !tbaa.struct !1562
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1561
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1561
  ret void, !dbg !1563
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1564 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 1, metadata !1568, metadata !DIExpression()), !dbg !1571
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1574
  %2 = icmp slt i32 %1, 0, !dbg !1575
  br i1 %2, label %6, label %3, !dbg !1576

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1577, !tbaa !814
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1577
  br label %6, !dbg !1577

6:                                                ; preds = %3, %0
  ret void, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1579 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1585
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1581, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1583, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1584, metadata !DIExpression(DW_OP_deref)), !dbg !1586
  %7 = load ptr, ptr @stderr, align 8, !dbg !1587, !tbaa !814
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1588, !noalias !1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %7, metadata !1628, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata ptr %2, metadata !1629, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata ptr poison, metadata !1630, metadata !DIExpression(DW_OP_deref)), !dbg !1637
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1588, !noalias !1632
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1638, !tbaa !877
  %10 = add i32 %9, 1, !dbg !1638
  store i32 %10, ptr @error_message_count, align 4, !dbg !1638, !tbaa !877
  %11 = icmp eq i32 %1, 0, !dbg !1639
  br i1 %11, label %21, label %12, !dbg !1641

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1642, metadata !DIExpression(), metadata !1585, metadata ptr %5, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %1, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1652
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1653
  call void @llvm.dbg.value(metadata ptr %13, metadata !1646, metadata !DIExpression()), !dbg !1650
  %14 = icmp eq ptr %13, null, !dbg !1654
  br i1 %14, label %15, label %17, !dbg !1656

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.36, ptr noundef nonnull @.str.5.37, i32 noundef 5) #39, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %16, metadata !1646, metadata !DIExpression()), !dbg !1650
  br label %17, !dbg !1658

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1650
  call void @llvm.dbg.value(metadata ptr %18, metadata !1646, metadata !DIExpression()), !dbg !1650
  %19 = load ptr, ptr @stderr, align 8, !dbg !1659, !tbaa !814
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.38, ptr noundef %18) #39, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1660
  br label %21, !dbg !1661

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1662, !tbaa !814
  call void @llvm.dbg.value(metadata i32 10, metadata !1663, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %22, metadata !1668, metadata !DIExpression()), !dbg !1669
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1671
  %24 = load ptr, ptr %23, align 8, !dbg !1671, !tbaa !1467
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1671
  %26 = load ptr, ptr %25, align 8, !dbg !1671, !tbaa !1469
  %27 = icmp ult ptr %24, %26, !dbg !1671
  br i1 %27, label %30, label %28, !dbg !1671, !prof !1470

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1671
  br label %32, !dbg !1671

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1671
  store ptr %31, ptr %23, align 8, !dbg !1671, !tbaa !1467
  store i8 10, ptr %24, align 1, !dbg !1671, !tbaa !886
  br label %32, !dbg !1671

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1672, !tbaa !814
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1672
  %35 = icmp eq i32 %0, 0, !dbg !1673
  br i1 %35, label %37, label %36, !dbg !1675

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1676
  unreachable, !dbg !1676

37:                                               ; preds = %32
  ret void, !dbg !1677
}

; Function Attrs: nounwind
declare !dbg !1678 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1681 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1684 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1687 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1694, metadata !DIExpression(), metadata !1695, metadata ptr %4, metadata !DIExpression()), !dbg !1696
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1691, metadata !DIExpression()), !dbg !1696
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1696
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1693, metadata !DIExpression()), !dbg !1696
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1697
  call void @llvm.va_start(ptr nonnull %4), !dbg !1698
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1699, !tbaa.struct !1562
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1699
  call void @llvm.va_end(ptr nonnull %4), !dbg !1700
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1701
  ret void, !dbg !1701
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !416 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !432, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !433, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !435, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !436, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !1702
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1703, !tbaa !877
  %9 = icmp eq i32 %8, 0, !dbg !1703
  br i1 %9, label %24, label %10, !dbg !1705

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1706, !tbaa !877
  %12 = icmp eq i32 %11, %3, !dbg !1709
  br i1 %12, label %13, label %23, !dbg !1710

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1711, !tbaa !814
  %15 = icmp eq ptr %14, %2, !dbg !1712
  br i1 %15, label %37, label %16, !dbg !1713

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1714
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1715
  br i1 %19, label %20, label %23, !dbg !1715

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1716
  %22 = icmp eq i32 %21, 0, !dbg !1717
  br i1 %22, label %37, label %23, !dbg !1718

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1719, !tbaa !814
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1720, !tbaa !877
  br label %24, !dbg !1721

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1722
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1723, !tbaa !814
  %26 = icmp eq ptr %25, null, !dbg !1723
  br i1 %26, label %28, label %27, !dbg !1725

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1726
  br label %32, !dbg !1726

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1727, !tbaa !814
  %30 = tail call ptr @getprogname() #40, !dbg !1727
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.41, ptr noundef %30) #39, !dbg !1727
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1729, !tbaa !814
  %34 = icmp eq ptr %2, null, !dbg !1729
  %35 = select i1 %34, ptr @.str.3.42, ptr @.str.2.43, !dbg !1729
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1729
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1730, !tbaa.struct !1562
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1730
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1730
  br label %37, !dbg !1731

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1731
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1732 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1741, metadata !DIExpression(), metadata !1742, metadata ptr %6, metadata !DIExpression()), !dbg !1743
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1736, metadata !DIExpression()), !dbg !1743
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1737, metadata !DIExpression()), !dbg !1743
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !1743
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1739, metadata !DIExpression()), !dbg !1743
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1740, metadata !DIExpression()), !dbg !1743
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1744
  call void @llvm.va_start(ptr nonnull %6), !dbg !1745
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1746, !tbaa.struct !1562
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1746
  call void @llvm.va_end(ptr nonnull %6), !dbg !1747
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1748
  ret void, !dbg !1748
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1749 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1752, !tbaa !814
  ret ptr %1, !dbg !1753
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1756, metadata !DIExpression()), !dbg !1759
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1757, metadata !DIExpression()), !dbg !1759
  %3 = icmp eq ptr %2, null, !dbg !1761
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1761
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1761
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1758, metadata !DIExpression()), !dbg !1759
  %6 = ptrtoint ptr %5 to i64, !dbg !1762
  %7 = ptrtoint ptr %0 to i64, !dbg !1762
  %8 = sub i64 %6, %7, !dbg !1762
  %9 = icmp sgt i64 %8, 6, !dbg !1764
  br i1 %9, label %10, label %19, !dbg !1765

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %11, metadata !1767, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr @.str.61, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 7, metadata !1773, metadata !DIExpression()), !dbg !1774
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.61, i64 7), !dbg !1776
  %13 = icmp eq i32 %12, 0, !dbg !1777
  br i1 %13, label %14, label %19, !dbg !1778

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1756, metadata !DIExpression()), !dbg !1759
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.62, i64 noundef 3) #40, !dbg !1779
  %16 = icmp eq i32 %15, 0, !dbg !1782
  %17 = select i1 %16, i64 3, i64 0, !dbg !1783
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1783
  br label %19, !dbg !1783

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1759
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1758, metadata !DIExpression()), !dbg !1759
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1756, metadata !DIExpression()), !dbg !1759
  store ptr %20, ptr @program_name, align 8, !dbg !1784, !tbaa !814
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1785, !tbaa !814
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1786, !tbaa !814
  ret void, !dbg !1787
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !474 {
  %3 = alloca i32, align 4, !DIAssignID !1788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !484, metadata !DIExpression(), metadata !1788, metadata ptr %3, metadata !DIExpression()), !dbg !1789
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !489, metadata !DIExpression(), metadata !1790, metadata ptr %4, metadata !DIExpression()), !dbg !1789
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !481, metadata !DIExpression()), !dbg !1789
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !482, metadata !DIExpression()), !dbg !1789
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !1789
  %6 = icmp eq ptr %5, %0, !dbg !1792
  br i1 %6, label %7, label %14, !dbg !1794

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 8, metadata !1813, metadata !DIExpression()), !dbg !1814
  store i64 0, ptr %4, align 8, !dbg !1816
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1817
  %9 = icmp eq i64 %8, 2, !dbg !1819
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1820
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1821
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1789
  ret ptr %15, !dbg !1821
}

; Function Attrs: nounwind
declare !dbg !1822 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1828 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1833, metadata !DIExpression()), !dbg !1836
  %2 = tail call ptr @__errno_location() #42, !dbg !1837
  %3 = load i32, ptr %2, align 4, !dbg !1837, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1834, metadata !DIExpression()), !dbg !1836
  %4 = icmp eq ptr %0, null, !dbg !1838
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1838
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i32 %3, ptr %2, align 4, !dbg !1840, !tbaa !877
  ret ptr %6, !dbg !1841
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1842 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1848, metadata !DIExpression()), !dbg !1849
  %2 = icmp eq ptr %0, null, !dbg !1850
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1850
  %4 = load i32, ptr %3, align 8, !dbg !1851, !tbaa !1852
  ret i32 %4, !dbg !1854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1855 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1859, metadata !DIExpression()), !dbg !1861
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1860, metadata !DIExpression()), !dbg !1861
  %3 = icmp eq ptr %0, null, !dbg !1862
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1862
  store i32 %1, ptr %4, align 8, !dbg !1863, !tbaa !1852
  ret void, !dbg !1864
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1865 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1869, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1870, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1871, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !1877
  %4 = icmp eq ptr %0, null, !dbg !1878
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1878
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1879
  %7 = lshr i8 %1, 5, !dbg !1880
  %8 = zext nneg i8 %7 to i64, !dbg !1880
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1881
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1873, metadata !DIExpression()), !dbg !1877
  %10 = and i8 %1, 31, !dbg !1882
  %11 = zext nneg i8 %10 to i32, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1875, metadata !DIExpression()), !dbg !1877
  %12 = load i32, ptr %9, align 4, !dbg !1883, !tbaa !877
  %13 = lshr i32 %12, %11, !dbg !1884
  %14 = and i32 %13, 1, !dbg !1885
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1876, metadata !DIExpression()), !dbg !1877
  %15 = xor i32 %13, %2, !dbg !1886
  %16 = and i32 %15, 1, !dbg !1886
  %17 = shl nuw i32 %16, %11, !dbg !1887
  %18 = xor i32 %17, %12, !dbg !1888
  store i32 %18, ptr %9, align 4, !dbg !1888, !tbaa !877
  ret i32 %14, !dbg !1889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1890 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1894, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1895, metadata !DIExpression()), !dbg !1897
  %3 = icmp eq ptr %0, null, !dbg !1898
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1900
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1894, metadata !DIExpression()), !dbg !1897
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1901
  %6 = load i32, ptr %5, align 4, !dbg !1901, !tbaa !1902
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1896, metadata !DIExpression()), !dbg !1897
  store i32 %1, ptr %5, align 4, !dbg !1903, !tbaa !1902
  ret i32 %6, !dbg !1904
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1909, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !1912
  %4 = icmp eq ptr %0, null, !dbg !1913
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !1912
  store i32 10, ptr %5, align 8, !dbg !1916, !tbaa !1852
  %6 = icmp ne ptr %1, null, !dbg !1917
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1919
  br i1 %8, label %10, label %9, !dbg !1919

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1920
  unreachable, !dbg !1920

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1921
  store ptr %1, ptr %11, align 8, !dbg !1922, !tbaa !1923
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1924
  store ptr %2, ptr %12, align 8, !dbg !1925, !tbaa !1926
  ret void, !dbg !1927
}

; Function Attrs: noreturn nounwind
declare !dbg !1928 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1933, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1934, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1935, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1936, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1937, metadata !DIExpression()), !dbg !1941
  %6 = icmp eq ptr %4, null, !dbg !1942
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1942
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1938, metadata !DIExpression()), !dbg !1941
  %8 = tail call ptr @__errno_location() #42, !dbg !1943
  %9 = load i32, ptr %8, align 4, !dbg !1943, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1939, metadata !DIExpression()), !dbg !1941
  %10 = load i32, ptr %7, align 8, !dbg !1944, !tbaa !1852
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1945
  %12 = load i32, ptr %11, align 4, !dbg !1945, !tbaa !1902
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1946
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1947
  %15 = load ptr, ptr %14, align 8, !dbg !1947, !tbaa !1923
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1948
  %17 = load ptr, ptr %16, align 8, !dbg !1948, !tbaa !1926
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i32 %9, ptr %8, align 4, !dbg !1950, !tbaa !877
  ret i64 %18, !dbg !1951
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1952 {
  %10 = alloca i32, align 4, !DIAssignID !2020
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2021
  %12 = alloca i32, align 4, !DIAssignID !2022
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2023
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2024
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1998, metadata !DIExpression(), metadata !2024, metadata ptr %14, metadata !DIExpression()), !dbg !2025
  %15 = alloca i32, align 4, !DIAssignID !2026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2001, metadata !DIExpression(), metadata !2026, metadata ptr %15, metadata !DIExpression()), !dbg !2027
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1958, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1960, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1961, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1962, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1963, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1964, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1965, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1966, metadata !DIExpression()), !dbg !2028
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2029
  %17 = icmp eq i64 %16, 1, !dbg !2030
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1967, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1970, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1971, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1975, metadata !DIExpression()), !dbg !2028
  %18 = and i32 %5, 2, !dbg !2031
  %19 = icmp ne i32 %18, 0, !dbg !2031
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2031

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2032
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2033
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2034
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1971, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1970, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1961, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1966, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1965, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1962, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.label(metadata !1976), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2028
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
  ], !dbg !2036

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1962, metadata !DIExpression()), !dbg !2028
  br label %101, !dbg !2037

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1962, metadata !DIExpression()), !dbg !2028
  br i1 %36, label %101, label %42, !dbg !2037

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2038
  br i1 %43, label %101, label %44, !dbg !2042

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2038, !tbaa !886
  br label %101, !dbg !2038

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !578, metadata !DIExpression(), metadata !2022, metadata ptr %12, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.assign(metadata i1 undef, metadata !579, metadata !DIExpression(), metadata !2023, metadata ptr %13, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata ptr @.str.11.75, metadata !575, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %28, metadata !576, metadata !DIExpression()), !dbg !2043
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.11.75, i32 noundef 5) #39, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %46, metadata !577, metadata !DIExpression()), !dbg !2043
  %47 = icmp eq ptr %46, @.str.11.75, !dbg !2048
  br i1 %47, label %48, label %57, !dbg !2050

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2051
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2052
  call void @llvm.dbg.value(metadata ptr %13, metadata !2053, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata ptr %13, metadata !2061, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64 8, metadata !2065, metadata !DIExpression()), !dbg !2066
  store i64 0, ptr %13, align 8, !dbg !2068
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2069
  %50 = icmp eq i64 %49, 3, !dbg !2071
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2072
  %54 = icmp eq i32 %28, 9, !dbg !2072
  %55 = select i1 %54, ptr @.str.10.77, ptr @.str.12.78, !dbg !2072
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2073
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2043
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1965, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !578, metadata !DIExpression(), metadata !2020, metadata ptr %10, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.assign(metadata i1 undef, metadata !579, metadata !DIExpression(), metadata !2021, metadata ptr %11, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata ptr @.str.12.78, metadata !575, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %28, metadata !576, metadata !DIExpression()), !dbg !2074
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.12.78, i32 noundef 5) #39, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %59, metadata !577, metadata !DIExpression()), !dbg !2074
  %60 = icmp eq ptr %59, @.str.12.78, !dbg !2077
  br i1 %60, label %61, label %70, !dbg !2078

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2080
  call void @llvm.dbg.value(metadata ptr %11, metadata !2053, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr %11, metadata !2061, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 8, metadata !2065, metadata !DIExpression()), !dbg !2083
  store i64 0, ptr %11, align 8, !dbg !2085
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2086
  %63 = icmp eq i64 %62, 3, !dbg !2087
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2088
  %67 = icmp eq i32 %28, 9, !dbg !2088
  %68 = select i1 %67, ptr @.str.10.77, ptr @.str.12.78, !dbg !2088
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2089
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1966, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1965, metadata !DIExpression()), !dbg !2028
  br i1 %36, label %88, label %73, !dbg !2090

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1978, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1968, metadata !DIExpression()), !dbg !2028
  %74 = load i8, ptr %71, align 1, !dbg !2092, !tbaa !886
  %75 = icmp eq i8 %74, 0, !dbg !2094
  br i1 %75, label %88, label %.preheader11, !dbg !2094

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2094

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1978, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1968, metadata !DIExpression()), !dbg !2028
  %80 = icmp ult i64 %79, %39, !dbg !2095
  br i1 %80, label %81, label %83, !dbg !2098

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2095
  store i8 %77, ptr %82, align 1, !dbg !2095, !tbaa !886
  br label %83, !dbg !2095

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1968, metadata !DIExpression()), !dbg !2028
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1978, metadata !DIExpression()), !dbg !2091
  %86 = load i8, ptr %85, align 1, !dbg !2092, !tbaa !886
  %87 = icmp eq i8 %86, 0, !dbg !2094
  br i1 %87, label %.loopexit12, label %76, !dbg !2094, !llvm.loop !2100

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2098
  br label %88, !dbg !2102

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1970, metadata !DIExpression()), !dbg !2028
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1971, metadata !DIExpression()), !dbg !2028
  br label %101, !dbg !2104

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1973, metadata !DIExpression()), !dbg !2028
  br label %101, !dbg !2105

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1962, metadata !DIExpression()), !dbg !2028
  br label %101, !dbg !2106

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  br i1 %36, label %101, label %95, !dbg !2107

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1962, metadata !DIExpression()), !dbg !2028
  br i1 %36, label %101, label %95, !dbg !2106

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2108
  br i1 %97, label %101, label %98, !dbg !2112

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2108, !tbaa !886
  br label %101, !dbg !2108

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !2028
  br label %101, !dbg !2113

100:                                              ; preds = %27
  call void @abort() #41, !dbg !2114
  unreachable, !dbg !2114

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2103
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.77, %42 ], [ @.str.10.77, %44 ], [ @.str.10.77, %41 ], [ %33, %27 ], [ @.str.12.78, %95 ], [ @.str.12.78, %98 ], [ @.str.12.78, %94 ], [ @.str.10.77, %40 ], [ @.str.12.78, %91 ], [ @.str.12.78, %92 ], [ @.str.12.78, %93 ], !dbg !2028
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2028
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1973, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1972, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1971, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1970, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1966, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1965, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1962, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2115
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
  br label %121, !dbg !2116

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2103
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2032
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2117
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1961, metadata !DIExpression()), !dbg !2028
  %130 = icmp eq i64 %122, -1, !dbg !2118
  br i1 %130, label %131, label %135, !dbg !2119

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2120
  %133 = load i8, ptr %132, align 1, !dbg !2120, !tbaa !886
  %134 = icmp eq i8 %133, 0, !dbg !2121
  br i1 %134, label %573, label %137, !dbg !2122

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2123
  br i1 %136, label %573, label %137, !dbg !2122

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2124
  br i1 %113, label %138, label %151, !dbg !2125

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2127
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2128
  br i1 %140, label %141, label %143, !dbg !2128

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1961, metadata !DIExpression()), !dbg !2028
  br label %143, !dbg !2130

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2130
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1961, metadata !DIExpression()), !dbg !2028
  %145 = icmp ugt i64 %139, %144, !dbg !2131
  br i1 %145, label %151, label %146, !dbg !2132

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %147, metadata !2134, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %106, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %107, metadata !2138, metadata !DIExpression()), !dbg !2139
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2141
  %149 = icmp eq i32 %148, 0, !dbg !2142
  %150 = and i1 %149, %109, !dbg !2143
  br i1 %150, label %.loopexit7, label %151, !dbg !2143

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1961, metadata !DIExpression()), !dbg !2028
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2144
  %155 = load i8, ptr %154, align 1, !dbg !2144, !tbaa !886
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1990, metadata !DIExpression()), !dbg !2124
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
  ], !dbg !2145

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2146

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2147

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2124
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2151
  br i1 %159, label %176, label %160, !dbg !2151

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2153
  br i1 %161, label %162, label %164, !dbg !2157

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2153
  store i8 39, ptr %163, align 1, !dbg !2153, !tbaa !886
  br label %164, !dbg !2153

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1968, metadata !DIExpression()), !dbg !2028
  %166 = icmp ult i64 %165, %129, !dbg !2158
  br i1 %166, label %167, label %169, !dbg !2161

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2158
  store i8 36, ptr %168, align 1, !dbg !2158, !tbaa !886
  br label %169, !dbg !2158

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1968, metadata !DIExpression()), !dbg !2028
  %171 = icmp ult i64 %170, %129, !dbg !2162
  br i1 %171, label %172, label %174, !dbg !2165

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2162
  store i8 39, ptr %173, align 1, !dbg !2162, !tbaa !886
  br label %174, !dbg !2162

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %176, !dbg !2166

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2028
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1968, metadata !DIExpression()), !dbg !2028
  %179 = icmp ult i64 %177, %129, !dbg !2167
  br i1 %179, label %180, label %182, !dbg !2170

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2167
  store i8 92, ptr %181, align 1, !dbg !2167, !tbaa !886
  br label %182, !dbg !2167

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1968, metadata !DIExpression()), !dbg !2028
  br i1 %110, label %184, label %476, !dbg !2171

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2173
  %186 = icmp ult i64 %185, %152, !dbg !2174
  br i1 %186, label %187, label %433, !dbg !2175

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2176
  %189 = load i8, ptr %188, align 1, !dbg !2176, !tbaa !886
  %190 = add i8 %189, -48, !dbg !2177
  %191 = icmp ult i8 %190, 10, !dbg !2177
  br i1 %191, label %192, label %433, !dbg !2177

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2178
  br i1 %193, label %194, label %196, !dbg !2182

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2178
  store i8 48, ptr %195, align 1, !dbg !2178, !tbaa !886
  br label %196, !dbg !2178

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1968, metadata !DIExpression()), !dbg !2028
  %198 = icmp ult i64 %197, %129, !dbg !2183
  br i1 %198, label %199, label %201, !dbg !2186

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2183
  store i8 48, ptr %200, align 1, !dbg !2183, !tbaa !886
  br label %201, !dbg !2183

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1968, metadata !DIExpression()), !dbg !2028
  br label %433, !dbg !2187

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2188

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2189

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2190

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2192

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2194
  %209 = icmp ult i64 %208, %152, !dbg !2195
  br i1 %209, label %210, label %433, !dbg !2196

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2197
  %212 = load i8, ptr %211, align 1, !dbg !2197, !tbaa !886
  %213 = icmp eq i8 %212, 63, !dbg !2198
  br i1 %213, label %214, label %433, !dbg !2199

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2200
  %216 = load i8, ptr %215, align 1, !dbg !2200, !tbaa !886
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
  ], !dbg !2201

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2202

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1983, metadata !DIExpression()), !dbg !2115
  %219 = icmp ult i64 %123, %129, !dbg !2204
  br i1 %219, label %220, label %222, !dbg !2207

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2204
  store i8 63, ptr %221, align 1, !dbg !2204, !tbaa !886
  br label %222, !dbg !2204

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1968, metadata !DIExpression()), !dbg !2028
  %224 = icmp ult i64 %223, %129, !dbg !2208
  br i1 %224, label %225, label %227, !dbg !2211

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2208
  store i8 34, ptr %226, align 1, !dbg !2208, !tbaa !886
  br label %227, !dbg !2208

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1968, metadata !DIExpression()), !dbg !2028
  %229 = icmp ult i64 %228, %129, !dbg !2212
  br i1 %229, label %230, label %232, !dbg !2215

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2212
  store i8 34, ptr %231, align 1, !dbg !2212, !tbaa !886
  br label %232, !dbg !2212

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1968, metadata !DIExpression()), !dbg !2028
  %234 = icmp ult i64 %233, %129, !dbg !2216
  br i1 %234, label %235, label %237, !dbg !2219

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2216
  store i8 63, ptr %236, align 1, !dbg !2216, !tbaa !886
  br label %237, !dbg !2216

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1968, metadata !DIExpression()), !dbg !2028
  br label %433, !dbg !2220

239:                                              ; preds = %151
  br label %249, !dbg !2221

240:                                              ; preds = %151
  br label %249, !dbg !2222

241:                                              ; preds = %151
  br label %247, !dbg !2223

242:                                              ; preds = %151
  br label %247, !dbg !2224

243:                                              ; preds = %151
  br label %249, !dbg !2225

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2226

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2227

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2230

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2232
  call void @llvm.dbg.label(metadata !1991), !dbg !2233
  br i1 %118, label %.loopexit8, label %249, !dbg !2234

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2232
  call void @llvm.dbg.label(metadata !1994), !dbg !2236
  br i1 %108, label %487, label %444, !dbg !2237

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2238

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2239, !tbaa !886
  %254 = icmp eq i8 %253, 0, !dbg !2241
  br i1 %254, label %255, label %433, !dbg !2242

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2243
  br i1 %256, label %257, label %433, !dbg !2245

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2124
  br label %258, !dbg !2246

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2124
  br i1 %115, label %260, label %433, !dbg !2247

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2249

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2124
  br i1 %115, label %262, label %433, !dbg !2250

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2251

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2254
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2256
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2256
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1969, metadata !DIExpression()), !dbg !2028
  %269 = icmp ult i64 %123, %268, !dbg !2257
  br i1 %269, label %270, label %272, !dbg !2260

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2257
  store i8 39, ptr %271, align 1, !dbg !2257, !tbaa !886
  br label %272, !dbg !2257

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2260
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1968, metadata !DIExpression()), !dbg !2028
  %274 = icmp ult i64 %273, %268, !dbg !2261
  br i1 %274, label %275, label %277, !dbg !2264

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2261
  store i8 92, ptr %276, align 1, !dbg !2261, !tbaa !886
  br label %277, !dbg !2261

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1968, metadata !DIExpression()), !dbg !2028
  %279 = icmp ult i64 %278, %268, !dbg !2265
  br i1 %279, label %280, label %282, !dbg !2268

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2265
  store i8 39, ptr %281, align 1, !dbg !2265, !tbaa !886
  br label %282, !dbg !2265

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %433, !dbg !2269

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2270

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1995, metadata !DIExpression()), !dbg !2271
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2272
  %287 = load ptr, ptr %286, align 8, !dbg !2272, !tbaa !814
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2272
  %290 = load i16, ptr %289, align 2, !dbg !2272, !tbaa !918
  %291 = and i16 %290, 16384, !dbg !2272
  %292 = icmp ne i16 %291, 0, !dbg !2274
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2271
  br label %334, !dbg !2275

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %14, metadata !2053, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr %14, metadata !2061, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 8, metadata !2065, metadata !DIExpression()), !dbg !2279
  store i64 0, ptr %14, align 8, !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1997, metadata !DIExpression()), !dbg !2271
  %294 = icmp eq i64 %152, -1, !dbg !2282
  br i1 %294, label %295, label %297, !dbg !2284

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1961, metadata !DIExpression()), !dbg !2028
  br label %297, !dbg !2286

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1961, metadata !DIExpression()), !dbg !2028
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2287
  %299 = sub i64 %298, %128, !dbg !2288
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2005, metadata !DIExpression()), !dbg !2027
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2290

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  %302 = icmp ult i64 %128, %298, !dbg !2291
  br i1 %302, label %.preheader5, label %329, !dbg !2293

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2294

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2271
  br label %329, !dbg !2295

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1995, metadata !DIExpression()), !dbg !2271
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2297
  %308 = load i8, ptr %307, align 1, !dbg !2297, !tbaa !886
  %309 = icmp eq i8 %308, 0, !dbg !2293
  br i1 %309, label %.loopexit6, label %310, !dbg !2294

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2298
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1995, metadata !DIExpression()), !dbg !2271
  %312 = add i64 %311, %128, !dbg !2299
  %313 = icmp eq i64 %311, %299, !dbg !2291
  br i1 %313, label %.loopexit6, label %304, !dbg !2293, !llvm.loop !2300

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2006, metadata !DIExpression()), !dbg !2301
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2302
  %317 = and i1 %316, %109, !dbg !2302
  br i1 %317, label %.preheader3, label %325, !dbg !2302

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2303

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2006, metadata !DIExpression()), !dbg !2301
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2304
  %321 = load i8, ptr %320, align 1, !dbg !2304, !tbaa !886
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2306

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2006, metadata !DIExpression()), !dbg !2301
  %324 = icmp eq i64 %323, %300, !dbg !2308
  br i1 %324, label %.loopexit4, label %318, !dbg !2303, !llvm.loop !2309

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2311

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2311, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %326, metadata !2313, metadata !DIExpression()), !dbg !2321
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2323
  %328 = icmp ne i32 %327, 0, !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1997, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1995, metadata !DIExpression()), !dbg !2271
  br label %329, !dbg !2325

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2326

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1997, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2327
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1997, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1995, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2327
  call void @llvm.dbg.label(metadata !2019), !dbg !2328
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2329
  br label %624, !dbg !2329

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2124
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2331
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1997, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1995, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1961, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1989, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2124
  %338 = icmp ult i64 %336, 2, !dbg !2332
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2333
  br i1 %340, label %433, label %341, !dbg !2333

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2014, metadata !DIExpression()), !dbg !2335
  br label %343, !dbg !2336

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2028
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2115
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1968, metadata !DIExpression()), !dbg !2028
  br i1 %339, label %394, label %350, !dbg !2337

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2342

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2124
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2345
  br i1 %352, label %369, label %353, !dbg !2345

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2347
  br i1 %354, label %355, label %357, !dbg !2351

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2347
  store i8 39, ptr %356, align 1, !dbg !2347, !tbaa !886
  br label %357, !dbg !2347

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1968, metadata !DIExpression()), !dbg !2028
  %359 = icmp ult i64 %358, %129, !dbg !2352
  br i1 %359, label %360, label %362, !dbg !2355

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2352
  store i8 36, ptr %361, align 1, !dbg !2352, !tbaa !886
  br label %362, !dbg !2352

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2355
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1968, metadata !DIExpression()), !dbg !2028
  %364 = icmp ult i64 %363, %129, !dbg !2356
  br i1 %364, label %365, label %367, !dbg !2359

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2356
  store i8 39, ptr %366, align 1, !dbg !2356, !tbaa !886
  br label %367, !dbg !2356

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %369, !dbg !2360

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2028
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1968, metadata !DIExpression()), !dbg !2028
  %372 = icmp ult i64 %370, %129, !dbg !2361
  br i1 %372, label %373, label %375, !dbg !2364

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2361
  store i8 92, ptr %374, align 1, !dbg !2361, !tbaa !886
  br label %375, !dbg !2361

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1968, metadata !DIExpression()), !dbg !2028
  %377 = icmp ult i64 %376, %129, !dbg !2365
  br i1 %377, label %378, label %382, !dbg !2368

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2365
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2365
  store i8 %380, ptr %381, align 1, !dbg !2365, !tbaa !886
  br label %382, !dbg !2365

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2368
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1968, metadata !DIExpression()), !dbg !2028
  %384 = icmp ult i64 %383, %129, !dbg !2369
  br i1 %384, label %385, label %390, !dbg !2372

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2369
  %388 = or disjoint i8 %387, 48, !dbg !2369
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2369
  store i8 %388, ptr %389, align 1, !dbg !2369, !tbaa !886
  br label %390, !dbg !2369

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2372
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1968, metadata !DIExpression()), !dbg !2028
  %392 = and i8 %349, 7, !dbg !2373
  %393 = or disjoint i8 %392, 48, !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1990, metadata !DIExpression()), !dbg !2124
  br label %401, !dbg !2375

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2376

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2377
  br i1 %396, label %397, label %399, !dbg !2382

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2377
  store i8 92, ptr %398, align 1, !dbg !2377, !tbaa !886
  br label %399, !dbg !2377

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2382
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2124
  br label %401, !dbg !2383

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2028
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1968, metadata !DIExpression()), !dbg !2028
  %407 = add i64 %346, 1, !dbg !2384
  %408 = icmp ugt i64 %342, %407, !dbg !2386
  br i1 %408, label %409, label %.loopexit2, !dbg !2387

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2388
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2388
  br i1 %411, label %423, label %412, !dbg !2388

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2391
  br i1 %413, label %414, label %416, !dbg !2395

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2391
  store i8 39, ptr %415, align 1, !dbg !2391, !tbaa !886
  br label %416, !dbg !2391

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2395
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1968, metadata !DIExpression()), !dbg !2028
  %418 = icmp ult i64 %417, %129, !dbg !2396
  br i1 %418, label %419, label %421, !dbg !2399

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2396
  store i8 39, ptr %420, align 1, !dbg !2396, !tbaa !886
  br label %421, !dbg !2396

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2399
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %423, !dbg !2400

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2401
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1968, metadata !DIExpression()), !dbg !2028
  %426 = icmp ult i64 %424, %129, !dbg !2402
  br i1 %426, label %427, label %429, !dbg !2405

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2402
  store i8 %406, ptr %428, align 1, !dbg !2402, !tbaa !886
  br label %429, !dbg !2402

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1983, metadata !DIExpression()), !dbg !2115
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2406
  %432 = load i8, ptr %431, align 1, !dbg !2406, !tbaa !886
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1990, metadata !DIExpression()), !dbg !2124
  br label %343, !dbg !2407, !llvm.loop !2408

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2411
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2028
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2032
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2115
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2124
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1985, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1961, metadata !DIExpression()), !dbg !2028
  br i1 %111, label %455, label %444, !dbg !2412

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
  br i1 %120, label %456, label %476, !dbg !2414

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2415

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
  %467 = lshr i8 %458, 5, !dbg !2416
  %468 = zext nneg i8 %467 to i64, !dbg !2416
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2417
  %470 = load i32, ptr %469, align 4, !dbg !2417, !tbaa !877
  %471 = and i8 %458, 31, !dbg !2418
  %472 = zext nneg i8 %471 to i32, !dbg !2418
  %473 = shl nuw i32 1, %472, !dbg !2419
  %474 = and i32 %470, %473, !dbg !2419
  %475 = icmp eq i32 %474, 0, !dbg !2419
  br i1 %475, label %476, label %487, !dbg !2420

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
  br i1 %153, label %487, label %523, !dbg !2421

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2411
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2028
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2032
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2422
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2124
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1961, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.label(metadata !2017), !dbg !2423
  br i1 %109, label %.loopexit8, label %497, !dbg !2424

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2124
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2426
  br i1 %498, label %515, label %499, !dbg !2426

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2428
  br i1 %500, label %501, label %503, !dbg !2432

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2428
  store i8 39, ptr %502, align 1, !dbg !2428, !tbaa !886
  br label %503, !dbg !2428

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1968, metadata !DIExpression()), !dbg !2028
  %505 = icmp ult i64 %504, %496, !dbg !2433
  br i1 %505, label %506, label %508, !dbg !2436

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2433
  store i8 36, ptr %507, align 1, !dbg !2433, !tbaa !886
  br label %508, !dbg !2433

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1968, metadata !DIExpression()), !dbg !2028
  %510 = icmp ult i64 %509, %496, !dbg !2437
  br i1 %510, label %511, label %513, !dbg !2440

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2437
  store i8 39, ptr %512, align 1, !dbg !2437, !tbaa !886
  br label %513, !dbg !2437

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %515, !dbg !2441

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2124
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1968, metadata !DIExpression()), !dbg !2028
  %518 = icmp ult i64 %516, %496, !dbg !2442
  br i1 %518, label %519, label %521, !dbg !2445

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2442
  store i8 92, ptr %520, align 1, !dbg !2442, !tbaa !886
  br label %521, !dbg !2442

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1961, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.label(metadata !2018), !dbg !2446
  br label %547, !dbg !2447

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2028
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2124
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2115
  br label %523, !dbg !2447

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2411
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2028
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2032
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2422
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2450
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1990, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1988, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1961, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.label(metadata !2018), !dbg !2446
  %534 = xor i1 %528, true, !dbg !2447
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2447
  br i1 %535, label %547, label %536, !dbg !2447

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2451
  br i1 %537, label %538, label %540, !dbg !2455

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2451
  store i8 39, ptr %539, align 1, !dbg !2451, !tbaa !886
  br label %540, !dbg !2451

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1968, metadata !DIExpression()), !dbg !2028
  %542 = icmp ult i64 %541, %533, !dbg !2456
  br i1 %542, label %543, label %545, !dbg !2459

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2456
  store i8 39, ptr %544, align 1, !dbg !2456, !tbaa !886
  br label %545, !dbg !2456

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2028
  br label %547, !dbg !2460

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2124
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1968, metadata !DIExpression()), !dbg !2028
  %557 = icmp ult i64 %555, %548, !dbg !2461
  br i1 %557, label %558, label %560, !dbg !2464

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2461
  store i8 %549, ptr %559, align 1, !dbg !2461, !tbaa !886
  br label %560, !dbg !2461

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1968, metadata !DIExpression()), !dbg !2028
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2028
  br label %563, !dbg !2466

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2411
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2028
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2032
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2422
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1983, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1961, metadata !DIExpression()), !dbg !2028
  %572 = add i64 %570, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1983, metadata !DIExpression()), !dbg !2115
  br label %121, !dbg !2468, !llvm.loop !2469

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2103
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2032
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1959, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1969, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1968, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1961, metadata !DIExpression()), !dbg !2028
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2471
  %575 = xor i1 %109, true, !dbg !2473
  %576 = or i1 %574, %575, !dbg !2473
  %577 = or i1 %576, %110, !dbg !2473
  br i1 %577, label %578, label %.loopexit13, !dbg !2473

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2474
  %580 = xor i1 %.lcssa38, true, !dbg !2474
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2474
  br i1 %581, label %589, label %582, !dbg !2474

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2476

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2032
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2478
  br label %638, !dbg !2480

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2481
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2483
  br i1 %588, label %27, label %589, !dbg !2483

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2028
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2103
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2484
  %592 = or i1 %591, %590, !dbg !2486
  br i1 %592, label %608, label %593, !dbg !2486

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1970, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1968, metadata !DIExpression()), !dbg !2028
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2487, !tbaa !886
  %595 = icmp eq i8 %594, 0, !dbg !2490
  br i1 %595, label %608, label %.preheader, !dbg !2490

.preheader:                                       ; preds = %593
  br label %596, !dbg !2490

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1970, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1968, metadata !DIExpression()), !dbg !2028
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2491
  br i1 %600, label %601, label %603, !dbg !2494

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2491
  store i8 %597, ptr %602, align 1, !dbg !2491, !tbaa !886
  br label %603, !dbg !2491

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1968, metadata !DIExpression()), !dbg !2028
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1970, metadata !DIExpression()), !dbg !2028
  %606 = load i8, ptr %605, align 1, !dbg !2487, !tbaa !886
  %607 = icmp eq i8 %606, 0, !dbg !2490
  br i1 %607, label %.loopexit, label %596, !dbg !2490, !llvm.loop !2496

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2494
  br label %608, !dbg !2498

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1968, metadata !DIExpression()), !dbg !2028
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2498
  br i1 %610, label %611, label %638, !dbg !2500

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2501
  store i8 0, ptr %612, align 1, !dbg !2502, !tbaa !886
  br label %638, !dbg !2501

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2019), !dbg !2328
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2503
  br i1 %614, label %624, label %630, !dbg !2329

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2124
  br label %615, !dbg !2503

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2503

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2503

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2019), !dbg !2328
  %622 = icmp eq i32 %616, 2, !dbg !2503
  %623 = select i1 %619, i32 4, i32 2, !dbg !2329
  br i1 %622, label %624, label %630, !dbg !2329

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2329

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2130
  br label %630, !dbg !2504

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1962, metadata !DIExpression()), !dbg !2028
  %636 = and i32 %5, -3, !dbg !2504
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2505
  br label %638, !dbg !2506

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2507
}

; Function Attrs: nounwind
declare !dbg !2508 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2511 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2514 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2516 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2529, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr null, metadata !2530, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !2537
  %4 = icmp eq ptr %2, null, !dbg !2539
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2539
  call void @llvm.dbg.value(metadata ptr %5, metadata !2532, metadata !DIExpression()), !dbg !2537
  %6 = tail call ptr @__errno_location() #42, !dbg !2540
  %7 = load i32, ptr %6, align 4, !dbg !2540, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %7, metadata !2533, metadata !DIExpression()), !dbg !2537
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2541
  %9 = load i32, ptr %8, align 4, !dbg !2541, !tbaa !1902
  %10 = or i32 %9, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %10, metadata !2534, metadata !DIExpression()), !dbg !2537
  %11 = load i32, ptr %5, align 8, !dbg !2543, !tbaa !1852
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2544
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2545
  %14 = load ptr, ptr %13, align 8, !dbg !2545, !tbaa !1923
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2546
  %16 = load ptr, ptr %15, align 8, !dbg !2546, !tbaa !1926
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2547
  %18 = add i64 %17, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %18, metadata !2535, metadata !DIExpression()), !dbg !2537
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %19, metadata !2536, metadata !DIExpression()), !dbg !2537
  %20 = load i32, ptr %5, align 8, !dbg !2550, !tbaa !1852
  %21 = load ptr, ptr %13, align 8, !dbg !2551, !tbaa !1923
  %22 = load ptr, ptr %15, align 8, !dbg !2552, !tbaa !1926
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2553
  store i32 %7, ptr %6, align 4, !dbg !2554, !tbaa !877
  ret ptr %19, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2525 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2556
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2529, metadata !DIExpression()), !dbg !2556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2530, metadata !DIExpression()), !dbg !2556
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2531, metadata !DIExpression()), !dbg !2556
  %5 = icmp eq ptr %3, null, !dbg !2557
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2557
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2532, metadata !DIExpression()), !dbg !2556
  %7 = tail call ptr @__errno_location() #42, !dbg !2558
  %8 = load i32, ptr %7, align 4, !dbg !2558, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2533, metadata !DIExpression()), !dbg !2556
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2559
  %10 = load i32, ptr %9, align 4, !dbg !2559, !tbaa !1902
  %11 = icmp eq ptr %2, null, !dbg !2560
  %12 = zext i1 %11 to i32, !dbg !2560
  %13 = or i32 %10, %12, !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2534, metadata !DIExpression()), !dbg !2556
  %14 = load i32, ptr %6, align 8, !dbg !2562, !tbaa !1852
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2563
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2564
  %17 = load ptr, ptr %16, align 8, !dbg !2564, !tbaa !1923
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2565
  %19 = load ptr, ptr %18, align 8, !dbg !2565, !tbaa !1926
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2566
  %21 = add i64 %20, 1, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2535, metadata !DIExpression()), !dbg !2556
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2568
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2536, metadata !DIExpression()), !dbg !2556
  %23 = load i32, ptr %6, align 8, !dbg !2569, !tbaa !1852
  %24 = load ptr, ptr %16, align 8, !dbg !2570, !tbaa !1923
  %25 = load ptr, ptr %18, align 8, !dbg !2571, !tbaa !1926
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2572
  store i32 %8, ptr %7, align 4, !dbg !2573, !tbaa !877
  br i1 %11, label %28, label %27, !dbg !2574

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2575, !tbaa !2577
  br label %28, !dbg !2578

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2580 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2585, !tbaa !814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2582, metadata !DIExpression()), !dbg !2586
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2583, metadata !DIExpression()), !dbg !2587
  %2 = load i32, ptr @nslots, align 4, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2583, metadata !DIExpression()), !dbg !2587
  %3 = icmp sgt i32 %2, 1, !dbg !2588
  br i1 %3, label %4, label %6, !dbg !2590

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2588
  br label %10, !dbg !2590

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2591

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2591
  %8 = load ptr, ptr %7, align 8, !dbg !2591, !tbaa !2593
  %9 = icmp eq ptr %8, @slot0, !dbg !2595
  br i1 %9, label %17, label %16, !dbg !2596

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2583, metadata !DIExpression()), !dbg !2587
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2597
  %13 = load ptr, ptr %12, align 8, !dbg !2597, !tbaa !2593
  tail call void @free(ptr noundef %13) #39, !dbg !2598
  %14 = add nuw nsw i64 %11, 1, !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2583, metadata !DIExpression()), !dbg !2587
  %15 = icmp eq i64 %14, %5, !dbg !2588
  br i1 %15, label %.loopexit, label %10, !dbg !2590, !llvm.loop !2600

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2602
  store i64 256, ptr @slotvec0, align 8, !dbg !2604, !tbaa !2605
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2606, !tbaa !2593
  br label %17, !dbg !2607

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2608
  br i1 %18, label %20, label %19, !dbg !2610

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2611
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2613, !tbaa !814
  br label %20, !dbg !2614

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2615, !tbaa !877
  ret void, !dbg !2616
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2617 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2619, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2620, metadata !DIExpression()), !dbg !2621
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2622
  ret ptr %3, !dbg !2623
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2624 {
  %5 = alloca i64, align 8, !DIAssignID !2644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2638, metadata !DIExpression(), metadata !2644, metadata ptr %5, metadata !DIExpression()), !dbg !2645
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2630, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2631, metadata !DIExpression()), !dbg !2646
  %6 = tail call ptr @__errno_location() #42, !dbg !2647
  %7 = load i32, ptr %6, align 4, !dbg !2647, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2632, metadata !DIExpression()), !dbg !2646
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2648, !tbaa !814
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2633, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2634, metadata !DIExpression()), !dbg !2646
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2649
  br i1 %9, label %10, label %11, !dbg !2649

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2651
  unreachable, !dbg !2651

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2652, !tbaa !877
  %13 = icmp sgt i32 %12, %0, !dbg !2653
  br i1 %13, label %32, label %14, !dbg !2654

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2655
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2645
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2656
  %16 = sext i32 %12 to i64, !dbg !2657
  store i64 %16, ptr %5, align 8, !dbg !2658, !tbaa !2577, !DIAssignID !2659
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2638, metadata !DIExpression(), metadata !2659, metadata ptr %5, metadata !DIExpression()), !dbg !2645
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2660
  %18 = add nuw nsw i32 %0, 1, !dbg !2661
  %19 = sub i32 %18, %12, !dbg !2662
  %20 = sext i32 %19 to i64, !dbg !2663
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2664
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2633, metadata !DIExpression()), !dbg !2646
  store ptr %21, ptr @slotvec, align 8, !dbg !2665, !tbaa !814
  br i1 %15, label %22, label %23, !dbg !2666

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2667, !tbaa.struct !2669
  br label %23, !dbg !2670

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2671, !tbaa !877
  %25 = sext i32 %24 to i64, !dbg !2672
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2672
  %27 = load i64, ptr %5, align 8, !dbg !2673, !tbaa !2577
  %28 = sub nsw i64 %27, %25, !dbg !2674
  %29 = shl i64 %28, 4, !dbg !2675
  call void @llvm.dbg.value(metadata ptr %26, metadata !2061, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %29, metadata !2065, metadata !DIExpression()), !dbg !2676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2678
  %30 = load i64, ptr %5, align 8, !dbg !2679, !tbaa !2577
  %31 = trunc i64 %30 to i32, !dbg !2679
  store i32 %31, ptr @nslots, align 4, !dbg !2680, !tbaa !877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2681
  br label %32, !dbg !2682

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2633, metadata !DIExpression()), !dbg !2646
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2683
  %36 = load i64, ptr %35, align 8, !dbg !2684, !tbaa !2605
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2639, metadata !DIExpression()), !dbg !2685
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2686
  %38 = load ptr, ptr %37, align 8, !dbg !2686, !tbaa !2593
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2641, metadata !DIExpression()), !dbg !2685
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2687
  %40 = load i32, ptr %39, align 4, !dbg !2687, !tbaa !1902
  %41 = or i32 %40, 1, !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2642, metadata !DIExpression()), !dbg !2685
  %42 = load i32, ptr %3, align 8, !dbg !2689, !tbaa !1852
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2690
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2691
  %45 = load ptr, ptr %44, align 8, !dbg !2691, !tbaa !1923
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2692
  %47 = load ptr, ptr %46, align 8, !dbg !2692, !tbaa !1926
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2643, metadata !DIExpression()), !dbg !2685
  %49 = icmp ugt i64 %36, %48, !dbg !2694
  br i1 %49, label %60, label %50, !dbg !2696

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2639, metadata !DIExpression()), !dbg !2685
  store i64 %51, ptr %35, align 8, !dbg !2699, !tbaa !2605
  %52 = icmp eq ptr %38, @slot0, !dbg !2700
  br i1 %52, label %54, label %53, !dbg !2702

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2703
  br label %54, !dbg !2703

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2704
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2641, metadata !DIExpression()), !dbg !2685
  store ptr %55, ptr %37, align 8, !dbg !2705, !tbaa !2593
  %56 = load i32, ptr %3, align 8, !dbg !2706, !tbaa !1852
  %57 = load ptr, ptr %44, align 8, !dbg !2707, !tbaa !1923
  %58 = load ptr, ptr %46, align 8, !dbg !2708, !tbaa !1926
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2709
  br label %60, !dbg !2710

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2641, metadata !DIExpression()), !dbg !2685
  store i32 %7, ptr %6, align 4, !dbg !2711, !tbaa !877
  ret ptr %61, !dbg !2712
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2713 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2717, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2718, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2719, metadata !DIExpression()), !dbg !2720
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2721
  ret ptr %4, !dbg !2722
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2723 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 0, metadata !2619, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2727
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2729
  ret ptr %2, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !2717, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2718, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2738
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2740
  ret ptr %3, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2742 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(), metadata !2750, metadata ptr %4, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2747, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753), !dbg !2756
  call void @llvm.dbg.value(metadata i32 %1, metadata !2757, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2765, !alias.scope !2753, !DIAssignID !2766
  call void @llvm.dbg.assign(metadata i8 0, metadata !2749, metadata !DIExpression(), metadata !2766, metadata ptr %4, metadata !DIExpression()), !dbg !2751
  %5 = icmp eq i32 %1, 10, !dbg !2767
  br i1 %5, label %6, label %7, !dbg !2769

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2770, !noalias !2753
  unreachable, !dbg !2770

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2771, !tbaa !1852, !alias.scope !2753, !DIAssignID !2772
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2772, metadata ptr %4, metadata !DIExpression()), !dbg !2751
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2773
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2774
  ret ptr %8, !dbg !2775
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2776 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2785
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2785, metadata ptr %5, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2781, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2757, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2762, metadata !DIExpression()), !dbg !2794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2794, !alias.scope !2788, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i8 0, metadata !2784, metadata !DIExpression(), metadata !2795, metadata ptr %5, metadata !DIExpression()), !dbg !2786
  %6 = icmp eq i32 %1, 10, !dbg !2796
  br i1 %6, label %7, label %8, !dbg !2797

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2798, !noalias !2788
  unreachable, !dbg !2798

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2799, !tbaa !1852, !alias.scope !2788, !DIAssignID !2800
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2800, metadata ptr %5, metadata !DIExpression()), !dbg !2786
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2802
  ret ptr %9, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2804 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2810
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(), metadata !2810, metadata ptr %3, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %1, metadata !2748, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2762, metadata !DIExpression()), !dbg !2821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2821, !alias.scope !2815, !DIAssignID !2822
  call void @llvm.dbg.assign(metadata i8 0, metadata !2749, metadata !DIExpression(), metadata !2822, metadata ptr %3, metadata !DIExpression()), !dbg !2812
  %4 = icmp eq i32 %0, 10, !dbg !2823
  br i1 %4, label %5, label %6, !dbg !2824

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2825, !noalias !2815
  unreachable, !dbg !2825

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2826, !tbaa !1852, !alias.scope !2815, !DIAssignID !2827
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2827, metadata ptr %3, metadata !DIExpression()), !dbg !2812
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2829
  ret ptr %7, !dbg !2830
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2831 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2838
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()), !dbg !2839
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2836, metadata !DIExpression()), !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2838, metadata ptr %4, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %0, metadata !2781, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !2782, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %2, metadata !2783, metadata !DIExpression()), !dbg !2840
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2843), !dbg !2846
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2849, !alias.scope !2843, !DIAssignID !2850
  call void @llvm.dbg.assign(metadata i8 0, metadata !2784, metadata !DIExpression(), metadata !2850, metadata ptr %4, metadata !DIExpression()), !dbg !2840
  %5 = icmp eq i32 %0, 10, !dbg !2851
  br i1 %5, label %6, label %7, !dbg !2852

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2853, !noalias !2843
  unreachable, !dbg !2853

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2854, !tbaa !1852, !alias.scope !2843, !DIAssignID !2855
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2855, metadata ptr %4, metadata !DIExpression()), !dbg !2840
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2857
  ret ptr %8, !dbg !2858
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2859 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2867
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2867, metadata ptr %4, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2870, !tbaa.struct !2871, !DIAssignID !2872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2872, metadata ptr %4, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1870, metadata !DIExpression()), !dbg !2873
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1872, metadata !DIExpression()), !dbg !2873
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2875
  %6 = lshr i8 %2, 5, !dbg !2876
  %7 = zext nneg i8 %6 to i64, !dbg !2876
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1873, metadata !DIExpression()), !dbg !2873
  %9 = and i8 %2, 31, !dbg !2878
  %10 = zext nneg i8 %9 to i32, !dbg !2878
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1875, metadata !DIExpression()), !dbg !2873
  %11 = load i32, ptr %8, align 4, !dbg !2879, !tbaa !877
  %12 = lshr i32 %11, %10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1876, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2873
  %13 = and i32 %12, 1, !dbg !2881
  %14 = xor i32 %13, 1, !dbg !2881
  %15 = shl nuw i32 %14, %10, !dbg !2882
  %16 = xor i32 %15, %11, !dbg !2883
  store i32 %16, ptr %8, align 4, !dbg !2883, !tbaa !877
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2884
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2885
  ret ptr %17, !dbg !2886
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2887 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2893
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2893, metadata ptr %3, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 -1, metadata !2864, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !2865, metadata !DIExpression()), !dbg !2895
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2898, !tbaa.struct !2871, !DIAssignID !2899
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2899, metadata ptr %3, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %3, metadata !1869, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %1, metadata !1870, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !2900
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2902
  %5 = lshr i8 %1, 5, !dbg !2903
  %6 = zext nneg i8 %5 to i64, !dbg !2903
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %7, metadata !1873, metadata !DIExpression()), !dbg !2900
  %8 = and i8 %1, 31, !dbg !2905
  %9 = zext nneg i8 %8 to i32, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %9, metadata !1875, metadata !DIExpression()), !dbg !2900
  %10 = load i32, ptr %7, align 4, !dbg !2906, !tbaa !877
  %11 = lshr i32 %10, %9, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %11, metadata !1876, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2900
  %12 = and i32 %11, 1, !dbg !2908
  %13 = xor i32 %12, 1, !dbg !2908
  %14 = shl nuw i32 %13, %9, !dbg !2909
  %15 = xor i32 %14, %10, !dbg !2910
  store i32 %15, ptr %7, align 4, !dbg !2910, !tbaa !877
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2911
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2912
  ret ptr %16, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2914 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2917
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 58, metadata !2892, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2917, metadata ptr %2, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 -1, metadata !2864, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 58, metadata !2865, metadata !DIExpression()), !dbg !2921
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2924, !tbaa.struct !2871, !DIAssignID !2925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2925, metadata ptr %2, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %2, metadata !1869, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2926
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2928
  call void @llvm.dbg.value(metadata ptr %3, metadata !1873, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2926
  %4 = load i32, ptr %3, align 4, !dbg !2929, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %4, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2926
  %5 = or i32 %4, 67108864, !dbg !2930
  store i32 %5, ptr %3, align 4, !dbg !2930, !tbaa !877
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2931
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2932
  ret ptr %6, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2934 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2938
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2938, metadata ptr %3, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 58, metadata !2865, metadata !DIExpression()), !dbg !2940
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2943, !tbaa.struct !2871, !DIAssignID !2944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2866, metadata !DIExpression(), metadata !2944, metadata ptr %3, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr %3, metadata !1869, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2945
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2947
  call void @llvm.dbg.value(metadata ptr %4, metadata !1873, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2945
  %5 = load i32, ptr %4, align 4, !dbg !2948, !tbaa !877
  call void @llvm.dbg.value(metadata i32 %5, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2945
  %6 = or i32 %5, 67108864, !dbg !2949
  store i32 %6, ptr %4, align 4, !dbg !2949, !tbaa !877
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2950
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2951
  ret ptr %7, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2953 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(), metadata !2959, metadata ptr %4, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2762, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2955, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2956, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %1, metadata !2757, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2964
  %5 = icmp eq i32 %1, 10, !dbg !2965
  br i1 %5, label %6, label %7, !dbg !2966

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2967, !noalias !2968
  unreachable, !dbg !2967

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2964
  store i32 %1, ptr %4, align 8, !dbg !2971, !tbaa.struct !2871, !DIAssignID !2972
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2971
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2972, metadata ptr %4, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2973, metadata ptr %8, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1870, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2974
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2976
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1873, metadata !DIExpression()), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1875, metadata !DIExpression()), !dbg !2974
  %10 = load i32, ptr %9, align 4, !dbg !2977, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1876, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2974
  %11 = or i32 %10, 67108864, !dbg !2978
  store i32 %11, ptr %9, align 4, !dbg !2978, !tbaa !877, !DIAssignID !2979
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2979, metadata ptr %9, metadata !DIExpression()), !dbg !2960
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2980
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2981
  ret ptr %12, !dbg !2982
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2983 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2991
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !2991, metadata ptr %5, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %3, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 -1, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3006, !tbaa.struct !2871, !DIAssignID !3007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3007, metadata ptr %5, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3008, metadata ptr undef, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3009
  store i32 10, ptr %5, align 8, !dbg !3011, !tbaa !1852, !DIAssignID !3012
  call void @llvm.dbg.assign(metadata i32 10, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3012, metadata ptr %5, metadata !DIExpression()), !dbg !3003
  %6 = icmp ne ptr %1, null, !dbg !3013
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3014
  br i1 %8, label %10, label %9, !dbg !3014

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3015
  unreachable, !dbg !3015

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3016
  store ptr %1, ptr %11, align 8, !dbg !3017, !tbaa !1923, !DIAssignID !3018
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3018, metadata ptr %11, metadata !DIExpression()), !dbg !3003
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3019
  store ptr %2, ptr %12, align 8, !dbg !3020, !tbaa !1926, !DIAssignID !3021
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3021, metadata ptr %12, metadata !DIExpression()), !dbg !3003
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3022
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3023
  ret ptr %13, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2994 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3025
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3025, metadata ptr %6, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2999, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3001, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3002, metadata !DIExpression()), !dbg !3026
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3028, !tbaa.struct !2871, !DIAssignID !3029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3029, metadata ptr %6, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3030, metadata ptr undef, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata ptr %6, metadata !1909, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %2, metadata !1911, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %6, metadata !1909, metadata !DIExpression()), !dbg !3031
  store i32 10, ptr %6, align 8, !dbg !3033, !tbaa !1852, !DIAssignID !3034
  call void @llvm.dbg.assign(metadata i32 10, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3034, metadata ptr %6, metadata !DIExpression()), !dbg !3026
  %7 = icmp ne ptr %1, null, !dbg !3035
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3036
  br i1 %9, label %11, label %10, !dbg !3036

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3037
  unreachable, !dbg !3037

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3038
  store ptr %1, ptr %12, align 8, !dbg !3039, !tbaa !1923, !DIAssignID !3040
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3040, metadata ptr %12, metadata !DIExpression()), !dbg !3026
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3041
  store ptr %2, ptr %13, align 8, !dbg !3042, !tbaa !1926, !DIAssignID !3043
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3043, metadata ptr %13, metadata !DIExpression()), !dbg !3026
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3045
  ret ptr %14, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3047 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3054
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3052, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3054, metadata ptr %4, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !2998, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %1, metadata !3000, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %2, metadata !3001, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 -1, metadata !3002, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3061, !tbaa.struct !2871, !DIAssignID !3062
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3062, metadata ptr %4, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3063, metadata ptr undef, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %4, metadata !1909, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %4, metadata !1909, metadata !DIExpression()), !dbg !3064
  store i32 10, ptr %4, align 8, !dbg !3066, !tbaa !1852, !DIAssignID !3067
  call void @llvm.dbg.assign(metadata i32 10, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3067, metadata ptr %4, metadata !DIExpression()), !dbg !3058
  %5 = icmp ne ptr %0, null, !dbg !3068
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3069
  br i1 %7, label %9, label %8, !dbg !3069

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3070
  unreachable, !dbg !3070

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3071
  store ptr %0, ptr %10, align 8, !dbg !3072, !tbaa !1923, !DIAssignID !3073
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3073, metadata ptr %10, metadata !DIExpression()), !dbg !3058
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3074
  store ptr %1, ptr %11, align 8, !dbg !3075, !tbaa !1926, !DIAssignID !3076
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3076, metadata ptr %11, metadata !DIExpression()), !dbg !3058
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3077
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3078
  ret ptr %12, !dbg !3079
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3080 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3088
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3084, metadata !DIExpression()), !dbg !3089
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3085, metadata !DIExpression()), !dbg !3089
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3086, metadata !DIExpression()), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3088, metadata ptr %5, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 0, metadata !2998, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %1, metadata !3000, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %2, metadata !3001, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %3, metadata !3002, metadata !DIExpression()), !dbg !3090
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3093, !tbaa.struct !2871, !DIAssignID !3094
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(), metadata !3094, metadata ptr %5, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3095, metadata ptr undef, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %5, metadata !1909, metadata !DIExpression()), !dbg !3096
  store i32 10, ptr %5, align 8, !dbg !3098, !tbaa !1852, !DIAssignID !3099
  call void @llvm.dbg.assign(metadata i32 10, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3099, metadata ptr %5, metadata !DIExpression()), !dbg !3090
  %6 = icmp ne ptr %0, null, !dbg !3100
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3101
  br i1 %8, label %10, label %9, !dbg !3101

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3102
  unreachable, !dbg !3102

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3103
  store ptr %0, ptr %11, align 8, !dbg !3104, !tbaa !1923, !DIAssignID !3105
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3105, metadata ptr %11, metadata !DIExpression()), !dbg !3090
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3106
  store ptr %1, ptr %12, align 8, !dbg !3107, !tbaa !1926, !DIAssignID !3108
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2993, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3108, metadata ptr %12, metadata !DIExpression()), !dbg !3090
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3109
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3110
  ret ptr %13, !dbg !3111
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3112 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3117, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3119
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3120
  ret ptr %4, !dbg !3121
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3122 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 0, metadata !3116, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3129
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3131
  ret ptr %3, !dbg !3132
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3137, metadata !DIExpression()), !dbg !3139
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %1, metadata !3117, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()), !dbg !3140
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3142
  ret ptr %3, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3144 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %0, metadata !3138, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 0, metadata !3116, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()), !dbg !3152
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3154
  ret ptr %2, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3196, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3197, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3198, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3199, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3200, metadata !DIExpression()), !dbg !3201
  %7 = icmp eq ptr %1, null, !dbg !3202
  br i1 %7, label %10, label %8, !dbg !3204

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3205
  br label %12, !dbg !3205

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.84, ptr noundef %2, ptr noundef %3) #39, !dbg !3206
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.3.86, i32 noundef 5) #39, !dbg !3207
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3207
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3208
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.5.88, i32 noundef 5) #39, !dbg !3209
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.89) #39, !dbg !3209
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3210
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
  ], !dbg !3211

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.7.90, i32 noundef 5) #39, !dbg !3212
  %21 = load ptr, ptr %4, align 8, !dbg !3212, !tbaa !814
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3212
  br label %147, !dbg !3214

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.8.91, i32 noundef 5) #39, !dbg !3215
  %25 = load ptr, ptr %4, align 8, !dbg !3215, !tbaa !814
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3215
  %27 = load ptr, ptr %26, align 8, !dbg !3215, !tbaa !814
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3215
  br label %147, !dbg !3216

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.9.92, i32 noundef 5) #39, !dbg !3217
  %31 = load ptr, ptr %4, align 8, !dbg !3217, !tbaa !814
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3217
  %33 = load ptr, ptr %32, align 8, !dbg !3217, !tbaa !814
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3217
  %35 = load ptr, ptr %34, align 8, !dbg !3217, !tbaa !814
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3217
  br label %147, !dbg !3218

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.10.93, i32 noundef 5) #39, !dbg !3219
  %39 = load ptr, ptr %4, align 8, !dbg !3219, !tbaa !814
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3219
  %41 = load ptr, ptr %40, align 8, !dbg !3219, !tbaa !814
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3219
  %43 = load ptr, ptr %42, align 8, !dbg !3219, !tbaa !814
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3219
  %45 = load ptr, ptr %44, align 8, !dbg !3219, !tbaa !814
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3219
  br label %147, !dbg !3220

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.11.94, i32 noundef 5) #39, !dbg !3221
  %49 = load ptr, ptr %4, align 8, !dbg !3221, !tbaa !814
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3221
  %51 = load ptr, ptr %50, align 8, !dbg !3221, !tbaa !814
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3221
  %53 = load ptr, ptr %52, align 8, !dbg !3221, !tbaa !814
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3221
  %55 = load ptr, ptr %54, align 8, !dbg !3221, !tbaa !814
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3221
  %57 = load ptr, ptr %56, align 8, !dbg !3221, !tbaa !814
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3221
  br label %147, !dbg !3222

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.12.95, i32 noundef 5) #39, !dbg !3223
  %61 = load ptr, ptr %4, align 8, !dbg !3223, !tbaa !814
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3223
  %63 = load ptr, ptr %62, align 8, !dbg !3223, !tbaa !814
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3223
  %65 = load ptr, ptr %64, align 8, !dbg !3223, !tbaa !814
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3223
  %67 = load ptr, ptr %66, align 8, !dbg !3223, !tbaa !814
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3223
  %69 = load ptr, ptr %68, align 8, !dbg !3223, !tbaa !814
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3223
  %71 = load ptr, ptr %70, align 8, !dbg !3223, !tbaa !814
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3223
  br label %147, !dbg !3224

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.13.96, i32 noundef 5) #39, !dbg !3225
  %75 = load ptr, ptr %4, align 8, !dbg !3225, !tbaa !814
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3225
  %77 = load ptr, ptr %76, align 8, !dbg !3225, !tbaa !814
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3225
  %79 = load ptr, ptr %78, align 8, !dbg !3225, !tbaa !814
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3225
  %81 = load ptr, ptr %80, align 8, !dbg !3225, !tbaa !814
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3225
  %83 = load ptr, ptr %82, align 8, !dbg !3225, !tbaa !814
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3225
  %85 = load ptr, ptr %84, align 8, !dbg !3225, !tbaa !814
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3225
  %87 = load ptr, ptr %86, align 8, !dbg !3225, !tbaa !814
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3225
  br label %147, !dbg !3226

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.14.97, i32 noundef 5) #39, !dbg !3227
  %91 = load ptr, ptr %4, align 8, !dbg !3227, !tbaa !814
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3227
  %93 = load ptr, ptr %92, align 8, !dbg !3227, !tbaa !814
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3227
  %95 = load ptr, ptr %94, align 8, !dbg !3227, !tbaa !814
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3227
  %97 = load ptr, ptr %96, align 8, !dbg !3227, !tbaa !814
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3227
  %99 = load ptr, ptr %98, align 8, !dbg !3227, !tbaa !814
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3227
  %101 = load ptr, ptr %100, align 8, !dbg !3227, !tbaa !814
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3227
  %103 = load ptr, ptr %102, align 8, !dbg !3227, !tbaa !814
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3227
  %105 = load ptr, ptr %104, align 8, !dbg !3227, !tbaa !814
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3227
  br label %147, !dbg !3228

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.15.98, i32 noundef 5) #39, !dbg !3229
  %109 = load ptr, ptr %4, align 8, !dbg !3229, !tbaa !814
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3229
  %111 = load ptr, ptr %110, align 8, !dbg !3229, !tbaa !814
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3229
  %113 = load ptr, ptr %112, align 8, !dbg !3229, !tbaa !814
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3229
  %115 = load ptr, ptr %114, align 8, !dbg !3229, !tbaa !814
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3229
  %117 = load ptr, ptr %116, align 8, !dbg !3229, !tbaa !814
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3229
  %119 = load ptr, ptr %118, align 8, !dbg !3229, !tbaa !814
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3229
  %121 = load ptr, ptr %120, align 8, !dbg !3229, !tbaa !814
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3229
  %123 = load ptr, ptr %122, align 8, !dbg !3229, !tbaa !814
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3229
  %125 = load ptr, ptr %124, align 8, !dbg !3229, !tbaa !814
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3229
  br label %147, !dbg !3230

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.16.99, i32 noundef 5) #39, !dbg !3231
  %129 = load ptr, ptr %4, align 8, !dbg !3231, !tbaa !814
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3231
  %131 = load ptr, ptr %130, align 8, !dbg !3231, !tbaa !814
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3231
  %133 = load ptr, ptr %132, align 8, !dbg !3231, !tbaa !814
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3231
  %135 = load ptr, ptr %134, align 8, !dbg !3231, !tbaa !814
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3231
  %137 = load ptr, ptr %136, align 8, !dbg !3231, !tbaa !814
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3231
  %139 = load ptr, ptr %138, align 8, !dbg !3231, !tbaa !814
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3231
  %141 = load ptr, ptr %140, align 8, !dbg !3231, !tbaa !814
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3231
  %143 = load ptr, ptr %142, align 8, !dbg !3231, !tbaa !814
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3231
  %145 = load ptr, ptr %144, align 8, !dbg !3231, !tbaa !814
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3231
  br label %147, !dbg !3232

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3233
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3238, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3239, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3240, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3241, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3242, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3243, metadata !DIExpression()), !dbg !3244
  br label %6, !dbg !3245

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3243, metadata !DIExpression()), !dbg !3244
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3248
  %9 = load ptr, ptr %8, align 8, !dbg !3248, !tbaa !814
  %10 = icmp eq ptr %9, null, !dbg !3250
  %11 = add i64 %7, 1, !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3243, metadata !DIExpression()), !dbg !3244
  br i1 %10, label %12, label %6, !dbg !3250, !llvm.loop !3252

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3247
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3254
  ret void, !dbg !3255
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3256 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3278
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3276, metadata !DIExpression(), metadata !3278, metadata ptr %6, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3273, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3274, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()), !dbg !3279
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()), !dbg !3279
  %10 = icmp sgt i32 %9, -1, !dbg !3281
  br i1 %10, label %18, label %11, !dbg !3281

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3281
  store i32 %12, ptr %7, align 8, !dbg !3281
  %13 = icmp ult i32 %9, -7, !dbg !3281
  br i1 %13, label %14, label %18, !dbg !3281

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3281
  %16 = sext i32 %9 to i64, !dbg !3281
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3281
  br label %22, !dbg !3281

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3281
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3281
  store ptr %21, ptr %4, align 8, !dbg !3281
  br label %22, !dbg !3281

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3281
  %25 = load ptr, ptr %24, align 8, !dbg !3281
  store ptr %25, ptr %6, align 8, !dbg !3284, !tbaa !814
  %26 = icmp eq ptr %25, null, !dbg !3285
  br i1 %26, label %197, label %27, !dbg !3286

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3279
  %28 = icmp sgt i32 %23, -1, !dbg !3281
  br i1 %28, label %36, label %29, !dbg !3281

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3281
  store i32 %30, ptr %7, align 8, !dbg !3281
  %31 = icmp ult i32 %23, -7, !dbg !3281
  br i1 %31, label %32, label %36, !dbg !3281

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3281
  %34 = sext i32 %23 to i64, !dbg !3281
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3281
  br label %40, !dbg !3281

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3281
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3281
  store ptr %39, ptr %4, align 8, !dbg !3281
  br label %40, !dbg !3281

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3281
  %43 = load ptr, ptr %42, align 8, !dbg !3281
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3287
  store ptr %43, ptr %44, align 8, !dbg !3284, !tbaa !814
  %45 = icmp eq ptr %43, null, !dbg !3285
  br i1 %45, label %197, label %46, !dbg !3286

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3275, metadata !DIExpression()), !dbg !3279
  %47 = icmp sgt i32 %41, -1, !dbg !3281
  br i1 %47, label %55, label %48, !dbg !3281

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3281
  store i32 %49, ptr %7, align 8, !dbg !3281
  %50 = icmp ult i32 %41, -7, !dbg !3281
  br i1 %50, label %51, label %55, !dbg !3281

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3281
  %53 = sext i32 %41 to i64, !dbg !3281
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3281
  br label %59, !dbg !3281

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3281
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3281
  store ptr %58, ptr %4, align 8, !dbg !3281
  br label %59, !dbg !3281

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3281
  %62 = load ptr, ptr %61, align 8, !dbg !3281
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3287
  store ptr %62, ptr %63, align 8, !dbg !3284, !tbaa !814
  %64 = icmp eq ptr %62, null, !dbg !3285
  br i1 %64, label %197, label %65, !dbg !3286

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3275, metadata !DIExpression()), !dbg !3279
  %66 = icmp sgt i32 %60, -1, !dbg !3281
  br i1 %66, label %74, label %67, !dbg !3281

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3281
  store i32 %68, ptr %7, align 8, !dbg !3281
  %69 = icmp ult i32 %60, -7, !dbg !3281
  br i1 %69, label %70, label %74, !dbg !3281

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3281
  %72 = sext i32 %60 to i64, !dbg !3281
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3281
  br label %78, !dbg !3281

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3281
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3281
  store ptr %77, ptr %4, align 8, !dbg !3281
  br label %78, !dbg !3281

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3281
  %81 = load ptr, ptr %80, align 8, !dbg !3281
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3287
  store ptr %81, ptr %82, align 8, !dbg !3284, !tbaa !814
  %83 = icmp eq ptr %81, null, !dbg !3285
  br i1 %83, label %197, label %84, !dbg !3286

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3275, metadata !DIExpression()), !dbg !3279
  %85 = icmp sgt i32 %79, -1, !dbg !3281
  br i1 %85, label %93, label %86, !dbg !3281

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3281
  store i32 %87, ptr %7, align 8, !dbg !3281
  %88 = icmp ult i32 %79, -7, !dbg !3281
  br i1 %88, label %89, label %93, !dbg !3281

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3281
  %91 = sext i32 %79 to i64, !dbg !3281
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3281
  br label %97, !dbg !3281

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3281
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3281
  store ptr %96, ptr %4, align 8, !dbg !3281
  br label %97, !dbg !3281

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3281
  %100 = load ptr, ptr %99, align 8, !dbg !3281
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3287
  store ptr %100, ptr %101, align 8, !dbg !3284, !tbaa !814
  %102 = icmp eq ptr %100, null, !dbg !3285
  br i1 %102, label %197, label %103, !dbg !3286

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3275, metadata !DIExpression()), !dbg !3279
  %104 = icmp sgt i32 %98, -1, !dbg !3281
  br i1 %104, label %112, label %105, !dbg !3281

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3281
  store i32 %106, ptr %7, align 8, !dbg !3281
  %107 = icmp ult i32 %98, -7, !dbg !3281
  br i1 %107, label %108, label %112, !dbg !3281

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3281
  %110 = sext i32 %98 to i64, !dbg !3281
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3281
  br label %116, !dbg !3281

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3281
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3281
  store ptr %115, ptr %4, align 8, !dbg !3281
  br label %116, !dbg !3281

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3281
  %119 = load ptr, ptr %118, align 8, !dbg !3281
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3287
  store ptr %119, ptr %120, align 8, !dbg !3284, !tbaa !814
  %121 = icmp eq ptr %119, null, !dbg !3285
  br i1 %121, label %197, label %122, !dbg !3286

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3275, metadata !DIExpression()), !dbg !3279
  %123 = icmp sgt i32 %117, -1, !dbg !3281
  br i1 %123, label %131, label %124, !dbg !3281

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3281
  store i32 %125, ptr %7, align 8, !dbg !3281
  %126 = icmp ult i32 %117, -7, !dbg !3281
  br i1 %126, label %127, label %131, !dbg !3281

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3281
  %129 = sext i32 %117 to i64, !dbg !3281
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3281
  br label %135, !dbg !3281

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3281
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3281
  store ptr %134, ptr %4, align 8, !dbg !3281
  br label %135, !dbg !3281

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3281
  %138 = load ptr, ptr %137, align 8, !dbg !3281
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3287
  store ptr %138, ptr %139, align 8, !dbg !3284, !tbaa !814
  %140 = icmp eq ptr %138, null, !dbg !3285
  br i1 %140, label %197, label %141, !dbg !3286

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3275, metadata !DIExpression()), !dbg !3279
  %142 = icmp sgt i32 %136, -1, !dbg !3281
  br i1 %142, label %150, label %143, !dbg !3281

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3281
  store i32 %144, ptr %7, align 8, !dbg !3281
  %145 = icmp ult i32 %136, -7, !dbg !3281
  br i1 %145, label %146, label %150, !dbg !3281

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3281
  %148 = sext i32 %136 to i64, !dbg !3281
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3281
  br label %154, !dbg !3281

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3281
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3281
  store ptr %153, ptr %4, align 8, !dbg !3281
  br label %154, !dbg !3281

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3281
  %157 = load ptr, ptr %156, align 8, !dbg !3281
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3287
  store ptr %157, ptr %158, align 8, !dbg !3284, !tbaa !814
  %159 = icmp eq ptr %157, null, !dbg !3285
  br i1 %159, label %197, label %160, !dbg !3286

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3275, metadata !DIExpression()), !dbg !3279
  %161 = icmp sgt i32 %155, -1, !dbg !3281
  br i1 %161, label %169, label %162, !dbg !3281

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3281
  store i32 %163, ptr %7, align 8, !dbg !3281
  %164 = icmp ult i32 %155, -7, !dbg !3281
  br i1 %164, label %165, label %169, !dbg !3281

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3281
  %167 = sext i32 %155 to i64, !dbg !3281
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3281
  br label %173, !dbg !3281

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3281
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3281
  store ptr %172, ptr %4, align 8, !dbg !3281
  br label %173, !dbg !3281

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3281
  %176 = load ptr, ptr %175, align 8, !dbg !3281
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3287
  store ptr %176, ptr %177, align 8, !dbg !3284, !tbaa !814
  %178 = icmp eq ptr %176, null, !dbg !3285
  br i1 %178, label %197, label %179, !dbg !3286

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3275, metadata !DIExpression()), !dbg !3279
  %180 = icmp sgt i32 %174, -1, !dbg !3281
  br i1 %180, label %188, label %181, !dbg !3281

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3281
  store i32 %182, ptr %7, align 8, !dbg !3281
  %183 = icmp ult i32 %174, -7, !dbg !3281
  br i1 %183, label %184, label %188, !dbg !3281

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3281
  %186 = sext i32 %174 to i64, !dbg !3281
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3281
  br label %191, !dbg !3281

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3281
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3281
  store ptr %190, ptr %4, align 8, !dbg !3281
  br label %191, !dbg !3281

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3281
  %193 = load ptr, ptr %192, align 8, !dbg !3281
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3287
  store ptr %193, ptr %194, align 8, !dbg !3284, !tbaa !814
  %195 = icmp eq ptr %193, null, !dbg !3285
  %196 = select i1 %195, i64 9, i64 10, !dbg !3286
  br label %197, !dbg !3286

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3288
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3289
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3290
  ret void, !dbg !3290
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3291 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3299, metadata !DIExpression(), metadata !3300, metadata ptr %5, metadata !DIExpression()), !dbg !3301
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3296, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3297, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3298, metadata !DIExpression()), !dbg !3301
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3302
  call void @llvm.va_start(ptr nonnull %5), !dbg !3303
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3304, !tbaa.struct !1562
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3304
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3304
  call void @llvm.va_end(ptr nonnull %5), !dbg !3305
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3306
  ret void, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3307 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3308, !tbaa !814
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %1), !dbg !3308
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.17.104, i32 noundef 5) #39, !dbg !3309
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.105) #39, !dbg !3309
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.19.106, i32 noundef 5) #39, !dbg !3310
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.107, ptr noundef nonnull @.str.21.108) #39, !dbg !3310
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.22.109, i32 noundef 5) #39, !dbg !3311
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.110) #39, !dbg !3311
  ret void, !dbg !3312
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3313 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3318, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3327
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3329
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3335
  %5 = icmp eq ptr %4, null, !dbg !3337
  br i1 %5, label %6, label %7, !dbg !3339

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3340
  unreachable, !dbg !3340

7:                                                ; preds = %3
  ret ptr %4, !dbg !3341
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3323 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3342
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3344
  %5 = icmp eq ptr %4, null, !dbg !3346
  br i1 %5, label %6, label %7, !dbg !3347

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3348
  unreachable, !dbg !3348

7:                                                ; preds = %3
  ret ptr %4, !dbg !3349
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3355
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3357
  %3 = icmp eq ptr %2, null, !dbg !3359
  br i1 %3, label %4, label %5, !dbg !3360

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3361
  unreachable, !dbg !3361

5:                                                ; preds = %1
  ret ptr %2, !dbg !3362
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3363 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3364 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %0, metadata !3370, metadata !DIExpression()), !dbg !3374
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3376
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3377
  %3 = icmp eq ptr %2, null, !dbg !3379
  br i1 %3, label %4, label %5, !dbg !3380

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3381
  unreachable, !dbg !3381

5:                                                ; preds = %1
  ret ptr %2, !dbg !3382
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3389
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3391
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3392
  %3 = icmp eq ptr %2, null, !dbg !3394
  br i1 %3, label %4, label %5, !dbg !3395

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3396
  unreachable, !dbg !3396

5:                                                ; preds = %1
  ret ptr %2, !dbg !3397
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3398 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3412
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3413
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3414
  %5 = icmp eq ptr %4, null, !dbg !3416
  br i1 %5, label %6, label %7, !dbg !3417

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3418
  unreachable, !dbg !3418

7:                                                ; preds = %2
  ret ptr %4, !dbg !3419
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3420 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3421 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3425, metadata !DIExpression()), !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %0, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3434
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3436
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3437
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3438
  %5 = icmp eq ptr %4, null, !dbg !3440
  br i1 %5, label %6, label %7, !dbg !3441

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3442
  unreachable, !dbg !3442

7:                                                ; preds = %2
  ret ptr %4, !dbg !3443
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3444 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %2, metadata !3456, metadata !DIExpression()), !dbg !3457
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3460
  %5 = icmp eq ptr %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret ptr %4, !dbg !3465
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr null, metadata !3322, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %0, metadata !3325, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3473
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3475
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3476
  %4 = icmp eq ptr %3, null, !dbg !3478
  br i1 %4, label %5, label %6, !dbg !3479

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3480
  unreachable, !dbg !3480

6:                                                ; preds = %2
  ret ptr %3, !dbg !3481
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3486, metadata !DIExpression()), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3487, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata ptr null, metadata !3448, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr null, metadata !3452, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %0, metadata !3455, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3491
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3493
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3494
  %4 = icmp eq ptr %3, null, !dbg !3496
  br i1 %4, label %5, label %6, !dbg !3497

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3498
  unreachable, !dbg !3498

6:                                                ; preds = %2
  ret ptr %3, !dbg !3499
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3500 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3504, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata ptr %0, metadata !747, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 1, metadata !749, metadata !DIExpression()), !dbg !3507
  %3 = load i64, ptr %1, align 8, !dbg !3509, !tbaa !2577
  call void @llvm.dbg.value(metadata i64 %3, metadata !750, metadata !DIExpression()), !dbg !3507
  %4 = icmp eq ptr %0, null, !dbg !3510
  br i1 %4, label %5, label %8, !dbg !3512

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3513
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3516
  br label %15, !dbg !3516

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3517
  %10 = add nuw i64 %9, 1, !dbg !3517
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3517
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3517
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %13, metadata !750, metadata !DIExpression()), !dbg !3507
  br i1 %12, label %14, label %15, !dbg !3520

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3521
  unreachable, !dbg !3521

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3507
  call void @llvm.dbg.value(metadata i64 %16, metadata !750, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %16, metadata !3325, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 1, metadata !3326, metadata !DIExpression()), !dbg !3522
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3524
  call void @llvm.dbg.value(metadata ptr %17, metadata !3330, metadata !DIExpression()), !dbg !3525
  %18 = icmp eq ptr %17, null, !dbg !3527
  br i1 %18, label %19, label %20, !dbg !3528

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3529
  unreachable, !dbg !3529

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !747, metadata !DIExpression()), !dbg !3507
  store i64 %16, ptr %1, align 8, !dbg !3530, !tbaa !2577
  ret ptr %17, !dbg !3531
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !747, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !749, metadata !DIExpression()), !dbg !3532
  %4 = load i64, ptr %1, align 8, !dbg !3533, !tbaa !2577
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !750, metadata !DIExpression()), !dbg !3532
  %5 = icmp eq ptr %0, null, !dbg !3534
  br i1 %5, label %6, label %13, !dbg !3535

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3536
  br i1 %7, label %8, label %20, !dbg !3537

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !750, metadata !DIExpression()), !dbg !3532
  %10 = icmp ugt i64 %2, 128, !dbg !3540
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !750, metadata !DIExpression()), !dbg !3532
  br label %20, !dbg !3542

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3543
  %15 = add nuw i64 %14, 1, !dbg !3543
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3543
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3543
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !750, metadata !DIExpression()), !dbg !3532
  br i1 %17, label %19, label %20, !dbg !3544

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3545
  unreachable, !dbg !3545

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !750, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %21, metadata !3325, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3546
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3548
  call void @llvm.dbg.value(metadata ptr %22, metadata !3330, metadata !DIExpression()), !dbg !3549
  %23 = icmp eq ptr %22, null, !dbg !3551
  br i1 %23, label %24, label %25, !dbg !3552

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3553
  unreachable, !dbg !3553

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !747, metadata !DIExpression()), !dbg !3532
  store i64 %21, ptr %1, align 8, !dbg !3554, !tbaa !2577
  ret ptr %22, !dbg !3555
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !763, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !764, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !765, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !766, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !767, metadata !DIExpression()), !dbg !3556
  %6 = load i64, ptr %1, align 8, !dbg !3557, !tbaa !2577
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !768, metadata !DIExpression()), !dbg !3556
  %7 = ashr i64 %6, 1, !dbg !3558
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3558
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3558
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !769, metadata !DIExpression()), !dbg !3556
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !769, metadata !DIExpression()), !dbg !3556
  %12 = icmp sgt i64 %3, -1, !dbg !3561
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3563
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !769, metadata !DIExpression()), !dbg !3556
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3564
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3564
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !770, metadata !DIExpression()), !dbg !3556
  %18 = icmp slt i64 %17, 128, !dbg !3564
  %19 = select i1 %18, i64 128, i64 0, !dbg !3564
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !771, metadata !DIExpression()), !dbg !3556
  %21 = icmp eq i64 %20, 0, !dbg !3565
  br i1 %21, label %28, label %22, !dbg !3567

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !769, metadata !DIExpression()), !dbg !3556
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !770, metadata !DIExpression()), !dbg !3556
  br label %28, !dbg !3571

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3556
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !770, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !769, metadata !DIExpression()), !dbg !3556
  %31 = icmp eq ptr %0, null, !dbg !3572
  br i1 %31, label %32, label %33, !dbg !3574

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3575, !tbaa !2577
  br label %33, !dbg !3576

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3577
  %35 = icmp slt i64 %34, %2, !dbg !3579
  br i1 %35, label %36, label %48, !dbg !3580

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3581
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3581
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !769, metadata !DIExpression()), !dbg !3556
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3582
  br i1 %42, label %47, label %43, !dbg !3582

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3583
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3583
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !770, metadata !DIExpression()), !dbg !3556
  br i1 %45, label %47, label %48, !dbg !3584

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !3585
  unreachable, !dbg !3585

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3556
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !770, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !769, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %50, metadata !3403, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %50, metadata !3409, metadata !DIExpression()), !dbg !3588
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3590
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %52, metadata !3330, metadata !DIExpression()), !dbg !3592
  %53 = icmp eq ptr %52, null, !dbg !3594
  br i1 %53, label %54, label %55, !dbg !3595

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !3596
  unreachable, !dbg !3596

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !763, metadata !DIExpression()), !dbg !3556
  store i64 %49, ptr %1, align 8, !dbg !3597, !tbaa !2577
  ret ptr %52, !dbg !3598
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3599 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %0, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 1, metadata !3606, metadata !DIExpression()), !dbg !3607
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3610
  %3 = icmp eq ptr %2, null, !dbg !3612
  br i1 %3, label %4, label %5, !dbg !3613

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3614
  unreachable, !dbg !3614

5:                                                ; preds = %1
  ret ptr %2, !dbg !3615
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3616 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3604 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3603, metadata !DIExpression()), !dbg !3617
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3617
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3619
  %4 = icmp eq ptr %3, null, !dbg !3621
  br i1 %4, label %5, label %6, !dbg !3622

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3623
  unreachable, !dbg !3623

6:                                                ; preds = %2
  ret ptr %3, !dbg !3624
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3625 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 1, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 1, metadata !3638, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 1, metadata !3638, metadata !DIExpression()), !dbg !3639
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3641
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3642
  %3 = icmp eq ptr %2, null, !dbg !3644
  br i1 %3, label %4, label %5, !dbg !3645

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3646
  unreachable, !dbg !3646

5:                                                ; preds = %1
  ret ptr %2, !dbg !3647
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3630 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3649
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3651
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3652
  %4 = icmp eq ptr %3, null, !dbg !3654
  br i1 %4, label %5, label %6, !dbg !3655

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3656
  unreachable, !dbg !3656

6:                                                ; preds = %2
  ret ptr %3, !dbg !3657
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3658 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3662, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3665
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3667
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3668
  %4 = icmp eq ptr %3, null, !dbg !3670
  br i1 %4, label %5, label %6, !dbg !3671

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3672
  unreachable, !dbg !3672

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3673, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %1, metadata !3680, metadata !DIExpression()), !dbg !3681
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3683
  ret ptr %3, !dbg !3684
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3370, metadata !DIExpression()), !dbg !3694
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3696
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3697
  %4 = icmp eq ptr %3, null, !dbg !3699
  br i1 %4, label %5, label %6, !dbg !3700

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3701
  unreachable, !dbg !3701

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3673, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3680, metadata !DIExpression()), !dbg !3702
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3704
  ret ptr %3, !dbg !3705
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3710, metadata !DIExpression()), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3711, metadata !DIExpression()), !dbg !3713
  %3 = add nsw i64 %1, 1, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %3, metadata !3368, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %3, metadata !3370, metadata !DIExpression()), !dbg !3717
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3720
  %5 = icmp eq ptr %4, null, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3723

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3724
  unreachable, !dbg !3724

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3712, metadata !DIExpression()), !dbg !3713
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3725
  store i8 0, ptr %8, align 1, !dbg !3726, !tbaa !886
  call void @llvm.dbg.value(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3680, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3729
  ret ptr %4, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3733, metadata !DIExpression()), !dbg !3734
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3735
  %3 = add i64 %2, 1, !dbg !3736
  call void @llvm.dbg.value(metadata ptr %0, metadata !3662, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %3, metadata !3663, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %3, metadata !3354, metadata !DIExpression()), !dbg !3739
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3741
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3742
  %5 = icmp eq ptr %4, null, !dbg !3744
  br i1 %5, label %6, label %7, !dbg !3745

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3746
  unreachable, !dbg !3746

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %3, metadata !3680, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3749
  ret ptr %4, !dbg !3750
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3751 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3756, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3753, metadata !DIExpression()), !dbg !3757
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #39, !dbg !3756
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #39, !dbg !3756
  %3 = icmp eq i32 %1, 0, !dbg !3756
  tail call void @llvm.assume(i1 %3), !dbg !3756
  tail call void @abort() #41, !dbg !3758
  unreachable, !dbg !3758
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3762, metadata !DIExpression()), !dbg !3766
  br label %2, !dbg !3767

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3766
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3766
  %4 = load i8, ptr %3, align 1, !dbg !3768, !tbaa !886
  %5 = icmp eq i8 %4, 47, !dbg !3768
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3769
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3762, metadata !DIExpression()), !dbg !3766
  br i1 %5, label %2, label %.preheader, !dbg !3767, !llvm.loop !3770

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !3766
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !3768
  br label %7, !dbg !3771

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !3772
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !3774
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !3775
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3764, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3763, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3762, metadata !DIExpression()), !dbg !3766
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3771

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !3774
  ret ptr %.lcssa, !dbg !3777

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3778
  br label %15, !dbg !3778

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3766
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3763, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3762, metadata !DIExpression()), !dbg !3766
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3764, metadata !DIExpression()), !dbg !3776
  %19 = load i8, ptr %18, align 1, !dbg !3772, !tbaa !886
  br label %7, !dbg !3782, !llvm.loop !3783
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3789, metadata !DIExpression()), !dbg !3792
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3790, metadata !DIExpression()), !dbg !3792
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3790, metadata !DIExpression()), !dbg !3792
  %4 = icmp ugt i64 %2, 1, !dbg !3796
  br i1 %4, label %.preheader, label %13, !dbg !3798

.preheader:                                       ; preds = %1
  br label %5, !dbg !3799

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3790, metadata !DIExpression()), !dbg !3792
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3800
  %8 = load i8, ptr %7, align 1, !dbg !3800, !tbaa !886
  %9 = icmp eq i8 %8, 47, !dbg !3800
  br i1 %9, label %10, label %.loopexit, !dbg !3799

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3790, metadata !DIExpression()), !dbg !3792
  %12 = icmp ugt i64 %11, 1, !dbg !3796
  br i1 %12, label %5, label %.loopexit, !dbg !3798, !llvm.loop !3802

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !3804

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3791, metadata !DIExpression()), !dbg !3792
  ret i64 %14, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3844, metadata !DIExpression()), !dbg !3849
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3845, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3854
  %3 = load i32, ptr %0, align 8, !dbg !3856, !tbaa !3857
  %4 = and i32 %3, 32, !dbg !3858
  %5 = icmp eq i32 %4, 0, !dbg !3858
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3849
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3859
  %7 = icmp eq i32 %6, 0, !dbg !3860
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3849
  br i1 %5, label %8, label %18, !dbg !3861

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3863
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3845, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3849
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3864
  %11 = xor i1 %7, true, !dbg !3864
  %12 = sext i1 %11 to i32, !dbg !3864
  br i1 %10, label %21, label %13, !dbg !3864

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3865
  %15 = load i32, ptr %14, align 4, !dbg !3865, !tbaa !877
  %16 = icmp ne i32 %15, 9, !dbg !3866
  %17 = sext i1 %16 to i32, !dbg !3867
  br label %21, !dbg !3867

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3868

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3870
  store i32 0, ptr %20, align 4, !dbg !3872, !tbaa !877
  br label %21, !dbg !3870

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3849
  ret i32 %22, !dbg !3873
}

; Function Attrs: nounwind
declare !dbg !3874 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3878 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3916, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3917, metadata !DIExpression()), !dbg !3920
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3921
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3918, metadata !DIExpression()), !dbg !3920
  %3 = icmp slt i32 %2, 0, !dbg !3922
  br i1 %3, label %4, label %6, !dbg !3924

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3925
  br label %24, !dbg !3926

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3927
  %8 = icmp eq i32 %7, 0, !dbg !3927
  br i1 %8, label %13, label %9, !dbg !3929

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3930
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3931
  %12 = icmp eq i64 %11, -1, !dbg !3932
  br i1 %12, label %16, label %13, !dbg !3933

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3934
  %15 = icmp eq i32 %14, 0, !dbg !3934
  br i1 %15, label %16, label %18, !dbg !3935

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3917, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3919, metadata !DIExpression()), !dbg !3920
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3919, metadata !DIExpression()), !dbg !3920
  br label %24, !dbg !3937

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3938
  %20 = load i32, ptr %19, align 4, !dbg !3938, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3917, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3919, metadata !DIExpression()), !dbg !3920
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3919, metadata !DIExpression()), !dbg !3920
  %22 = icmp eq i32 %20, 0, !dbg !3939
  br i1 %22, label %24, label %23, !dbg !3937

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3941, !tbaa !877
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3919, metadata !DIExpression()), !dbg !3920
  br label %24, !dbg !3943

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3920
  ret i32 %25, !dbg !3944
}

; Function Attrs: nofree nounwind
declare !dbg !3945 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3946 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3947 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3948 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3951 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3989, metadata !DIExpression()), !dbg !3990
  %2 = icmp eq ptr %0, null, !dbg !3991
  br i1 %2, label %6, label %3, !dbg !3993

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3994
  %5 = icmp eq i32 %4, 0, !dbg !3994
  br i1 %5, label %6, label %8, !dbg !3995

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3996
  br label %16, !dbg !3997

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4003
  %9 = load i32, ptr %0, align 8, !dbg !4005, !tbaa !3857
  %10 = and i32 %9, 256, !dbg !4007
  %11 = icmp eq i32 %10, 0, !dbg !4007
  br i1 %11, label %14, label %12, !dbg !4008

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4009
  br label %14, !dbg !4009

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4010
  br label %16, !dbg !4011

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3990
  ret i32 %17, !dbg !4012
}

; Function Attrs: nofree nounwind
declare !dbg !4013 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4054, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4055, metadata !DIExpression()), !dbg !4059
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4060
  %5 = load ptr, ptr %4, align 8, !dbg !4060, !tbaa !4061
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4062
  %7 = load ptr, ptr %6, align 8, !dbg !4062, !tbaa !4063
  %8 = icmp eq ptr %5, %7, !dbg !4064
  br i1 %8, label %9, label %27, !dbg !4065

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4066
  %11 = load ptr, ptr %10, align 8, !dbg !4066, !tbaa !1467
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4067
  %13 = load ptr, ptr %12, align 8, !dbg !4067, !tbaa !4068
  %14 = icmp eq ptr %11, %13, !dbg !4069
  br i1 %14, label %15, label %27, !dbg !4070

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4071
  %17 = load ptr, ptr %16, align 8, !dbg !4071, !tbaa !4072
  %18 = icmp eq ptr %17, null, !dbg !4073
  br i1 %18, label %19, label %27, !dbg !4074

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4075
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4056, metadata !DIExpression()), !dbg !4077
  %22 = icmp eq i64 %21, -1, !dbg !4078
  br i1 %22, label %29, label %23, !dbg !4080

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4081, !tbaa !3857
  %25 = and i32 %24, -17, !dbg !4081
  store i32 %25, ptr %0, align 8, !dbg !4081, !tbaa !3857
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4082
  store i64 %21, ptr %26, align 8, !dbg !4083, !tbaa !4084
  br label %29, !dbg !4085

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4086
  br label %29, !dbg !4087

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4059
  ret i32 %30, !dbg !4088
}

; Function Attrs: nofree nounwind
declare !dbg !4089 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4097, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4100, metadata !DIExpression()), !dbg !4102
  %5 = icmp eq ptr %1, null, !dbg !4103
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4105
  %7 = select i1 %5, ptr @.str.140, ptr %1, !dbg !4105
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4098, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4097, metadata !DIExpression()), !dbg !4102
  %9 = icmp eq ptr %3, null, !dbg !4106
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4108
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4100, metadata !DIExpression()), !dbg !4102
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4101, metadata !DIExpression()), !dbg !4102
  %12 = icmp ult i64 %11, -3, !dbg !4110
  br i1 %12, label %13, label %17, !dbg !4112

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4113
  %15 = icmp eq i32 %14, 0, !dbg !4113
  br i1 %15, label %16, label %29, !dbg !4114

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4115, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %10, metadata !4122, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 8, metadata !4126, metadata !DIExpression()), !dbg !4127
  store i64 0, ptr %10, align 1, !dbg !4129
  br label %29, !dbg !4130

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4131
  br i1 %18, label %19, label %20, !dbg !4133

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4134
  unreachable, !dbg !4134

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4135

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4137
  br i1 %23, label %29, label %24, !dbg !4138

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4139
  br i1 %25, label %29, label %26, !dbg !4142

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4143, !tbaa !886
  %28 = zext i8 %27 to i32, !dbg !4144
  store i32 %28, ptr %6, align 4, !dbg !4145, !tbaa !877
  br label %29, !dbg !4146

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4102
  ret i64 %30, !dbg !4147
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4148 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4154 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4156, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4157, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4158, metadata !DIExpression()), !dbg !4160
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4161
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4159, metadata !DIExpression()), !dbg !4160
  br i1 %5, label %6, label %8, !dbg !4163

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4164
  store i32 12, ptr %7, align 4, !dbg !4166, !tbaa !877
  br label %12, !dbg !4167

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %9, metadata !4171, metadata !DIExpression()), !dbg !4172
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4174
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4175
  br label %12, !dbg !4176

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4160
  ret ptr %13, !dbg !4177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4178 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4183, metadata !DIExpression(), metadata !4187, metadata ptr %2, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4188
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4189
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4190
  %4 = icmp eq i32 %3, 0, !dbg !4190
  br i1 %4, label %5, label %12, !dbg !4192

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr @.str.145, metadata !4196, metadata !DIExpression()), !dbg !4197
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.145, i64 2), !dbg !4200
  %7 = icmp eq i32 %6, 0, !dbg !4201
  br i1 %7, label %11, label %8, !dbg !4202

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4196, metadata !DIExpression()), !dbg !4203
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4205
  %10 = icmp eq i32 %9, 0, !dbg !4206
  br i1 %10, label %11, label %12, !dbg !4207

11:                                               ; preds = %8, %5
  br label %12, !dbg !4208

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4188
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4209
  ret i1 %13, !dbg !4209
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4210 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4214, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4215, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4216, metadata !DIExpression()), !dbg !4217
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4218
  ret i32 %4, !dbg !4219
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4220 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4224, metadata !DIExpression()), !dbg !4225
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4226
  ret ptr %2, !dbg !4227
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4228 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4230, metadata !DIExpression()), !dbg !4232
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4231, metadata !DIExpression()), !dbg !4232
  ret ptr %2, !dbg !4234
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4235 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4237, metadata !DIExpression()), !dbg !4244
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4238, metadata !DIExpression()), !dbg !4244
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4239, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i32 %0, metadata !4230, metadata !DIExpression()), !dbg !4245
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4247
  call void @llvm.dbg.value(metadata ptr %4, metadata !4231, metadata !DIExpression()), !dbg !4245
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4240, metadata !DIExpression()), !dbg !4244
  %5 = icmp eq ptr %4, null, !dbg !4248
  br i1 %5, label %6, label %9, !dbg !4249

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4250
  br i1 %7, label %19, label %8, !dbg !4253

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4254, !tbaa !886
  br label %19, !dbg !4255

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4241, metadata !DIExpression()), !dbg !4257
  %11 = icmp ult i64 %10, %2, !dbg !4258
  br i1 %11, label %12, label %14, !dbg !4260

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %1, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %4, metadata !4266, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %13, metadata !4267, metadata !DIExpression()), !dbg !4268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4270
  br label %19, !dbg !4271

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4272
  br i1 %15, label %19, label %16, !dbg !4275

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %1, metadata !4263, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %4, metadata !4266, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %17, metadata !4267, metadata !DIExpression()), !dbg !4278
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4280
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4281
  store i8 0, ptr %18, align 1, !dbg !4282, !tbaa !886
  br label %19, !dbg !4283

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4284
  ret i32 %20, !dbg !4285
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
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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

!llvm.dbg.cu = !{!69, !724, !389, !393, !727, !408, !690, !729, !464, !478, !529, !731, !682, !738, !773, !775, !778, !780, !782, !784, !706, !786, !788, !790, !792}
!llvm.ident = !{!794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794}
!llvm.module.flags = !{!795, !796, !797, !798, !799, !800, !801, !802}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/rmdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5a459e166db9bc86eb1f418ddcaeb865")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 760, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 95)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 120)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 76)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 24)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "longopts", scope: !69, file: !2, line: 56, type: !368, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/rmdir.o -MD -MP -MF src/.deps/rmdir.Tpo -c src/rmdir.c -o src/.rmdir.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !115, globals: !125, splitDebugInlining: false, nameTableKind: None)
!70 = !{!71, !75, !81, !95, !110}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 51, baseType: !72, size: 32, elements: !73)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !{!74}
!74 = !DIEnumerator(name: "IGNORE_FAIL_ON_NON_EMPTY_OPTION", value: 256)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 337, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!80 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 42, baseType: !72, size: 32, elements: !83)
!82 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!84 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!85 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!86 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!87 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!88 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!89 = !DIEnumerator(name: "c_quoting_style", value: 5)
!90 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!91 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!92 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!93 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!94 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 46, baseType: !72, size: 32, elements: !97)
!96 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!98 = !DIEnumerator(name: "_ISupper", value: 256)
!99 = !DIEnumerator(name: "_ISlower", value: 512)
!100 = !DIEnumerator(name: "_ISalpha", value: 1024)
!101 = !DIEnumerator(name: "_ISdigit", value: 2048)
!102 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!103 = !DIEnumerator(name: "_ISspace", value: 8192)
!104 = !DIEnumerator(name: "_ISprint", value: 16384)
!105 = !DIEnumerator(name: "_ISgraph", value: 32768)
!106 = !DIEnumerator(name: "_ISblank", value: 1)
!107 = !DIEnumerator(name: "_IScntrl", value: 2)
!108 = !DIEnumerator(name: "_ISpunct", value: 4)
!109 = !DIEnumerator(name: "_ISalnum", value: 8)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 299, baseType: !77, size: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "DS_UNKNOWN", value: -2)
!113 = !DIEnumerator(name: "DS_EMPTY", value: -1)
!114 = !DIEnumerator(name: "DS_NONEMPTY", value: 0)
!115 = !{!116, !117, !77, !118, !119, !122, !124}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 18, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !126, !131, !136, !138, !143, !145, !150, !153, !155, !157, !236, !241, !243, !248, !250, !255, !257, !259, !261, !263, !265, !267, !272, !277, !279, !281, !283, !285, !287, !289, !294, !299, !304, !309, !311, !313, !315, !317, !319, !324, !326, !328, !333, !338, !343, !348, !353, !355, !357, !359, !361, !67, !363}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 14)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 16)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 23)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !14, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 20)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !69, file: !2, line: 40, type: !152, isLocal: true, isDefinition: true)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !69, file: !2, line: 44, type: !152, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "verbose", scope: !69, file: !2, line: 47, type: !152, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !159, file: !76, line: 575, type: !77, isLocal: true, isDefinition: true)
!159 = distinct !DISubprogram(name: "oputs_", scope: !76, file: !76, line: 573, type: !160, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !162)
!160 = !DISubroutineType(cc: DW_CC_nocall, types: !161)
!161 = !{null, !122, !122}
!162 = !{!163, !164, !165, !168, !169, !170, !171, !175, !176, !177, !178, !180, !230, !231, !232, !234, !235}
!163 = !DILocalVariable(name: "program", arg: 1, scope: !159, file: !76, line: 573, type: !122)
!164 = !DILocalVariable(name: "option", arg: 2, scope: !159, file: !76, line: 573, type: !122)
!165 = !DILocalVariable(name: "term", scope: !166, file: !76, line: 585, type: !122)
!166 = distinct !DILexicalBlock(scope: !167, file: !76, line: 582, column: 5)
!167 = distinct !DILexicalBlock(scope: !159, file: !76, line: 581, column: 7)
!168 = !DILocalVariable(name: "double_space", scope: !159, file: !76, line: 594, type: !152)
!169 = !DILocalVariable(name: "first_word", scope: !159, file: !76, line: 595, type: !122)
!170 = !DILocalVariable(name: "option_text", scope: !159, file: !76, line: 596, type: !122)
!171 = !DILocalVariable(name: "s", scope: !172, file: !76, line: 608, type: !122)
!172 = distinct !DILexicalBlock(scope: !173, file: !76, line: 605, column: 5)
!173 = distinct !DILexicalBlock(scope: !174, file: !76, line: 604, column: 12)
!174 = distinct !DILexicalBlock(scope: !159, file: !76, line: 597, column: 7)
!175 = !DILocalVariable(name: "spaces", scope: !172, file: !76, line: 609, type: !119)
!176 = !DILocalVariable(name: "anchor_len", scope: !159, file: !76, line: 620, type: !119)
!177 = !DILocalVariable(name: "desc_text", scope: !159, file: !76, line: 625, type: !122)
!178 = !DILocalVariable(name: "__ptr", scope: !179, file: !76, line: 644, type: !122)
!179 = distinct !DILexicalBlock(scope: !159, file: !76, line: 644, column: 3)
!180 = !DILocalVariable(name: "__stream", scope: !179, file: !76, line: 644, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !184)
!183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !186)
!185 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !202, !204, !205, !206, !210, !211, !213, !214, !217, !219, !222, !225, !226, !227, !228, !229}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !184, file: !185, line: 51, baseType: !77, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !184, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !184, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !184, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !184, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !184, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !184, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !184, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !184, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !184, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !184, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !184, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !184, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !185, line: 36, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !184, file: !185, line: 70, baseType: !203, size: 64, offset: 832)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !184, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !184, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !184, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !208, line: 152, baseType: !209)
!208 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!209 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !184, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !184, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!212 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !184, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !184, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !185, line: 43, baseType: null)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !184, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !208, line: 153, baseType: !209)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !184, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !185, line: 37, flags: DIFlagFwdDecl)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !184, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !185, line: 38, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !184, file: !185, line: 93, baseType: !203, size: 64, offset: 1344)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !184, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !184, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !184, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !184, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!230 = !DILocalVariable(name: "__cnt", scope: !179, file: !76, line: 644, type: !119)
!231 = !DILocalVariable(name: "url_program", scope: !159, file: !76, line: 648, type: !122)
!232 = !DILocalVariable(name: "__ptr", scope: !233, file: !76, line: 686, type: !122)
!233 = distinct !DILexicalBlock(scope: !159, file: !76, line: 686, column: 3)
!234 = !DILocalVariable(name: "__stream", scope: !233, file: !76, line: 686, type: !181)
!235 = !DILocalVariable(name: "__cnt", scope: !233, file: !76, line: 686, type: !119)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !76, line: 585, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 5)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !76, line: 586, type: !238, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !76, line: 595, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !76, line: 620, type: !19, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 2)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !238, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !245, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !64, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !76, line: 650, type: !238, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !19, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !19, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !76, line: 652, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 7)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !76, line: 653, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 8)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !76, line: 654, type: !54, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !76, line: 655, type: !54, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !76, line: 656, type: !54, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !76, line: 657, type: !54, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !76, line: 663, type: !269, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !76, line: 664, type: !54, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 17)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 40)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 15)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 61)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !76, line: 679, type: !64, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !76, line: 683, type: !238, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !76, line: 688, type: !238, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !76, line: 691, type: !274, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !76, line: 839, type: !133, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !76, line: 840, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 22)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !76, line: 841, type: !301, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !76, line: 862, type: !245, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !76, line: 868, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 71)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !76, line: 875, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 27)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !76, line: 877, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 51)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !76, line: 877, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 12)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 25)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !238, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !274, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !274, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !238, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !274, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 30)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1792, elements: !270)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !371, line: 50, size: 256, elements: !372)
!371 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!372 = !{!373, !374, !375, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !371, line: 52, baseType: !122, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !370, file: !371, line: 55, baseType: !77, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !370, file: !371, line: 56, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !371, line: 57, baseType: !77, size: 32, offset: 192)
!378 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!379 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!380 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !383, line: 32, type: !64, isLocal: true, isDefinition: true)
!383 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8f170eec0f5223b6ba3ae07aa753e06a")
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !386, line: 3, type: !301, isLocal: true, isDefinition: true)
!386 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "Version", scope: !389, file: !386, line: 3, type: !122, isLocal: false, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C11, file: !386, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !390, splitDebugInlining: false, nameTableKind: None)
!390 = !{!384, !387}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "file_name", scope: !393, file: !394, line: 45, type: !122, isLocal: true, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !395, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!395 = !{!396, !398, !400, !402, !391, !404}
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !394, line: 121, type: !269, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !394, line: 121, type: !345, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !394, line: 123, type: !269, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !394, line: 126, type: !64, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !393, file: !394, line: 55, type: !152, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !408, file: !409, line: 66, type: !459, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !410, globals: !411, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!410 = !{!117, !124}
!411 = !{!412, !414, !438, !440, !442, !444, !406, !446, !448, !450, !452, !457}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 272, type: !238, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "old_file_name", scope: !416, file: !409, line: 304, type: !122, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "verror_at_line", scope: !409, file: !409, line: 298, type: !417, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !431)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !77, !77, !122, !72, !122, !419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !421)
!420 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 12, baseType: !423)
!422 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !409, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !425)
!425 = !{!426, !427, !428, !429, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !424, file: !409, baseType: !117, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !424, file: !409, baseType: !117, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !424, file: !409, baseType: !117, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !424, file: !409, baseType: !77, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !424, file: !409, baseType: !77, size: 32, offset: 224)
!431 = !{!432, !433, !434, !435, !436, !437}
!432 = !DILocalVariable(name: "status", arg: 1, scope: !416, file: !409, line: 298, type: !77)
!433 = !DILocalVariable(name: "errnum", arg: 2, scope: !416, file: !409, line: 298, type: !77)
!434 = !DILocalVariable(name: "file_name", arg: 3, scope: !416, file: !409, line: 298, type: !122)
!435 = !DILocalVariable(name: "line_number", arg: 4, scope: !416, file: !409, line: 298, type: !72)
!436 = !DILocalVariable(name: "message", arg: 5, scope: !416, file: !409, line: 298, type: !122)
!437 = !DILocalVariable(name: "args", arg: 6, scope: !416, file: !409, line: 298, type: !419)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "old_line_number", scope: !416, file: !409, line: 305, type: !72, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !409, line: 338, type: !245, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !274, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !252, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "error_message_count", scope: !408, file: !409, line: 69, type: !72, isLocal: false, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !408, file: !409, line: 295, type: !77, isLocal: false, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !269, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 21)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !409, line: 214, type: !238, isLocal: true, isDefinition: true)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "program_name", scope: !464, file: !465, line: 31, type: !122, isLocal: false, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C11, file: !465, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, globals: !467, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!466 = !{!117, !116}
!467 = !{!462, !468, !470}
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !465, line: 46, type: !274, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !465, line: 49, type: !245, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "utf07FF", scope: !474, file: !475, line: 46, type: !502, isLocal: true, isDefinition: true)
!474 = distinct !DISubprogram(name: "proper_name_lite", scope: !475, file: !475, line: 38, type: !476, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !480)
!475 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!476 = !DISubroutineType(types: !477)
!477 = !{!122, !122, !122}
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !479, splitDebugInlining: false, nameTableKind: None)
!479 = !{!472}
!480 = !{!481, !482, !483, !484, !489}
!481 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !474, file: !475, line: 38, type: !122)
!482 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !474, file: !475, line: 38, type: !122)
!483 = !DILocalVariable(name: "translation", scope: !474, file: !475, line: 40, type: !122)
!484 = !DILocalVariable(name: "w", scope: !474, file: !475, line: 47, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !486, line: 37, baseType: !487)
!486 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !208, line: 57, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !208, line: 42, baseType: !72)
!489 = !DILocalVariable(name: "mbs", scope: !474, file: !475, line: 48, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !492)
!491 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !494)
!493 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !494, file: !493, line: 15, baseType: !77, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !494, file: !493, line: 20, baseType: !498, size: 32, offset: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !493, line: 16, size: 32, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !498, file: !493, line: 18, baseType: !72, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !498, file: !493, line: 19, baseType: !245, size: 32)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16, elements: !253)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !505, line: 78, type: !274, isLocal: true, isDefinition: true)
!505 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !505, line: 79, type: !19, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !505, line: 80, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 13)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !505, line: 81, type: !510, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !505, line: 82, type: !147, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !505, line: 83, type: !252, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !505, line: 84, type: !274, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !505, line: 85, type: !269, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !505, line: 86, type: !269, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !505, line: 87, type: !274, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !529, file: !505, line: 76, type: !603, isLocal: false, isDefinition: true)
!529 = distinct !DICompileUnit(language: DW_LANG_C11, file: !505, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !530, retainedTypes: !538, globals: !539, splitDebugInlining: false, nameTableKind: None)
!530 = !{!531, !533, !95}
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !532, line: 42, baseType: !72, size: 32, elements: !83)
!532 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !532, line: 254, baseType: !72, size: 32, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!536 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!537 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!538 = !{!117, !77, !118, !119}
!539 = !{!503, !506, !508, !513, !515, !517, !519, !521, !523, !525, !527, !540, !544, !554, !556, !561, !563, !565, !567, !569, !592, !599, !601}
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !529, file: !505, line: 92, type: !542, isLocal: false, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 320, elements: !55)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !529, file: !505, line: 1040, type: !546, isLocal: false, isDefinition: true)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !505, line: 56, size: 448, elements: !547)
!547 = !{!548, !549, !550, !552, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !546, file: !505, line: 59, baseType: !531, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !505, line: 62, baseType: !77, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !546, file: !505, line: 66, baseType: !551, size: 256, offset: 64)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !275)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !546, file: !505, line: 69, baseType: !122, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !546, file: !505, line: 72, baseType: !122, size: 64, offset: 384)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !529, file: !505, line: 107, type: !546, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "slot0", scope: !529, file: !505, line: 831, type: !558, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 256)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !505, line: 321, type: !252, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !505, line: 357, type: !252, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !505, line: 358, type: !252, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !505, line: 199, type: !269, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "quote", scope: !571, file: !505, line: 228, type: !590, isLocal: true, isDefinition: true)
!571 = distinct !DISubprogram(name: "gettext_quote", scope: !505, file: !505, line: 197, type: !572, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!122, !122, !531}
!574 = !{!575, !576, !577, !578, !579}
!575 = !DILocalVariable(name: "msgid", arg: 1, scope: !571, file: !505, line: 197, type: !122)
!576 = !DILocalVariable(name: "s", arg: 2, scope: !571, file: !505, line: 197, type: !531)
!577 = !DILocalVariable(name: "translation", scope: !571, file: !505, line: 199, type: !122)
!578 = !DILocalVariable(name: "w", scope: !571, file: !505, line: 229, type: !485)
!579 = !DILocalVariable(name: "mbs", scope: !571, file: !505, line: 230, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !582, file: !493, line: 15, baseType: !77, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !582, file: !493, line: 20, baseType: !586, size: 32, offset: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !493, line: 16, size: 32, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !586, file: !493, line: 18, baseType: !72, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !586, file: !493, line: 19, baseType: !245, size: 32)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !591)
!591 = !{!254, !247}
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "slotvec", scope: !529, file: !505, line: 834, type: !594, isLocal: true, isDefinition: true)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !505, line: 823, size: 128, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !505, line: 825, baseType: !119, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !595, file: !505, line: 826, baseType: !116, size: 64, offset: 64)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "nslots", scope: !529, file: !505, line: 832, type: !77, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "slotvec0", scope: !529, file: !505, line: 833, type: !595, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 704, elements: !605)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!605 = !{!606}
!606 = !DISubrange(count: 11)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !609, line: 67, type: !345, isLocal: true, isDefinition: true)
!609 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !609, line: 69, type: !269, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !609, line: 83, type: !269, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !609, line: 83, type: !245, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !609, line: 85, type: !252, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !609, line: 88, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 171)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !609, line: 88, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 34)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !609, line: 105, type: !133, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !609, line: 109, type: !140, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !609, line: 113, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 28)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !609, line: 120, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 32)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !609, line: 127, type: !9, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !609, line: 134, type: !296, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !609, line: 142, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 44)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !609, line: 150, type: !14, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !609, line: 159, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 52)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !609, line: 170, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 60)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !609, line: 248, type: !147, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !609, line: 248, type: !321, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !609, line: 254, type: !147, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !609, line: 254, type: !128, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !609, line: 254, type: !296, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !609, line: 259, type: !3, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !609, line: 259, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 29)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !682, file: !683, line: 26, type: !685, isLocal: false, isDefinition: true)
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!683 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!684 = !{!680}
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 376, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 47)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "exit_failure", scope: !690, file: !691, line: 24, type: !693, isLocal: false, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!692 = !{!688}
!693 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !64, isLocal: true, isDefinition: true)
!696 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !269, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !291, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !703, line: 108, type: !49, isLocal: true, isDefinition: true)
!703 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "internal_state", scope: !706, file: !703, line: 97, type: !709, isLocal: true, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !707, globals: !708, splitDebugInlining: false, nameTableKind: None)
!707 = !{!117, !119, !124}
!708 = !{!701, !704}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !711, file: !493, line: 15, baseType: !77, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !711, file: !493, line: 20, baseType: !715, size: 32, offset: 32)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !493, line: 16, size: 32, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !715, file: !493, line: 18, baseType: !72, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !715, file: !493, line: 19, baseType: !245, size: 32)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !721, line: 35, type: !252, isLocal: true, isDefinition: true)
!721 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !721, line: 35, type: !19, isLocal: true, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/prog-fprintf.o -MD -MP -MF src/.deps/prog-fprintf.Tpo -c src/prog-fprintf.c -o src/.prog-fprintf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !725, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !{!124}
!726 = !{!381}
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-stripslash.o -MD -MP -MF lib/.deps/libcoreutils_a-stripslash.Tpo -c lib/stripslash.c -o lib/.libcoreutils_a-stripslash.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !609, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !732, retainedTypes: !736, globals: !737, splitDebugInlining: false, nameTableKind: None)
!732 = !{!733}
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !609, line: 40, baseType: !72, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!736 = !{!117}
!737 = !{!607, !610, !612, !614, !616, !618, !623, !628, !630, !632, !637, !642, !644, !646, !651, !653, !658, !663, !665, !667, !669, !671, !673, !675}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !740, retainedTypes: !772, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!740 = !{!741, !753}
!741 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !742, file: !739, line: 188, baseType: !72, size: 32, elements: !751)
!742 = distinct !DISubprogram(name: "x2nrealloc", scope: !739, file: !739, line: 176, type: !743, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !746)
!743 = !DISubroutineType(types: !744)
!744 = !{!117, !117, !745, !119}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!746 = !{!747, !748, !749, !750}
!747 = !DILocalVariable(name: "p", arg: 1, scope: !742, file: !739, line: 176, type: !117)
!748 = !DILocalVariable(name: "pn", arg: 2, scope: !742, file: !739, line: 176, type: !745)
!749 = !DILocalVariable(name: "s", arg: 3, scope: !742, file: !739, line: 176, type: !119)
!750 = !DILocalVariable(name: "n", scope: !742, file: !739, line: 178, type: !119)
!751 = !{!752}
!752 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!753 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !754, file: !739, line: 228, baseType: !72, size: 32, elements: !751)
!754 = distinct !DISubprogram(name: "xpalloc", scope: !739, file: !739, line: 223, type: !755, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !762)
!755 = !DISubroutineType(types: !756)
!756 = !{!117, !117, !757, !758, !760, !758}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !759, line: 130, baseType: !760)
!759 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !761, line: 18, baseType: !209)
!761 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771}
!763 = !DILocalVariable(name: "pa", arg: 1, scope: !754, file: !739, line: 223, type: !117)
!764 = !DILocalVariable(name: "pn", arg: 2, scope: !754, file: !739, line: 223, type: !757)
!765 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !754, file: !739, line: 223, type: !758)
!766 = !DILocalVariable(name: "n_max", arg: 4, scope: !754, file: !739, line: 223, type: !760)
!767 = !DILocalVariable(name: "s", arg: 5, scope: !754, file: !739, line: 223, type: !758)
!768 = !DILocalVariable(name: "n0", scope: !754, file: !739, line: 230, type: !758)
!769 = !DILocalVariable(name: "n", scope: !754, file: !739, line: 237, type: !758)
!770 = !DILocalVariable(name: "nbytes", scope: !754, file: !739, line: 248, type: !758)
!771 = !DILocalVariable(name: "adjusted_nbytes", scope: !754, file: !739, line: 252, type: !758)
!772 = !{!116, !117}
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !774, splitDebugInlining: false, nameTableKind: None)
!774 = !{!694, !697, !699}
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !777, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!777 = !{!116}
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !789, splitDebugInlining: false, nameTableKind: None)
!789 = !{!719, !722}
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!794 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!795 = !{i32 7, !"Dwarf Version", i32 5}
!796 = !{i32 2, !"Debug Info Version", i32 3}
!797 = !{i32 1, !"wchar_size", i32 4}
!798 = !{i32 8, !"PIC Level", i32 2}
!799 = !{i32 7, !"PIE Level", i32 2}
!800 = !{i32 7, !"uwtable", i32 2}
!801 = !{i32 7, !"frame-pointer", i32 1}
!802 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!803 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 166, type: !804, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !77}
!806 = !{!807}
!807 = !DILocalVariable(name: "status", arg: 1, scope: !803, file: !2, line: 166, type: !77)
!808 = !DILocation(line: 0, scope: !803)
!809 = !DILocation(line: 168, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !2, line: 168, column: 7)
!811 = !DILocation(line: 168, column: 7, scope: !803)
!812 = !DILocation(line: 169, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 169, column: 5)
!814 = !{!815, !815, i64 0}
!815 = !{!"any pointer", !816, i64 0}
!816 = !{!"omnipotent char", !817, i64 0}
!817 = !{!"Simple C/C++ TBAA"}
!818 = !DILocation(line: 172, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !2, line: 171, column: 5)
!820 = !DILocation(line: 173, column: 7, scope: !819)
!821 = !DILocation(line: 177, column: 7, scope: !819)
!822 = !DILocation(line: 181, column: 7, scope: !819)
!823 = !DILocation(line: 186, column: 7, scope: !819)
!824 = !DILocation(line: 190, column: 7, scope: !819)
!825 = !DILocation(line: 191, column: 7, scope: !819)
!826 = !DILocalVariable(name: "program", arg: 1, scope: !827, file: !76, line: 836, type: !122)
!827 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !828, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !122}
!830 = !{!826, !831, !838, !839, !841, !842}
!831 = !DILocalVariable(name: "infomap", scope: !827, file: !76, line: 838, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 896, elements: !270)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !827, file: !76, line: 838, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !834, file: !76, line: 838, baseType: !122, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !834, file: !76, line: 838, baseType: !122, size: 64, offset: 64)
!838 = !DILocalVariable(name: "node", scope: !827, file: !76, line: 848, type: !122)
!839 = !DILocalVariable(name: "map_prog", scope: !827, file: !76, line: 849, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!841 = !DILocalVariable(name: "lc_messages", scope: !827, file: !76, line: 861, type: !122)
!842 = !DILocalVariable(name: "url_program", scope: !827, file: !76, line: 874, type: !122)
!843 = !DILocation(line: 0, scope: !827, inlinedAt: !844)
!844 = distinct !DILocation(line: 192, column: 7, scope: !819)
!845 = !{}
!846 = !DILocation(line: 857, column: 3, scope: !827, inlinedAt: !844)
!847 = !DILocation(line: 861, column: 29, scope: !827, inlinedAt: !844)
!848 = !DILocation(line: 862, column: 7, scope: !849, inlinedAt: !844)
!849 = distinct !DILexicalBlock(scope: !827, file: !76, line: 862, column: 7)
!850 = !DILocation(line: 862, column: 19, scope: !849, inlinedAt: !844)
!851 = !DILocation(line: 862, column: 22, scope: !849, inlinedAt: !844)
!852 = !DILocation(line: 862, column: 7, scope: !827, inlinedAt: !844)
!853 = !DILocation(line: 868, column: 7, scope: !854, inlinedAt: !844)
!854 = distinct !DILexicalBlock(scope: !849, file: !76, line: 863, column: 5)
!855 = !DILocation(line: 870, column: 5, scope: !854, inlinedAt: !844)
!856 = !DILocation(line: 875, column: 3, scope: !827, inlinedAt: !844)
!857 = !DILocation(line: 877, column: 3, scope: !827, inlinedAt: !844)
!858 = !DILocation(line: 194, column: 3, scope: !803)
!859 = !DISubprogram(name: "dcgettext", scope: !860, file: !860, line: 51, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!861 = !DISubroutineType(types: !862)
!862 = !{!116, !122, !122, !77}
!863 = !DISubprogram(name: "__fprintf_chk", scope: !864, file: !864, line: 93, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!865 = !DISubroutineType(types: !866)
!866 = !{!77, !867, !77, !868, null}
!867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!868 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!869 = !DISubprogram(name: "__printf_chk", scope: !864, file: !864, line: 95, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubroutineType(types: !871)
!871 = !{!77, !77, !868, null}
!872 = !DISubprogram(name: "fputs_unlocked", scope: !420, file: !420, line: 691, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{!77, !868, !867}
!875 = !DILocation(line: 0, scope: !159)
!876 = !DILocation(line: 581, column: 7, scope: !167)
!877 = !{!878, !878, i64 0}
!878 = !{!"int", !816, i64 0}
!879 = !DILocation(line: 581, column: 19, scope: !167)
!880 = !DILocation(line: 581, column: 7, scope: !159)
!881 = !DILocation(line: 585, column: 26, scope: !166)
!882 = !DILocation(line: 0, scope: !166)
!883 = !DILocation(line: 586, column: 23, scope: !166)
!884 = !DILocation(line: 586, column: 28, scope: !166)
!885 = !DILocation(line: 586, column: 32, scope: !166)
!886 = !{!816, !816, i64 0}
!887 = !DILocation(line: 586, column: 38, scope: !166)
!888 = !DILocalVariable(name: "__s1", arg: 1, scope: !889, file: !890, line: 1359, type: !122)
!889 = distinct !DISubprogram(name: "streq", scope: !890, file: !890, line: 1359, type: !891, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !893)
!890 = !DIFile(filename: "./lib/string.h", directory: "/src")
!891 = !DISubroutineType(types: !892)
!892 = !{!152, !122, !122}
!893 = !{!888, !894}
!894 = !DILocalVariable(name: "__s2", arg: 2, scope: !889, file: !890, line: 1359, type: !122)
!895 = !DILocation(line: 0, scope: !889, inlinedAt: !896)
!896 = distinct !DILocation(line: 586, column: 41, scope: !166)
!897 = !DILocation(line: 1361, column: 11, scope: !889, inlinedAt: !896)
!898 = !DILocation(line: 1361, column: 10, scope: !889, inlinedAt: !896)
!899 = !DILocation(line: 586, column: 19, scope: !166)
!900 = !DILocation(line: 587, column: 5, scope: !166)
!901 = !DILocation(line: 588, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !159, file: !76, line: 588, column: 7)
!903 = !DILocation(line: 588, column: 7, scope: !159)
!904 = !DILocation(line: 590, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !76, line: 589, column: 5)
!906 = !DILocation(line: 591, column: 7, scope: !905)
!907 = !DILocation(line: 595, column: 37, scope: !159)
!908 = !DILocation(line: 595, column: 35, scope: !159)
!909 = !DILocation(line: 596, column: 29, scope: !159)
!910 = !DILocation(line: 597, column: 8, scope: !174)
!911 = !DILocation(line: 597, column: 7, scope: !159)
!912 = !DILocation(line: 604, column: 24, scope: !173)
!913 = !DILocation(line: 604, column: 12, scope: !174)
!914 = !DILocation(line: 0, scope: !172)
!915 = !DILocation(line: 610, column: 16, scope: !172)
!916 = !DILocation(line: 610, column: 7, scope: !172)
!917 = !DILocation(line: 611, column: 21, scope: !172)
!918 = !{!919, !919, i64 0}
!919 = !{!"short", !816, i64 0}
!920 = !DILocation(line: 611, column: 19, scope: !172)
!921 = !DILocation(line: 611, column: 16, scope: !172)
!922 = !DILocation(line: 610, column: 30, scope: !172)
!923 = distinct !{!923, !916, !917, !924}
!924 = !{!"llvm.loop.mustprogress"}
!925 = !DILocation(line: 612, column: 18, scope: !926)
!926 = distinct !DILexicalBlock(scope: !172, file: !76, line: 612, column: 11)
!927 = !DILocation(line: 612, column: 11, scope: !172)
!928 = !DILocation(line: 620, column: 23, scope: !159)
!929 = !DILocation(line: 625, column: 39, scope: !159)
!930 = !DILocation(line: 626, column: 3, scope: !159)
!931 = !DILocation(line: 626, column: 10, scope: !159)
!932 = !DILocation(line: 626, column: 21, scope: !159)
!933 = !DILocation(line: 628, column: 44, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !76, line: 628, column: 11)
!935 = distinct !DILexicalBlock(scope: !159, file: !76, line: 627, column: 5)
!936 = !DILocation(line: 628, column: 32, scope: !934)
!937 = !DILocation(line: 628, column: 49, scope: !934)
!938 = !DILocation(line: 628, column: 11, scope: !935)
!939 = !DILocation(line: 630, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !76, line: 630, column: 11)
!941 = !DILocation(line: 630, column: 11, scope: !935)
!942 = !DILocation(line: 632, column: 26, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !76, line: 632, column: 15)
!944 = distinct !DILexicalBlock(scope: !940, file: !76, line: 631, column: 9)
!945 = !DILocation(line: 632, column: 34, scope: !943)
!946 = !DILocation(line: 632, column: 37, scope: !943)
!947 = !DILocation(line: 632, column: 15, scope: !944)
!948 = !DILocation(line: 640, column: 16, scope: !935)
!949 = distinct !{!949, !930, !950, !924}
!950 = !DILocation(line: 641, column: 5, scope: !159)
!951 = !DILocation(line: 644, column: 3, scope: !159)
!952 = !DILocation(line: 0, scope: !889, inlinedAt: !953)
!953 = distinct !DILocation(line: 648, column: 31, scope: !159)
!954 = !DILocation(line: 0, scope: !889, inlinedAt: !955)
!955 = distinct !DILocation(line: 649, column: 31, scope: !159)
!956 = !DILocation(line: 0, scope: !889, inlinedAt: !957)
!957 = distinct !DILocation(line: 650, column: 31, scope: !159)
!958 = !DILocation(line: 0, scope: !889, inlinedAt: !959)
!959 = distinct !DILocation(line: 651, column: 31, scope: !159)
!960 = !DILocation(line: 0, scope: !889, inlinedAt: !961)
!961 = distinct !DILocation(line: 652, column: 31, scope: !159)
!962 = !DILocation(line: 0, scope: !889, inlinedAt: !963)
!963 = distinct !DILocation(line: 653, column: 31, scope: !159)
!964 = !DILocation(line: 0, scope: !889, inlinedAt: !965)
!965 = distinct !DILocation(line: 654, column: 31, scope: !159)
!966 = !DILocation(line: 0, scope: !889, inlinedAt: !967)
!967 = distinct !DILocation(line: 655, column: 31, scope: !159)
!968 = !DILocation(line: 0, scope: !889, inlinedAt: !969)
!969 = distinct !DILocation(line: 656, column: 31, scope: !159)
!970 = !DILocation(line: 0, scope: !889, inlinedAt: !971)
!971 = distinct !DILocation(line: 657, column: 31, scope: !159)
!972 = !DILocation(line: 663, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !159, file: !76, line: 663, column: 7)
!974 = !DILocation(line: 664, column: 7, scope: !973)
!975 = !DILocation(line: 664, column: 10, scope: !973)
!976 = !DILocation(line: 663, column: 7, scope: !159)
!977 = !DILocation(line: 669, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !76, line: 665, column: 5)
!979 = !DILocation(line: 671, column: 5, scope: !978)
!980 = !DILocation(line: 676, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !973, file: !76, line: 673, column: 5)
!982 = !DILocation(line: 679, column: 3, scope: !159)
!983 = !DILocation(line: 683, column: 3, scope: !159)
!984 = !DILocation(line: 686, column: 3, scope: !159)
!985 = !DILocation(line: 688, column: 3, scope: !159)
!986 = !DILocation(line: 691, column: 3, scope: !159)
!987 = !DILocation(line: 695, column: 3, scope: !159)
!988 = !DILocation(line: 696, column: 1, scope: !159)
!989 = !DISubprogram(name: "setlocale", scope: !990, file: !990, line: 122, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!991 = !DISubroutineType(types: !992)
!992 = !{!116, !77, !122}
!993 = !DISubprogram(name: "strncmp", scope: !994, file: !994, line: 159, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!995 = !DISubroutineType(types: !996)
!996 = !{!77, !122, !122, !119}
!997 = !DISubprogram(name: "exit", scope: !998, file: !998, line: 624, type: !804, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!998 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!999 = !DISubprogram(name: "getenv", scope: !998, file: !998, line: 641, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!116, !122}
!1002 = !DISubprogram(name: "strcmp", scope: !994, file: !994, line: 156, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!77, !122, !122}
!1005 = !DISubprogram(name: "strspn", scope: !994, file: !994, line: 297, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!121, !122, !122}
!1008 = !DISubprogram(name: "strchr", scope: !994, file: !994, line: 246, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!116, !122, !77}
!1011 = !DISubprogram(name: "__ctype_b_loc", scope: !96, file: !96, line: 79, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1017 = !DISubprogram(name: "strcspn", scope: !994, file: !994, line: 293, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubprogram(name: "fwrite_unlocked", scope: !420, file: !420, line: 704, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!119, !1021, !119, !119, !867}
!1021 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1024 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 198, type: !1025, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1028)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!77, !77, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1037, !1040, !1041, !1044, !1082, !1083}
!1029 = !DILocalVariable(name: "argc", arg: 1, scope: !1024, file: !2, line: 198, type: !77)
!1030 = !DILocalVariable(name: "argv", arg: 2, scope: !1024, file: !2, line: 198, type: !1027)
!1031 = !DILocalVariable(name: "optc", scope: !1024, file: !2, line: 208, type: !77)
!1032 = !DILocalVariable(name: "ok", scope: !1024, file: !2, line: 235, type: !152)
!1033 = !DILocalVariable(name: "dir", scope: !1034, file: !2, line: 238, type: !116)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 237, column: 5)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 236, column: 3)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 236, column: 3)
!1037 = !DILocalVariable(name: "rmdir_errno", scope: !1038, file: !2, line: 246, type: !77)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 245, column: 9)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 244, column: 11)
!1040 = !DILocalVariable(name: "custom_error", scope: !1038, file: !2, line: 255, type: !152)
!1041 = !DILocalVariable(name: "last_unix_slash", scope: !1042, file: !2, line: 258, type: !122)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 257, column: 13)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 256, column: 15)
!1044 = !DILocalVariable(name: "st", scope: !1045, file: !2, line: 261, type: !1047)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 260, column: 17)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 259, column: 19)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1048, line: 44, size: 1024, elements: !1049)
!1048 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1049 = !{!1050, !1052, !1054, !1056, !1058, !1060, !1062, !1063, !1064, !1065, !1067, !1068, !1070, !1078, !1079, !1080}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1047, file: !1048, line: 46, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !208, line: 145, baseType: !121)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1047, file: !1048, line: 47, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !208, line: 148, baseType: !121)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1047, file: !1048, line: 48, baseType: !1055, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !208, line: 150, baseType: !72)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1047, file: !1048, line: 49, baseType: !1057, size: 32, offset: 160)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !208, line: 151, baseType: !72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1047, file: !1048, line: 50, baseType: !1059, size: 32, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !208, line: 146, baseType: !72)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1047, file: !1048, line: 51, baseType: !1061, size: 32, offset: 224)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !208, line: 147, baseType: !72)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1047, file: !1048, line: 52, baseType: !1051, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1047, file: !1048, line: 53, baseType: !1051, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1047, file: !1048, line: 54, baseType: !207, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1047, file: !1048, line: 55, baseType: !1066, size: 32, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !208, line: 175, baseType: !77)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1047, file: !1048, line: 56, baseType: !77, size: 32, offset: 480)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1047, file: !1048, line: 57, baseType: !1069, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !208, line: 180, baseType: !209)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1047, file: !1048, line: 65, baseType: !1071, size: 128, offset: 576)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1072, line: 11, size: 128, elements: !1073)
!1072 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1073 = !{!1074, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1071, file: !1072, line: 16, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !208, line: 160, baseType: !209)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1071, file: !1072, line: 21, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !208, line: 197, baseType: !209)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1047, file: !1048, line: 66, baseType: !1071, size: 128, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1047, file: !1048, line: 67, baseType: !1071, size: 128, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1047, file: !1048, line: 79, baseType: !1081, size: 64, offset: 960)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !253)
!1082 = !DILocalVariable(name: "ret", scope: !1045, file: !2, line: 262, type: !77)
!1083 = !DILocalVariable(name: "dir_arg", scope: !1084, file: !2, line: 268, type: !116)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 266, column: 21)
!1085 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 264, column: 23)
!1086 = distinct !DIAssignID()
!1087 = distinct !DIAssignID()
!1088 = !DILocation(line: 0, scope: !1045)
!1089 = !DILocation(line: 0, scope: !1024)
!1090 = !DILocation(line: 201, column: 21, scope: !1024)
!1091 = !DILocation(line: 201, column: 3, scope: !1024)
!1092 = !DILocation(line: 202, column: 3, scope: !1024)
!1093 = !DILocation(line: 203, column: 3, scope: !1024)
!1094 = !DILocation(line: 204, column: 3, scope: !1024)
!1095 = !DILocation(line: 206, column: 3, scope: !1024)
!1096 = !DILocation(line: 209, column: 3, scope: !1024)
!1097 = !DILocation(line: 209, column: 18, scope: !1024)
!1098 = !DILocation(line: 218, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 212, column: 9)
!1100 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 210, column: 5)
!1101 = !DILocation(line: 221, column: 11, scope: !1099)
!1102 = !DILocation(line: 222, column: 9, scope: !1099)
!1103 = !DILocation(line: 223, column: 9, scope: !1099)
!1104 = !DILocation(line: 225, column: 11, scope: !1099)
!1105 = !DILocation(line: 0, scope: !1099)
!1106 = distinct !{!1106, !1096, !1107, !924}
!1107 = !DILocation(line: 227, column: 5, scope: !1024)
!1108 = !DILocation(line: 229, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 229, column: 7)
!1110 = !DILocation(line: 229, column: 14, scope: !1109)
!1111 = !DILocation(line: 229, column: 7, scope: !1024)
!1112 = !DILocation(line: 236, column: 17, scope: !1035)
!1113 = !DILocation(line: 236, column: 3, scope: !1036)
!1114 = !DILocation(line: 231, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 230, column: 5)
!1116 = !DILocation(line: 232, column: 7, scope: !1115)
!1117 = !DILocation(line: 238, column: 19, scope: !1034)
!1118 = !DILocation(line: 0, scope: !1034)
!1119 = !DILocation(line: 241, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 241, column: 11)
!1121 = !DILocation(line: 241, column: 11, scope: !1034)
!1122 = !DILocation(line: 242, column: 23, scope: !1120)
!1123 = !DILocation(line: 242, column: 31, scope: !1120)
!1124 = !DILocation(line: 242, column: 60, scope: !1120)
!1125 = !DILocation(line: 242, column: 9, scope: !1120)
!1126 = !DILocation(line: 244, column: 11, scope: !1039)
!1127 = !DILocation(line: 244, column: 23, scope: !1039)
!1128 = !DILocation(line: 244, column: 11, scope: !1034)
!1129 = !DILocation(line: 246, column: 29, scope: !1038)
!1130 = !DILocation(line: 0, scope: !1038)
!1131 = !DILocation(line: 247, column: 15, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 247, column: 15)
!1133 = !DILocation(line: 247, column: 15, scope: !1038)
!1134 = !DILocation(line: 256, column: 27, scope: !1043)
!1135 = !DILocation(line: 256, column: 15, scope: !1038)
!1136 = !DILocation(line: 258, column: 45, scope: !1042)
!1137 = !DILocation(line: 0, scope: !1042)
!1138 = !DILocation(line: 259, column: 19, scope: !1046)
!1139 = !DILocation(line: 259, column: 35, scope: !1046)
!1140 = !DILocation(line: 259, column: 57, scope: !1046)
!1141 = !DILocation(line: 259, column: 39, scope: !1046)
!1142 = !DILocation(line: 259, column: 62, scope: !1046)
!1143 = !DILocation(line: 259, column: 19, scope: !1042)
!1144 = !DILocation(line: 261, column: 19, scope: !1045)
!1145 = !DILocation(line: 262, column: 29, scope: !1045)
!1146 = !DILocation(line: 264, column: 33, scope: !1085)
!1147 = !DILocation(line: 264, column: 36, scope: !1085)
!1148 = !DILocation(line: 264, column: 42, scope: !1085)
!1149 = !DILocation(line: 265, column: 23, scope: !1085)
!1150 = !DILocation(line: 265, column: 39, scope: !1085)
!1151 = !{!1152, !878, i64 16}
!1152 = !{!"stat", !1153, i64 0, !1153, i64 8, !878, i64 16, !878, i64 20, !878, i64 24, !878, i64 28, !1153, i64 32, !1153, i64 40, !1153, i64 48, !878, i64 56, !878, i64 60, !1153, i64 64, !1154, i64 72, !1154, i64 88, !1154, i64 104, !816, i64 120}
!1153 = !{!"long", !816, i64 0}
!1154 = !{!"timespec", !1153, i64 0, !1153, i64 8}
!1155 = !DILocation(line: 264, column: 23, scope: !1045)
!1156 = !DILocation(line: 268, column: 39, scope: !1084)
!1157 = !DILocation(line: 0, scope: !1084)
!1158 = !DILocation(line: 269, column: 23, scope: !1084)
!1159 = !DILocalVariable(name: "linkbuf", scope: !1160, file: !1161, line: 51, type: !49)
!1160 = distinct !DISubprogram(name: "issymlink", scope: !1161, file: !1161, line: 49, type: !1162, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1164)
!1161 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!77, !122}
!1164 = !{!1165, !1159}
!1165 = !DILocalVariable(name: "filename", arg: 1, scope: !1160, file: !1161, line: 49, type: !122)
!1166 = !DILocation(line: 0, scope: !1160, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 270, column: 27, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 270, column: 27)
!1169 = !DILocation(line: 51, column: 3, scope: !1160, inlinedAt: !1167)
!1170 = !DILocation(line: 52, column: 7, scope: !1171, inlinedAt: !1167)
!1171 = distinct !DILexicalBlock(scope: !1160, file: !1161, line: 52, column: 7)
!1172 = !DILocation(line: 52, column: 54, scope: !1171, inlinedAt: !1167)
!1173 = !DILocation(line: 58, column: 1, scope: !1160, inlinedAt: !1167)
!1174 = !DILocation(line: 52, column: 7, scope: !1160, inlinedAt: !1167)
!1175 = !DILocation(line: 272, column: 27, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 271, column: 25)
!1177 = !DILocation(line: 278, column: 23, scope: !1084)
!1178 = !DILocation(line: 280, column: 17, scope: !1046)
!1179 = !DILocation(line: 283, column: 15, scope: !1038)
!1180 = !DILocation(line: 284, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 283, column: 15)
!1182 = !DILocation(line: 288, column: 16, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 288, column: 16)
!1184 = !DILocation(line: 288, column: 16, scope: !1039)
!1185 = !DILocalVariable(name: "dir", arg: 1, scope: !1186, file: !2, line: 113, type: !116)
!1186 = distinct !DISubprogram(name: "remove_parents", scope: !2, file: !2, line: 113, type: !1187, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!152, !116}
!1189 = !{!1185, !1190, !1191, !1193, !1194}
!1190 = !DILocalVariable(name: "ok", scope: !1186, file: !2, line: 115, type: !152)
!1191 = !DILocalVariable(name: "slash", scope: !1192, file: !2, line: 120, type: !116)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 119, column: 5)
!1193 = !DILocalVariable(name: "rmdir_errno", scope: !1192, file: !2, line: 134, type: !77)
!1194 = !DILocalVariable(name: "error_msg", scope: !1195, file: !2, line: 145, type: !122)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 144, column: 13)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 139, column: 15)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 137, column: 9)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 136, column: 11)
!1199 = !DILocation(line: 0, scope: !1186, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 290, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 289, column: 9)
!1202 = !DILocation(line: 117, column: 3, scope: !1186, inlinedAt: !1200)
!1203 = !DILocation(line: 118, column: 3, scope: !1186, inlinedAt: !1200)
!1204 = !DILocation(line: 120, column: 21, scope: !1192, inlinedAt: !1200)
!1205 = !DILocation(line: 121, column: 17, scope: !1206, inlinedAt: !1200)
!1206 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 121, column: 11)
!1207 = !DILocation(line: 0, scope: !1192, inlinedAt: !1200)
!1208 = !DILocation(line: 121, column: 11, scope: !1192, inlinedAt: !1200)
!1209 = !DILocation(line: 125, column: 20, scope: !1192, inlinedAt: !1200)
!1210 = !DILocation(line: 125, column: 26, scope: !1192, inlinedAt: !1200)
!1211 = !DILocation(line: 125, column: 7, scope: !1192, inlinedAt: !1200)
!1212 = !DILocation(line: 125, column: 29, scope: !1192, inlinedAt: !1200)
!1213 = !DILocation(line: 125, column: 36, scope: !1192, inlinedAt: !1200)
!1214 = !DILocation(line: 126, column: 9, scope: !1192, inlinedAt: !1200)
!1215 = distinct !{!1215, !1211, !1216, !924}
!1216 = !DILocation(line: 126, column: 11, scope: !1192, inlinedAt: !1200)
!1217 = !DILocation(line: 127, column: 7, scope: !1192, inlinedAt: !1200)
!1218 = !DILocation(line: 127, column: 16, scope: !1192, inlinedAt: !1200)
!1219 = !DILocation(line: 130, column: 11, scope: !1220, inlinedAt: !1200)
!1220 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 130, column: 11)
!1221 = !DILocation(line: 130, column: 11, scope: !1192, inlinedAt: !1200)
!1222 = !DILocation(line: 131, column: 23, scope: !1220, inlinedAt: !1200)
!1223 = !DILocation(line: 131, column: 31, scope: !1220, inlinedAt: !1200)
!1224 = !DILocation(line: 131, column: 60, scope: !1220, inlinedAt: !1200)
!1225 = !DILocation(line: 131, column: 9, scope: !1220, inlinedAt: !1200)
!1226 = !DILocation(line: 133, column: 13, scope: !1192, inlinedAt: !1200)
!1227 = !DILocation(line: 133, column: 25, scope: !1192, inlinedAt: !1200)
!1228 = !DILocation(line: 134, column: 25, scope: !1192, inlinedAt: !1200)
!1229 = !DILocation(line: 136, column: 11, scope: !1192, inlinedAt: !1200)
!1230 = !DILocation(line: 139, column: 15, scope: !1196, inlinedAt: !1200)
!1231 = !DILocation(line: 139, column: 15, scope: !1197, inlinedAt: !1200)
!1232 = !DILocation(line: 146, column: 31, scope: !1233, inlinedAt: !1200)
!1233 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 146, column: 19)
!1234 = !DILocation(line: 0, scope: !1195, inlinedAt: !1200)
!1235 = !DILocation(line: 157, column: 15, scope: !1195, inlinedAt: !1200)
!1236 = !DILocation(line: 290, column: 14, scope: !1201)
!1237 = !DILocation(line: 291, column: 9, scope: !1201)
!1238 = !DILocation(line: 236, column: 25, scope: !1035)
!1239 = distinct !{!1239, !1113, !1240, !924}
!1240 = !DILocation(line: 292, column: 5, scope: !1036)
!1241 = !DILocation(line: 294, column: 10, scope: !1024)
!1242 = !DILocation(line: 295, column: 1, scope: !1024)
!1243 = !DISubprogram(name: "bindtextdomain", scope: !860, file: !860, line: 86, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!116, !122, !122}
!1246 = !DISubprogram(name: "textdomain", scope: !860, file: !860, line: 82, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubprogram(name: "atexit", scope: !998, file: !998, line: 602, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!77, !459}
!1250 = !DISubprogram(name: "getopt_long", scope: !371, file: !371, line: 66, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!77, !77, !1253, !122, !1255, !376}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1256 = !DISubprogram(name: "rmdir", scope: !1257, file: !1257, line: 867, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1258 = !DISubprogram(name: "__errno_location", scope: !1259, file: !1259, line: 37, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!376}
!1262 = distinct !DISubprogram(name: "ignorable_failure", scope: !2, file: !2, line: 99, type: !1263, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!152, !77, !122}
!1265 = !{!1266, !1267}
!1266 = !DILocalVariable(name: "error_number", arg: 1, scope: !1262, file: !2, line: 99, type: !77)
!1267 = !DILocalVariable(name: "dir", arg: 2, scope: !1262, file: !2, line: 99, type: !122)
!1268 = !DILocation(line: 0, scope: !1262)
!1269 = !DILocation(line: 101, column: 11, scope: !1262)
!1270 = !DILocation(line: 102, column: 11, scope: !1262)
!1271 = !DILocation(line: 103, column: 15, scope: !1262)
!1272 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !1273, file: !76, line: 305, type: !77)
!1273 = distinct !DISubprogram(name: "directory_status", scope: !76, file: !76, line: 305, type: !1274, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!77, !77, !122}
!1276 = !{!1272, !1277, !1278, !1283, !1284, !1285}
!1277 = !DILocalVariable(name: "dir", arg: 2, scope: !1273, file: !76, line: 305, type: !122)
!1278 = !DILocalVariable(name: "dirp", scope: !1273, file: !76, line: 307, type: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1281, line: 127, baseType: !1282)
!1281 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1281, line: 127, flags: DIFlagFwdDecl)
!1283 = !DILocalVariable(name: "no_direntries", scope: !1273, file: !76, line: 308, type: !152)
!1284 = !DILocalVariable(name: "saved_errno", scope: !1273, file: !76, line: 309, type: !77)
!1285 = !DILocalVariable(name: "fd", scope: !1273, file: !76, line: 310, type: !77)
!1286 = !DILocation(line: 0, scope: !1273, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 104, column: 22, scope: !1262)
!1288 = !DILocation(line: 310, column: 12, scope: !1273, inlinedAt: !1287)
!1289 = !DILocation(line: 314, column: 10, scope: !1290, inlinedAt: !1287)
!1290 = distinct !DILexicalBlock(scope: !1273, file: !76, line: 314, column: 7)
!1291 = !DILocation(line: 314, column: 7, scope: !1273, inlinedAt: !1287)
!1292 = !DILocation(line: 315, column: 12, scope: !1290, inlinedAt: !1287)
!1293 = !DILocation(line: 315, column: 5, scope: !1290, inlinedAt: !1287)
!1294 = !DILocation(line: 317, column: 10, scope: !1273, inlinedAt: !1287)
!1295 = !DILocation(line: 318, column: 12, scope: !1296, inlinedAt: !1287)
!1296 = distinct !DILexicalBlock(scope: !1273, file: !76, line: 318, column: 7)
!1297 = !DILocation(line: 318, column: 7, scope: !1273, inlinedAt: !1287)
!1298 = !DILocation(line: 320, column: 21, scope: !1299, inlinedAt: !1287)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !76, line: 319, column: 5)
!1300 = !DILocation(line: 321, column: 7, scope: !1299, inlinedAt: !1287)
!1301 = !DILocation(line: 322, column: 7, scope: !1299, inlinedAt: !1287)
!1302 = !DILocation(line: 325, column: 9, scope: !1273, inlinedAt: !1287)
!1303 = !DILocalVariable(name: "dirp", arg: 1, scope: !1304, file: !76, line: 285, type: !1279)
!1304 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !76, file: !76, line: 285, type: !1305, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1317)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307, !1279}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1310, line: 22, size: 2240, elements: !1311)
!1310 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1309, file: !1310, line: 25, baseType: !1053, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1309, file: !1310, line: 26, baseType: !207, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1309, file: !1310, line: 31, baseType: !118, size: 16, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1309, file: !1310, line: 32, baseType: !124, size: 8, offset: 144)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1309, file: !1310, line: 33, baseType: !558, size: 2048, offset: 152)
!1317 = !{!1303, !1318}
!1318 = !DILocalVariable(name: "dp", scope: !1319, file: !76, line: 289, type: !1307)
!1319 = distinct !DILexicalBlock(scope: !1304, file: !76, line: 288, column: 5)
!1320 = !DILocation(line: 0, scope: !1304, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 326, column: 20, scope: !1273, inlinedAt: !1287)
!1322 = !DILocation(line: 287, column: 3, scope: !1304, inlinedAt: !1321)
!1323 = !DILocation(line: 289, column: 33, scope: !1319, inlinedAt: !1321)
!1324 = !DILocation(line: 0, scope: !1319, inlinedAt: !1321)
!1325 = !DILocation(line: 290, column: 14, scope: !1326, inlinedAt: !1321)
!1326 = distinct !DILexicalBlock(scope: !1319, file: !76, line: 290, column: 11)
!1327 = !DILocation(line: 290, column: 22, scope: !1326, inlinedAt: !1321)
!1328 = !DILocation(line: 290, column: 46, scope: !1326, inlinedAt: !1321)
!1329 = !DILocalVariable(name: "file_name", arg: 1, scope: !1330, file: !76, line: 272, type: !122)
!1330 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !76, file: !76, line: 272, type: !1331, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!152, !122}
!1333 = !{!1329, !1334}
!1334 = !DILocalVariable(name: "sep", scope: !1335, file: !76, line: 276, type: !4)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !76, line: 275, column: 5)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !76, line: 274, column: 7)
!1337 = !DILocation(line: 0, scope: !1330, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 290, column: 27, scope: !1326, inlinedAt: !1321)
!1339 = !DILocation(line: 274, column: 7, scope: !1336, inlinedAt: !1338)
!1340 = !DILocation(line: 274, column: 20, scope: !1336, inlinedAt: !1338)
!1341 = !DILocation(line: 274, column: 7, scope: !1330, inlinedAt: !1338)
!1342 = !DILocation(line: 276, column: 29, scope: !1335, inlinedAt: !1338)
!1343 = !DILocation(line: 276, column: 42, scope: !1335, inlinedAt: !1338)
!1344 = !DILocation(line: 276, column: 50, scope: !1335, inlinedAt: !1338)
!1345 = !DILocation(line: 276, column: 18, scope: !1335, inlinedAt: !1338)
!1346 = !DILocation(line: 0, scope: !1335, inlinedAt: !1338)
!1347 = !DILocation(line: 277, column: 17, scope: !1335, inlinedAt: !1338)
!1348 = !DILocation(line: 277, column: 21, scope: !1335, inlinedAt: !1338)
!1349 = !DILocation(line: 290, column: 11, scope: !1319, inlinedAt: !1321)
!1350 = !DILocation(line: 327, column: 17, scope: !1273, inlinedAt: !1287)
!1351 = !DILocation(line: 328, column: 3, scope: !1273, inlinedAt: !1287)
!1352 = !DILocation(line: 329, column: 24, scope: !1273, inlinedAt: !1287)
!1353 = !DILocation(line: 329, column: 3, scope: !1273, inlinedAt: !1287)
!1354 = !DILocation(line: 104, column: 55, scope: !1262)
!1355 = !DILocation(line: 101, column: 3, scope: !1262)
!1356 = !DISubprogram(name: "strrchr", scope: !994, file: !994, line: 273, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubprogram(name: "stat", scope: !1358, file: !1358, line: 205, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!77, !868, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1363 = !DISubprogram(name: "free", scope: !998, file: !998, line: 555, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !117}
!1366 = !DISubprogram(name: "openat", scope: !1367, file: !1367, line: 205, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!77, !77, !122, !77, null}
!1370 = !DISubprogram(name: "fdopendir", scope: !1281, file: !1281, line: 141, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1279, !77}
!1373 = !DISubprogram(name: "close", scope: !1257, file: !1257, line: 358, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!77, !77}
!1376 = !DISubprogram(name: "readdir", scope: !1281, file: !1281, line: 162, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1379, !1279}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1380 = !DISubprogram(name: "closedir", scope: !1281, file: !1281, line: 149, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!77, !1279}
!1383 = distinct !DISubprogram(name: "prog_fprintf", scope: !383, file: !383, line: 28, type: !1384, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !1420)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1386, !122, null}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1388, file: !185, line: 51, baseType: !77, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1388, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1388, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1388, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1388, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1388, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1388, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1388, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1388, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1388, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1388, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1388, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1388, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1388, file: !185, line: 70, baseType: !1404, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1388, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1388, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1388, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1388, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1388, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1388, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1388, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1388, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1388, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1388, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1388, file: !185, line: 93, baseType: !1404, size: 64, offset: 1344)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1388, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1388, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1388, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1388, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "fp", arg: 1, scope: !1383, file: !383, line: 28, type: !1386)
!1422 = !DILocalVariable(name: "fmt", arg: 2, scope: !1383, file: !383, line: 28, type: !122)
!1423 = !DILocalVariable(name: "ap", scope: !1383, file: !383, line: 30, type: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 12, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !383, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1427, file: !383, line: 30, baseType: !117, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1427, file: !383, line: 30, baseType: !117, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1427, file: !383, line: 30, baseType: !117, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1427, file: !383, line: 30, baseType: !77, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1427, file: !383, line: 30, baseType: !77, size: 32, offset: 224)
!1434 = distinct !DIAssignID()
!1435 = !DILocation(line: 0, scope: !1383)
!1436 = !DILocation(line: 30, column: 3, scope: !1383)
!1437 = !DILocation(line: 31, column: 3, scope: !1383)
!1438 = !DILocation(line: 32, column: 3, scope: !1383)
!1439 = !DILocation(line: 33, column: 3, scope: !1383)
!1440 = !DILocation(line: 135, column: 10, scope: !1441, inlinedAt: !1449)
!1441 = distinct !DISubprogram(name: "vfprintf", scope: !864, file: !864, line: 132, type: !1442, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !1445)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!77, !1444, !868, !1425}
!1444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1386)
!1445 = !{!1446, !1447, !1448}
!1446 = !DILocalVariable(name: "__stream", arg: 1, scope: !1441, file: !864, line: 132, type: !1444)
!1447 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1441, file: !864, line: 133, type: !868)
!1448 = !DILocalVariable(name: "__ap", arg: 3, scope: !1441, file: !864, line: 133, type: !1425)
!1449 = distinct !DILocation(line: 34, column: 3, scope: !1383)
!1450 = !{!1451, !1453}
!1451 = distinct !{!1451, !1452, !"vfprintf.inline: argument 0"}
!1452 = distinct !{!1452, !"vfprintf.inline"}
!1453 = distinct !{!1453, !1452, !"vfprintf.inline: argument 1"}
!1454 = !DILocation(line: 34, column: 3, scope: !1383)
!1455 = !DILocation(line: 0, scope: !1441, inlinedAt: !1449)
!1456 = !DILocation(line: 35, column: 3, scope: !1383)
!1457 = !DILocalVariable(name: "__c", arg: 1, scope: !1458, file: !1459, line: 91, type: !77)
!1458 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1459, file: !1459, line: 91, type: !1460, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !1462)
!1459 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!77, !77, !1386}
!1462 = !{!1457, !1463}
!1463 = !DILocalVariable(name: "__stream", arg: 2, scope: !1458, file: !1459, line: 91, type: !1386)
!1464 = !DILocation(line: 0, scope: !1458, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 36, column: 3, scope: !1383)
!1466 = !DILocation(line: 93, column: 10, scope: !1458, inlinedAt: !1465)
!1467 = !{!1468, !815, i64 40}
!1468 = !{!"_IO_FILE", !878, i64 0, !815, i64 8, !815, i64 16, !815, i64 24, !815, i64 32, !815, i64 40, !815, i64 48, !815, i64 56, !815, i64 64, !815, i64 72, !815, i64 80, !815, i64 88, !815, i64 96, !815, i64 104, !878, i64 112, !878, i64 116, !1153, i64 120, !919, i64 128, !816, i64 130, !816, i64 131, !815, i64 136, !1153, i64 144, !815, i64 152, !815, i64 160, !815, i64 168, !815, i64 176, !1153, i64 184, !878, i64 192, !816, i64 196}
!1469 = !{!1468, !815, i64 48}
!1470 = !{!"branch_weights", i32 2000, i32 1}
!1471 = !DILocation(line: 37, column: 1, scope: !1383)
!1472 = !DISubprogram(name: "__vfprintf_chk", scope: !864, file: !864, line: 96, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!77, !1444, !77, !868, !1425}
!1475 = !DISubprogram(name: "__overflow", scope: !420, file: !420, line: 886, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!77, !1386, !77}
!1478 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !394, file: !394, line: 50, type: !828, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1479)
!1479 = !{!1480}
!1480 = !DILocalVariable(name: "file", arg: 1, scope: !1478, file: !394, line: 50, type: !122)
!1481 = !DILocation(line: 0, scope: !1478)
!1482 = !DILocation(line: 52, column: 13, scope: !1478)
!1483 = !DILocation(line: 53, column: 1, scope: !1478)
!1484 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !394, file: !394, line: 87, type: !1485, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !152}
!1487 = !{!1488}
!1488 = !DILocalVariable(name: "ignore", arg: 1, scope: !1484, file: !394, line: 87, type: !152)
!1489 = !DILocation(line: 0, scope: !1484)
!1490 = !DILocation(line: 89, column: 16, scope: !1484)
!1491 = !{!1492, !1492, i64 0}
!1492 = !{!"_Bool", !816, i64 0}
!1493 = !DILocation(line: 90, column: 1, scope: !1484)
!1494 = distinct !DISubprogram(name: "close_stdout", scope: !394, file: !394, line: 116, type: !460, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1495)
!1495 = !{!1496}
!1496 = !DILocalVariable(name: "write_error", scope: !1497, file: !394, line: 121, type: !122)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !394, line: 120, column: 5)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !394, line: 118, column: 7)
!1499 = !DILocation(line: 118, column: 21, scope: !1498)
!1500 = !DILocation(line: 118, column: 7, scope: !1498)
!1501 = !DILocation(line: 118, column: 29, scope: !1498)
!1502 = !DILocation(line: 119, column: 7, scope: !1498)
!1503 = !DILocation(line: 119, column: 12, scope: !1498)
!1504 = !{i8 0, i8 2}
!1505 = !DILocation(line: 119, column: 25, scope: !1498)
!1506 = !DILocation(line: 119, column: 28, scope: !1498)
!1507 = !DILocation(line: 119, column: 34, scope: !1498)
!1508 = !DILocation(line: 118, column: 7, scope: !1494)
!1509 = !DILocation(line: 121, column: 33, scope: !1497)
!1510 = !DILocation(line: 0, scope: !1497)
!1511 = !DILocation(line: 122, column: 11, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1497, file: !394, line: 122, column: 11)
!1513 = !DILocation(line: 0, scope: !1512)
!1514 = !DILocation(line: 122, column: 11, scope: !1497)
!1515 = !DILocation(line: 123, column: 9, scope: !1512)
!1516 = !DILocation(line: 126, column: 9, scope: !1512)
!1517 = !DILocation(line: 128, column: 14, scope: !1497)
!1518 = !DILocation(line: 128, column: 7, scope: !1497)
!1519 = !DILocation(line: 133, column: 42, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1494, file: !394, line: 133, column: 7)
!1521 = !DILocation(line: 133, column: 28, scope: !1520)
!1522 = !DILocation(line: 133, column: 50, scope: !1520)
!1523 = !DILocation(line: 133, column: 7, scope: !1494)
!1524 = !DILocation(line: 134, column: 12, scope: !1520)
!1525 = !DILocation(line: 134, column: 5, scope: !1520)
!1526 = !DILocation(line: 135, column: 1, scope: !1494)
!1527 = !DISubprogram(name: "_exit", scope: !1257, file: !1257, line: 624, type: !804, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1528 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !728, file: !728, line: 31, type: !1187, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DILocalVariable(name: "file", arg: 1, scope: !1528, file: !728, line: 31, type: !116)
!1531 = !DILocalVariable(name: "base", scope: !1528, file: !728, line: 33, type: !116)
!1532 = !DILocalVariable(name: "base_lim", scope: !1528, file: !728, line: 39, type: !116)
!1533 = !DILocalVariable(name: "had_slash", scope: !1528, file: !728, line: 40, type: !152)
!1534 = !DILocation(line: 0, scope: !1528)
!1535 = !DILocation(line: 33, column: 16, scope: !1528)
!1536 = !DILocation(line: 37, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1528, file: !728, line: 37, column: 7)
!1538 = !DILocation(line: 37, column: 7, scope: !1528)
!1539 = !DILocation(line: 39, column: 27, scope: !1528)
!1540 = !DILocation(line: 39, column: 25, scope: !1528)
!1541 = !DILocation(line: 40, column: 21, scope: !1528)
!1542 = !DILocation(line: 40, column: 31, scope: !1528)
!1543 = !DILocation(line: 41, column: 13, scope: !1528)
!1544 = !DILocation(line: 42, column: 3, scope: !1528)
!1545 = distinct !DISubprogram(name: "verror", scope: !409, file: !409, line: 251, type: !1546, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !77, !77, !122, !419}
!1548 = !{!1549, !1550, !1551, !1552}
!1549 = !DILocalVariable(name: "status", arg: 1, scope: !1545, file: !409, line: 251, type: !77)
!1550 = !DILocalVariable(name: "errnum", arg: 2, scope: !1545, file: !409, line: 251, type: !77)
!1551 = !DILocalVariable(name: "message", arg: 3, scope: !1545, file: !409, line: 251, type: !122)
!1552 = !DILocalVariable(name: "args", arg: 4, scope: !1545, file: !409, line: 251, type: !419)
!1553 = !DILocation(line: 0, scope: !1545)
!1554 = !DILocation(line: 261, column: 3, scope: !1545)
!1555 = !DILocation(line: 265, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1545, file: !409, line: 265, column: 7)
!1557 = !DILocation(line: 265, column: 7, scope: !1545)
!1558 = !DILocation(line: 266, column: 5, scope: !1556)
!1559 = !DILocation(line: 272, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !409, line: 268, column: 5)
!1561 = !DILocation(line: 276, column: 3, scope: !1545)
!1562 = !{i64 0, i64 8, !814, i64 8, i64 8, !814, i64 16, i64 8, !814, i64 24, i64 4, !877, i64 28, i64 4, !877}
!1563 = !DILocation(line: 282, column: 1, scope: !1545)
!1564 = distinct !DISubprogram(name: "flush_stdout", scope: !409, file: !409, line: 163, type: !460, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1565)
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "stdout_fd", scope: !1564, file: !409, line: 166, type: !77)
!1567 = !DILocation(line: 0, scope: !1564)
!1568 = !DILocalVariable(name: "fd", arg: 1, scope: !1569, file: !409, line: 145, type: !77)
!1569 = distinct !DISubprogram(name: "is_open", scope: !409, file: !409, line: 145, type: !1374, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1570)
!1570 = !{!1568}
!1571 = !DILocation(line: 0, scope: !1569, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 182, column: 25, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !409, line: 182, column: 7)
!1574 = !DILocation(line: 157, column: 15, scope: !1569, inlinedAt: !1572)
!1575 = !DILocation(line: 157, column: 12, scope: !1569, inlinedAt: !1572)
!1576 = !DILocation(line: 182, column: 7, scope: !1564)
!1577 = !DILocation(line: 184, column: 5, scope: !1573)
!1578 = !DILocation(line: 185, column: 1, scope: !1564)
!1579 = distinct !DISubprogram(name: "error_tail", scope: !409, file: !409, line: 219, type: !1546, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "status", arg: 1, scope: !1579, file: !409, line: 219, type: !77)
!1582 = !DILocalVariable(name: "errnum", arg: 2, scope: !1579, file: !409, line: 219, type: !77)
!1583 = !DILocalVariable(name: "message", arg: 3, scope: !1579, file: !409, line: 219, type: !122)
!1584 = !DILocalVariable(name: "args", arg: 4, scope: !1579, file: !409, line: 219, type: !419)
!1585 = distinct !DIAssignID()
!1586 = !DILocation(line: 0, scope: !1579)
!1587 = !DILocation(line: 229, column: 13, scope: !1579)
!1588 = !DILocation(line: 135, column: 10, scope: !1589, inlinedAt: !1631)
!1589 = distinct !DISubprogram(name: "vfprintf", scope: !864, file: !864, line: 132, type: !1590, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1627)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!77, !1592, !868, !421}
!1592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1595, file: !185, line: 51, baseType: !77, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1595, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1595, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1595, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1595, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1595, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1595, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1595, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1595, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1595, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1595, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1595, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1595, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1595, file: !185, line: 70, baseType: !1611, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1595, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1595, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1595, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1595, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1595, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1595, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1595, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1595, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1595, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1595, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1595, file: !185, line: 93, baseType: !1611, size: 64, offset: 1344)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1595, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1595, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1595, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1595, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1627 = !{!1628, !1629, !1630}
!1628 = !DILocalVariable(name: "__stream", arg: 1, scope: !1589, file: !864, line: 132, type: !1592)
!1629 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1589, file: !864, line: 133, type: !868)
!1630 = !DILocalVariable(name: "__ap", arg: 3, scope: !1589, file: !864, line: 133, type: !421)
!1631 = distinct !DILocation(line: 229, column: 3, scope: !1579)
!1632 = !{!1633, !1635}
!1633 = distinct !{!1633, !1634, !"vfprintf.inline: argument 0"}
!1634 = distinct !{!1634, !"vfprintf.inline"}
!1635 = distinct !{!1635, !1634, !"vfprintf.inline: argument 1"}
!1636 = !DILocation(line: 229, column: 3, scope: !1579)
!1637 = !DILocation(line: 0, scope: !1589, inlinedAt: !1631)
!1638 = !DILocation(line: 232, column: 3, scope: !1579)
!1639 = !DILocation(line: 233, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1579, file: !409, line: 233, column: 7)
!1641 = !DILocation(line: 233, column: 7, scope: !1579)
!1642 = !DILocalVariable(name: "errbuf", scope: !1643, file: !409, line: 193, type: !1647)
!1643 = distinct !DISubprogram(name: "print_errno_message", scope: !409, file: !409, line: 188, type: !804, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1644)
!1644 = !{!1645, !1646, !1642}
!1645 = !DILocalVariable(name: "errnum", arg: 1, scope: !1643, file: !409, line: 188, type: !77)
!1646 = !DILocalVariable(name: "s", scope: !1643, file: !409, line: 190, type: !122)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 1024)
!1650 = !DILocation(line: 0, scope: !1643, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 234, column: 5, scope: !1640)
!1652 = !DILocation(line: 193, column: 3, scope: !1643, inlinedAt: !1651)
!1653 = !DILocation(line: 195, column: 7, scope: !1643, inlinedAt: !1651)
!1654 = !DILocation(line: 207, column: 9, scope: !1655, inlinedAt: !1651)
!1655 = distinct !DILexicalBlock(scope: !1643, file: !409, line: 207, column: 7)
!1656 = !DILocation(line: 207, column: 7, scope: !1643, inlinedAt: !1651)
!1657 = !DILocation(line: 208, column: 9, scope: !1655, inlinedAt: !1651)
!1658 = !DILocation(line: 208, column: 5, scope: !1655, inlinedAt: !1651)
!1659 = !DILocation(line: 214, column: 3, scope: !1643, inlinedAt: !1651)
!1660 = !DILocation(line: 216, column: 1, scope: !1643, inlinedAt: !1651)
!1661 = !DILocation(line: 234, column: 5, scope: !1640)
!1662 = !DILocation(line: 238, column: 3, scope: !1579)
!1663 = !DILocalVariable(name: "__c", arg: 1, scope: !1664, file: !1459, line: 101, type: !77)
!1664 = distinct !DISubprogram(name: "putc_unlocked", scope: !1459, file: !1459, line: 101, type: !1665, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!77, !77, !1593}
!1667 = !{!1663, !1668}
!1668 = !DILocalVariable(name: "__stream", arg: 2, scope: !1664, file: !1459, line: 101, type: !1593)
!1669 = !DILocation(line: 0, scope: !1664, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 238, column: 3, scope: !1579)
!1671 = !DILocation(line: 103, column: 10, scope: !1664, inlinedAt: !1670)
!1672 = !DILocation(line: 240, column: 3, scope: !1579)
!1673 = !DILocation(line: 241, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1579, file: !409, line: 241, column: 7)
!1675 = !DILocation(line: 241, column: 7, scope: !1579)
!1676 = !DILocation(line: 242, column: 5, scope: !1674)
!1677 = !DILocation(line: 243, column: 1, scope: !1579)
!1678 = !DISubprogram(name: "strerror_r", scope: !994, file: !994, line: 444, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!116, !77, !116, !119}
!1681 = !DISubprogram(name: "fflush_unlocked", scope: !420, file: !420, line: 239, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!77, !1593}
!1684 = !DISubprogram(name: "fcntl", scope: !1367, file: !1367, line: 149, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!77, !77, !77, null}
!1687 = distinct !DISubprogram(name: "error", scope: !409, file: !409, line: 285, type: !1688, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !77, !77, !122, null}
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DILocalVariable(name: "status", arg: 1, scope: !1687, file: !409, line: 285, type: !77)
!1692 = !DILocalVariable(name: "errnum", arg: 2, scope: !1687, file: !409, line: 285, type: !77)
!1693 = !DILocalVariable(name: "message", arg: 3, scope: !1687, file: !409, line: 285, type: !122)
!1694 = !DILocalVariable(name: "ap", scope: !1687, file: !409, line: 287, type: !419)
!1695 = distinct !DIAssignID()
!1696 = !DILocation(line: 0, scope: !1687)
!1697 = !DILocation(line: 287, column: 3, scope: !1687)
!1698 = !DILocation(line: 288, column: 3, scope: !1687)
!1699 = !DILocation(line: 289, column: 3, scope: !1687)
!1700 = !DILocation(line: 290, column: 3, scope: !1687)
!1701 = !DILocation(line: 291, column: 1, scope: !1687)
!1702 = !DILocation(line: 0, scope: !416)
!1703 = !DILocation(line: 302, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !416, file: !409, line: 302, column: 7)
!1705 = !DILocation(line: 302, column: 7, scope: !416)
!1706 = !DILocation(line: 307, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !409, line: 307, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !409, line: 303, column: 5)
!1709 = !DILocation(line: 307, column: 27, scope: !1707)
!1710 = !DILocation(line: 308, column: 11, scope: !1707)
!1711 = !DILocation(line: 308, column: 28, scope: !1707)
!1712 = !DILocation(line: 308, column: 25, scope: !1707)
!1713 = !DILocation(line: 309, column: 15, scope: !1707)
!1714 = !DILocation(line: 309, column: 33, scope: !1707)
!1715 = !DILocation(line: 310, column: 19, scope: !1707)
!1716 = !DILocation(line: 311, column: 22, scope: !1707)
!1717 = !DILocation(line: 311, column: 56, scope: !1707)
!1718 = !DILocation(line: 307, column: 11, scope: !1708)
!1719 = !DILocation(line: 316, column: 21, scope: !1708)
!1720 = !DILocation(line: 317, column: 23, scope: !1708)
!1721 = !DILocation(line: 318, column: 5, scope: !1708)
!1722 = !DILocation(line: 327, column: 3, scope: !416)
!1723 = !DILocation(line: 331, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !416, file: !409, line: 331, column: 7)
!1725 = !DILocation(line: 331, column: 7, scope: !416)
!1726 = !DILocation(line: 332, column: 5, scope: !1724)
!1727 = !DILocation(line: 338, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !409, line: 334, column: 5)
!1729 = !DILocation(line: 346, column: 3, scope: !416)
!1730 = !DILocation(line: 350, column: 3, scope: !416)
!1731 = !DILocation(line: 356, column: 1, scope: !416)
!1732 = distinct !DISubprogram(name: "error_at_line", scope: !409, file: !409, line: 359, type: !1733, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !77, !77, !122, !72, !122, null}
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DILocalVariable(name: "status", arg: 1, scope: !1732, file: !409, line: 359, type: !77)
!1737 = !DILocalVariable(name: "errnum", arg: 2, scope: !1732, file: !409, line: 359, type: !77)
!1738 = !DILocalVariable(name: "file_name", arg: 3, scope: !1732, file: !409, line: 359, type: !122)
!1739 = !DILocalVariable(name: "line_number", arg: 4, scope: !1732, file: !409, line: 360, type: !72)
!1740 = !DILocalVariable(name: "message", arg: 5, scope: !1732, file: !409, line: 360, type: !122)
!1741 = !DILocalVariable(name: "ap", scope: !1732, file: !409, line: 362, type: !419)
!1742 = distinct !DIAssignID()
!1743 = !DILocation(line: 0, scope: !1732)
!1744 = !DILocation(line: 362, column: 3, scope: !1732)
!1745 = !DILocation(line: 363, column: 3, scope: !1732)
!1746 = !DILocation(line: 364, column: 3, scope: !1732)
!1747 = !DILocation(line: 366, column: 3, scope: !1732)
!1748 = !DILocation(line: 367, column: 1, scope: !1732)
!1749 = distinct !DISubprogram(name: "getprogname", scope: !730, file: !730, line: 54, type: !1750, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!122}
!1752 = !DILocation(line: 58, column: 10, scope: !1749)
!1753 = !DILocation(line: 58, column: 3, scope: !1749)
!1754 = distinct !DISubprogram(name: "set_program_name", scope: !465, file: !465, line: 37, type: !828, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DILocalVariable(name: "argv0", arg: 1, scope: !1754, file: !465, line: 37, type: !122)
!1757 = !DILocalVariable(name: "slash", scope: !1754, file: !465, line: 44, type: !122)
!1758 = !DILocalVariable(name: "base", scope: !1754, file: !465, line: 45, type: !122)
!1759 = !DILocation(line: 0, scope: !1754)
!1760 = !DILocation(line: 44, column: 23, scope: !1754)
!1761 = !DILocation(line: 45, column: 22, scope: !1754)
!1762 = !DILocation(line: 46, column: 17, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1754, file: !465, line: 46, column: 7)
!1764 = !DILocation(line: 46, column: 9, scope: !1763)
!1765 = !DILocation(line: 46, column: 25, scope: !1763)
!1766 = !DILocation(line: 46, column: 40, scope: !1763)
!1767 = !DILocalVariable(name: "__s1", arg: 1, scope: !1768, file: !890, line: 974, type: !1022)
!1768 = distinct !DISubprogram(name: "memeq", scope: !890, file: !890, line: 974, type: !1769, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!152, !1022, !1022, !119}
!1771 = !{!1767, !1772, !1773}
!1772 = !DILocalVariable(name: "__s2", arg: 2, scope: !1768, file: !890, line: 974, type: !1022)
!1773 = !DILocalVariable(name: "__n", arg: 3, scope: !1768, file: !890, line: 974, type: !119)
!1774 = !DILocation(line: 0, scope: !1768, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 46, column: 28, scope: !1763)
!1776 = !DILocation(line: 976, column: 11, scope: !1768, inlinedAt: !1775)
!1777 = !DILocation(line: 976, column: 10, scope: !1768, inlinedAt: !1775)
!1778 = !DILocation(line: 46, column: 7, scope: !1754)
!1779 = !DILocation(line: 49, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !465, line: 49, column: 11)
!1781 = distinct !DILexicalBlock(scope: !1763, file: !465, line: 47, column: 5)
!1782 = !DILocation(line: 49, column: 36, scope: !1780)
!1783 = !DILocation(line: 49, column: 11, scope: !1781)
!1784 = !DILocation(line: 65, column: 16, scope: !1754)
!1785 = !DILocation(line: 71, column: 27, scope: !1754)
!1786 = !DILocation(line: 74, column: 33, scope: !1754)
!1787 = !DILocation(line: 76, column: 1, scope: !1754)
!1788 = distinct !DIAssignID()
!1789 = !DILocation(line: 0, scope: !474)
!1790 = distinct !DIAssignID()
!1791 = !DILocation(line: 40, column: 29, scope: !474)
!1792 = !DILocation(line: 41, column: 19, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !474, file: !475, line: 41, column: 7)
!1794 = !DILocation(line: 41, column: 7, scope: !474)
!1795 = !DILocation(line: 47, column: 3, scope: !474)
!1796 = !DILocation(line: 48, column: 3, scope: !474)
!1797 = !DILocalVariable(name: "ps", arg: 1, scope: !1798, file: !1799, line: 1135, type: !1802)
!1798 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !1800, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1803)
!1799 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1803 = !{!1797}
!1804 = !DILocation(line: 0, scope: !1798, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 48, column: 18, scope: !474)
!1806 = !DILocalVariable(name: "__dest", arg: 1, scope: !1807, file: !1808, line: 57, type: !117)
!1807 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1811)
!1808 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!117, !117, !77, !119}
!1811 = !{!1806, !1812, !1813}
!1812 = !DILocalVariable(name: "__ch", arg: 2, scope: !1807, file: !1808, line: 57, type: !77)
!1813 = !DILocalVariable(name: "__len", arg: 3, scope: !1807, file: !1808, line: 57, type: !119)
!1814 = !DILocation(line: 0, scope: !1807, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 1137, column: 3, scope: !1798, inlinedAt: !1805)
!1816 = !DILocation(line: 59, column: 10, scope: !1807, inlinedAt: !1815)
!1817 = !DILocation(line: 49, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !474, file: !475, line: 49, column: 7)
!1819 = !DILocation(line: 49, column: 39, scope: !1818)
!1820 = !DILocation(line: 49, column: 44, scope: !1818)
!1821 = !DILocation(line: 54, column: 1, scope: !474)
!1822 = !DISubprogram(name: "mbrtoc32", scope: !486, file: !486, line: 57, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!119, !1825, !868, !119, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1802)
!1828 = distinct !DISubprogram(name: "clone_quoting_options", scope: !505, file: !505, line: 113, type: !1829, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1832)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1831, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "o", arg: 1, scope: !1828, file: !505, line: 113, type: !1831)
!1834 = !DILocalVariable(name: "saved_errno", scope: !1828, file: !505, line: 115, type: !77)
!1835 = !DILocalVariable(name: "p", scope: !1828, file: !505, line: 116, type: !1831)
!1836 = !DILocation(line: 0, scope: !1828)
!1837 = !DILocation(line: 115, column: 21, scope: !1828)
!1838 = !DILocation(line: 116, column: 40, scope: !1828)
!1839 = !DILocation(line: 116, column: 31, scope: !1828)
!1840 = !DILocation(line: 118, column: 9, scope: !1828)
!1841 = !DILocation(line: 119, column: 3, scope: !1828)
!1842 = distinct !DISubprogram(name: "get_quoting_style", scope: !505, file: !505, line: 124, type: !1843, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1847)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!531, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "o", arg: 1, scope: !1842, file: !505, line: 124, type: !1845)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 126, column: 11, scope: !1842)
!1851 = !DILocation(line: 126, column: 46, scope: !1842)
!1852 = !{!1853, !878, i64 0}
!1853 = !{!"quoting_options", !878, i64 0, !878, i64 4, !816, i64 8, !815, i64 40, !815, i64 48}
!1854 = !DILocation(line: 126, column: 3, scope: !1842)
!1855 = distinct !DISubprogram(name: "set_quoting_style", scope: !505, file: !505, line: 132, type: !1856, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1831, !531}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !505, line: 132, type: !1831)
!1860 = !DILocalVariable(name: "s", arg: 2, scope: !1855, file: !505, line: 132, type: !531)
!1861 = !DILocation(line: 0, scope: !1855)
!1862 = !DILocation(line: 134, column: 4, scope: !1855)
!1863 = !DILocation(line: 134, column: 45, scope: !1855)
!1864 = !DILocation(line: 135, column: 1, scope: !1855)
!1865 = distinct !DISubprogram(name: "set_char_quoting", scope: !505, file: !505, line: 143, type: !1866, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!77, !1831, !4, !77}
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1875, !1876}
!1869 = !DILocalVariable(name: "o", arg: 1, scope: !1865, file: !505, line: 143, type: !1831)
!1870 = !DILocalVariable(name: "c", arg: 2, scope: !1865, file: !505, line: 143, type: !4)
!1871 = !DILocalVariable(name: "i", arg: 3, scope: !1865, file: !505, line: 143, type: !77)
!1872 = !DILocalVariable(name: "uc", scope: !1865, file: !505, line: 145, type: !124)
!1873 = !DILocalVariable(name: "p", scope: !1865, file: !505, line: 146, type: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1875 = !DILocalVariable(name: "shift", scope: !1865, file: !505, line: 148, type: !77)
!1876 = !DILocalVariable(name: "r", scope: !1865, file: !505, line: 149, type: !72)
!1877 = !DILocation(line: 0, scope: !1865)
!1878 = !DILocation(line: 147, column: 6, scope: !1865)
!1879 = !DILocation(line: 147, column: 41, scope: !1865)
!1880 = !DILocation(line: 147, column: 62, scope: !1865)
!1881 = !DILocation(line: 147, column: 57, scope: !1865)
!1882 = !DILocation(line: 148, column: 15, scope: !1865)
!1883 = !DILocation(line: 149, column: 21, scope: !1865)
!1884 = !DILocation(line: 149, column: 24, scope: !1865)
!1885 = !DILocation(line: 149, column: 34, scope: !1865)
!1886 = !DILocation(line: 150, column: 19, scope: !1865)
!1887 = !DILocation(line: 150, column: 24, scope: !1865)
!1888 = !DILocation(line: 150, column: 6, scope: !1865)
!1889 = !DILocation(line: 151, column: 3, scope: !1865)
!1890 = distinct !DISubprogram(name: "set_quoting_flags", scope: !505, file: !505, line: 159, type: !1891, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!77, !1831, !77}
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !505, line: 159, type: !1831)
!1895 = !DILocalVariable(name: "i", arg: 2, scope: !1890, file: !505, line: 159, type: !77)
!1896 = !DILocalVariable(name: "r", scope: !1890, file: !505, line: 163, type: !77)
!1897 = !DILocation(line: 0, scope: !1890)
!1898 = !DILocation(line: 161, column: 8, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1890, file: !505, line: 161, column: 7)
!1900 = !DILocation(line: 161, column: 7, scope: !1890)
!1901 = !DILocation(line: 163, column: 14, scope: !1890)
!1902 = !{!1853, !878, i64 4}
!1903 = !DILocation(line: 164, column: 12, scope: !1890)
!1904 = !DILocation(line: 165, column: 3, scope: !1890)
!1905 = distinct !DISubprogram(name: "set_custom_quoting", scope: !505, file: !505, line: 169, type: !1906, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1831, !122, !122}
!1908 = !{!1909, !1910, !1911}
!1909 = !DILocalVariable(name: "o", arg: 1, scope: !1905, file: !505, line: 169, type: !1831)
!1910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1905, file: !505, line: 170, type: !122)
!1911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1905, file: !505, line: 170, type: !122)
!1912 = !DILocation(line: 0, scope: !1905)
!1913 = !DILocation(line: 172, column: 8, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1905, file: !505, line: 172, column: 7)
!1915 = !DILocation(line: 172, column: 7, scope: !1905)
!1916 = !DILocation(line: 174, column: 12, scope: !1905)
!1917 = !DILocation(line: 175, column: 8, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1905, file: !505, line: 175, column: 7)
!1919 = !DILocation(line: 175, column: 19, scope: !1918)
!1920 = !DILocation(line: 176, column: 5, scope: !1918)
!1921 = !DILocation(line: 177, column: 6, scope: !1905)
!1922 = !DILocation(line: 177, column: 17, scope: !1905)
!1923 = !{!1853, !815, i64 40}
!1924 = !DILocation(line: 178, column: 6, scope: !1905)
!1925 = !DILocation(line: 178, column: 18, scope: !1905)
!1926 = !{!1853, !815, i64 48}
!1927 = !DILocation(line: 179, column: 1, scope: !1905)
!1928 = !DISubprogram(name: "abort", scope: !998, file: !998, line: 598, type: !460, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1929 = distinct !DISubprogram(name: "quotearg_buffer", scope: !505, file: !505, line: 774, type: !1930, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!119, !116, !119, !122, !119, !1845}
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1933 = !DILocalVariable(name: "buffer", arg: 1, scope: !1929, file: !505, line: 774, type: !116)
!1934 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1929, file: !505, line: 774, type: !119)
!1935 = !DILocalVariable(name: "arg", arg: 3, scope: !1929, file: !505, line: 775, type: !122)
!1936 = !DILocalVariable(name: "argsize", arg: 4, scope: !1929, file: !505, line: 775, type: !119)
!1937 = !DILocalVariable(name: "o", arg: 5, scope: !1929, file: !505, line: 776, type: !1845)
!1938 = !DILocalVariable(name: "p", scope: !1929, file: !505, line: 778, type: !1845)
!1939 = !DILocalVariable(name: "saved_errno", scope: !1929, file: !505, line: 779, type: !77)
!1940 = !DILocalVariable(name: "r", scope: !1929, file: !505, line: 780, type: !119)
!1941 = !DILocation(line: 0, scope: !1929)
!1942 = !DILocation(line: 778, column: 37, scope: !1929)
!1943 = !DILocation(line: 779, column: 21, scope: !1929)
!1944 = !DILocation(line: 781, column: 43, scope: !1929)
!1945 = !DILocation(line: 781, column: 53, scope: !1929)
!1946 = !DILocation(line: 781, column: 63, scope: !1929)
!1947 = !DILocation(line: 782, column: 43, scope: !1929)
!1948 = !DILocation(line: 782, column: 58, scope: !1929)
!1949 = !DILocation(line: 780, column: 14, scope: !1929)
!1950 = !DILocation(line: 783, column: 9, scope: !1929)
!1951 = !DILocation(line: 784, column: 3, scope: !1929)
!1952 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !505, file: !505, line: 251, type: !1953, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1957)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!119, !116, !119, !122, !119, !531, !77, !1955, !122, !122}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1983, !1985, !1988, !1989, !1990, !1991, !1994, !1995, !1997, !1998, !2001, !2005, !2006, !2014, !2017, !2018, !2019}
!1958 = !DILocalVariable(name: "buffer", arg: 1, scope: !1952, file: !505, line: 251, type: !116)
!1959 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1952, file: !505, line: 251, type: !119)
!1960 = !DILocalVariable(name: "arg", arg: 3, scope: !1952, file: !505, line: 252, type: !122)
!1961 = !DILocalVariable(name: "argsize", arg: 4, scope: !1952, file: !505, line: 252, type: !119)
!1962 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1952, file: !505, line: 253, type: !531)
!1963 = !DILocalVariable(name: "flags", arg: 6, scope: !1952, file: !505, line: 253, type: !77)
!1964 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1952, file: !505, line: 254, type: !1955)
!1965 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1952, file: !505, line: 255, type: !122)
!1966 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1952, file: !505, line: 256, type: !122)
!1967 = !DILocalVariable(name: "unibyte_locale", scope: !1952, file: !505, line: 258, type: !152)
!1968 = !DILocalVariable(name: "len", scope: !1952, file: !505, line: 260, type: !119)
!1969 = !DILocalVariable(name: "orig_buffersize", scope: !1952, file: !505, line: 261, type: !119)
!1970 = !DILocalVariable(name: "quote_string", scope: !1952, file: !505, line: 262, type: !122)
!1971 = !DILocalVariable(name: "quote_string_len", scope: !1952, file: !505, line: 263, type: !119)
!1972 = !DILocalVariable(name: "backslash_escapes", scope: !1952, file: !505, line: 264, type: !152)
!1973 = !DILocalVariable(name: "elide_outer_quotes", scope: !1952, file: !505, line: 265, type: !152)
!1974 = !DILocalVariable(name: "encountered_single_quote", scope: !1952, file: !505, line: 266, type: !152)
!1975 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1952, file: !505, line: 267, type: !152)
!1976 = !DILabel(scope: !1952, name: "process_input", file: !505, line: 308)
!1977 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1952, file: !505, line: 309, type: !152)
!1978 = !DILocalVariable(name: "lq", scope: !1979, file: !505, line: 361, type: !122)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !505, line: 361, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !505, line: 360, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !505, line: 333, column: 7)
!1982 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 312, column: 5)
!1983 = !DILocalVariable(name: "i", scope: !1984, file: !505, line: 395, type: !119)
!1984 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 395, column: 3)
!1985 = !DILocalVariable(name: "is_right_quote", scope: !1986, file: !505, line: 397, type: !152)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !505, line: 396, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !505, line: 395, column: 3)
!1988 = !DILocalVariable(name: "escaping", scope: !1986, file: !505, line: 398, type: !152)
!1989 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1986, file: !505, line: 399, type: !152)
!1990 = !DILocalVariable(name: "c", scope: !1986, file: !505, line: 417, type: !124)
!1991 = !DILabel(scope: !1992, name: "c_and_shell_escape", file: !505, line: 502)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 478, column: 9)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 419, column: 9)
!1994 = !DILabel(scope: !1992, name: "c_escape", file: !505, line: 507)
!1995 = !DILocalVariable(name: "m", scope: !1996, file: !505, line: 598, type: !119)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 596, column: 11)
!1997 = !DILocalVariable(name: "printable", scope: !1996, file: !505, line: 600, type: !152)
!1998 = !DILocalVariable(name: "mbs", scope: !1999, file: !505, line: 609, type: !580)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !505, line: 608, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !505, line: 602, column: 17)
!2001 = !DILocalVariable(name: "w", scope: !2002, file: !505, line: 618, type: !485)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !505, line: 617, column: 19)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !505, line: 616, column: 17)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !505, line: 616, column: 17)
!2005 = !DILocalVariable(name: "bytes", scope: !2002, file: !505, line: 619, type: !119)
!2006 = !DILocalVariable(name: "j", scope: !2007, file: !505, line: 648, type: !119)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !505, line: 648, column: 29)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !505, line: 647, column: 27)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !505, line: 645, column: 29)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 636, column: 23)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !505, line: 628, column: 30)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !505, line: 623, column: 30)
!2013 = distinct !DILexicalBlock(scope: !2002, file: !505, line: 621, column: 25)
!2014 = !DILocalVariable(name: "ilim", scope: !2015, file: !505, line: 674, type: !119)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !505, line: 671, column: 15)
!2016 = distinct !DILexicalBlock(scope: !1996, file: !505, line: 670, column: 17)
!2017 = !DILabel(scope: !1986, name: "store_escape", file: !505, line: 709)
!2018 = !DILabel(scope: !1986, name: "store_c", file: !505, line: 712)
!2019 = !DILabel(scope: !1952, name: "force_outer_quoting_style", file: !505, line: 753)
!2020 = distinct !DIAssignID()
!2021 = distinct !DIAssignID()
!2022 = distinct !DIAssignID()
!2023 = distinct !DIAssignID()
!2024 = distinct !DIAssignID()
!2025 = !DILocation(line: 0, scope: !1999)
!2026 = distinct !DIAssignID()
!2027 = !DILocation(line: 0, scope: !2002)
!2028 = !DILocation(line: 0, scope: !1952)
!2029 = !DILocation(line: 258, column: 25, scope: !1952)
!2030 = !DILocation(line: 258, column: 36, scope: !1952)
!2031 = !DILocation(line: 267, column: 3, scope: !1952)
!2032 = !DILocation(line: 261, column: 10, scope: !1952)
!2033 = !DILocation(line: 262, column: 15, scope: !1952)
!2034 = !DILocation(line: 263, column: 10, scope: !1952)
!2035 = !DILocation(line: 308, column: 2, scope: !1952)
!2036 = !DILocation(line: 311, column: 3, scope: !1952)
!2037 = !DILocation(line: 318, column: 11, scope: !1982)
!2038 = !DILocation(line: 319, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !505, line: 319, column: 9)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !505, line: 319, column: 9)
!2041 = distinct !DILexicalBlock(scope: !1982, file: !505, line: 318, column: 11)
!2042 = !DILocation(line: 319, column: 9, scope: !2040)
!2043 = !DILocation(line: 0, scope: !571, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 357, column: 26, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !505, line: 335, column: 11)
!2046 = distinct !DILexicalBlock(scope: !1981, file: !505, line: 334, column: 13)
!2047 = !DILocation(line: 199, column: 29, scope: !571, inlinedAt: !2044)
!2048 = !DILocation(line: 201, column: 19, scope: !2049, inlinedAt: !2044)
!2049 = distinct !DILexicalBlock(scope: !571, file: !505, line: 201, column: 7)
!2050 = !DILocation(line: 201, column: 7, scope: !571, inlinedAt: !2044)
!2051 = !DILocation(line: 229, column: 3, scope: !571, inlinedAt: !2044)
!2052 = !DILocation(line: 230, column: 3, scope: !571, inlinedAt: !2044)
!2053 = !DILocalVariable(name: "ps", arg: 1, scope: !2054, file: !1799, line: 1135, type: !2057)
!2054 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !2055, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2058)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2058 = !{!2053}
!2059 = !DILocation(line: 0, scope: !2054, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 230, column: 18, scope: !571, inlinedAt: !2044)
!2061 = !DILocalVariable(name: "__dest", arg: 1, scope: !2062, file: !1808, line: 57, type: !117)
!2062 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2063)
!2063 = !{!2061, !2064, !2065}
!2064 = !DILocalVariable(name: "__ch", arg: 2, scope: !2062, file: !1808, line: 57, type: !77)
!2065 = !DILocalVariable(name: "__len", arg: 3, scope: !2062, file: !1808, line: 57, type: !119)
!2066 = !DILocation(line: 0, scope: !2062, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 1137, column: 3, scope: !2054, inlinedAt: !2060)
!2068 = !DILocation(line: 59, column: 10, scope: !2062, inlinedAt: !2067)
!2069 = !DILocation(line: 231, column: 7, scope: !2070, inlinedAt: !2044)
!2070 = distinct !DILexicalBlock(scope: !571, file: !505, line: 231, column: 7)
!2071 = !DILocation(line: 231, column: 40, scope: !2070, inlinedAt: !2044)
!2072 = !DILocation(line: 231, column: 45, scope: !2070, inlinedAt: !2044)
!2073 = !DILocation(line: 235, column: 1, scope: !571, inlinedAt: !2044)
!2074 = !DILocation(line: 0, scope: !571, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 358, column: 27, scope: !2045)
!2076 = !DILocation(line: 199, column: 29, scope: !571, inlinedAt: !2075)
!2077 = !DILocation(line: 201, column: 19, scope: !2049, inlinedAt: !2075)
!2078 = !DILocation(line: 201, column: 7, scope: !571, inlinedAt: !2075)
!2079 = !DILocation(line: 229, column: 3, scope: !571, inlinedAt: !2075)
!2080 = !DILocation(line: 230, column: 3, scope: !571, inlinedAt: !2075)
!2081 = !DILocation(line: 0, scope: !2054, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 230, column: 18, scope: !571, inlinedAt: !2075)
!2083 = !DILocation(line: 0, scope: !2062, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 1137, column: 3, scope: !2054, inlinedAt: !2082)
!2085 = !DILocation(line: 59, column: 10, scope: !2062, inlinedAt: !2084)
!2086 = !DILocation(line: 231, column: 7, scope: !2070, inlinedAt: !2075)
!2087 = !DILocation(line: 231, column: 40, scope: !2070, inlinedAt: !2075)
!2088 = !DILocation(line: 231, column: 45, scope: !2070, inlinedAt: !2075)
!2089 = !DILocation(line: 235, column: 1, scope: !571, inlinedAt: !2075)
!2090 = !DILocation(line: 360, column: 13, scope: !1981)
!2091 = !DILocation(line: 0, scope: !1979)
!2092 = !DILocation(line: 361, column: 45, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1979, file: !505, line: 361, column: 11)
!2094 = !DILocation(line: 361, column: 11, scope: !1979)
!2095 = !DILocation(line: 362, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !505, line: 362, column: 13)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !505, line: 362, column: 13)
!2098 = !DILocation(line: 362, column: 13, scope: !2097)
!2099 = !DILocation(line: 361, column: 52, scope: !2093)
!2100 = distinct !{!2100, !2094, !2101, !924}
!2101 = !DILocation(line: 362, column: 13, scope: !1979)
!2102 = !DILocation(line: 365, column: 28, scope: !1981)
!2103 = !DILocation(line: 260, column: 10, scope: !1952)
!2104 = !DILocation(line: 367, column: 7, scope: !1982)
!2105 = !DILocation(line: 373, column: 7, scope: !1982)
!2106 = !DILocation(line: 381, column: 11, scope: !1982)
!2107 = !DILocation(line: 376, column: 11, scope: !1982)
!2108 = !DILocation(line: 382, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !505, line: 382, column: 9)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !505, line: 382, column: 9)
!2111 = distinct !DILexicalBlock(scope: !1982, file: !505, line: 381, column: 11)
!2112 = !DILocation(line: 382, column: 9, scope: !2110)
!2113 = !DILocation(line: 389, column: 7, scope: !1982)
!2114 = !DILocation(line: 392, column: 7, scope: !1982)
!2115 = !DILocation(line: 0, scope: !1984)
!2116 = !DILocation(line: 395, column: 8, scope: !1984)
!2117 = !DILocation(line: 395, scope: !1984)
!2118 = !DILocation(line: 395, column: 34, scope: !1987)
!2119 = !DILocation(line: 395, column: 26, scope: !1987)
!2120 = !DILocation(line: 395, column: 48, scope: !1987)
!2121 = !DILocation(line: 395, column: 55, scope: !1987)
!2122 = !DILocation(line: 395, column: 3, scope: !1984)
!2123 = !DILocation(line: 395, column: 67, scope: !1987)
!2124 = !DILocation(line: 0, scope: !1986)
!2125 = !DILocation(line: 402, column: 11, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 401, column: 11)
!2127 = !DILocation(line: 404, column: 17, scope: !2126)
!2128 = !DILocation(line: 405, column: 39, scope: !2126)
!2129 = !DILocation(line: 409, column: 32, scope: !2126)
!2130 = !DILocation(line: 405, column: 19, scope: !2126)
!2131 = !DILocation(line: 405, column: 15, scope: !2126)
!2132 = !DILocation(line: 410, column: 11, scope: !2126)
!2133 = !DILocation(line: 410, column: 25, scope: !2126)
!2134 = !DILocalVariable(name: "__s1", arg: 1, scope: !2135, file: !890, line: 974, type: !1022)
!2135 = distinct !DISubprogram(name: "memeq", scope: !890, file: !890, line: 974, type: !1769, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2136)
!2136 = !{!2134, !2137, !2138}
!2137 = !DILocalVariable(name: "__s2", arg: 2, scope: !2135, file: !890, line: 974, type: !1022)
!2138 = !DILocalVariable(name: "__n", arg: 3, scope: !2135, file: !890, line: 974, type: !119)
!2139 = !DILocation(line: 0, scope: !2135, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 410, column: 14, scope: !2126)
!2141 = !DILocation(line: 976, column: 11, scope: !2135, inlinedAt: !2140)
!2142 = !DILocation(line: 976, column: 10, scope: !2135, inlinedAt: !2140)
!2143 = !DILocation(line: 401, column: 11, scope: !1986)
!2144 = !DILocation(line: 417, column: 25, scope: !1986)
!2145 = !DILocation(line: 418, column: 7, scope: !1986)
!2146 = !DILocation(line: 421, column: 15, scope: !1993)
!2147 = !DILocation(line: 423, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !505, line: 423, column: 15)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !505, line: 422, column: 13)
!2150 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 421, column: 15)
!2151 = !DILocation(line: 423, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !505, line: 423, column: 15)
!2153 = !DILocation(line: 423, column: 15, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !505, line: 423, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 423, column: 15)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !505, line: 423, column: 15)
!2157 = !DILocation(line: 423, column: 15, scope: !2155)
!2158 = !DILocation(line: 423, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !505, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 423, column: 15)
!2161 = !DILocation(line: 423, column: 15, scope: !2160)
!2162 = !DILocation(line: 423, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !505, line: 423, column: 15)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 423, column: 15)
!2165 = !DILocation(line: 423, column: 15, scope: !2164)
!2166 = !DILocation(line: 423, column: 15, scope: !2156)
!2167 = !DILocation(line: 423, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !505, line: 423, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2148, file: !505, line: 423, column: 15)
!2170 = !DILocation(line: 423, column: 15, scope: !2169)
!2171 = !DILocation(line: 431, column: 19, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2149, file: !505, line: 430, column: 19)
!2173 = !DILocation(line: 431, column: 24, scope: !2172)
!2174 = !DILocation(line: 431, column: 28, scope: !2172)
!2175 = !DILocation(line: 431, column: 38, scope: !2172)
!2176 = !DILocation(line: 431, column: 48, scope: !2172)
!2177 = !DILocation(line: 431, column: 59, scope: !2172)
!2178 = !DILocation(line: 433, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !505, line: 433, column: 19)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !505, line: 433, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2172, file: !505, line: 432, column: 17)
!2182 = !DILocation(line: 433, column: 19, scope: !2180)
!2183 = !DILocation(line: 434, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !505, line: 434, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !505, line: 434, column: 19)
!2186 = !DILocation(line: 434, column: 19, scope: !2185)
!2187 = !DILocation(line: 435, column: 17, scope: !2181)
!2188 = !DILocation(line: 442, column: 20, scope: !2150)
!2189 = !DILocation(line: 447, column: 11, scope: !1993)
!2190 = !DILocation(line: 450, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 448, column: 13)
!2192 = !DILocation(line: 456, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2191, file: !505, line: 455, column: 19)
!2194 = !DILocation(line: 456, column: 24, scope: !2193)
!2195 = !DILocation(line: 456, column: 28, scope: !2193)
!2196 = !DILocation(line: 456, column: 38, scope: !2193)
!2197 = !DILocation(line: 456, column: 41, scope: !2193)
!2198 = !DILocation(line: 456, column: 52, scope: !2193)
!2199 = !DILocation(line: 455, column: 19, scope: !2191)
!2200 = !DILocation(line: 457, column: 25, scope: !2193)
!2201 = !DILocation(line: 457, column: 17, scope: !2193)
!2202 = !DILocation(line: 464, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2193, file: !505, line: 458, column: 19)
!2204 = !DILocation(line: 468, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !505, line: 468, column: 21)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !505, line: 468, column: 21)
!2207 = !DILocation(line: 468, column: 21, scope: !2206)
!2208 = !DILocation(line: 469, column: 21, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !505, line: 469, column: 21)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !505, line: 469, column: 21)
!2211 = !DILocation(line: 469, column: 21, scope: !2210)
!2212 = !DILocation(line: 470, column: 21, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !505, line: 470, column: 21)
!2214 = distinct !DILexicalBlock(scope: !2203, file: !505, line: 470, column: 21)
!2215 = !DILocation(line: 470, column: 21, scope: !2214)
!2216 = !DILocation(line: 471, column: 21, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !505, line: 471, column: 21)
!2218 = distinct !DILexicalBlock(scope: !2203, file: !505, line: 471, column: 21)
!2219 = !DILocation(line: 471, column: 21, scope: !2218)
!2220 = !DILocation(line: 472, column: 21, scope: !2203)
!2221 = !DILocation(line: 482, column: 33, scope: !1992)
!2222 = !DILocation(line: 483, column: 33, scope: !1992)
!2223 = !DILocation(line: 485, column: 33, scope: !1992)
!2224 = !DILocation(line: 486, column: 33, scope: !1992)
!2225 = !DILocation(line: 487, column: 33, scope: !1992)
!2226 = !DILocation(line: 490, column: 17, scope: !1992)
!2227 = !DILocation(line: 492, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !505, line: 491, column: 15)
!2229 = distinct !DILexicalBlock(scope: !1992, file: !505, line: 490, column: 17)
!2230 = !DILocation(line: 499, column: 35, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1992, file: !505, line: 499, column: 17)
!2232 = !DILocation(line: 0, scope: !1992)
!2233 = !DILocation(line: 502, column: 11, scope: !1992)
!2234 = !DILocation(line: 504, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1992, file: !505, line: 503, column: 17)
!2236 = !DILocation(line: 507, column: 11, scope: !1992)
!2237 = !DILocation(line: 508, column: 17, scope: !1992)
!2238 = !DILocation(line: 517, column: 15, scope: !1993)
!2239 = !DILocation(line: 517, column: 40, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 517, column: 15)
!2241 = !DILocation(line: 517, column: 47, scope: !2240)
!2242 = !DILocation(line: 517, column: 18, scope: !2240)
!2243 = !DILocation(line: 521, column: 17, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 521, column: 15)
!2245 = !DILocation(line: 521, column: 15, scope: !1993)
!2246 = !DILocation(line: 525, column: 11, scope: !1993)
!2247 = !DILocation(line: 537, column: 15, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 536, column: 15)
!2249 = !DILocation(line: 536, column: 15, scope: !1993)
!2250 = !DILocation(line: 544, column: 15, scope: !1993)
!2251 = !DILocation(line: 546, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !505, line: 545, column: 13)
!2253 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 544, column: 15)
!2254 = !DILocation(line: 549, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !505, line: 549, column: 19)
!2256 = !DILocation(line: 549, column: 30, scope: !2255)
!2257 = !DILocation(line: 558, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !505, line: 558, column: 15)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !505, line: 558, column: 15)
!2260 = !DILocation(line: 558, column: 15, scope: !2259)
!2261 = !DILocation(line: 559, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !505, line: 559, column: 15)
!2263 = distinct !DILexicalBlock(scope: !2252, file: !505, line: 559, column: 15)
!2264 = !DILocation(line: 559, column: 15, scope: !2263)
!2265 = !DILocation(line: 560, column: 15, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !505, line: 560, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2252, file: !505, line: 560, column: 15)
!2268 = !DILocation(line: 560, column: 15, scope: !2267)
!2269 = !DILocation(line: 562, column: 13, scope: !2252)
!2270 = !DILocation(line: 602, column: 17, scope: !1996)
!2271 = !DILocation(line: 0, scope: !1996)
!2272 = !DILocation(line: 605, column: 29, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2000, file: !505, line: 603, column: 15)
!2274 = !DILocation(line: 605, column: 41, scope: !2273)
!2275 = !DILocation(line: 606, column: 15, scope: !2273)
!2276 = !DILocation(line: 609, column: 17, scope: !1999)
!2277 = !DILocation(line: 0, scope: !2054, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 609, column: 32, scope: !1999)
!2279 = !DILocation(line: 0, scope: !2062, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1137, column: 3, scope: !2054, inlinedAt: !2278)
!2281 = !DILocation(line: 59, column: 10, scope: !2062, inlinedAt: !2280)
!2282 = !DILocation(line: 613, column: 29, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !1999, file: !505, line: 613, column: 21)
!2284 = !DILocation(line: 613, column: 21, scope: !1999)
!2285 = !DILocation(line: 614, column: 29, scope: !2283)
!2286 = !DILocation(line: 614, column: 19, scope: !2283)
!2287 = !DILocation(line: 618, column: 21, scope: !2002)
!2288 = !DILocation(line: 620, column: 54, scope: !2002)
!2289 = !DILocation(line: 619, column: 36, scope: !2002)
!2290 = !DILocation(line: 621, column: 25, scope: !2002)
!2291 = !DILocation(line: 631, column: 38, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 629, column: 23)
!2293 = !DILocation(line: 631, column: 48, scope: !2292)
!2294 = !DILocation(line: 631, column: 25, scope: !2292)
!2295 = !DILocation(line: 626, column: 25, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2012, file: !505, line: 624, column: 23)
!2297 = !DILocation(line: 631, column: 51, scope: !2292)
!2298 = !DILocation(line: 632, column: 28, scope: !2292)
!2299 = !DILocation(line: 631, column: 34, scope: !2292)
!2300 = distinct !{!2300, !2294, !2298, !924}
!2301 = !DILocation(line: 0, scope: !2007)
!2302 = !DILocation(line: 646, column: 29, scope: !2009)
!2303 = !DILocation(line: 648, column: 29, scope: !2007)
!2304 = !DILocation(line: 649, column: 39, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2007, file: !505, line: 648, column: 29)
!2306 = !DILocation(line: 649, column: 31, scope: !2305)
!2307 = !DILocation(line: 648, column: 60, scope: !2305)
!2308 = !DILocation(line: 648, column: 50, scope: !2305)
!2309 = distinct !{!2309, !2303, !2310, !924}
!2310 = !DILocation(line: 654, column: 33, scope: !2007)
!2311 = !DILocation(line: 657, column: 43, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2010, file: !505, line: 657, column: 29)
!2313 = !DILocalVariable(name: "wc", arg: 1, scope: !2314, file: !2315, line: 865, type: !2318)
!2314 = distinct !DISubprogram(name: "c32isprint", scope: !2315, file: !2315, line: 865, type: !2316, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2320)
!2315 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!77, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2319, line: 20, baseType: !72)
!2319 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2320 = !{!2313}
!2321 = !DILocation(line: 0, scope: !2314, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 657, column: 31, scope: !2312)
!2323 = !DILocation(line: 871, column: 10, scope: !2314, inlinedAt: !2322)
!2324 = !DILocation(line: 657, column: 31, scope: !2312)
!2325 = !DILocation(line: 664, column: 23, scope: !2002)
!2326 = !DILocation(line: 665, column: 19, scope: !2003)
!2327 = !DILocation(line: 666, column: 15, scope: !2000)
!2328 = !DILocation(line: 753, column: 2, scope: !1952)
!2329 = !DILocation(line: 756, column: 51, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 756, column: 7)
!2331 = !DILocation(line: 0, scope: !2000)
!2332 = !DILocation(line: 670, column: 19, scope: !2016)
!2333 = !DILocation(line: 670, column: 23, scope: !2016)
!2334 = !DILocation(line: 674, column: 33, scope: !2015)
!2335 = !DILocation(line: 0, scope: !2015)
!2336 = !DILocation(line: 676, column: 17, scope: !2015)
!2337 = !DILocation(line: 678, column: 43, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !505, line: 678, column: 25)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !505, line: 677, column: 19)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !505, line: 676, column: 17)
!2341 = distinct !DILexicalBlock(scope: !2015, file: !505, line: 676, column: 17)
!2342 = !DILocation(line: 680, column: 25, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !505, line: 680, column: 25)
!2344 = distinct !DILexicalBlock(scope: !2338, file: !505, line: 679, column: 23)
!2345 = !DILocation(line: 680, column: 25, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !505, line: 680, column: 25)
!2347 = !DILocation(line: 680, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !505, line: 680, column: 25)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !505, line: 680, column: 25)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !505, line: 680, column: 25)
!2351 = !DILocation(line: 680, column: 25, scope: !2349)
!2352 = !DILocation(line: 680, column: 25, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !505, line: 680, column: 25)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !505, line: 680, column: 25)
!2355 = !DILocation(line: 680, column: 25, scope: !2354)
!2356 = !DILocation(line: 680, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !505, line: 680, column: 25)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !505, line: 680, column: 25)
!2359 = !DILocation(line: 680, column: 25, scope: !2358)
!2360 = !DILocation(line: 680, column: 25, scope: !2350)
!2361 = !DILocation(line: 680, column: 25, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !505, line: 680, column: 25)
!2363 = distinct !DILexicalBlock(scope: !2343, file: !505, line: 680, column: 25)
!2364 = !DILocation(line: 680, column: 25, scope: !2363)
!2365 = !DILocation(line: 681, column: 25, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !505, line: 681, column: 25)
!2367 = distinct !DILexicalBlock(scope: !2344, file: !505, line: 681, column: 25)
!2368 = !DILocation(line: 681, column: 25, scope: !2367)
!2369 = !DILocation(line: 682, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !505, line: 682, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2344, file: !505, line: 682, column: 25)
!2372 = !DILocation(line: 682, column: 25, scope: !2371)
!2373 = !DILocation(line: 683, column: 38, scope: !2344)
!2374 = !DILocation(line: 683, column: 33, scope: !2344)
!2375 = !DILocation(line: 684, column: 23, scope: !2344)
!2376 = !DILocation(line: 685, column: 30, scope: !2338)
!2377 = !DILocation(line: 687, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !505, line: 687, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !505, line: 687, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !505, line: 686, column: 23)
!2381 = distinct !DILexicalBlock(scope: !2338, file: !505, line: 685, column: 30)
!2382 = !DILocation(line: 687, column: 25, scope: !2379)
!2383 = !DILocation(line: 689, column: 23, scope: !2380)
!2384 = !DILocation(line: 690, column: 35, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2339, file: !505, line: 690, column: 25)
!2386 = !DILocation(line: 690, column: 30, scope: !2385)
!2387 = !DILocation(line: 690, column: 25, scope: !2339)
!2388 = !DILocation(line: 692, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !505, line: 692, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2339, file: !505, line: 692, column: 21)
!2391 = !DILocation(line: 692, column: 21, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !505, line: 692, column: 21)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !505, line: 692, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !505, line: 692, column: 21)
!2395 = !DILocation(line: 692, column: 21, scope: !2393)
!2396 = !DILocation(line: 692, column: 21, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !505, line: 692, column: 21)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !505, line: 692, column: 21)
!2399 = !DILocation(line: 692, column: 21, scope: !2398)
!2400 = !DILocation(line: 692, column: 21, scope: !2394)
!2401 = !DILocation(line: 0, scope: !2339)
!2402 = !DILocation(line: 693, column: 21, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !505, line: 693, column: 21)
!2404 = distinct !DILexicalBlock(scope: !2339, file: !505, line: 693, column: 21)
!2405 = !DILocation(line: 693, column: 21, scope: !2404)
!2406 = !DILocation(line: 694, column: 25, scope: !2339)
!2407 = !DILocation(line: 676, column: 17, scope: !2340)
!2408 = distinct !{!2408, !2409, !2410}
!2409 = !DILocation(line: 676, column: 17, scope: !2341)
!2410 = !DILocation(line: 695, column: 19, scope: !2341)
!2411 = !DILocation(line: 409, column: 30, scope: !2126)
!2412 = !DILocation(line: 702, column: 34, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 702, column: 11)
!2414 = !DILocation(line: 704, column: 14, scope: !2413)
!2415 = !DILocation(line: 705, column: 14, scope: !2413)
!2416 = !DILocation(line: 705, column: 35, scope: !2413)
!2417 = !DILocation(line: 705, column: 17, scope: !2413)
!2418 = !DILocation(line: 705, column: 47, scope: !2413)
!2419 = !DILocation(line: 705, column: 65, scope: !2413)
!2420 = !DILocation(line: 706, column: 11, scope: !2413)
!2421 = !DILocation(line: 702, column: 11, scope: !1986)
!2422 = !DILocation(line: 395, column: 15, scope: !1984)
!2423 = !DILocation(line: 709, column: 5, scope: !1986)
!2424 = !DILocation(line: 710, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 710, column: 7)
!2426 = !DILocation(line: 710, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2425, file: !505, line: 710, column: 7)
!2428 = !DILocation(line: 710, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !505, line: 710, column: 7)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !505, line: 710, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !505, line: 710, column: 7)
!2432 = !DILocation(line: 710, column: 7, scope: !2430)
!2433 = !DILocation(line: 710, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !505, line: 710, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !505, line: 710, column: 7)
!2436 = !DILocation(line: 710, column: 7, scope: !2435)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !505, line: 710, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2431, file: !505, line: 710, column: 7)
!2440 = !DILocation(line: 710, column: 7, scope: !2439)
!2441 = !DILocation(line: 710, column: 7, scope: !2431)
!2442 = !DILocation(line: 710, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !505, line: 710, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2425, file: !505, line: 710, column: 7)
!2445 = !DILocation(line: 710, column: 7, scope: !2444)
!2446 = !DILocation(line: 712, column: 5, scope: !1986)
!2447 = !DILocation(line: 713, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !505, line: 713, column: 7)
!2449 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 713, column: 7)
!2450 = !DILocation(line: 417, column: 21, scope: !1986)
!2451 = !DILocation(line: 713, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !505, line: 713, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !505, line: 713, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !505, line: 713, column: 7)
!2455 = !DILocation(line: 713, column: 7, scope: !2453)
!2456 = !DILocation(line: 713, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !505, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !505, line: 713, column: 7)
!2459 = !DILocation(line: 713, column: 7, scope: !2458)
!2460 = !DILocation(line: 713, column: 7, scope: !2454)
!2461 = !DILocation(line: 714, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !505, line: 714, column: 7)
!2463 = distinct !DILexicalBlock(scope: !1986, file: !505, line: 714, column: 7)
!2464 = !DILocation(line: 714, column: 7, scope: !2463)
!2465 = !DILocation(line: 716, column: 11, scope: !1986)
!2466 = !DILocation(line: 718, column: 5, scope: !1987)
!2467 = !DILocation(line: 395, column: 82, scope: !1987)
!2468 = !DILocation(line: 395, column: 3, scope: !1987)
!2469 = distinct !{!2469, !2122, !2470, !924}
!2470 = !DILocation(line: 718, column: 5, scope: !1984)
!2471 = !DILocation(line: 720, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 720, column: 7)
!2473 = !DILocation(line: 720, column: 16, scope: !2472)
!2474 = !DILocation(line: 728, column: 51, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 728, column: 7)
!2476 = !DILocation(line: 731, column: 11, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2475, file: !505, line: 730, column: 5)
!2478 = !DILocation(line: 732, column: 16, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2477, file: !505, line: 731, column: 11)
!2480 = !DILocation(line: 732, column: 9, scope: !2479)
!2481 = !DILocation(line: 736, column: 18, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !505, line: 736, column: 16)
!2483 = !DILocation(line: 736, column: 29, scope: !2482)
!2484 = !DILocation(line: 745, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 745, column: 7)
!2486 = !DILocation(line: 745, column: 20, scope: !2485)
!2487 = !DILocation(line: 746, column: 12, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !505, line: 746, column: 5)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !505, line: 746, column: 5)
!2490 = !DILocation(line: 746, column: 5, scope: !2489)
!2491 = !DILocation(line: 747, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !505, line: 747, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !505, line: 747, column: 7)
!2494 = !DILocation(line: 747, column: 7, scope: !2493)
!2495 = !DILocation(line: 746, column: 39, scope: !2488)
!2496 = distinct !{!2496, !2490, !2497, !924}
!2497 = !DILocation(line: 747, column: 7, scope: !2489)
!2498 = !DILocation(line: 749, column: 11, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !1952, file: !505, line: 749, column: 7)
!2500 = !DILocation(line: 749, column: 7, scope: !1952)
!2501 = !DILocation(line: 750, column: 5, scope: !2499)
!2502 = !DILocation(line: 750, column: 17, scope: !2499)
!2503 = !DILocation(line: 756, column: 21, scope: !2330)
!2504 = !DILocation(line: 760, column: 42, scope: !1952)
!2505 = !DILocation(line: 758, column: 10, scope: !1952)
!2506 = !DILocation(line: 758, column: 3, scope: !1952)
!2507 = !DILocation(line: 762, column: 1, scope: !1952)
!2508 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !998, file: !998, line: 98, type: !2509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!119}
!2511 = !DISubprogram(name: "strlen", scope: !994, file: !994, line: 407, type: !2512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!121, !122}
!2514 = !DISubprogram(name: "iswprint", scope: !2515, file: !2515, line: 120, type: !2316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2515 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2516 = distinct !DISubprogram(name: "quotearg_alloc", scope: !505, file: !505, line: 788, type: !2517, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!116, !122, !119, !1845}
!2519 = !{!2520, !2521, !2522}
!2520 = !DILocalVariable(name: "arg", arg: 1, scope: !2516, file: !505, line: 788, type: !122)
!2521 = !DILocalVariable(name: "argsize", arg: 2, scope: !2516, file: !505, line: 788, type: !119)
!2522 = !DILocalVariable(name: "o", arg: 3, scope: !2516, file: !505, line: 789, type: !1845)
!2523 = !DILocation(line: 0, scope: !2516)
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !505, line: 801, type: !122)
!2525 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !505, file: !505, line: 801, type: !2526, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!116, !122, !119, !745, !1845}
!2528 = !{!2524, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DILocalVariable(name: "argsize", arg: 2, scope: !2525, file: !505, line: 801, type: !119)
!2530 = !DILocalVariable(name: "size", arg: 3, scope: !2525, file: !505, line: 801, type: !745)
!2531 = !DILocalVariable(name: "o", arg: 4, scope: !2525, file: !505, line: 802, type: !1845)
!2532 = !DILocalVariable(name: "p", scope: !2525, file: !505, line: 804, type: !1845)
!2533 = !DILocalVariable(name: "saved_errno", scope: !2525, file: !505, line: 805, type: !77)
!2534 = !DILocalVariable(name: "flags", scope: !2525, file: !505, line: 807, type: !77)
!2535 = !DILocalVariable(name: "bufsize", scope: !2525, file: !505, line: 808, type: !119)
!2536 = !DILocalVariable(name: "buf", scope: !2525, file: !505, line: 812, type: !116)
!2537 = !DILocation(line: 0, scope: !2525, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 791, column: 10, scope: !2516)
!2539 = !DILocation(line: 804, column: 37, scope: !2525, inlinedAt: !2538)
!2540 = !DILocation(line: 805, column: 21, scope: !2525, inlinedAt: !2538)
!2541 = !DILocation(line: 807, column: 18, scope: !2525, inlinedAt: !2538)
!2542 = !DILocation(line: 807, column: 24, scope: !2525, inlinedAt: !2538)
!2543 = !DILocation(line: 808, column: 72, scope: !2525, inlinedAt: !2538)
!2544 = !DILocation(line: 809, column: 56, scope: !2525, inlinedAt: !2538)
!2545 = !DILocation(line: 810, column: 49, scope: !2525, inlinedAt: !2538)
!2546 = !DILocation(line: 811, column: 49, scope: !2525, inlinedAt: !2538)
!2547 = !DILocation(line: 808, column: 20, scope: !2525, inlinedAt: !2538)
!2548 = !DILocation(line: 811, column: 62, scope: !2525, inlinedAt: !2538)
!2549 = !DILocation(line: 812, column: 15, scope: !2525, inlinedAt: !2538)
!2550 = !DILocation(line: 813, column: 60, scope: !2525, inlinedAt: !2538)
!2551 = !DILocation(line: 815, column: 32, scope: !2525, inlinedAt: !2538)
!2552 = !DILocation(line: 815, column: 47, scope: !2525, inlinedAt: !2538)
!2553 = !DILocation(line: 813, column: 3, scope: !2525, inlinedAt: !2538)
!2554 = !DILocation(line: 816, column: 9, scope: !2525, inlinedAt: !2538)
!2555 = !DILocation(line: 791, column: 3, scope: !2516)
!2556 = !DILocation(line: 0, scope: !2525)
!2557 = !DILocation(line: 804, column: 37, scope: !2525)
!2558 = !DILocation(line: 805, column: 21, scope: !2525)
!2559 = !DILocation(line: 807, column: 18, scope: !2525)
!2560 = !DILocation(line: 807, column: 27, scope: !2525)
!2561 = !DILocation(line: 807, column: 24, scope: !2525)
!2562 = !DILocation(line: 808, column: 72, scope: !2525)
!2563 = !DILocation(line: 809, column: 56, scope: !2525)
!2564 = !DILocation(line: 810, column: 49, scope: !2525)
!2565 = !DILocation(line: 811, column: 49, scope: !2525)
!2566 = !DILocation(line: 808, column: 20, scope: !2525)
!2567 = !DILocation(line: 811, column: 62, scope: !2525)
!2568 = !DILocation(line: 812, column: 15, scope: !2525)
!2569 = !DILocation(line: 813, column: 60, scope: !2525)
!2570 = !DILocation(line: 815, column: 32, scope: !2525)
!2571 = !DILocation(line: 815, column: 47, scope: !2525)
!2572 = !DILocation(line: 813, column: 3, scope: !2525)
!2573 = !DILocation(line: 816, column: 9, scope: !2525)
!2574 = !DILocation(line: 817, column: 7, scope: !2525)
!2575 = !DILocation(line: 818, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2525, file: !505, line: 817, column: 7)
!2577 = !{!1153, !1153, i64 0}
!2578 = !DILocation(line: 818, column: 5, scope: !2576)
!2579 = !DILocation(line: 819, column: 3, scope: !2525)
!2580 = distinct !DISubprogram(name: "quotearg_free", scope: !505, file: !505, line: 837, type: !460, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2581)
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "sv", scope: !2580, file: !505, line: 839, type: !594)
!2583 = !DILocalVariable(name: "i", scope: !2584, file: !505, line: 840, type: !77)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !505, line: 840, column: 3)
!2585 = !DILocation(line: 839, column: 24, scope: !2580)
!2586 = !DILocation(line: 0, scope: !2580)
!2587 = !DILocation(line: 0, scope: !2584)
!2588 = !DILocation(line: 840, column: 21, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !505, line: 840, column: 3)
!2590 = !DILocation(line: 840, column: 3, scope: !2584)
!2591 = !DILocation(line: 842, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2580, file: !505, line: 842, column: 7)
!2593 = !{!2594, !815, i64 8}
!2594 = !{!"slotvec", !1153, i64 0, !815, i64 8}
!2595 = !DILocation(line: 842, column: 17, scope: !2592)
!2596 = !DILocation(line: 842, column: 7, scope: !2580)
!2597 = !DILocation(line: 841, column: 17, scope: !2589)
!2598 = !DILocation(line: 841, column: 5, scope: !2589)
!2599 = !DILocation(line: 840, column: 32, scope: !2589)
!2600 = distinct !{!2600, !2590, !2601, !924}
!2601 = !DILocation(line: 841, column: 20, scope: !2584)
!2602 = !DILocation(line: 844, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !505, line: 843, column: 5)
!2604 = !DILocation(line: 845, column: 21, scope: !2603)
!2605 = !{!2594, !1153, i64 0}
!2606 = !DILocation(line: 846, column: 20, scope: !2603)
!2607 = !DILocation(line: 847, column: 5, scope: !2603)
!2608 = !DILocation(line: 848, column: 10, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2580, file: !505, line: 848, column: 7)
!2610 = !DILocation(line: 848, column: 7, scope: !2580)
!2611 = !DILocation(line: 850, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !505, line: 849, column: 5)
!2613 = !DILocation(line: 851, column: 15, scope: !2612)
!2614 = !DILocation(line: 852, column: 5, scope: !2612)
!2615 = !DILocation(line: 853, column: 10, scope: !2580)
!2616 = !DILocation(line: 854, column: 1, scope: !2580)
!2617 = distinct !DISubprogram(name: "quotearg_n", scope: !505, file: !505, line: 919, type: !991, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2618)
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !505, line: 919, type: !77)
!2620 = !DILocalVariable(name: "arg", arg: 2, scope: !2617, file: !505, line: 919, type: !122)
!2621 = !DILocation(line: 0, scope: !2617)
!2622 = !DILocation(line: 921, column: 10, scope: !2617)
!2623 = !DILocation(line: 921, column: 3, scope: !2617)
!2624 = distinct !DISubprogram(name: "quotearg_n_options", scope: !505, file: !505, line: 866, type: !2625, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!116, !77, !122, !119, !1845}
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2638, !2639, !2641, !2642, !2643}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !505, line: 866, type: !77)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !505, line: 866, type: !122)
!2630 = !DILocalVariable(name: "argsize", arg: 3, scope: !2624, file: !505, line: 866, type: !119)
!2631 = !DILocalVariable(name: "options", arg: 4, scope: !2624, file: !505, line: 867, type: !1845)
!2632 = !DILocalVariable(name: "saved_errno", scope: !2624, file: !505, line: 869, type: !77)
!2633 = !DILocalVariable(name: "sv", scope: !2624, file: !505, line: 871, type: !594)
!2634 = !DILocalVariable(name: "nslots_max", scope: !2624, file: !505, line: 873, type: !77)
!2635 = !DILocalVariable(name: "preallocated", scope: !2636, file: !505, line: 879, type: !152)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !505, line: 878, column: 5)
!2637 = distinct !DILexicalBlock(scope: !2624, file: !505, line: 877, column: 7)
!2638 = !DILocalVariable(name: "new_nslots", scope: !2636, file: !505, line: 880, type: !758)
!2639 = !DILocalVariable(name: "size", scope: !2640, file: !505, line: 891, type: !119)
!2640 = distinct !DILexicalBlock(scope: !2624, file: !505, line: 890, column: 3)
!2641 = !DILocalVariable(name: "val", scope: !2640, file: !505, line: 892, type: !116)
!2642 = !DILocalVariable(name: "flags", scope: !2640, file: !505, line: 894, type: !77)
!2643 = !DILocalVariable(name: "qsize", scope: !2640, file: !505, line: 895, type: !119)
!2644 = distinct !DIAssignID()
!2645 = !DILocation(line: 0, scope: !2636)
!2646 = !DILocation(line: 0, scope: !2624)
!2647 = !DILocation(line: 869, column: 21, scope: !2624)
!2648 = !DILocation(line: 871, column: 24, scope: !2624)
!2649 = !DILocation(line: 874, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2624, file: !505, line: 874, column: 7)
!2651 = !DILocation(line: 875, column: 5, scope: !2650)
!2652 = !DILocation(line: 877, column: 7, scope: !2637)
!2653 = !DILocation(line: 877, column: 14, scope: !2637)
!2654 = !DILocation(line: 877, column: 7, scope: !2624)
!2655 = !DILocation(line: 879, column: 31, scope: !2636)
!2656 = !DILocation(line: 880, column: 7, scope: !2636)
!2657 = !DILocation(line: 880, column: 26, scope: !2636)
!2658 = !DILocation(line: 880, column: 13, scope: !2636)
!2659 = distinct !DIAssignID()
!2660 = !DILocation(line: 882, column: 31, scope: !2636)
!2661 = !DILocation(line: 883, column: 33, scope: !2636)
!2662 = !DILocation(line: 883, column: 42, scope: !2636)
!2663 = !DILocation(line: 883, column: 31, scope: !2636)
!2664 = !DILocation(line: 882, column: 22, scope: !2636)
!2665 = !DILocation(line: 882, column: 15, scope: !2636)
!2666 = !DILocation(line: 884, column: 11, scope: !2636)
!2667 = !DILocation(line: 885, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2636, file: !505, line: 884, column: 11)
!2669 = !{i64 0, i64 8, !2577, i64 8, i64 8, !814}
!2670 = !DILocation(line: 885, column: 9, scope: !2668)
!2671 = !DILocation(line: 886, column: 20, scope: !2636)
!2672 = !DILocation(line: 886, column: 18, scope: !2636)
!2673 = !DILocation(line: 886, column: 32, scope: !2636)
!2674 = !DILocation(line: 886, column: 43, scope: !2636)
!2675 = !DILocation(line: 886, column: 53, scope: !2636)
!2676 = !DILocation(line: 0, scope: !2062, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 886, column: 7, scope: !2636)
!2678 = !DILocation(line: 59, column: 10, scope: !2062, inlinedAt: !2677)
!2679 = !DILocation(line: 887, column: 16, scope: !2636)
!2680 = !DILocation(line: 887, column: 14, scope: !2636)
!2681 = !DILocation(line: 888, column: 5, scope: !2637)
!2682 = !DILocation(line: 888, column: 5, scope: !2636)
!2683 = !DILocation(line: 891, column: 19, scope: !2640)
!2684 = !DILocation(line: 891, column: 25, scope: !2640)
!2685 = !DILocation(line: 0, scope: !2640)
!2686 = !DILocation(line: 892, column: 23, scope: !2640)
!2687 = !DILocation(line: 894, column: 26, scope: !2640)
!2688 = !DILocation(line: 894, column: 32, scope: !2640)
!2689 = !DILocation(line: 896, column: 55, scope: !2640)
!2690 = !DILocation(line: 897, column: 55, scope: !2640)
!2691 = !DILocation(line: 898, column: 55, scope: !2640)
!2692 = !DILocation(line: 899, column: 55, scope: !2640)
!2693 = !DILocation(line: 895, column: 20, scope: !2640)
!2694 = !DILocation(line: 901, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2640, file: !505, line: 901, column: 9)
!2696 = !DILocation(line: 901, column: 9, scope: !2640)
!2697 = !DILocation(line: 903, column: 35, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !505, line: 902, column: 7)
!2699 = !DILocation(line: 903, column: 20, scope: !2698)
!2700 = !DILocation(line: 904, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !505, line: 904, column: 13)
!2702 = !DILocation(line: 904, column: 13, scope: !2698)
!2703 = !DILocation(line: 905, column: 11, scope: !2701)
!2704 = !DILocation(line: 906, column: 27, scope: !2698)
!2705 = !DILocation(line: 906, column: 19, scope: !2698)
!2706 = !DILocation(line: 907, column: 69, scope: !2698)
!2707 = !DILocation(line: 909, column: 44, scope: !2698)
!2708 = !DILocation(line: 910, column: 44, scope: !2698)
!2709 = !DILocation(line: 907, column: 9, scope: !2698)
!2710 = !DILocation(line: 911, column: 7, scope: !2698)
!2711 = !DILocation(line: 913, column: 11, scope: !2640)
!2712 = !DILocation(line: 914, column: 5, scope: !2640)
!2713 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !505, file: !505, line: 925, type: !2714, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!116, !77, !122, !119}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2713, file: !505, line: 925, type: !77)
!2718 = !DILocalVariable(name: "arg", arg: 2, scope: !2713, file: !505, line: 925, type: !122)
!2719 = !DILocalVariable(name: "argsize", arg: 3, scope: !2713, file: !505, line: 925, type: !119)
!2720 = !DILocation(line: 0, scope: !2713)
!2721 = !DILocation(line: 927, column: 10, scope: !2713)
!2722 = !DILocation(line: 927, column: 3, scope: !2713)
!2723 = distinct !DISubprogram(name: "quotearg", scope: !505, file: !505, line: 931, type: !1000, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2724)
!2724 = !{!2725}
!2725 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !505, line: 931, type: !122)
!2726 = !DILocation(line: 0, scope: !2723)
!2727 = !DILocation(line: 0, scope: !2617, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 933, column: 10, scope: !2723)
!2729 = !DILocation(line: 921, column: 10, scope: !2617, inlinedAt: !2728)
!2730 = !DILocation(line: 933, column: 3, scope: !2723)
!2731 = distinct !DISubprogram(name: "quotearg_mem", scope: !505, file: !505, line: 937, type: !2732, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!116, !122, !119}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !505, line: 937, type: !122)
!2736 = !DILocalVariable(name: "argsize", arg: 2, scope: !2731, file: !505, line: 937, type: !119)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 0, scope: !2713, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 939, column: 10, scope: !2731)
!2740 = !DILocation(line: 927, column: 10, scope: !2713, inlinedAt: !2739)
!2741 = !DILocation(line: 939, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quotearg_n_style", scope: !505, file: !505, line: 943, type: !2743, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!116, !77, !531, !122}
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !505, line: 943, type: !77)
!2747 = !DILocalVariable(name: "s", arg: 2, scope: !2742, file: !505, line: 943, type: !531)
!2748 = !DILocalVariable(name: "arg", arg: 3, scope: !2742, file: !505, line: 943, type: !122)
!2749 = !DILocalVariable(name: "o", scope: !2742, file: !505, line: 945, type: !1846)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !2742)
!2752 = !DILocation(line: 945, column: 3, scope: !2742)
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"quoting_options_from_style: argument 0"}
!2755 = distinct !{!2755, !"quoting_options_from_style"}
!2756 = !DILocation(line: 945, column: 36, scope: !2742)
!2757 = !DILocalVariable(name: "style", arg: 1, scope: !2758, file: !505, line: 183, type: !531)
!2758 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !505, file: !505, line: 183, type: !2759, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!546, !531}
!2761 = !{!2757, !2762}
!2762 = !DILocalVariable(name: "o", scope: !2758, file: !505, line: 185, type: !546)
!2763 = !DILocation(line: 0, scope: !2758, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 945, column: 36, scope: !2742)
!2765 = !DILocation(line: 185, column: 26, scope: !2758, inlinedAt: !2764)
!2766 = distinct !DIAssignID()
!2767 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2764)
!2768 = distinct !DILexicalBlock(scope: !2758, file: !505, line: 186, column: 7)
!2769 = !DILocation(line: 186, column: 7, scope: !2758, inlinedAt: !2764)
!2770 = !DILocation(line: 187, column: 5, scope: !2768, inlinedAt: !2764)
!2771 = !DILocation(line: 188, column: 11, scope: !2758, inlinedAt: !2764)
!2772 = distinct !DIAssignID()
!2773 = !DILocation(line: 946, column: 10, scope: !2742)
!2774 = !DILocation(line: 947, column: 1, scope: !2742)
!2775 = !DILocation(line: 946, column: 3, scope: !2742)
!2776 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !505, file: !505, line: 950, type: !2777, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!116, !77, !531, !122, !119}
!2779 = !{!2780, !2781, !2782, !2783, !2784}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !505, line: 950, type: !77)
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2776, file: !505, line: 950, type: !531)
!2782 = !DILocalVariable(name: "arg", arg: 3, scope: !2776, file: !505, line: 951, type: !122)
!2783 = !DILocalVariable(name: "argsize", arg: 4, scope: !2776, file: !505, line: 951, type: !119)
!2784 = !DILocalVariable(name: "o", scope: !2776, file: !505, line: 953, type: !1846)
!2785 = distinct !DIAssignID()
!2786 = !DILocation(line: 0, scope: !2776)
!2787 = !DILocation(line: 953, column: 3, scope: !2776)
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"quoting_options_from_style: argument 0"}
!2790 = distinct !{!2790, !"quoting_options_from_style"}
!2791 = !DILocation(line: 953, column: 36, scope: !2776)
!2792 = !DILocation(line: 0, scope: !2758, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 953, column: 36, scope: !2776)
!2794 = !DILocation(line: 185, column: 26, scope: !2758, inlinedAt: !2793)
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2793)
!2797 = !DILocation(line: 186, column: 7, scope: !2758, inlinedAt: !2793)
!2798 = !DILocation(line: 187, column: 5, scope: !2768, inlinedAt: !2793)
!2799 = !DILocation(line: 188, column: 11, scope: !2758, inlinedAt: !2793)
!2800 = distinct !DIAssignID()
!2801 = !DILocation(line: 954, column: 10, scope: !2776)
!2802 = !DILocation(line: 955, column: 1, scope: !2776)
!2803 = !DILocation(line: 954, column: 3, scope: !2776)
!2804 = distinct !DISubprogram(name: "quotearg_style", scope: !505, file: !505, line: 958, type: !2805, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!116, !531, !122}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "s", arg: 1, scope: !2804, file: !505, line: 958, type: !531)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !505, line: 958, type: !122)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 0, scope: !2804)
!2812 = !DILocation(line: 0, scope: !2742, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 960, column: 10, scope: !2804)
!2814 = !DILocation(line: 945, column: 3, scope: !2742, inlinedAt: !2813)
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"quoting_options_from_style: argument 0"}
!2817 = distinct !{!2817, !"quoting_options_from_style"}
!2818 = !DILocation(line: 945, column: 36, scope: !2742, inlinedAt: !2813)
!2819 = !DILocation(line: 0, scope: !2758, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 945, column: 36, scope: !2742, inlinedAt: !2813)
!2821 = !DILocation(line: 185, column: 26, scope: !2758, inlinedAt: !2820)
!2822 = distinct !DIAssignID()
!2823 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2820)
!2824 = !DILocation(line: 186, column: 7, scope: !2758, inlinedAt: !2820)
!2825 = !DILocation(line: 187, column: 5, scope: !2768, inlinedAt: !2820)
!2826 = !DILocation(line: 188, column: 11, scope: !2758, inlinedAt: !2820)
!2827 = distinct !DIAssignID()
!2828 = !DILocation(line: 946, column: 10, scope: !2742, inlinedAt: !2813)
!2829 = !DILocation(line: 947, column: 1, scope: !2742, inlinedAt: !2813)
!2830 = !DILocation(line: 960, column: 3, scope: !2804)
!2831 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !505, file: !505, line: 964, type: !2832, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!116, !531, !122, !119}
!2834 = !{!2835, !2836, !2837}
!2835 = !DILocalVariable(name: "s", arg: 1, scope: !2831, file: !505, line: 964, type: !531)
!2836 = !DILocalVariable(name: "arg", arg: 2, scope: !2831, file: !505, line: 964, type: !122)
!2837 = !DILocalVariable(name: "argsize", arg: 3, scope: !2831, file: !505, line: 964, type: !119)
!2838 = distinct !DIAssignID()
!2839 = !DILocation(line: 0, scope: !2831)
!2840 = !DILocation(line: 0, scope: !2776, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 966, column: 10, scope: !2831)
!2842 = !DILocation(line: 953, column: 3, scope: !2776, inlinedAt: !2841)
!2843 = !{!2844}
!2844 = distinct !{!2844, !2845, !"quoting_options_from_style: argument 0"}
!2845 = distinct !{!2845, !"quoting_options_from_style"}
!2846 = !DILocation(line: 953, column: 36, scope: !2776, inlinedAt: !2841)
!2847 = !DILocation(line: 0, scope: !2758, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 953, column: 36, scope: !2776, inlinedAt: !2841)
!2849 = !DILocation(line: 185, column: 26, scope: !2758, inlinedAt: !2848)
!2850 = distinct !DIAssignID()
!2851 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2848)
!2852 = !DILocation(line: 186, column: 7, scope: !2758, inlinedAt: !2848)
!2853 = !DILocation(line: 187, column: 5, scope: !2768, inlinedAt: !2848)
!2854 = !DILocation(line: 188, column: 11, scope: !2758, inlinedAt: !2848)
!2855 = distinct !DIAssignID()
!2856 = !DILocation(line: 954, column: 10, scope: !2776, inlinedAt: !2841)
!2857 = !DILocation(line: 955, column: 1, scope: !2776, inlinedAt: !2841)
!2858 = !DILocation(line: 966, column: 3, scope: !2831)
!2859 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !505, file: !505, line: 970, type: !2860, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!116, !122, !119, !4}
!2862 = !{!2863, !2864, !2865, !2866}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !505, line: 970, type: !122)
!2864 = !DILocalVariable(name: "argsize", arg: 2, scope: !2859, file: !505, line: 970, type: !119)
!2865 = !DILocalVariable(name: "ch", arg: 3, scope: !2859, file: !505, line: 970, type: !4)
!2866 = !DILocalVariable(name: "options", scope: !2859, file: !505, line: 972, type: !546)
!2867 = distinct !DIAssignID()
!2868 = !DILocation(line: 0, scope: !2859)
!2869 = !DILocation(line: 972, column: 3, scope: !2859)
!2870 = !DILocation(line: 973, column: 13, scope: !2859)
!2871 = !{i64 0, i64 4, !877, i64 4, i64 4, !877, i64 8, i64 32, !886, i64 40, i64 8, !814, i64 48, i64 8, !814}
!2872 = distinct !DIAssignID()
!2873 = !DILocation(line: 0, scope: !1865, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 974, column: 3, scope: !2859)
!2875 = !DILocation(line: 147, column: 41, scope: !1865, inlinedAt: !2874)
!2876 = !DILocation(line: 147, column: 62, scope: !1865, inlinedAt: !2874)
!2877 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2874)
!2878 = !DILocation(line: 148, column: 15, scope: !1865, inlinedAt: !2874)
!2879 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2874)
!2880 = !DILocation(line: 149, column: 24, scope: !1865, inlinedAt: !2874)
!2881 = !DILocation(line: 150, column: 19, scope: !1865, inlinedAt: !2874)
!2882 = !DILocation(line: 150, column: 24, scope: !1865, inlinedAt: !2874)
!2883 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2874)
!2884 = !DILocation(line: 975, column: 10, scope: !2859)
!2885 = !DILocation(line: 976, column: 1, scope: !2859)
!2886 = !DILocation(line: 975, column: 3, scope: !2859)
!2887 = distinct !DISubprogram(name: "quotearg_char", scope: !505, file: !505, line: 979, type: !2888, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!116, !122, !4}
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !505, line: 979, type: !122)
!2892 = !DILocalVariable(name: "ch", arg: 2, scope: !2887, file: !505, line: 979, type: !4)
!2893 = distinct !DIAssignID()
!2894 = !DILocation(line: 0, scope: !2887)
!2895 = !DILocation(line: 0, scope: !2859, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 981, column: 10, scope: !2887)
!2897 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2896)
!2898 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2896)
!2899 = distinct !DIAssignID()
!2900 = !DILocation(line: 0, scope: !1865, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2896)
!2902 = !DILocation(line: 147, column: 41, scope: !1865, inlinedAt: !2901)
!2903 = !DILocation(line: 147, column: 62, scope: !1865, inlinedAt: !2901)
!2904 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2901)
!2905 = !DILocation(line: 148, column: 15, scope: !1865, inlinedAt: !2901)
!2906 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2901)
!2907 = !DILocation(line: 149, column: 24, scope: !1865, inlinedAt: !2901)
!2908 = !DILocation(line: 150, column: 19, scope: !1865, inlinedAt: !2901)
!2909 = !DILocation(line: 150, column: 24, scope: !1865, inlinedAt: !2901)
!2910 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2901)
!2911 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2896)
!2912 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2896)
!2913 = !DILocation(line: 981, column: 3, scope: !2887)
!2914 = distinct !DISubprogram(name: "quotearg_colon", scope: !505, file: !505, line: 985, type: !1000, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2915)
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !505, line: 985, type: !122)
!2917 = distinct !DIAssignID()
!2918 = !DILocation(line: 0, scope: !2914)
!2919 = !DILocation(line: 0, scope: !2887, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 987, column: 10, scope: !2914)
!2921 = !DILocation(line: 0, scope: !2859, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 981, column: 10, scope: !2887, inlinedAt: !2920)
!2923 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2922)
!2924 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2922)
!2925 = distinct !DIAssignID()
!2926 = !DILocation(line: 0, scope: !1865, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2922)
!2928 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2927)
!2929 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2927)
!2930 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2927)
!2931 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2922)
!2932 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2922)
!2933 = !DILocation(line: 987, column: 3, scope: !2914)
!2934 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !505, file: !505, line: 991, type: !2732, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2935)
!2935 = !{!2936, !2937}
!2936 = !DILocalVariable(name: "arg", arg: 1, scope: !2934, file: !505, line: 991, type: !122)
!2937 = !DILocalVariable(name: "argsize", arg: 2, scope: !2934, file: !505, line: 991, type: !119)
!2938 = distinct !DIAssignID()
!2939 = !DILocation(line: 0, scope: !2934)
!2940 = !DILocation(line: 0, scope: !2859, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 993, column: 10, scope: !2934)
!2942 = !DILocation(line: 972, column: 3, scope: !2859, inlinedAt: !2941)
!2943 = !DILocation(line: 973, column: 13, scope: !2859, inlinedAt: !2941)
!2944 = distinct !DIAssignID()
!2945 = !DILocation(line: 0, scope: !1865, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 974, column: 3, scope: !2859, inlinedAt: !2941)
!2947 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2946)
!2948 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2946)
!2949 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2946)
!2950 = !DILocation(line: 975, column: 10, scope: !2859, inlinedAt: !2941)
!2951 = !DILocation(line: 976, column: 1, scope: !2859, inlinedAt: !2941)
!2952 = !DILocation(line: 993, column: 3, scope: !2934)
!2953 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !505, file: !505, line: 997, type: !2743, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2954)
!2954 = !{!2955, !2956, !2957, !2958}
!2955 = !DILocalVariable(name: "n", arg: 1, scope: !2953, file: !505, line: 997, type: !77)
!2956 = !DILocalVariable(name: "s", arg: 2, scope: !2953, file: !505, line: 997, type: !531)
!2957 = !DILocalVariable(name: "arg", arg: 3, scope: !2953, file: !505, line: 997, type: !122)
!2958 = !DILocalVariable(name: "options", scope: !2953, file: !505, line: 999, type: !546)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 0, scope: !2953)
!2961 = !DILocation(line: 185, column: 26, scope: !2758, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1000, column: 13, scope: !2953)
!2963 = !DILocation(line: 999, column: 3, scope: !2953)
!2964 = !DILocation(line: 0, scope: !2758, inlinedAt: !2962)
!2965 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2962)
!2966 = !DILocation(line: 186, column: 7, scope: !2758, inlinedAt: !2962)
!2967 = !DILocation(line: 187, column: 5, scope: !2768, inlinedAt: !2962)
!2968 = !{!2969}
!2969 = distinct !{!2969, !2970, !"quoting_options_from_style: argument 0"}
!2970 = distinct !{!2970, !"quoting_options_from_style"}
!2971 = !DILocation(line: 1000, column: 13, scope: !2953)
!2972 = distinct !DIAssignID()
!2973 = distinct !DIAssignID()
!2974 = !DILocation(line: 0, scope: !1865, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1001, column: 3, scope: !2953)
!2976 = !DILocation(line: 147, column: 57, scope: !1865, inlinedAt: !2975)
!2977 = !DILocation(line: 149, column: 21, scope: !1865, inlinedAt: !2975)
!2978 = !DILocation(line: 150, column: 6, scope: !1865, inlinedAt: !2975)
!2979 = distinct !DIAssignID()
!2980 = !DILocation(line: 1002, column: 10, scope: !2953)
!2981 = !DILocation(line: 1003, column: 1, scope: !2953)
!2982 = !DILocation(line: 1002, column: 3, scope: !2953)
!2983 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !505, file: !505, line: 1006, type: !2984, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!116, !77, !122, !122, !122}
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !505, line: 1006, type: !77)
!2988 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2983, file: !505, line: 1006, type: !122)
!2989 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2983, file: !505, line: 1007, type: !122)
!2990 = !DILocalVariable(name: "arg", arg: 4, scope: !2983, file: !505, line: 1007, type: !122)
!2991 = distinct !DIAssignID()
!2992 = !DILocation(line: 0, scope: !2983)
!2993 = !DILocalVariable(name: "o", scope: !2994, file: !505, line: 1018, type: !546)
!2994 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !505, file: !505, line: 1014, type: !2995, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!116, !77, !122, !122, !122, !119}
!2997 = !{!2998, !2999, !3000, !3001, !3002, !2993}
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !505, line: 1014, type: !77)
!2999 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2994, file: !505, line: 1014, type: !122)
!3000 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2994, file: !505, line: 1015, type: !122)
!3001 = !DILocalVariable(name: "arg", arg: 4, scope: !2994, file: !505, line: 1016, type: !122)
!3002 = !DILocalVariable(name: "argsize", arg: 5, scope: !2994, file: !505, line: 1016, type: !119)
!3003 = !DILocation(line: 0, scope: !2994, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1009, column: 10, scope: !2983)
!3005 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3004)
!3006 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3004)
!3007 = distinct !DIAssignID()
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 0, scope: !1905, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3004)
!3011 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3010)
!3012 = distinct !DIAssignID()
!3013 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3010)
!3014 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3010)
!3015 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3010)
!3016 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3010)
!3017 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3010)
!3018 = distinct !DIAssignID()
!3019 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3010)
!3020 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3010)
!3021 = distinct !DIAssignID()
!3022 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3004)
!3023 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3004)
!3024 = !DILocation(line: 1009, column: 3, scope: !2983)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 0, scope: !2994)
!3027 = !DILocation(line: 1018, column: 3, scope: !2994)
!3028 = !DILocation(line: 1018, column: 30, scope: !2994)
!3029 = distinct !DIAssignID()
!3030 = distinct !DIAssignID()
!3031 = !DILocation(line: 0, scope: !1905, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1019, column: 3, scope: !2994)
!3033 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3032)
!3034 = distinct !DIAssignID()
!3035 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3032)
!3036 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3032)
!3037 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3032)
!3038 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3032)
!3039 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3032)
!3040 = distinct !DIAssignID()
!3041 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3032)
!3042 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3032)
!3043 = distinct !DIAssignID()
!3044 = !DILocation(line: 1020, column: 10, scope: !2994)
!3045 = !DILocation(line: 1021, column: 1, scope: !2994)
!3046 = !DILocation(line: 1020, column: 3, scope: !2994)
!3047 = distinct !DISubprogram(name: "quotearg_custom", scope: !505, file: !505, line: 1024, type: !3048, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!116, !122, !122, !122}
!3050 = !{!3051, !3052, !3053}
!3051 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3047, file: !505, line: 1024, type: !122)
!3052 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3047, file: !505, line: 1024, type: !122)
!3053 = !DILocalVariable(name: "arg", arg: 3, scope: !3047, file: !505, line: 1025, type: !122)
!3054 = distinct !DIAssignID()
!3055 = !DILocation(line: 0, scope: !3047)
!3056 = !DILocation(line: 0, scope: !2983, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 1027, column: 10, scope: !3047)
!3058 = !DILocation(line: 0, scope: !2994, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1009, column: 10, scope: !2983, inlinedAt: !3057)
!3060 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3059)
!3061 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3059)
!3062 = distinct !DIAssignID()
!3063 = distinct !DIAssignID()
!3064 = !DILocation(line: 0, scope: !1905, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3059)
!3066 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3065)
!3067 = distinct !DIAssignID()
!3068 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3065)
!3069 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3065)
!3070 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3065)
!3071 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3065)
!3072 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3065)
!3073 = distinct !DIAssignID()
!3074 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3065)
!3075 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3065)
!3076 = distinct !DIAssignID()
!3077 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3059)
!3078 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3059)
!3079 = !DILocation(line: 1027, column: 3, scope: !3047)
!3080 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !505, file: !505, line: 1031, type: !3081, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!116, !122, !122, !122, !119}
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3080, file: !505, line: 1031, type: !122)
!3085 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3080, file: !505, line: 1031, type: !122)
!3086 = !DILocalVariable(name: "arg", arg: 3, scope: !3080, file: !505, line: 1032, type: !122)
!3087 = !DILocalVariable(name: "argsize", arg: 4, scope: !3080, file: !505, line: 1032, type: !119)
!3088 = distinct !DIAssignID()
!3089 = !DILocation(line: 0, scope: !3080)
!3090 = !DILocation(line: 0, scope: !2994, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1034, column: 10, scope: !3080)
!3092 = !DILocation(line: 1018, column: 3, scope: !2994, inlinedAt: !3091)
!3093 = !DILocation(line: 1018, column: 30, scope: !2994, inlinedAt: !3091)
!3094 = distinct !DIAssignID()
!3095 = distinct !DIAssignID()
!3096 = !DILocation(line: 0, scope: !1905, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1019, column: 3, scope: !2994, inlinedAt: !3091)
!3098 = !DILocation(line: 174, column: 12, scope: !1905, inlinedAt: !3097)
!3099 = distinct !DIAssignID()
!3100 = !DILocation(line: 175, column: 8, scope: !1918, inlinedAt: !3097)
!3101 = !DILocation(line: 175, column: 19, scope: !1918, inlinedAt: !3097)
!3102 = !DILocation(line: 176, column: 5, scope: !1918, inlinedAt: !3097)
!3103 = !DILocation(line: 177, column: 6, scope: !1905, inlinedAt: !3097)
!3104 = !DILocation(line: 177, column: 17, scope: !1905, inlinedAt: !3097)
!3105 = distinct !DIAssignID()
!3106 = !DILocation(line: 178, column: 6, scope: !1905, inlinedAt: !3097)
!3107 = !DILocation(line: 178, column: 18, scope: !1905, inlinedAt: !3097)
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 1020, column: 10, scope: !2994, inlinedAt: !3091)
!3110 = !DILocation(line: 1021, column: 1, scope: !2994, inlinedAt: !3091)
!3111 = !DILocation(line: 1034, column: 3, scope: !3080)
!3112 = distinct !DISubprogram(name: "quote_n_mem", scope: !505, file: !505, line: 1049, type: !3113, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!122, !77, !122, !119}
!3115 = !{!3116, !3117, !3118}
!3116 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !505, line: 1049, type: !77)
!3117 = !DILocalVariable(name: "arg", arg: 2, scope: !3112, file: !505, line: 1049, type: !122)
!3118 = !DILocalVariable(name: "argsize", arg: 3, scope: !3112, file: !505, line: 1049, type: !119)
!3119 = !DILocation(line: 0, scope: !3112)
!3120 = !DILocation(line: 1051, column: 10, scope: !3112)
!3121 = !DILocation(line: 1051, column: 3, scope: !3112)
!3122 = distinct !DISubprogram(name: "quote_mem", scope: !505, file: !505, line: 1055, type: !3123, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!122, !122, !119}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "arg", arg: 1, scope: !3122, file: !505, line: 1055, type: !122)
!3127 = !DILocalVariable(name: "argsize", arg: 2, scope: !3122, file: !505, line: 1055, type: !119)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocation(line: 0, scope: !3112, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 1057, column: 10, scope: !3122)
!3131 = !DILocation(line: 1051, column: 10, scope: !3112, inlinedAt: !3130)
!3132 = !DILocation(line: 1057, column: 3, scope: !3122)
!3133 = distinct !DISubprogram(name: "quote_n", scope: !505, file: !505, line: 1061, type: !3134, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!122, !77, !122}
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !505, line: 1061, type: !77)
!3138 = !DILocalVariable(name: "arg", arg: 2, scope: !3133, file: !505, line: 1061, type: !122)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 0, scope: !3112, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1063, column: 10, scope: !3133)
!3142 = !DILocation(line: 1051, column: 10, scope: !3112, inlinedAt: !3141)
!3143 = !DILocation(line: 1063, column: 3, scope: !3133)
!3144 = distinct !DISubprogram(name: "quote", scope: !505, file: !505, line: 1067, type: !3145, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!122, !122}
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !505, line: 1067, type: !122)
!3149 = !DILocation(line: 0, scope: !3144)
!3150 = !DILocation(line: 0, scope: !3133, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1069, column: 10, scope: !3144)
!3152 = !DILocation(line: 0, scope: !3112, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1063, column: 10, scope: !3133, inlinedAt: !3151)
!3154 = !DILocation(line: 1051, column: 10, scope: !3112, inlinedAt: !3153)
!3155 = !DILocation(line: 1069, column: 3, scope: !3144)
!3156 = distinct !DISubprogram(name: "version_etc_arn", scope: !609, file: !609, line: 61, type: !3157, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3194)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3159, !122, !122, !122, !3193, !119}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3161, file: !185, line: 51, baseType: !77, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3161, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3161, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3161, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3161, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3161, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3161, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3161, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3161, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3161, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3161, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3161, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3161, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3161, file: !185, line: 70, baseType: !3177, size: 64, offset: 832)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3161, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3161, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3161, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3161, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3161, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3161, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3161, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3161, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3161, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3161, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3161, file: !185, line: 93, baseType: !3177, size: 64, offset: 1344)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3161, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3161, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3161, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3161, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200}
!3195 = !DILocalVariable(name: "stream", arg: 1, scope: !3156, file: !609, line: 61, type: !3159)
!3196 = !DILocalVariable(name: "command_name", arg: 2, scope: !3156, file: !609, line: 62, type: !122)
!3197 = !DILocalVariable(name: "package", arg: 3, scope: !3156, file: !609, line: 62, type: !122)
!3198 = !DILocalVariable(name: "version", arg: 4, scope: !3156, file: !609, line: 63, type: !122)
!3199 = !DILocalVariable(name: "authors", arg: 5, scope: !3156, file: !609, line: 64, type: !3193)
!3200 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3156, file: !609, line: 64, type: !119)
!3201 = !DILocation(line: 0, scope: !3156)
!3202 = !DILocation(line: 66, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3156, file: !609, line: 66, column: 7)
!3204 = !DILocation(line: 66, column: 7, scope: !3156)
!3205 = !DILocation(line: 67, column: 5, scope: !3203)
!3206 = !DILocation(line: 69, column: 5, scope: !3203)
!3207 = !DILocation(line: 83, column: 3, scope: !3156)
!3208 = !DILocation(line: 85, column: 3, scope: !3156)
!3209 = !DILocation(line: 88, column: 3, scope: !3156)
!3210 = !DILocation(line: 95, column: 3, scope: !3156)
!3211 = !DILocation(line: 97, column: 3, scope: !3156)
!3212 = !DILocation(line: 105, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3156, file: !609, line: 98, column: 5)
!3214 = !DILocation(line: 106, column: 7, scope: !3213)
!3215 = !DILocation(line: 109, column: 7, scope: !3213)
!3216 = !DILocation(line: 110, column: 7, scope: !3213)
!3217 = !DILocation(line: 113, column: 7, scope: !3213)
!3218 = !DILocation(line: 115, column: 7, scope: !3213)
!3219 = !DILocation(line: 120, column: 7, scope: !3213)
!3220 = !DILocation(line: 122, column: 7, scope: !3213)
!3221 = !DILocation(line: 127, column: 7, scope: !3213)
!3222 = !DILocation(line: 129, column: 7, scope: !3213)
!3223 = !DILocation(line: 134, column: 7, scope: !3213)
!3224 = !DILocation(line: 137, column: 7, scope: !3213)
!3225 = !DILocation(line: 142, column: 7, scope: !3213)
!3226 = !DILocation(line: 145, column: 7, scope: !3213)
!3227 = !DILocation(line: 150, column: 7, scope: !3213)
!3228 = !DILocation(line: 154, column: 7, scope: !3213)
!3229 = !DILocation(line: 159, column: 7, scope: !3213)
!3230 = !DILocation(line: 163, column: 7, scope: !3213)
!3231 = !DILocation(line: 170, column: 7, scope: !3213)
!3232 = !DILocation(line: 174, column: 7, scope: !3213)
!3233 = !DILocation(line: 176, column: 1, scope: !3156)
!3234 = distinct !DISubprogram(name: "version_etc_ar", scope: !609, file: !609, line: 183, type: !3235, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3159, !122, !122, !122, !3193}
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243}
!3238 = !DILocalVariable(name: "stream", arg: 1, scope: !3234, file: !609, line: 183, type: !3159)
!3239 = !DILocalVariable(name: "command_name", arg: 2, scope: !3234, file: !609, line: 184, type: !122)
!3240 = !DILocalVariable(name: "package", arg: 3, scope: !3234, file: !609, line: 184, type: !122)
!3241 = !DILocalVariable(name: "version", arg: 4, scope: !3234, file: !609, line: 185, type: !122)
!3242 = !DILocalVariable(name: "authors", arg: 5, scope: !3234, file: !609, line: 185, type: !3193)
!3243 = !DILocalVariable(name: "n_authors", scope: !3234, file: !609, line: 187, type: !119)
!3244 = !DILocation(line: 0, scope: !3234)
!3245 = !DILocation(line: 189, column: 8, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3234, file: !609, line: 189, column: 3)
!3247 = !DILocation(line: 189, scope: !3246)
!3248 = !DILocation(line: 189, column: 23, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !609, line: 189, column: 3)
!3250 = !DILocation(line: 189, column: 3, scope: !3246)
!3251 = !DILocation(line: 189, column: 52, scope: !3249)
!3252 = distinct !{!3252, !3250, !3253, !924}
!3253 = !DILocation(line: 190, column: 5, scope: !3246)
!3254 = !DILocation(line: 191, column: 3, scope: !3234)
!3255 = !DILocation(line: 192, column: 1, scope: !3234)
!3256 = distinct !DISubprogram(name: "version_etc_va", scope: !609, file: !609, line: 199, type: !3257, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3269)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !3159, !122, !122, !122, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !3260)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 12, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !609, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3262, file: !609, line: 192, baseType: !117, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3262, file: !609, line: 192, baseType: !117, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3262, file: !609, line: 192, baseType: !117, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3262, file: !609, line: 192, baseType: !77, size: 32, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3262, file: !609, line: 192, baseType: !77, size: 32, offset: 224)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276}
!3270 = !DILocalVariable(name: "stream", arg: 1, scope: !3256, file: !609, line: 199, type: !3159)
!3271 = !DILocalVariable(name: "command_name", arg: 2, scope: !3256, file: !609, line: 200, type: !122)
!3272 = !DILocalVariable(name: "package", arg: 3, scope: !3256, file: !609, line: 200, type: !122)
!3273 = !DILocalVariable(name: "version", arg: 4, scope: !3256, file: !609, line: 201, type: !122)
!3274 = !DILocalVariable(name: "authors", arg: 5, scope: !3256, file: !609, line: 201, type: !3259)
!3275 = !DILocalVariable(name: "n_authors", scope: !3256, file: !609, line: 203, type: !119)
!3276 = !DILocalVariable(name: "authtab", scope: !3256, file: !609, line: 204, type: !3277)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !55)
!3278 = distinct !DIAssignID()
!3279 = !DILocation(line: 0, scope: !3256)
!3280 = !DILocation(line: 204, column: 3, scope: !3256)
!3281 = !DILocation(line: 208, column: 35, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !609, line: 206, column: 3)
!3283 = distinct !DILexicalBlock(scope: !3256, file: !609, line: 206, column: 3)
!3284 = !DILocation(line: 208, column: 33, scope: !3282)
!3285 = !DILocation(line: 208, column: 67, scope: !3282)
!3286 = !DILocation(line: 206, column: 3, scope: !3283)
!3287 = !DILocation(line: 208, column: 14, scope: !3282)
!3288 = !DILocation(line: 0, scope: !3283)
!3289 = !DILocation(line: 211, column: 3, scope: !3256)
!3290 = !DILocation(line: 213, column: 1, scope: !3256)
!3291 = distinct !DISubprogram(name: "version_etc", scope: !609, file: !609, line: 230, type: !3292, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !3159, !122, !122, !122, null}
!3294 = !{!3295, !3296, !3297, !3298, !3299}
!3295 = !DILocalVariable(name: "stream", arg: 1, scope: !3291, file: !609, line: 230, type: !3159)
!3296 = !DILocalVariable(name: "command_name", arg: 2, scope: !3291, file: !609, line: 231, type: !122)
!3297 = !DILocalVariable(name: "package", arg: 3, scope: !3291, file: !609, line: 231, type: !122)
!3298 = !DILocalVariable(name: "version", arg: 4, scope: !3291, file: !609, line: 232, type: !122)
!3299 = !DILocalVariable(name: "authors", scope: !3291, file: !609, line: 234, type: !3259)
!3300 = distinct !DIAssignID()
!3301 = !DILocation(line: 0, scope: !3291)
!3302 = !DILocation(line: 234, column: 3, scope: !3291)
!3303 = !DILocation(line: 235, column: 3, scope: !3291)
!3304 = !DILocation(line: 236, column: 3, scope: !3291)
!3305 = !DILocation(line: 237, column: 3, scope: !3291)
!3306 = !DILocation(line: 238, column: 1, scope: !3291)
!3307 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !609, file: !609, line: 241, type: !460, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731)
!3308 = !DILocation(line: 243, column: 3, scope: !3307)
!3309 = !DILocation(line: 248, column: 3, scope: !3307)
!3310 = !DILocation(line: 254, column: 3, scope: !3307)
!3311 = !DILocation(line: 259, column: 3, scope: !3307)
!3312 = !DILocation(line: 261, column: 1, scope: !3307)
!3313 = distinct !DISubprogram(name: "xnrealloc", scope: !3314, file: !3314, line: 147, type: !3315, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3317)
!3314 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!117, !117, !119, !119}
!3317 = !{!3318, !3319, !3320}
!3318 = !DILocalVariable(name: "p", arg: 1, scope: !3313, file: !3314, line: 147, type: !117)
!3319 = !DILocalVariable(name: "n", arg: 2, scope: !3313, file: !3314, line: 147, type: !119)
!3320 = !DILocalVariable(name: "s", arg: 3, scope: !3313, file: !3314, line: 147, type: !119)
!3321 = !DILocation(line: 0, scope: !3313)
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !739, line: 83, type: !117)
!3323 = distinct !DISubprogram(name: "xreallocarray", scope: !739, file: !739, line: 83, type: !3315, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3324)
!3324 = !{!3322, !3325, !3326}
!3325 = !DILocalVariable(name: "n", arg: 2, scope: !3323, file: !739, line: 83, type: !119)
!3326 = !DILocalVariable(name: "s", arg: 3, scope: !3323, file: !739, line: 83, type: !119)
!3327 = !DILocation(line: 0, scope: !3323, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 149, column: 10, scope: !3313)
!3329 = !DILocation(line: 85, column: 25, scope: !3323, inlinedAt: !3328)
!3330 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !739, line: 37, type: !117)
!3331 = distinct !DISubprogram(name: "check_nonnull", scope: !739, file: !739, line: 37, type: !3332, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!117, !117}
!3334 = !{!3330}
!3335 = !DILocation(line: 0, scope: !3331, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 85, column: 10, scope: !3323, inlinedAt: !3328)
!3337 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3336)
!3338 = distinct !DILexicalBlock(scope: !3331, file: !739, line: 39, column: 7)
!3339 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3336)
!3340 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3336)
!3341 = !DILocation(line: 149, column: 3, scope: !3313)
!3342 = !DILocation(line: 0, scope: !3323)
!3343 = !DILocation(line: 85, column: 25, scope: !3323)
!3344 = !DILocation(line: 0, scope: !3331, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 85, column: 10, scope: !3323)
!3346 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3345)
!3347 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3345)
!3348 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3345)
!3349 = !DILocation(line: 85, column: 3, scope: !3323)
!3350 = distinct !DISubprogram(name: "xmalloc", scope: !739, file: !739, line: 47, type: !3351, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!117, !119}
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "s", arg: 1, scope: !3350, file: !739, line: 47, type: !119)
!3355 = !DILocation(line: 0, scope: !3350)
!3356 = !DILocation(line: 49, column: 25, scope: !3350)
!3357 = !DILocation(line: 0, scope: !3331, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 49, column: 10, scope: !3350)
!3359 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3358)
!3362 = !DILocation(line: 49, column: 3, scope: !3350)
!3363 = !DISubprogram(name: "malloc", scope: !998, file: !998, line: 540, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3364 = distinct !DISubprogram(name: "ximalloc", scope: !739, file: !739, line: 53, type: !3365, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!117, !758}
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "s", arg: 1, scope: !3364, file: !739, line: 53, type: !758)
!3369 = !DILocation(line: 0, scope: !3364)
!3370 = !DILocalVariable(name: "s", arg: 1, scope: !3371, file: !3372, line: 55, type: !758)
!3371 = distinct !DISubprogram(name: "imalloc", scope: !3372, file: !3372, line: 55, type: !3365, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3373)
!3372 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3373 = !{!3370}
!3374 = !DILocation(line: 0, scope: !3371, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 55, column: 25, scope: !3364)
!3376 = !DILocation(line: 57, column: 26, scope: !3371, inlinedAt: !3375)
!3377 = !DILocation(line: 0, scope: !3331, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 55, column: 10, scope: !3364)
!3379 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3378)
!3380 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3378)
!3381 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3378)
!3382 = !DILocation(line: 55, column: 3, scope: !3364)
!3383 = distinct !DISubprogram(name: "xcharalloc", scope: !739, file: !739, line: 59, type: !3384, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!116, !119}
!3386 = !{!3387}
!3387 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !739, line: 59, type: !119)
!3388 = !DILocation(line: 0, scope: !3383)
!3389 = !DILocation(line: 0, scope: !3350, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 61, column: 10, scope: !3383)
!3391 = !DILocation(line: 49, column: 25, scope: !3350, inlinedAt: !3390)
!3392 = !DILocation(line: 0, scope: !3331, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 49, column: 10, scope: !3350, inlinedAt: !3390)
!3394 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3393)
!3395 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3393)
!3396 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3393)
!3397 = !DILocation(line: 61, column: 3, scope: !3383)
!3398 = distinct !DISubprogram(name: "xrealloc", scope: !739, file: !739, line: 68, type: !3399, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!117, !117, !119}
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "p", arg: 1, scope: !3398, file: !739, line: 68, type: !117)
!3403 = !DILocalVariable(name: "s", arg: 2, scope: !3398, file: !739, line: 68, type: !119)
!3404 = !DILocation(line: 0, scope: !3398)
!3405 = !DILocalVariable(name: "ptr", arg: 1, scope: !3406, file: !3407, line: 2057, type: !117)
!3406 = distinct !DISubprogram(name: "rpl_realloc", scope: !3407, file: !3407, line: 2057, type: !3399, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3408)
!3407 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3408 = !{!3405, !3409}
!3409 = !DILocalVariable(name: "size", arg: 2, scope: !3406, file: !3407, line: 2057, type: !119)
!3410 = !DILocation(line: 0, scope: !3406, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 70, column: 25, scope: !3398)
!3412 = !DILocation(line: 2059, column: 24, scope: !3406, inlinedAt: !3411)
!3413 = !DILocation(line: 2059, column: 10, scope: !3406, inlinedAt: !3411)
!3414 = !DILocation(line: 0, scope: !3331, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 70, column: 10, scope: !3398)
!3416 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3415)
!3417 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3415)
!3418 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3415)
!3419 = !DILocation(line: 70, column: 3, scope: !3398)
!3420 = !DISubprogram(name: "realloc", scope: !998, file: !998, line: 551, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3421 = distinct !DISubprogram(name: "xirealloc", scope: !739, file: !739, line: 74, type: !3422, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!117, !117, !758}
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "p", arg: 1, scope: !3421, file: !739, line: 74, type: !117)
!3426 = !DILocalVariable(name: "s", arg: 2, scope: !3421, file: !739, line: 74, type: !758)
!3427 = !DILocation(line: 0, scope: !3421)
!3428 = !DILocalVariable(name: "p", arg: 1, scope: !3429, file: !3372, line: 66, type: !117)
!3429 = distinct !DISubprogram(name: "irealloc", scope: !3372, file: !3372, line: 66, type: !3422, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3430)
!3430 = !{!3428, !3431}
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !3372, line: 66, type: !758)
!3432 = !DILocation(line: 0, scope: !3429, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 76, column: 25, scope: !3421)
!3434 = !DILocation(line: 0, scope: !3406, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 68, column: 26, scope: !3429, inlinedAt: !3433)
!3436 = !DILocation(line: 2059, column: 24, scope: !3406, inlinedAt: !3435)
!3437 = !DILocation(line: 2059, column: 10, scope: !3406, inlinedAt: !3435)
!3438 = !DILocation(line: 0, scope: !3331, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 76, column: 10, scope: !3421)
!3440 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3439)
!3441 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3439)
!3442 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3439)
!3443 = !DILocation(line: 76, column: 3, scope: !3421)
!3444 = distinct !DISubprogram(name: "xireallocarray", scope: !739, file: !739, line: 89, type: !3445, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!117, !117, !758, !758}
!3447 = !{!3448, !3449, !3450}
!3448 = !DILocalVariable(name: "p", arg: 1, scope: !3444, file: !739, line: 89, type: !117)
!3449 = !DILocalVariable(name: "n", arg: 2, scope: !3444, file: !739, line: 89, type: !758)
!3450 = !DILocalVariable(name: "s", arg: 3, scope: !3444, file: !739, line: 89, type: !758)
!3451 = !DILocation(line: 0, scope: !3444)
!3452 = !DILocalVariable(name: "p", arg: 1, scope: !3453, file: !3372, line: 98, type: !117)
!3453 = distinct !DISubprogram(name: "ireallocarray", scope: !3372, file: !3372, line: 98, type: !3445, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3454)
!3454 = !{!3452, !3455, !3456}
!3455 = !DILocalVariable(name: "n", arg: 2, scope: !3453, file: !3372, line: 98, type: !758)
!3456 = !DILocalVariable(name: "s", arg: 3, scope: !3453, file: !3372, line: 98, type: !758)
!3457 = !DILocation(line: 0, scope: !3453, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 91, column: 25, scope: !3444)
!3459 = !DILocation(line: 101, column: 13, scope: !3453, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !3331, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 91, column: 10, scope: !3444)
!3462 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3461)
!3465 = !DILocation(line: 91, column: 3, scope: !3444)
!3466 = distinct !DISubprogram(name: "xnmalloc", scope: !739, file: !739, line: 98, type: !3467, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!117, !119, !119}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "n", arg: 1, scope: !3466, file: !739, line: 98, type: !119)
!3471 = !DILocalVariable(name: "s", arg: 2, scope: !3466, file: !739, line: 98, type: !119)
!3472 = !DILocation(line: 0, scope: !3466)
!3473 = !DILocation(line: 0, scope: !3323, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 100, column: 10, scope: !3466)
!3475 = !DILocation(line: 85, column: 25, scope: !3323, inlinedAt: !3474)
!3476 = !DILocation(line: 0, scope: !3331, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 85, column: 10, scope: !3323, inlinedAt: !3474)
!3478 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3477)
!3479 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3477)
!3480 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3477)
!3481 = !DILocation(line: 100, column: 3, scope: !3466)
!3482 = distinct !DISubprogram(name: "xinmalloc", scope: !739, file: !739, line: 104, type: !3483, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!117, !758, !758}
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !739, line: 104, type: !758)
!3487 = !DILocalVariable(name: "s", arg: 2, scope: !3482, file: !739, line: 104, type: !758)
!3488 = !DILocation(line: 0, scope: !3482)
!3489 = !DILocation(line: 0, scope: !3444, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 106, column: 10, scope: !3482)
!3491 = !DILocation(line: 0, scope: !3453, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 91, column: 25, scope: !3444, inlinedAt: !3490)
!3493 = !DILocation(line: 101, column: 13, scope: !3453, inlinedAt: !3492)
!3494 = !DILocation(line: 0, scope: !3331, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 91, column: 10, scope: !3444, inlinedAt: !3490)
!3496 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3495)
!3497 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3495)
!3498 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3495)
!3499 = !DILocation(line: 106, column: 3, scope: !3482)
!3500 = distinct !DISubprogram(name: "x2realloc", scope: !739, file: !739, line: 116, type: !3501, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!117, !117, !745}
!3503 = !{!3504, !3505}
!3504 = !DILocalVariable(name: "p", arg: 1, scope: !3500, file: !739, line: 116, type: !117)
!3505 = !DILocalVariable(name: "ps", arg: 2, scope: !3500, file: !739, line: 116, type: !745)
!3506 = !DILocation(line: 0, scope: !3500)
!3507 = !DILocation(line: 0, scope: !742, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 118, column: 10, scope: !3500)
!3509 = !DILocation(line: 178, column: 14, scope: !742, inlinedAt: !3508)
!3510 = !DILocation(line: 180, column: 9, scope: !3511, inlinedAt: !3508)
!3511 = distinct !DILexicalBlock(scope: !742, file: !739, line: 180, column: 7)
!3512 = !DILocation(line: 180, column: 7, scope: !742, inlinedAt: !3508)
!3513 = !DILocation(line: 182, column: 13, scope: !3514, inlinedAt: !3508)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !739, line: 182, column: 11)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !739, line: 181, column: 5)
!3516 = !DILocation(line: 182, column: 11, scope: !3515, inlinedAt: !3508)
!3517 = !DILocation(line: 197, column: 11, scope: !3518, inlinedAt: !3508)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !739, line: 197, column: 11)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !739, line: 195, column: 5)
!3520 = !DILocation(line: 197, column: 11, scope: !3519, inlinedAt: !3508)
!3521 = !DILocation(line: 198, column: 9, scope: !3518, inlinedAt: !3508)
!3522 = !DILocation(line: 0, scope: !3323, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 201, column: 7, scope: !742, inlinedAt: !3508)
!3524 = !DILocation(line: 85, column: 25, scope: !3323, inlinedAt: !3523)
!3525 = !DILocation(line: 0, scope: !3331, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 85, column: 10, scope: !3323, inlinedAt: !3523)
!3527 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3526)
!3528 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3526)
!3529 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3526)
!3530 = !DILocation(line: 202, column: 7, scope: !742, inlinedAt: !3508)
!3531 = !DILocation(line: 118, column: 3, scope: !3500)
!3532 = !DILocation(line: 0, scope: !742)
!3533 = !DILocation(line: 178, column: 14, scope: !742)
!3534 = !DILocation(line: 180, column: 9, scope: !3511)
!3535 = !DILocation(line: 180, column: 7, scope: !742)
!3536 = !DILocation(line: 182, column: 13, scope: !3514)
!3537 = !DILocation(line: 182, column: 11, scope: !3515)
!3538 = !DILocation(line: 190, column: 30, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3514, file: !739, line: 183, column: 9)
!3540 = !DILocation(line: 191, column: 16, scope: !3539)
!3541 = !DILocation(line: 191, column: 13, scope: !3539)
!3542 = !DILocation(line: 192, column: 9, scope: !3539)
!3543 = !DILocation(line: 197, column: 11, scope: !3518)
!3544 = !DILocation(line: 197, column: 11, scope: !3519)
!3545 = !DILocation(line: 198, column: 9, scope: !3518)
!3546 = !DILocation(line: 0, scope: !3323, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 201, column: 7, scope: !742)
!3548 = !DILocation(line: 85, column: 25, scope: !3323, inlinedAt: !3547)
!3549 = !DILocation(line: 0, scope: !3331, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 85, column: 10, scope: !3323, inlinedAt: !3547)
!3551 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3550)
!3552 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3550)
!3553 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3550)
!3554 = !DILocation(line: 202, column: 7, scope: !742)
!3555 = !DILocation(line: 203, column: 3, scope: !742)
!3556 = !DILocation(line: 0, scope: !754)
!3557 = !DILocation(line: 230, column: 14, scope: !754)
!3558 = !DILocation(line: 238, column: 7, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !754, file: !739, line: 238, column: 7)
!3560 = !DILocation(line: 238, column: 7, scope: !754)
!3561 = !DILocation(line: 240, column: 9, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !754, file: !739, line: 240, column: 7)
!3563 = !DILocation(line: 240, column: 18, scope: !3562)
!3564 = !DILocation(line: 253, column: 8, scope: !754)
!3565 = !DILocation(line: 256, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !754, file: !739, line: 256, column: 7)
!3567 = !DILocation(line: 256, column: 7, scope: !754)
!3568 = !DILocation(line: 258, column: 27, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !739, line: 257, column: 5)
!3570 = !DILocation(line: 259, column: 32, scope: !3569)
!3571 = !DILocation(line: 260, column: 5, scope: !3569)
!3572 = !DILocation(line: 262, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !754, file: !739, line: 262, column: 7)
!3574 = !DILocation(line: 262, column: 7, scope: !754)
!3575 = !DILocation(line: 263, column: 9, scope: !3573)
!3576 = !DILocation(line: 263, column: 5, scope: !3573)
!3577 = !DILocation(line: 264, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !754, file: !739, line: 264, column: 7)
!3579 = !DILocation(line: 264, column: 14, scope: !3578)
!3580 = !DILocation(line: 265, column: 7, scope: !3578)
!3581 = !DILocation(line: 265, column: 11, scope: !3578)
!3582 = !DILocation(line: 266, column: 11, scope: !3578)
!3583 = !DILocation(line: 267, column: 14, scope: !3578)
!3584 = !DILocation(line: 264, column: 7, scope: !754)
!3585 = !DILocation(line: 268, column: 5, scope: !3578)
!3586 = !DILocation(line: 0, scope: !3398, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 269, column: 8, scope: !754)
!3588 = !DILocation(line: 0, scope: !3406, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 70, column: 25, scope: !3398, inlinedAt: !3587)
!3590 = !DILocation(line: 2059, column: 24, scope: !3406, inlinedAt: !3589)
!3591 = !DILocation(line: 2059, column: 10, scope: !3406, inlinedAt: !3589)
!3592 = !DILocation(line: 0, scope: !3331, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 70, column: 10, scope: !3398, inlinedAt: !3587)
!3594 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3593)
!3597 = !DILocation(line: 270, column: 7, scope: !754)
!3598 = !DILocation(line: 271, column: 3, scope: !754)
!3599 = distinct !DISubprogram(name: "xzalloc", scope: !739, file: !739, line: 279, type: !3351, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3600)
!3600 = !{!3601}
!3601 = !DILocalVariable(name: "s", arg: 1, scope: !3599, file: !739, line: 279, type: !119)
!3602 = !DILocation(line: 0, scope: !3599)
!3603 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !739, line: 294, type: !119)
!3604 = distinct !DISubprogram(name: "xcalloc", scope: !739, file: !739, line: 294, type: !3467, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3605)
!3605 = !{!3603, !3606}
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3604, file: !739, line: 294, type: !119)
!3607 = !DILocation(line: 0, scope: !3604, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 281, column: 10, scope: !3599)
!3609 = !DILocation(line: 296, column: 25, scope: !3604, inlinedAt: !3608)
!3610 = !DILocation(line: 0, scope: !3331, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 296, column: 10, scope: !3604, inlinedAt: !3608)
!3612 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3611)
!3613 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3611)
!3614 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3611)
!3615 = !DILocation(line: 281, column: 3, scope: !3599)
!3616 = !DISubprogram(name: "calloc", scope: !998, file: !998, line: 543, type: !3467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3617 = !DILocation(line: 0, scope: !3604)
!3618 = !DILocation(line: 296, column: 25, scope: !3604)
!3619 = !DILocation(line: 0, scope: !3331, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 296, column: 10, scope: !3604)
!3621 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3620)
!3622 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3620)
!3623 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3620)
!3624 = !DILocation(line: 296, column: 3, scope: !3604)
!3625 = distinct !DISubprogram(name: "xizalloc", scope: !739, file: !739, line: 285, type: !3365, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3626)
!3626 = !{!3627}
!3627 = !DILocalVariable(name: "s", arg: 1, scope: !3625, file: !739, line: 285, type: !758)
!3628 = !DILocation(line: 0, scope: !3625)
!3629 = !DILocalVariable(name: "n", arg: 1, scope: !3630, file: !739, line: 300, type: !758)
!3630 = distinct !DISubprogram(name: "xicalloc", scope: !739, file: !739, line: 300, type: !3483, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3631)
!3631 = !{!3629, !3632}
!3632 = !DILocalVariable(name: "s", arg: 2, scope: !3630, file: !739, line: 300, type: !758)
!3633 = !DILocation(line: 0, scope: !3630, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 287, column: 10, scope: !3625)
!3635 = !DILocalVariable(name: "n", arg: 1, scope: !3636, file: !3372, line: 77, type: !758)
!3636 = distinct !DISubprogram(name: "icalloc", scope: !3372, file: !3372, line: 77, type: !3483, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3637)
!3637 = !{!3635, !3638}
!3638 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !3372, line: 77, type: !758)
!3639 = !DILocation(line: 0, scope: !3636, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 302, column: 25, scope: !3630, inlinedAt: !3634)
!3641 = !DILocation(line: 91, column: 10, scope: !3636, inlinedAt: !3640)
!3642 = !DILocation(line: 0, scope: !3331, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 302, column: 10, scope: !3630, inlinedAt: !3634)
!3644 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3643)
!3645 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3643)
!3646 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3643)
!3647 = !DILocation(line: 287, column: 3, scope: !3625)
!3648 = !DILocation(line: 0, scope: !3630)
!3649 = !DILocation(line: 0, scope: !3636, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 302, column: 25, scope: !3630)
!3651 = !DILocation(line: 91, column: 10, scope: !3636, inlinedAt: !3650)
!3652 = !DILocation(line: 0, scope: !3331, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 302, column: 10, scope: !3630)
!3654 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3653)
!3655 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3653)
!3656 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3653)
!3657 = !DILocation(line: 302, column: 3, scope: !3630)
!3658 = distinct !DISubprogram(name: "xmemdup", scope: !739, file: !739, line: 310, type: !3659, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!117, !1022, !119}
!3661 = !{!3662, !3663}
!3662 = !DILocalVariable(name: "p", arg: 1, scope: !3658, file: !739, line: 310, type: !1022)
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !739, line: 310, type: !119)
!3664 = !DILocation(line: 0, scope: !3658)
!3665 = !DILocation(line: 0, scope: !3350, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 312, column: 18, scope: !3658)
!3667 = !DILocation(line: 49, column: 25, scope: !3350, inlinedAt: !3666)
!3668 = !DILocation(line: 0, scope: !3331, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 49, column: 10, scope: !3350, inlinedAt: !3666)
!3670 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3669)
!3671 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3669)
!3672 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3669)
!3673 = !DILocalVariable(name: "__dest", arg: 1, scope: !3674, file: !1808, line: 26, type: !3677)
!3674 = distinct !DISubprogram(name: "memcpy", scope: !1808, file: !1808, line: 26, type: !3675, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3678)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!117, !3677, !1021, !119}
!3677 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!3678 = !{!3673, !3679, !3680}
!3679 = !DILocalVariable(name: "__src", arg: 2, scope: !3674, file: !1808, line: 26, type: !1021)
!3680 = !DILocalVariable(name: "__len", arg: 3, scope: !3674, file: !1808, line: 26, type: !119)
!3681 = !DILocation(line: 0, scope: !3674, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 312, column: 10, scope: !3658)
!3683 = !DILocation(line: 29, column: 10, scope: !3674, inlinedAt: !3682)
!3684 = !DILocation(line: 312, column: 3, scope: !3658)
!3685 = distinct !DISubprogram(name: "ximemdup", scope: !739, file: !739, line: 316, type: !3686, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!117, !1022, !758}
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "p", arg: 1, scope: !3685, file: !739, line: 316, type: !1022)
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3685, file: !739, line: 316, type: !758)
!3691 = !DILocation(line: 0, scope: !3685)
!3692 = !DILocation(line: 0, scope: !3364, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 318, column: 18, scope: !3685)
!3694 = !DILocation(line: 0, scope: !3371, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 55, column: 25, scope: !3364, inlinedAt: !3693)
!3696 = !DILocation(line: 57, column: 26, scope: !3371, inlinedAt: !3695)
!3697 = !DILocation(line: 0, scope: !3331, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 55, column: 10, scope: !3364, inlinedAt: !3693)
!3699 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3698)
!3700 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3698)
!3701 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3698)
!3702 = !DILocation(line: 0, scope: !3674, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 318, column: 10, scope: !3685)
!3704 = !DILocation(line: 29, column: 10, scope: !3674, inlinedAt: !3703)
!3705 = !DILocation(line: 318, column: 3, scope: !3685)
!3706 = distinct !DISubprogram(name: "ximemdup0", scope: !739, file: !739, line: 325, type: !3707, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!116, !1022, !758}
!3709 = !{!3710, !3711, !3712}
!3710 = !DILocalVariable(name: "p", arg: 1, scope: !3706, file: !739, line: 325, type: !1022)
!3711 = !DILocalVariable(name: "s", arg: 2, scope: !3706, file: !739, line: 325, type: !758)
!3712 = !DILocalVariable(name: "result", scope: !3706, file: !739, line: 327, type: !116)
!3713 = !DILocation(line: 0, scope: !3706)
!3714 = !DILocation(line: 327, column: 30, scope: !3706)
!3715 = !DILocation(line: 0, scope: !3364, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 327, column: 18, scope: !3706)
!3717 = !DILocation(line: 0, scope: !3371, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 55, column: 25, scope: !3364, inlinedAt: !3716)
!3719 = !DILocation(line: 57, column: 26, scope: !3371, inlinedAt: !3718)
!3720 = !DILocation(line: 0, scope: !3331, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 55, column: 10, scope: !3364, inlinedAt: !3716)
!3722 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3721)
!3723 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3721)
!3724 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3721)
!3725 = !DILocation(line: 328, column: 3, scope: !3706)
!3726 = !DILocation(line: 328, column: 13, scope: !3706)
!3727 = !DILocation(line: 0, scope: !3674, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 329, column: 10, scope: !3706)
!3729 = !DILocation(line: 29, column: 10, scope: !3674, inlinedAt: !3728)
!3730 = !DILocation(line: 329, column: 3, scope: !3706)
!3731 = distinct !DISubprogram(name: "xstrdup", scope: !739, file: !739, line: 335, type: !1000, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3732)
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "string", arg: 1, scope: !3731, file: !739, line: 335, type: !122)
!3734 = !DILocation(line: 0, scope: !3731)
!3735 = !DILocation(line: 337, column: 27, scope: !3731)
!3736 = !DILocation(line: 337, column: 43, scope: !3731)
!3737 = !DILocation(line: 0, scope: !3658, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 337, column: 10, scope: !3731)
!3739 = !DILocation(line: 0, scope: !3350, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 312, column: 18, scope: !3658, inlinedAt: !3738)
!3741 = !DILocation(line: 49, column: 25, scope: !3350, inlinedAt: !3740)
!3742 = !DILocation(line: 0, scope: !3331, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 49, column: 10, scope: !3350, inlinedAt: !3740)
!3744 = !DILocation(line: 39, column: 8, scope: !3338, inlinedAt: !3743)
!3745 = !DILocation(line: 39, column: 7, scope: !3331, inlinedAt: !3743)
!3746 = !DILocation(line: 40, column: 5, scope: !3338, inlinedAt: !3743)
!3747 = !DILocation(line: 0, scope: !3674, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 312, column: 10, scope: !3658, inlinedAt: !3738)
!3749 = !DILocation(line: 29, column: 10, scope: !3674, inlinedAt: !3748)
!3750 = !DILocation(line: 337, column: 3, scope: !3731)
!3751 = distinct !DISubprogram(name: "xalloc_die", scope: !696, file: !696, line: 32, type: !460, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3752)
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "__errstatus", scope: !3754, file: !696, line: 34, type: !3755)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !696, line: 34, column: 3)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3756 = !DILocation(line: 34, column: 3, scope: !3754)
!3757 = !DILocation(line: 0, scope: !3754)
!3758 = !DILocation(line: 40, column: 3, scope: !3751)
!3759 = distinct !DISubprogram(name: "last_component", scope: !776, file: !776, line: 29, type: !1000, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3760)
!3760 = !{!3761, !3762, !3763, !3764}
!3761 = !DILocalVariable(name: "name", arg: 1, scope: !3759, file: !776, line: 29, type: !122)
!3762 = !DILocalVariable(name: "base", scope: !3759, file: !776, line: 31, type: !122)
!3763 = !DILocalVariable(name: "last_was_slash", scope: !3759, file: !776, line: 35, type: !152)
!3764 = !DILocalVariable(name: "p", scope: !3765, file: !776, line: 36, type: !122)
!3765 = distinct !DILexicalBlock(scope: !3759, file: !776, line: 36, column: 3)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 32, column: 3, scope: !3759)
!3768 = !DILocation(line: 32, column: 10, scope: !3759)
!3769 = !DILocation(line: 33, column: 9, scope: !3759)
!3770 = distinct !{!3770, !3767, !3769, !924}
!3771 = !DILocation(line: 36, column: 3, scope: !3765)
!3772 = !DILocation(line: 36, column: 30, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3765, file: !776, line: 36, column: 3)
!3774 = !DILocation(line: 31, column: 15, scope: !3759)
!3775 = !DILocation(line: 36, scope: !3765)
!3776 = !DILocation(line: 0, scope: !3765)
!3777 = !DILocation(line: 47, column: 3, scope: !3759)
!3778 = !DILocation(line: 40, column: 16, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !776, line: 38, column: 11)
!3780 = distinct !DILexicalBlock(scope: !3773, file: !776, line: 37, column: 5)
!3781 = !DILocation(line: 36, column: 35, scope: !3773)
!3782 = !DILocation(line: 36, column: 3, scope: !3773)
!3783 = distinct !{!3783, !3771, !3784, !924}
!3784 = !DILocation(line: 45, column: 5, scope: !3765)
!3785 = distinct !DISubprogram(name: "base_len", scope: !776, file: !776, line: 51, type: !3786, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!119, !122}
!3788 = !{!3789, !3790, !3791}
!3789 = !DILocalVariable(name: "name", arg: 1, scope: !3785, file: !776, line: 51, type: !122)
!3790 = !DILocalVariable(name: "len", scope: !3785, file: !776, line: 53, type: !119)
!3791 = !DILocalVariable(name: "prefix_len", scope: !3785, file: !776, line: 61, type: !119)
!3792 = !DILocation(line: 0, scope: !3785)
!3793 = !DILocation(line: 54, column: 14, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3785, file: !776, line: 54, column: 3)
!3795 = !DILocation(line: 54, column: 8, scope: !3794)
!3796 = !DILocation(line: 54, column: 32, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !776, line: 54, column: 3)
!3798 = !DILocation(line: 54, column: 38, scope: !3797)
!3799 = !DILocation(line: 54, column: 3, scope: !3794)
!3800 = !DILocation(line: 54, column: 41, scope: !3797)
!3801 = !DILocation(line: 54, column: 70, scope: !3797)
!3802 = distinct !{!3802, !3799, !3803, !924}
!3803 = !DILocation(line: 55, column: 5, scope: !3794)
!3804 = !DILocation(line: 66, column: 3, scope: !3785)
!3805 = !DILocation(line: 54, scope: !3794)
!3806 = distinct !DISubprogram(name: "close_stream", scope: !779, file: !779, line: 55, type: !3807, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3843)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!77, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3811, file: !185, line: 51, baseType: !77, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3811, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3811, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3811, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3811, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3811, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3811, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3811, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3811, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3811, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3811, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3811, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3811, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3811, file: !185, line: 70, baseType: !3827, size: 64, offset: 832)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3811, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3811, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3811, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3811, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3811, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3811, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3811, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3811, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3811, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3811, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3811, file: !185, line: 93, baseType: !3827, size: 64, offset: 1344)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3811, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3811, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3811, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3811, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3843 = !{!3844, !3845, !3847, !3848}
!3844 = !DILocalVariable(name: "stream", arg: 1, scope: !3806, file: !779, line: 55, type: !3809)
!3845 = !DILocalVariable(name: "some_pending", scope: !3806, file: !779, line: 57, type: !3846)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3847 = !DILocalVariable(name: "prev_fail", scope: !3806, file: !779, line: 58, type: !3846)
!3848 = !DILocalVariable(name: "fclose_fail", scope: !3806, file: !779, line: 59, type: !3846)
!3849 = !DILocation(line: 0, scope: !3806)
!3850 = !DILocation(line: 57, column: 30, scope: !3806)
!3851 = !DILocalVariable(name: "__stream", arg: 1, scope: !3852, file: !1459, line: 135, type: !3809)
!3852 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1459, file: !1459, line: 135, type: !3807, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3853)
!3853 = !{!3851}
!3854 = !DILocation(line: 0, scope: !3852, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 58, column: 27, scope: !3806)
!3856 = !DILocation(line: 137, column: 10, scope: !3852, inlinedAt: !3855)
!3857 = !{!1468, !878, i64 0}
!3858 = !DILocation(line: 58, column: 43, scope: !3806)
!3859 = !DILocation(line: 59, column: 29, scope: !3806)
!3860 = !DILocation(line: 59, column: 45, scope: !3806)
!3861 = !DILocation(line: 69, column: 17, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3806, file: !779, line: 69, column: 7)
!3863 = !DILocation(line: 57, column: 50, scope: !3806)
!3864 = !DILocation(line: 69, column: 33, scope: !3862)
!3865 = !DILocation(line: 69, column: 53, scope: !3862)
!3866 = !DILocation(line: 69, column: 59, scope: !3862)
!3867 = !DILocation(line: 69, column: 7, scope: !3806)
!3868 = !DILocation(line: 71, column: 11, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3862, file: !779, line: 70, column: 5)
!3870 = !DILocation(line: 72, column: 9, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3869, file: !779, line: 71, column: 11)
!3872 = !DILocation(line: 72, column: 15, scope: !3871)
!3873 = !DILocation(line: 77, column: 1, scope: !3806)
!3874 = !DISubprogram(name: "__fpending", scope: !3875, file: !3875, line: 75, type: !3876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3875 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!119, !3809}
!3878 = distinct !DISubprogram(name: "rpl_fclose", scope: !781, file: !781, line: 58, type: !3879, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3915)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!77, !3881}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3883)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3883, file: !185, line: 51, baseType: !77, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3883, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3883, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3883, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3883, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3883, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3883, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3883, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3883, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3883, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3883, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3883, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3883, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3883, file: !185, line: 70, baseType: !3899, size: 64, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3883, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3883, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3883, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3883, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3883, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3883, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3883, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3883, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3883, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3883, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3883, file: !185, line: 93, baseType: !3899, size: 64, offset: 1344)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3883, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3883, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3883, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3883, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DILocalVariable(name: "fp", arg: 1, scope: !3878, file: !781, line: 58, type: !3881)
!3917 = !DILocalVariable(name: "saved_errno", scope: !3878, file: !781, line: 60, type: !77)
!3918 = !DILocalVariable(name: "fd", scope: !3878, file: !781, line: 63, type: !77)
!3919 = !DILocalVariable(name: "result", scope: !3878, file: !781, line: 74, type: !77)
!3920 = !DILocation(line: 0, scope: !3878)
!3921 = !DILocation(line: 63, column: 12, scope: !3878)
!3922 = !DILocation(line: 64, column: 10, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3878, file: !781, line: 64, column: 7)
!3924 = !DILocation(line: 64, column: 7, scope: !3878)
!3925 = !DILocation(line: 65, column: 12, scope: !3923)
!3926 = !DILocation(line: 65, column: 5, scope: !3923)
!3927 = !DILocation(line: 70, column: 9, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3878, file: !781, line: 70, column: 7)
!3929 = !DILocation(line: 70, column: 23, scope: !3928)
!3930 = !DILocation(line: 70, column: 33, scope: !3928)
!3931 = !DILocation(line: 70, column: 26, scope: !3928)
!3932 = !DILocation(line: 70, column: 59, scope: !3928)
!3933 = !DILocation(line: 71, column: 7, scope: !3928)
!3934 = !DILocation(line: 71, column: 10, scope: !3928)
!3935 = !DILocation(line: 70, column: 7, scope: !3878)
!3936 = !DILocation(line: 100, column: 12, scope: !3878)
!3937 = !DILocation(line: 105, column: 7, scope: !3878)
!3938 = !DILocation(line: 72, column: 19, scope: !3928)
!3939 = !DILocation(line: 105, column: 19, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3878, file: !781, line: 105, column: 7)
!3941 = !DILocation(line: 107, column: 13, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3940, file: !781, line: 106, column: 5)
!3943 = !DILocation(line: 109, column: 5, scope: !3942)
!3944 = !DILocation(line: 112, column: 1, scope: !3878)
!3945 = !DISubprogram(name: "fileno", scope: !420, file: !420, line: 809, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DISubprogram(name: "fclose", scope: !420, file: !420, line: 178, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3947 = !DISubprogram(name: "__freading", scope: !3875, file: !3875, line: 51, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3948 = !DISubprogram(name: "lseek", scope: !1257, file: !1257, line: 339, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!207, !77, !207, !77}
!3951 = distinct !DISubprogram(name: "rpl_fflush", scope: !783, file: !783, line: 130, type: !3952, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3988)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!77, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3956, file: !185, line: 51, baseType: !77, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3956, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3956, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3956, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3956, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3956, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3956, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3956, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3956, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3956, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3956, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3956, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3956, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3956, file: !185, line: 70, baseType: !3972, size: 64, offset: 832)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3956, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3956, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3956, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3956, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3956, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3956, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3956, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3956, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3956, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3956, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3956, file: !185, line: 93, baseType: !3972, size: 64, offset: 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3956, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3956, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3956, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3956, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "stream", arg: 1, scope: !3951, file: !783, line: 130, type: !3954)
!3990 = !DILocation(line: 0, scope: !3951)
!3991 = !DILocation(line: 151, column: 14, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3951, file: !783, line: 151, column: 7)
!3993 = !DILocation(line: 151, column: 22, scope: !3992)
!3994 = !DILocation(line: 151, column: 27, scope: !3992)
!3995 = !DILocation(line: 151, column: 7, scope: !3951)
!3996 = !DILocation(line: 152, column: 12, scope: !3992)
!3997 = !DILocation(line: 152, column: 5, scope: !3992)
!3998 = !DILocalVariable(name: "fp", arg: 1, scope: !3999, file: !783, line: 42, type: !3954)
!3999 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !783, file: !783, line: 42, type: !4000, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !3954}
!4002 = !{!3998}
!4003 = !DILocation(line: 0, scope: !3999, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 157, column: 3, scope: !3951)
!4005 = !DILocation(line: 44, column: 12, scope: !4006, inlinedAt: !4004)
!4006 = distinct !DILexicalBlock(scope: !3999, file: !783, line: 44, column: 7)
!4007 = !DILocation(line: 44, column: 19, scope: !4006, inlinedAt: !4004)
!4008 = !DILocation(line: 44, column: 7, scope: !3999, inlinedAt: !4004)
!4009 = !DILocation(line: 46, column: 5, scope: !4006, inlinedAt: !4004)
!4010 = !DILocation(line: 159, column: 10, scope: !3951)
!4011 = !DILocation(line: 159, column: 3, scope: !3951)
!4012 = !DILocation(line: 236, column: 1, scope: !3951)
!4013 = !DISubprogram(name: "fflush", scope: !420, file: !420, line: 230, type: !3952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4014 = distinct !DISubprogram(name: "rpl_fseeko", scope: !785, file: !785, line: 28, type: !4015, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4052)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!77, !4017, !4051, !77}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4019, file: !185, line: 51, baseType: !77, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4019, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4019, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4019, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4019, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4019, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4019, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4019, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4019, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4019, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4019, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4019, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4019, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4019, file: !185, line: 70, baseType: !4035, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4019, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4019, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4019, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4019, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4019, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4019, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4019, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4019, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4019, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4019, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4019, file: !185, line: 93, baseType: !4035, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4019, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4019, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4019, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4019, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !420, line: 63, baseType: !207)
!4052 = !{!4053, !4054, !4055, !4056}
!4053 = !DILocalVariable(name: "fp", arg: 1, scope: !4014, file: !785, line: 28, type: !4017)
!4054 = !DILocalVariable(name: "offset", arg: 2, scope: !4014, file: !785, line: 28, type: !4051)
!4055 = !DILocalVariable(name: "whence", arg: 3, scope: !4014, file: !785, line: 28, type: !77)
!4056 = !DILocalVariable(name: "pos", scope: !4057, file: !785, line: 123, type: !4051)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !785, line: 119, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4014, file: !785, line: 55, column: 7)
!4059 = !DILocation(line: 0, scope: !4014)
!4060 = !DILocation(line: 55, column: 12, scope: !4058)
!4061 = !{!1468, !815, i64 16}
!4062 = !DILocation(line: 55, column: 33, scope: !4058)
!4063 = !{!1468, !815, i64 8}
!4064 = !DILocation(line: 55, column: 25, scope: !4058)
!4065 = !DILocation(line: 56, column: 7, scope: !4058)
!4066 = !DILocation(line: 56, column: 15, scope: !4058)
!4067 = !DILocation(line: 56, column: 37, scope: !4058)
!4068 = !{!1468, !815, i64 32}
!4069 = !DILocation(line: 56, column: 29, scope: !4058)
!4070 = !DILocation(line: 57, column: 7, scope: !4058)
!4071 = !DILocation(line: 57, column: 15, scope: !4058)
!4072 = !{!1468, !815, i64 72}
!4073 = !DILocation(line: 57, column: 29, scope: !4058)
!4074 = !DILocation(line: 55, column: 7, scope: !4014)
!4075 = !DILocation(line: 123, column: 26, scope: !4057)
!4076 = !DILocation(line: 123, column: 19, scope: !4057)
!4077 = !DILocation(line: 0, scope: !4057)
!4078 = !DILocation(line: 124, column: 15, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4057, file: !785, line: 124, column: 11)
!4080 = !DILocation(line: 124, column: 11, scope: !4057)
!4081 = !DILocation(line: 135, column: 19, scope: !4057)
!4082 = !DILocation(line: 136, column: 12, scope: !4057)
!4083 = !DILocation(line: 136, column: 20, scope: !4057)
!4084 = !{!1468, !1153, i64 144}
!4085 = !DILocation(line: 167, column: 7, scope: !4057)
!4086 = !DILocation(line: 169, column: 10, scope: !4014)
!4087 = !DILocation(line: 169, column: 3, scope: !4014)
!4088 = !DILocation(line: 170, column: 1, scope: !4014)
!4089 = !DISubprogram(name: "fseeko", scope: !420, file: !420, line: 736, type: !4090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!77, !4017, !207, !77}
!4092 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !703, file: !703, line: 100, type: !4093, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4096)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!119, !1826, !122, !119, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!4096 = !{!4097, !4098, !4099, !4100, !4101}
!4097 = !DILocalVariable(name: "pwc", arg: 1, scope: !4092, file: !703, line: 100, type: !1826)
!4098 = !DILocalVariable(name: "s", arg: 2, scope: !4092, file: !703, line: 100, type: !122)
!4099 = !DILocalVariable(name: "n", arg: 3, scope: !4092, file: !703, line: 100, type: !119)
!4100 = !DILocalVariable(name: "ps", arg: 4, scope: !4092, file: !703, line: 100, type: !4095)
!4101 = !DILocalVariable(name: "ret", scope: !4092, file: !703, line: 130, type: !119)
!4102 = !DILocation(line: 0, scope: !4092)
!4103 = !DILocation(line: 105, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4092, file: !703, line: 105, column: 7)
!4105 = !DILocation(line: 105, column: 7, scope: !4092)
!4106 = !DILocation(line: 117, column: 10, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4092, file: !703, line: 117, column: 7)
!4108 = !DILocation(line: 117, column: 7, scope: !4092)
!4109 = !DILocation(line: 130, column: 16, scope: !4092)
!4110 = !DILocation(line: 135, column: 11, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4092, file: !703, line: 135, column: 7)
!4112 = !DILocation(line: 135, column: 25, scope: !4111)
!4113 = !DILocation(line: 135, column: 30, scope: !4111)
!4114 = !DILocation(line: 135, column: 7, scope: !4092)
!4115 = !DILocalVariable(name: "ps", arg: 1, scope: !4116, file: !1799, line: 1135, type: !4095)
!4116 = distinct !DISubprogram(name: "mbszero", scope: !1799, file: !1799, line: 1135, type: !4117, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !4095}
!4119 = !{!4115}
!4120 = !DILocation(line: 0, scope: !4116, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 137, column: 5, scope: !4111)
!4122 = !DILocalVariable(name: "__dest", arg: 1, scope: !4123, file: !1808, line: 57, type: !117)
!4123 = distinct !DISubprogram(name: "memset", scope: !1808, file: !1808, line: 57, type: !1809, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4124)
!4124 = !{!4122, !4125, !4126}
!4125 = !DILocalVariable(name: "__ch", arg: 2, scope: !4123, file: !1808, line: 57, type: !77)
!4126 = !DILocalVariable(name: "__len", arg: 3, scope: !4123, file: !1808, line: 57, type: !119)
!4127 = !DILocation(line: 0, scope: !4123, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 1137, column: 3, scope: !4116, inlinedAt: !4121)
!4129 = !DILocation(line: 59, column: 10, scope: !4123, inlinedAt: !4128)
!4130 = !DILocation(line: 137, column: 5, scope: !4111)
!4131 = !DILocation(line: 138, column: 11, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4092, file: !703, line: 138, column: 7)
!4133 = !DILocation(line: 138, column: 7, scope: !4092)
!4134 = !DILocation(line: 139, column: 5, scope: !4132)
!4135 = !DILocation(line: 143, column: 26, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4092, file: !703, line: 143, column: 7)
!4137 = !DILocation(line: 143, column: 41, scope: !4136)
!4138 = !DILocation(line: 143, column: 7, scope: !4092)
!4139 = !DILocation(line: 145, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !703, line: 145, column: 11)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !703, line: 144, column: 5)
!4142 = !DILocation(line: 145, column: 11, scope: !4141)
!4143 = !DILocation(line: 146, column: 32, scope: !4140)
!4144 = !DILocation(line: 146, column: 16, scope: !4140)
!4145 = !DILocation(line: 146, column: 14, scope: !4140)
!4146 = !DILocation(line: 146, column: 9, scope: !4140)
!4147 = !DILocation(line: 286, column: 1, scope: !4092)
!4148 = !DISubprogram(name: "mbsinit", scope: !4149, file: !4149, line: 293, type: !4150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4149 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!77, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!4154 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !787, file: !787, line: 27, type: !3315, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4155)
!4155 = !{!4156, !4157, !4158, !4159}
!4156 = !DILocalVariable(name: "ptr", arg: 1, scope: !4154, file: !787, line: 27, type: !117)
!4157 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4154, file: !787, line: 27, type: !119)
!4158 = !DILocalVariable(name: "size", arg: 3, scope: !4154, file: !787, line: 27, type: !119)
!4159 = !DILocalVariable(name: "nbytes", scope: !4154, file: !787, line: 29, type: !119)
!4160 = !DILocation(line: 0, scope: !4154)
!4161 = !DILocation(line: 30, column: 7, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4154, file: !787, line: 30, column: 7)
!4163 = !DILocation(line: 30, column: 7, scope: !4154)
!4164 = !DILocation(line: 32, column: 7, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !787, line: 31, column: 5)
!4166 = !DILocation(line: 32, column: 13, scope: !4165)
!4167 = !DILocation(line: 33, column: 7, scope: !4165)
!4168 = !DILocalVariable(name: "ptr", arg: 1, scope: !4169, file: !3407, line: 2057, type: !117)
!4169 = distinct !DISubprogram(name: "rpl_realloc", scope: !3407, file: !3407, line: 2057, type: !3399, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4170)
!4170 = !{!4168, !4171}
!4171 = !DILocalVariable(name: "size", arg: 2, scope: !4169, file: !3407, line: 2057, type: !119)
!4172 = !DILocation(line: 0, scope: !4169, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 37, column: 10, scope: !4154)
!4174 = !DILocation(line: 2059, column: 24, scope: !4169, inlinedAt: !4173)
!4175 = !DILocation(line: 2059, column: 10, scope: !4169, inlinedAt: !4173)
!4176 = !DILocation(line: 37, column: 3, scope: !4154)
!4177 = !DILocation(line: 38, column: 1, scope: !4154)
!4178 = distinct !DISubprogram(name: "hard_locale", scope: !721, file: !721, line: 28, type: !4179, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!152, !77}
!4181 = !{!4182, !4183}
!4182 = !DILocalVariable(name: "category", arg: 1, scope: !4178, file: !721, line: 28, type: !77)
!4183 = !DILocalVariable(name: "locale", scope: !4178, file: !721, line: 30, type: !4184)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4185)
!4185 = !{!4186}
!4186 = !DISubrange(count: 257)
!4187 = distinct !DIAssignID()
!4188 = !DILocation(line: 0, scope: !4178)
!4189 = !DILocation(line: 30, column: 3, scope: !4178)
!4190 = !DILocation(line: 32, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4178, file: !721, line: 32, column: 7)
!4192 = !DILocation(line: 32, column: 7, scope: !4178)
!4193 = !DILocalVariable(name: "__s1", arg: 1, scope: !4194, file: !890, line: 1359, type: !122)
!4194 = distinct !DISubprogram(name: "streq", scope: !890, file: !890, line: 1359, type: !891, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4195)
!4195 = !{!4193, !4196}
!4196 = !DILocalVariable(name: "__s2", arg: 2, scope: !4194, file: !890, line: 1359, type: !122)
!4197 = !DILocation(line: 0, scope: !4194, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 35, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4178, file: !721, line: 35, column: 7)
!4200 = !DILocation(line: 1361, column: 11, scope: !4194, inlinedAt: !4198)
!4201 = !DILocation(line: 1361, column: 10, scope: !4194, inlinedAt: !4198)
!4202 = !DILocation(line: 35, column: 29, scope: !4199)
!4203 = !DILocation(line: 0, scope: !4194, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 35, column: 32, scope: !4199)
!4205 = !DILocation(line: 1361, column: 11, scope: !4194, inlinedAt: !4204)
!4206 = !DILocation(line: 1361, column: 10, scope: !4194, inlinedAt: !4204)
!4207 = !DILocation(line: 35, column: 7, scope: !4178)
!4208 = !DILocation(line: 46, column: 3, scope: !4178)
!4209 = !DILocation(line: 47, column: 1, scope: !4178)
!4210 = distinct !DISubprogram(name: "setlocale_null_r", scope: !791, file: !791, line: 154, type: !4211, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!77, !77, !116, !119}
!4213 = !{!4214, !4215, !4216}
!4214 = !DILocalVariable(name: "category", arg: 1, scope: !4210, file: !791, line: 154, type: !77)
!4215 = !DILocalVariable(name: "buf", arg: 2, scope: !4210, file: !791, line: 154, type: !116)
!4216 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4210, file: !791, line: 154, type: !119)
!4217 = !DILocation(line: 0, scope: !4210)
!4218 = !DILocation(line: 159, column: 10, scope: !4210)
!4219 = !DILocation(line: 159, column: 3, scope: !4210)
!4220 = distinct !DISubprogram(name: "setlocale_null", scope: !791, file: !791, line: 186, type: !4221, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!122, !77}
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "category", arg: 1, scope: !4220, file: !791, line: 186, type: !77)
!4225 = !DILocation(line: 0, scope: !4220)
!4226 = !DILocation(line: 189, column: 10, scope: !4220)
!4227 = !DILocation(line: 189, column: 3, scope: !4220)
!4228 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !793, file: !793, line: 35, type: !4221, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4229)
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "category", arg: 1, scope: !4228, file: !793, line: 35, type: !77)
!4231 = !DILocalVariable(name: "result", scope: !4228, file: !793, line: 37, type: !122)
!4232 = !DILocation(line: 0, scope: !4228)
!4233 = !DILocation(line: 37, column: 24, scope: !4228)
!4234 = !DILocation(line: 62, column: 3, scope: !4228)
!4235 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !793, file: !793, line: 66, type: !4211, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241}
!4237 = !DILocalVariable(name: "category", arg: 1, scope: !4235, file: !793, line: 66, type: !77)
!4238 = !DILocalVariable(name: "buf", arg: 2, scope: !4235, file: !793, line: 66, type: !116)
!4239 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4235, file: !793, line: 66, type: !119)
!4240 = !DILocalVariable(name: "result", scope: !4235, file: !793, line: 111, type: !122)
!4241 = !DILocalVariable(name: "length", scope: !4242, file: !793, line: 125, type: !119)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !793, line: 124, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4235, file: !793, line: 113, column: 7)
!4244 = !DILocation(line: 0, scope: !4235)
!4245 = !DILocation(line: 0, scope: !4228, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 111, column: 24, scope: !4235)
!4247 = !DILocation(line: 37, column: 24, scope: !4228, inlinedAt: !4246)
!4248 = !DILocation(line: 113, column: 14, scope: !4243)
!4249 = !DILocation(line: 113, column: 7, scope: !4235)
!4250 = !DILocation(line: 116, column: 19, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !793, line: 116, column: 11)
!4252 = distinct !DILexicalBlock(scope: !4243, file: !793, line: 114, column: 5)
!4253 = !DILocation(line: 116, column: 11, scope: !4252)
!4254 = !DILocation(line: 120, column: 16, scope: !4251)
!4255 = !DILocation(line: 120, column: 9, scope: !4251)
!4256 = !DILocation(line: 125, column: 23, scope: !4242)
!4257 = !DILocation(line: 0, scope: !4242)
!4258 = !DILocation(line: 126, column: 18, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4242, file: !793, line: 126, column: 11)
!4260 = !DILocation(line: 126, column: 11, scope: !4242)
!4261 = !DILocation(line: 128, column: 39, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !793, line: 127, column: 9)
!4263 = !DILocalVariable(name: "__dest", arg: 1, scope: !4264, file: !1808, line: 26, type: !3677)
!4264 = distinct !DISubprogram(name: "memcpy", scope: !1808, file: !1808, line: 26, type: !3675, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4265)
!4265 = !{!4263, !4266, !4267}
!4266 = !DILocalVariable(name: "__src", arg: 2, scope: !4264, file: !1808, line: 26, type: !1021)
!4267 = !DILocalVariable(name: "__len", arg: 3, scope: !4264, file: !1808, line: 26, type: !119)
!4268 = !DILocation(line: 0, scope: !4264, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 128, column: 11, scope: !4262)
!4270 = !DILocation(line: 29, column: 10, scope: !4264, inlinedAt: !4269)
!4271 = !DILocation(line: 129, column: 11, scope: !4262)
!4272 = !DILocation(line: 133, column: 23, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !793, line: 133, column: 15)
!4274 = distinct !DILexicalBlock(scope: !4259, file: !793, line: 132, column: 9)
!4275 = !DILocation(line: 133, column: 15, scope: !4274)
!4276 = !DILocation(line: 138, column: 44, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !793, line: 134, column: 13)
!4278 = !DILocation(line: 0, scope: !4264, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 138, column: 15, scope: !4277)
!4280 = !DILocation(line: 29, column: 10, scope: !4264, inlinedAt: !4279)
!4281 = !DILocation(line: 139, column: 15, scope: !4277)
!4282 = !DILocation(line: 139, column: 32, scope: !4277)
!4283 = !DILocation(line: 140, column: 13, scope: !4277)
!4284 = !DILocation(line: 0, scope: !4243)
!4285 = !DILocation(line: 145, column: 1, scope: !4235)
