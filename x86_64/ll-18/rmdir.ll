; ModuleID = 'src/rmdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
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
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !67
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !404
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !396
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !398
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !400
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !402
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !406
@stderr = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !412
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !443
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !414
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !433
@.str.1.41 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !435
@.str.2.43 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !437
@.str.3.42 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !439
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !441
@.str.4.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !445
@.str.5.37 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !447
@.str.6.38 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !452
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !457
@.str.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !463
@.str.1.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !465
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !467
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !498
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !501
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !503
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !508
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !510
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !512
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !514
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !516
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !518
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !520
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.65, ptr @.str.1.66, ptr @.str.2.67, ptr @.str.3.68, ptr @.str.4.69, ptr @.str.5.70, ptr @.str.6.71, ptr @.str.7.72, ptr @.str.8.73, ptr @.str.9.74, ptr null], align 16, !dbg !522
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !535
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !549
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !587
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !594
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !551
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !596
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !539
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !556
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !558
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !560
@.str.13.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !562
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !564
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !602
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !605
@.str.2.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !607
@.str.3.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !609
@.str.4.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !611
@.str.5.88 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !613
@.str.6.89 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !618
@.str.7.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !623
@.str.8.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !625
@.str.9.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !627
@.str.10.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !632
@.str.11.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !637
@.str.12.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !639
@.str.13.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !641
@.str.14.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !646
@.str.15.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !648
@.str.16.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !653
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.104 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !658
@.str.18.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !660
@.str.19.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !662
@.str.20.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !664
@.str.21.108 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !666
@.str.22.109 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !668
@.str.23.110 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !670
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !675
@exit_failure = dso_local global i32 1, align 4, !dbg !683
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !689
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !692
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !694
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !696
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !699
@.str.1.145 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !714

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !797 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !802
  %2 = icmp eq i32 %0, 0, !dbg !803
  br i1 %2, label %8, label %3, !dbg !805

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !806, !tbaa !808
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !806
  %6 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !808
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !806
  br label %34, !dbg !806

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !812
  %10 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !808
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !812
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !814
  %13 = load ptr, ptr @stdout, align 8, !dbg !814, !tbaa !808
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !814
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !815
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !816
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !816
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !817
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !817
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !818
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !818
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !819
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !820, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata !839, metadata !833, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr poison, metadata !832, metadata !DIExpression()), !dbg !837
  tail call void @emit_bug_reporting_address() #39, !dbg !840
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !841
  call void @llvm.dbg.value(metadata ptr %20, metadata !835, metadata !DIExpression()), !dbg !837
  %21 = icmp eq ptr %20, null, !dbg !842
  br i1 %21, label %29, label %22, !dbg !844

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !845
  %24 = icmp eq i32 %23, 0, !dbg !845
  br i1 %24, label %29, label %25, !dbg !846

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !847
  %27 = load ptr, ptr @stdout, align 8, !dbg !847, !tbaa !808
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !847
  br label %29, !dbg !849

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !832, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !836, metadata !DIExpression()), !dbg !837
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !850
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !850
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !851
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !851
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !852
  unreachable, !dbg !852
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !853 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !857 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !863 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !866 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !159 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !163, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !870
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !871, !tbaa !872
  %3 = icmp eq i32 %2, -1, !dbg !874
  br i1 %3, label %4, label %16, !dbg !875

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !876
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !165, metadata !DIExpression()), !dbg !877
  %6 = icmp eq ptr %5, null, !dbg !878
  br i1 %6, label %14, label %7, !dbg !879

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !880, !tbaa !881
  %9 = icmp eq i8 %8, 0, !dbg !880
  br i1 %9, label %14, label %10, !dbg !882

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !883, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !889, metadata !DIExpression()), !dbg !890
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !892
  %12 = icmp eq i32 %11, 0, !dbg !893
  %13 = zext i1 %12 to i32, !dbg !882
  br label %14, !dbg !882

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !894, !tbaa !872
  br label %16, !dbg !895

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !896
  %18 = icmp eq i32 %17, 0, !dbg !896
  br i1 %18, label %22, label %19, !dbg !898

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !899, !tbaa !808
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !899
  br label %124, !dbg !901

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !168, metadata !DIExpression()), !dbg !870
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !902
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !903
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !169, metadata !DIExpression()), !dbg !870
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !904
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !170, metadata !DIExpression()), !dbg !870
  %26 = icmp eq ptr %25, null, !dbg !905
  br i1 %26, label %54, label %27, !dbg !906

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !907
  br i1 %28, label %54, label %29, !dbg !908

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !171, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()), !dbg !909
  %30 = icmp ult ptr %24, %25, !dbg !910
  br i1 %30, label %31, label %54, !dbg !911

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !870
  %33 = load ptr, ptr %32, align 8, !tbaa !808
  br label %34, !dbg !911

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !171, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !175, metadata !DIExpression()), !dbg !909
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !912
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !171, metadata !DIExpression()), !dbg !909
  %38 = load i8, ptr %35, align 1, !dbg !912, !tbaa !881
  %39 = sext i8 %38 to i64, !dbg !912
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !912
  %41 = load i16, ptr %40, align 2, !dbg !912, !tbaa !913
  %42 = freeze i16 %41, !dbg !915
  %43 = lshr i16 %42, 13, !dbg !915
  %44 = and i16 %43, 1, !dbg !915
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !916
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !175, metadata !DIExpression()), !dbg !909
  %47 = icmp ult ptr %37, %25, !dbg !910
  %48 = icmp ult i64 %46, 2, !dbg !917
  %49 = select i1 %47, i1 %48, i1 false, !dbg !917
  br i1 %49, label %34, label %50, !dbg !911, !llvm.loop !918

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !920
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !922
  %53 = zext i1 %51 to i8, !dbg !922
  br label %54, !dbg !922

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !870
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !870
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !168, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !170, metadata !DIExpression()), !dbg !870
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #40, !dbg !923
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !176, metadata !DIExpression()), !dbg !870
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !924
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !177, metadata !DIExpression()), !dbg !870
  br label %59, !dbg !925

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !870
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !870
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !168, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !177, metadata !DIExpression()), !dbg !870
  %62 = load i8, ptr %60, align 1, !dbg !926, !tbaa !881
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !927

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !928
  %65 = load i8, ptr %64, align 1, !dbg !931, !tbaa !881
  %66 = icmp eq i8 %65, 45, !dbg !932
  %67 = select i1 %66, i8 0, i8 %61, !dbg !933
  br label %68, !dbg !933

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !870
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !168, metadata !DIExpression()), !dbg !870
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !934
  %71 = load ptr, ptr %70, align 8, !dbg !934, !tbaa !808
  %72 = sext i8 %62 to i64, !dbg !934
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !934
  %74 = load i16, ptr %73, align 2, !dbg !934, !tbaa !913
  %75 = and i16 %74, 8192, !dbg !934
  %76 = icmp eq i16 %75, 0, !dbg !934
  br i1 %76, label %92, label %77, !dbg !936

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !937
  br i1 %78, label %94, label %79, !dbg !940

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !941
  %81 = load i8, ptr %80, align 1, !dbg !941, !tbaa !881
  %82 = sext i8 %81 to i64, !dbg !941
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !941
  %84 = load i16, ptr %83, align 2, !dbg !941, !tbaa !913
  %85 = and i16 %84, 8192, !dbg !941
  %86 = icmp eq i16 %85, 0, !dbg !941
  br i1 %86, label %87, label %94, !dbg !942

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !943
  %89 = icmp ne i8 %88, 0, !dbg !943
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !945
  br i1 %91, label %92, label %94, !dbg !945

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !946
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !177, metadata !DIExpression()), !dbg !870
  br label %59, !dbg !925, !llvm.loop !947

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !949
  %96 = load ptr, ptr @stdout, align 8, !dbg !949, !tbaa !808
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !839, metadata !889, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !870
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !970
  %99 = icmp eq i32 %98, 0, !dbg !970
  br i1 %99, label %103, label %100, !dbg !972

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !973
  %102 = icmp eq i32 %101, 0, !dbg !973
  br i1 %102, label %103, label %106, !dbg !974

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !975
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !975
  br label %109, !dbg !977

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !978
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !978
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !808
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !980
  %112 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !808
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %112), !dbg !981
  %114 = ptrtoint ptr %60 to i64, !dbg !982
  %115 = sub i64 %114, %95, !dbg !982
  %116 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !808
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !982
  %118 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !808
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !983
  %120 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !808
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %120), !dbg !984
  %122 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !808
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !985
  br label %124, !dbg !986

124:                                              ; preds = %109, %19
  ret void, !dbg !986
}

; Function Attrs: nounwind
declare !dbg !987 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !991 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !995 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !997 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1000 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1003 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1006 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1009 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1015 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1016 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1022 {
  %3 = alloca [1 x i8], align 1, !DIAssignID !1083
  %4 = alloca %struct.stat, align 8, !DIAssignID !1084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1042, metadata !DIExpression(), metadata !1084, metadata ptr %4, metadata !DIExpression()), !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1027, metadata !DIExpression()), !dbg !1086
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1028, metadata !DIExpression()), !dbg !1086
  %5 = load ptr, ptr %1, align 8, !dbg !1087, !tbaa !808
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1088
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #39, !dbg !1089
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #39, !dbg !1090
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #39, !dbg !1091
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1092
  br label %10, !dbg !1093

10:                                               ; preds = %20, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1094
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1029, metadata !DIExpression()), !dbg !1086
  switch i32 %11, label %19 [
    i32 -1, label %22
    i32 112, label %20
    i32 128, label %12
    i32 118, label %13
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !1093

12:                                               ; preds = %10
  br label %20, !dbg !1095

13:                                               ; preds = %10
  br label %20, !dbg !1098

14:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #43, !dbg !1099
  unreachable, !dbg !1099

15:                                               ; preds = %10
  %16 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !808
  %17 = load ptr, ptr @Version, align 8, !dbg !1100, !tbaa !808
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #39, !dbg !1100
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %17, ptr noundef %18, ptr noundef null) #39, !dbg !1100
  tail call void @exit(i32 noundef 0) #41, !dbg !1100
  unreachable, !dbg !1100

19:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #43, !dbg !1101
  unreachable, !dbg !1101

20:                                               ; preds = %10, %13, %12
  %21 = phi ptr [ @verbose, %13 ], [ @ignore_fail_on_non_empty, %12 ], [ @remove_empty_parents, %10 ]
  store i1 true, ptr %21, align 1, !dbg !1102
  br label %10, !dbg !1093, !llvm.loop !1103

22:                                               ; preds = %10
  %23 = load i32, ptr @optind, align 4, !dbg !1105, !tbaa !872
  %24 = icmp eq i32 %23, %0, !dbg !1107
  br i1 %24, label %29, label %25, !dbg !1108

25:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1030, metadata !DIExpression()), !dbg !1086
  %26 = icmp slt i32 %23, %0, !dbg !1109
  br i1 %26, label %27, label %138, !dbg !1110

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  br label %31, !dbg !1110

29:                                               ; preds = %22
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1111
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #39, !dbg !1111
  tail call void @usage(i32 noundef 1) #43, !dbg !1113
  unreachable, !dbg !1113

31:                                               ; preds = %27, %129
  %32 = phi i32 [ %23, %27 ], [ %132, %129 ]
  %33 = phi i8 [ 1, %27 ], [ %130, %129 ]
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !1030, metadata !DIExpression()), !dbg !1086
  %34 = sext i32 %32 to i64, !dbg !1114
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1114
  %36 = load ptr, ptr %35, align 8, !dbg !1114, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1031, metadata !DIExpression()), !dbg !1115
  %37 = load i1, ptr @verbose, align 1, !dbg !1116
  br i1 %37, label %38, label %42, !dbg !1118

38:                                               ; preds = %31
  %39 = load ptr, ptr @stdout, align 8, !dbg !1119, !tbaa !808
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1120
  %41 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1121
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %41) #39, !dbg !1122
  br label %42, !dbg !1122

42:                                               ; preds = %38, %31
  %43 = tail call i32 @rmdir(ptr noundef %36) #39, !dbg !1123
  %44 = icmp eq i32 %43, 0, !dbg !1124
  br i1 %44, label %81, label %45, !dbg !1125

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #42, !dbg !1126
  %47 = load i32, ptr %46, align 4, !dbg !1126, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1035, metadata !DIExpression()), !dbg !1127
  %48 = tail call fastcc zeroext i1 @ignorable_failure(i32 noundef %47, ptr noundef %36), !dbg !1128
  br i1 %48, label %129, label %49, !dbg !1130

49:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1038, metadata !DIExpression()), !dbg !1127
  %50 = icmp eq i32 %47, 20, !dbg !1131
  br i1 %50, label %51, label %78, !dbg !1132

51:                                               ; preds = %49
  %52 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #40, !dbg !1133
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1039, metadata !DIExpression()), !dbg !1134
  %53 = icmp eq ptr %52, null, !dbg !1135
  br i1 %53, label %78, label %54, !dbg !1136

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1137
  %56 = load i8, ptr %55, align 1, !dbg !1138, !tbaa !881
  %57 = icmp eq i8 %56, 0, !dbg !1139
  br i1 %57, label %58, label %78, !dbg !1140

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #39, !dbg !1141
  %59 = call i32 @stat(ptr noundef %36, ptr noundef nonnull %4) #39, !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1079, metadata !DIExpression()), !dbg !1085
  %60 = icmp eq i32 %59, 0, !dbg !1143
  br i1 %60, label %64, label %61, !dbg !1143

61:                                               ; preds = %58
  %62 = load i32, ptr %46, align 4, !dbg !1144, !tbaa !872
  %63 = icmp eq i32 %62, 20, !dbg !1145
  br i1 %63, label %77, label %68, !dbg !1146

64:                                               ; preds = %58
  %65 = load i32, ptr %28, align 8, !dbg !1147, !tbaa !1148
  %66 = and i32 %65, 61440, !dbg !1147
  %67 = icmp eq i32 %66, 16384, !dbg !1147
  br i1 %67, label %68, label %77, !dbg !1152

68:                                               ; preds = %64, %61
  %69 = tail call noalias nonnull ptr @xstrdup(ptr noundef %36) #39, !dbg !1153
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !1080, metadata !DIExpression()), !dbg !1154
  %70 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef %36) #39, !dbg !1155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1156, metadata !DIExpression(), metadata !1083, metadata ptr %3, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %36, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #39, !dbg !1166
  %71 = call i64 @readlink(ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef 1) #39, !dbg !1167
  %72 = icmp sgt i64 %71, -1, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #39, !dbg !1170
  br i1 %72, label %73, label %76, !dbg !1171

73:                                               ; preds = %68
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1172
  %75 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %69) #39, !dbg !1172
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #39, !dbg !1172
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1038, metadata !DIExpression()), !dbg !1127
  tail call void @free(ptr noundef nonnull %69) #39, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #39, !dbg !1175
  br label %129, !dbg !1176

76:                                               ; preds = %68
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1038, metadata !DIExpression()), !dbg !1127
  tail call void @free(ptr noundef nonnull %69) #39, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #39, !dbg !1175
  br label %78, !dbg !1176

77:                                               ; preds = %61, %64
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1038, metadata !DIExpression()), !dbg !1127
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #39, !dbg !1175
  br label %78, !dbg !1176

78:                                               ; preds = %76, %49, %54, %51, %77
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1177
  %80 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1177
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %47, ptr noundef %79, ptr noundef %80) #39, !dbg !1177
  br label %129, !dbg !1177

81:                                               ; preds = %42
  %82 = load i1, ptr @remove_empty_parents, align 1, !dbg !1179
  br i1 %82, label %83, label %129, !dbg !1181

83:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr %36, metadata !1182, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1196
  %84 = ptrtoint ptr %36 to i64, !dbg !1199
  %85 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef %36) #39, !dbg !1199
  br label %86, !dbg !1200

86:                                               ; preds = %111, %83
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1196
  %87 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #40, !dbg !1201
  %88 = ptrtoint ptr %87 to i64, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %87, metadata !1188, metadata !DIExpression()), !dbg !1204
  %89 = icmp eq ptr %87, null, !dbg !1202
  br i1 %89, label %123, label %90, !dbg !1205

90:                                               ; preds = %86
  call void @llvm.dbg.value(metadata ptr %87, metadata !1188, metadata !DIExpression()), !dbg !1204
  %91 = icmp ugt ptr %87, %36, !dbg !1206
  br i1 %91, label %92, label %103, !dbg !1207

92:                                               ; preds = %90
  %93 = getelementptr i8, ptr %87, i64 %84, !dbg !1208
  %94 = sub i64 0, %88, !dbg !1208
  %95 = getelementptr i8, ptr %93, i64 %94, !dbg !1208
  br label %96, !dbg !1208

96:                                               ; preds = %100, %92
  %97 = phi ptr [ %101, %100 ], [ %87, %92 ]
  call void @llvm.dbg.value(metadata ptr %97, metadata !1188, metadata !DIExpression()), !dbg !1204
  %98 = load i8, ptr %97, align 1, !dbg !1209, !tbaa !881
  %99 = icmp eq i8 %98, 47, !dbg !1210
  br i1 %99, label %100, label %103, !dbg !1208

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 -1, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %101, metadata !1188, metadata !DIExpression()), !dbg !1204
  %102 = icmp ugt ptr %101, %36, !dbg !1206
  br i1 %102, label %96, label %103, !dbg !1207, !llvm.loop !1212

103:                                              ; preds = %100, %96, %90
  %104 = phi ptr [ %87, %90 ], [ %97, %96 ], [ %95, %100 ], !dbg !1204
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1214
  store i8 0, ptr %105, align 1, !dbg !1215, !tbaa !881
  %106 = load i1, ptr @verbose, align 1, !dbg !1216
  br i1 %106, label %107, label %111, !dbg !1218

107:                                              ; preds = %103
  %108 = load ptr, ptr @stdout, align 8, !dbg !1219, !tbaa !808
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1220
  %110 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1221
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %108, ptr noundef %109, ptr noundef %110) #39, !dbg !1222
  br label %111, !dbg !1222

111:                                              ; preds = %107, %103
  %112 = tail call i32 @rmdir(ptr noundef %36) #39, !dbg !1223
  %113 = icmp eq i32 %112, 0, !dbg !1224
  call void @llvm.dbg.value(metadata i1 %113, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  %114 = tail call ptr @__errno_location() #42, !dbg !1225
  %115 = load i32, ptr %114, align 4, !dbg !1225, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %115, metadata !1190, metadata !DIExpression()), !dbg !1204
  br i1 %113, label %86, label %116, !dbg !1226

116:                                              ; preds = %111
  %117 = tail call fastcc zeroext i1 @ignorable_failure(i32 noundef %115, ptr noundef %36), !dbg !1227
  br i1 %117, label %123, label %118, !dbg !1228

118:                                              ; preds = %116
  %119 = icmp eq i32 %115, 20, !dbg !1229
  %120 = select i1 %119, ptr @.str.18, ptr @.str.60
  call void @llvm.dbg.value(metadata ptr %120, metadata !1191, metadata !DIExpression()), !dbg !1231
  %121 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %120, i32 noundef 5) #39, !dbg !1232
  %122 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #39, !dbg !1232
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %115, ptr noundef %121, ptr noundef %122) #39, !dbg !1232
  br label %123

123:                                              ; preds = %86, %116, %118
  %124 = phi i1 [ true, %116 ], [ false, %118 ], [ true, %86 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1196
  %125 = and i8 %33, 1, !dbg !1233
  %126 = icmp ne i8 %125, 0, !dbg !1233
  %127 = select i1 %124, i1 %126, i1 false, !dbg !1233
  %128 = zext i1 %127 to i8, !dbg !1233
  tail call void @llvm.dbg.value(metadata i8 %128, metadata !1030, metadata !DIExpression()), !dbg !1086
  br label %129, !dbg !1234

129:                                              ; preds = %73, %45, %78, %123, %81
  %130 = phi i8 [ %128, %123 ], [ %33, %81 ], [ %33, %45 ], [ 0, %78 ], [ 0, %73 ], !dbg !1235
  tail call void @llvm.dbg.value(metadata i8 %130, metadata !1030, metadata !DIExpression()), !dbg !1086
  %131 = load i32, ptr @optind, align 4, !dbg !1236, !tbaa !872
  %132 = add nsw i32 %131, 1, !dbg !1236
  store i32 %132, ptr @optind, align 4, !dbg !1236, !tbaa !872
  %133 = icmp slt i32 %132, %0, !dbg !1109
  br i1 %133, label %31, label %134, !dbg !1110, !llvm.loop !1237

134:                                              ; preds = %129
  %135 = and i8 %130, 1, !dbg !1239
  %136 = xor i8 %135, 1, !dbg !1239
  %137 = zext nneg i8 %136 to i32, !dbg !1239
  br label %138, !dbg !1239

138:                                              ; preds = %134, %25
  %139 = phi i32 [ 0, %25 ], [ %137, %134 ], !dbg !1235
  ret i32 %139, !dbg !1240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1241 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1244 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1245 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1248 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1254 noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1256 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32 noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1260 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1264, metadata !DIExpression()), !dbg !1266
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1265, metadata !DIExpression()), !dbg !1266
  %3 = load i1, ptr @ignore_fail_on_non_empty, align 1, !dbg !1267
  br i1 %3, label %4, label %47, !dbg !1268

4:                                                ; preds = %2
  switch i32 %0, label %46 [
    i32 39, label %47
    i32 17, label %47
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !1269

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !1270, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %1, metadata !1275, metadata !DIExpression()), !dbg !1284
  %6 = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef -100, ptr noundef %1, i32 noundef 198912) #39, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %6, metadata !1283, metadata !DIExpression()), !dbg !1284
  %7 = icmp slt i32 %6, 0, !dbg !1287
  br i1 %7, label %8, label %11, !dbg !1289

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #42, !dbg !1290
  %10 = load i32, ptr %9, align 4, !dbg !1290, !tbaa !872
  br label %43, !dbg !1291

11:                                               ; preds = %5
  %12 = tail call ptr @fdopendir(i32 noundef %6) #39, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %12, metadata !1276, metadata !DIExpression()), !dbg !1284
  %13 = icmp eq ptr %12, null, !dbg !1293
  %14 = tail call ptr @__errno_location() #42, !dbg !1284
  br i1 %13, label %15, label %18, !dbg !1295

15:                                               ; preds = %11
  %16 = load i32, ptr %14, align 4, !dbg !1296, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %16, metadata !1282, metadata !DIExpression()), !dbg !1284
  %17 = tail call i32 @close(i32 noundef %6) #39, !dbg !1298
  br label %43, !dbg !1299

18:                                               ; preds = %11
  store i32 0, ptr %14, align 4, !dbg !1300, !tbaa !872
  call void @llvm.dbg.value(metadata ptr %12, metadata !1301, metadata !DIExpression()), !dbg !1318
  br label %19, !dbg !1320

19:                                               ; preds = %26, %18
  %20 = tail call ptr @readdir(ptr noundef nonnull %12) #39, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %20, metadata !1316, metadata !DIExpression()), !dbg !1322
  %21 = icmp eq ptr %20, null, !dbg !1323
  br i1 %21, label %37, label %22, !dbg !1325

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %23, metadata !1327, metadata !DIExpression()), !dbg !1335
  %24 = load i8, ptr %23, align 1, !dbg !1337, !tbaa !881
  %25 = icmp eq i8 %24, 46, !dbg !1338
  br i1 %25, label %26, label %37, !dbg !1339

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, i64 1, !dbg !1340
  %28 = load i8, ptr %27, align 1, !dbg !1340, !tbaa !881
  %29 = icmp eq i8 %28, 46, !dbg !1341
  %30 = select i1 %29, i64 2, i64 1, !dbg !1342
  %31 = getelementptr inbounds i8, ptr %23, i64 %30, !dbg !1343
  %32 = load i8, ptr %31, align 1, !dbg !1343, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %32, metadata !1332, metadata !DIExpression()), !dbg !1344
  %33 = icmp eq i8 %32, 0, !dbg !1345
  %34 = icmp eq i8 %32, 47, !dbg !1346
  %35 = or i1 %33, %34, !dbg !1346
  %36 = freeze i1 %35
  br i1 %36, label %19, label %37, !dbg !1347

37:                                               ; preds = %26, %22, %19
  call void @llvm.dbg.value(metadata i1 %21, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1284
  %38 = load i32, ptr %14, align 4, !dbg !1348, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %38, metadata !1282, metadata !DIExpression()), !dbg !1284
  %39 = tail call i32 @closedir(ptr noundef nonnull %12), !dbg !1349
  %40 = icmp eq i32 %38, 0
  %41 = select i1 %21, i1 %40, i1 false, !dbg !1350
  %42 = select i1 %41, i32 -1, i32 %38, !dbg !1350
  br label %43, !dbg !1351

43:                                               ; preds = %8, %15, %37
  %44 = phi i32 [ %10, %8 ], [ %16, %15 ], [ %42, %37 ], !dbg !1284
  %45 = icmp eq i32 %44, 0, !dbg !1352
  br label %47

46:                                               ; preds = %4
  br label %47, !dbg !1353

47:                                               ; preds = %4, %4, %46, %43, %2
  %48 = phi i1 [ false, %2 ], [ true, %4 ], [ %45, %43 ], [ true, %4 ], [ false, %46 ], !dbg !1266
  ret i1 %48, !dbg !1353
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1354 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1355 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1361 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare !dbg !1364 i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare !dbg !1368 ptr @fdopendir(i32 noundef) local_unnamed_addr #3

declare !dbg !1371 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1374 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1378 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1381 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1421, metadata !DIExpression(), metadata !1433, metadata ptr %3, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1419, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !1435
  %4 = load ptr, ptr @program_name, align 8, !dbg !1436, !tbaa !808
  %5 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef nonnull %0), !dbg !1436
  %6 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.23, ptr noundef nonnull %0), !dbg !1437
  call void @llvm.va_start(ptr nonnull %3), !dbg !1438
  call void @llvm.dbg.value(metadata ptr %0, metadata !1439, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %1, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %3, metadata !1447, metadata !DIExpression()), !dbg !1448
  %7 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #39, !dbg !1450
  call void @llvm.va_end(ptr nonnull %3), !dbg !1451
  call void @llvm.dbg.value(metadata i32 10, metadata !1452, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1459
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1461
  %9 = load ptr, ptr %8, align 8, !dbg !1461, !tbaa !1462
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1461
  %11 = load ptr, ptr %10, align 8, !dbg !1461, !tbaa !1464
  %12 = icmp ult ptr %9, %11, !dbg !1461
  br i1 %12, label %15, label %13, !dbg !1461, !prof !1465

13:                                               ; preds = %2
  %14 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #39, !dbg !1461
  br label %17, !dbg !1461

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1461
  store ptr %16, ptr %8, align 8, !dbg !1461, !tbaa !1462
  store i8 10, ptr %9, align 1, !dbg !1461, !tbaa !881
  br label %17, !dbg !1461

17:                                               ; preds = %13, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !1466
  ret void, !dbg !1466
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

declare !dbg !1467 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare !dbg !1470 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1475, metadata !DIExpression()), !dbg !1476
  store ptr %0, ptr @file_name, align 8, !dbg !1477, !tbaa !808
  ret void, !dbg !1478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1479 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1483, metadata !DIExpression()), !dbg !1484
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1485, !tbaa !1486
  ret void, !dbg !1488
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1489 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1494, !tbaa !808
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1495
  %3 = icmp eq i32 %2, 0, !dbg !1496
  br i1 %3, label %22, label %4, !dbg !1497

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1498, !tbaa !1486, !range !1499, !noundef !839
  %6 = icmp eq i8 %5, 0, !dbg !1498
  br i1 %6, label %11, label %7, !dbg !1500

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1501
  %9 = load i32, ptr %8, align 4, !dbg !1501, !tbaa !872
  %10 = icmp eq i32 %9, 32, !dbg !1502
  br i1 %10, label %22, label %11, !dbg !1503

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #39, !dbg !1504
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1491, metadata !DIExpression()), !dbg !1505
  %13 = load ptr, ptr @file_name, align 8, !dbg !1506, !tbaa !808
  %14 = icmp eq ptr %13, null, !dbg !1506
  %15 = tail call ptr @__errno_location() #42, !dbg !1508
  %16 = load i32, ptr %15, align 4, !dbg !1508, !tbaa !872
  br i1 %14, label %19, label %17, !dbg !1509

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1510
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #39, !dbg !1510
  br label %20, !dbg !1510

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #39, !dbg !1511
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1512, !tbaa !872
  tail call void @_exit(i32 noundef %21) #41, !dbg !1513
  unreachable, !dbg !1513

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1514, !tbaa !808
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1516
  %25 = icmp eq i32 %24, 0, !dbg !1517
  br i1 %25, label %28, label %26, !dbg !1518

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1519, !tbaa !872
  tail call void @_exit(i32 noundef %27) #41, !dbg !1520
  unreachable, !dbg !1520

28:                                               ; preds = %22
  ret void, !dbg !1521
}

; Function Attrs: noreturn
declare !dbg !1522 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local zeroext i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #16 !dbg !1523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1525, metadata !DIExpression()), !dbg !1529
  %2 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1529
  %3 = load i8, ptr %2, align 1, !dbg !1531, !tbaa !881
  %4 = icmp eq i8 %3, 0, !dbg !1531
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1526, metadata !DIExpression()), !dbg !1529
  %6 = tail call i64 @base_len(ptr noundef %5) #40, !dbg !1534
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1535
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1527, metadata !DIExpression()), !dbg !1529
  %8 = load i8, ptr %7, align 1, !dbg !1536, !tbaa !881
  %9 = icmp ne i8 %8, 0, !dbg !1537
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1528, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1529
  store i8 0, ptr %7, align 1, !dbg !1538, !tbaa !881
  ret i1 %9, !dbg !1539
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1540 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1544, metadata !DIExpression()), !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1545, metadata !DIExpression()), !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1546, metadata !DIExpression()), !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1547, metadata !DIExpression()), !dbg !1548
  tail call fastcc void @flush_stdout(), !dbg !1549
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1550, !tbaa !808
  %6 = icmp eq ptr %5, null, !dbg !1550
  br i1 %6, label %8, label %7, !dbg !1552

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1553
  br label %12, !dbg !1553

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1554, !tbaa !808
  %10 = tail call ptr @getprogname() #40, !dbg !1554
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %10) #39, !dbg !1554
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1556
  ret void, !dbg !1557
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1558 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 1, metadata !1562, metadata !DIExpression()), !dbg !1565
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1568
  %2 = icmp slt i32 %1, 0, !dbg !1569
  br i1 %2, label %6, label %3, !dbg !1570

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1571, !tbaa !808
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1571
  br label %6, !dbg !1571

6:                                                ; preds = %3, %0
  ret void, !dbg !1572
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1573 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1579
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1575, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1576, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1577, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1578, metadata !DIExpression()), !dbg !1580
  %6 = load ptr, ptr @stderr, align 8, !dbg !1581, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %6, metadata !1582, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %2, metadata !1622, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %3, metadata !1623, metadata !DIExpression()), !dbg !1624
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1626
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1627, !tbaa !872
  %9 = add i32 %8, 1, !dbg !1627
  store i32 %9, ptr @error_message_count, align 4, !dbg !1627, !tbaa !872
  %10 = icmp eq i32 %1, 0, !dbg !1628
  br i1 %10, label %20, label %11, !dbg !1630

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1631, metadata !DIExpression(), metadata !1579, metadata ptr %5, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %1, metadata !1634, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1641
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %12, metadata !1635, metadata !DIExpression()), !dbg !1639
  %13 = icmp eq ptr %12, null, !dbg !1643
  br i1 %13, label %14, label %16, !dbg !1645

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.36, ptr noundef nonnull @.str.5.37, i32 noundef 5) #39, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %15, metadata !1635, metadata !DIExpression()), !dbg !1639
  br label %16, !dbg !1647

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1639
  call void @llvm.dbg.value(metadata ptr %17, metadata !1635, metadata !DIExpression()), !dbg !1639
  %18 = load ptr, ptr @stderr, align 8, !dbg !1648, !tbaa !808
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.38, ptr noundef %17) #39, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1649
  br label %20, !dbg !1650

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1651, !tbaa !808
  call void @llvm.dbg.value(metadata i32 10, metadata !1652, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %21, metadata !1657, metadata !DIExpression()), !dbg !1658
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1660
  %23 = load ptr, ptr %22, align 8, !dbg !1660, !tbaa !1462
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1660
  %25 = load ptr, ptr %24, align 8, !dbg !1660, !tbaa !1464
  %26 = icmp ult ptr %23, %25, !dbg !1660
  br i1 %26, label %29, label %27, !dbg !1660, !prof !1465

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1660
  br label %31, !dbg !1660

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1660
  store ptr %30, ptr %22, align 8, !dbg !1660, !tbaa !1462
  store i8 10, ptr %23, align 1, !dbg !1660, !tbaa !881
  br label %31, !dbg !1660

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1661, !tbaa !808
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1661
  %34 = icmp eq i32 %0, 0, !dbg !1662
  br i1 %34, label %36, label %35, !dbg !1664

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1665
  unreachable, !dbg !1665

36:                                               ; preds = %31
  ret void, !dbg !1666
}

; Function Attrs: nounwind
declare !dbg !1667 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1670 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1673 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1676 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1683, metadata !DIExpression(), metadata !1688, metadata ptr %4, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1680, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1681, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1682, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1690
  call void @llvm.va_start(ptr nonnull %4), !dbg !1691
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1692
  call void @llvm.va_end(ptr nonnull %4), !dbg !1693
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1694
  ret void, !dbg !1694
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !416 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !427, metadata !DIExpression()), !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !428, metadata !DIExpression()), !dbg !1695
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !430, metadata !DIExpression()), !dbg !1695
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !431, metadata !DIExpression()), !dbg !1695
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !1695
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1696, !tbaa !872
  %8 = icmp eq i32 %7, 0, !dbg !1696
  br i1 %8, label %23, label %9, !dbg !1698

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1699, !tbaa !872
  %11 = icmp eq i32 %10, %3, !dbg !1702
  br i1 %11, label %12, label %22, !dbg !1703

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1704, !tbaa !808
  %14 = icmp eq ptr %13, %2, !dbg !1705
  br i1 %14, label %36, label %15, !dbg !1706

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1707
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1708
  br i1 %18, label %19, label %22, !dbg !1708

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1709
  %21 = icmp eq i32 %20, 0, !dbg !1710
  br i1 %21, label %36, label %22, !dbg !1711

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1712, !tbaa !808
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1713, !tbaa !872
  br label %23, !dbg !1714

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1715
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1716, !tbaa !808
  %25 = icmp eq ptr %24, null, !dbg !1716
  br i1 %25, label %27, label %26, !dbg !1718

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1719
  br label %31, !dbg !1719

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1720, !tbaa !808
  %29 = tail call ptr @getprogname() #40, !dbg !1720
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.41, ptr noundef %29) #39, !dbg !1720
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1722, !tbaa !808
  %33 = icmp eq ptr %2, null, !dbg !1722
  %34 = select i1 %33, ptr @.str.3.42, ptr @.str.2.43, !dbg !1722
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1722
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1723
  br label %36, !dbg !1724

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1724
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1725 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1735
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1734, metadata !DIExpression(), metadata !1735, metadata ptr %6, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1729, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1730, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1731, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1732, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1737
  call void @llvm.va_start(ptr nonnull %6), !dbg !1738
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1739
  call void @llvm.va_end(ptr nonnull %6), !dbg !1740
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1741
  ret void, !dbg !1741
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1742 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1745, !tbaa !808
  ret ptr %1, !dbg !1746
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1749, metadata !DIExpression()), !dbg !1752
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1750, metadata !DIExpression()), !dbg !1752
  %3 = icmp eq ptr %2, null, !dbg !1754
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1754
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1754
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1751, metadata !DIExpression()), !dbg !1752
  %6 = ptrtoint ptr %5 to i64, !dbg !1755
  %7 = ptrtoint ptr %0 to i64, !dbg !1755
  %8 = sub i64 %6, %7, !dbg !1755
  %9 = icmp sgt i64 %8, 6, !dbg !1757
  br i1 %9, label %10, label %19, !dbg !1758

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %11, metadata !1760, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata ptr @.str.61, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i64 7, metadata !1766, metadata !DIExpression()), !dbg !1767
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.61, i64 7), !dbg !1769
  %13 = icmp eq i32 %12, 0, !dbg !1770
  br i1 %13, label %14, label %19, !dbg !1771

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1749, metadata !DIExpression()), !dbg !1752
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.62, i64 noundef 3) #40, !dbg !1772
  %16 = icmp eq i32 %15, 0, !dbg !1775
  %17 = select i1 %16, i64 3, i64 0, !dbg !1776
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1776
  br label %19, !dbg !1776

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1751, metadata !DIExpression()), !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1749, metadata !DIExpression()), !dbg !1752
  store ptr %20, ptr @program_name, align 8, !dbg !1777, !tbaa !808
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1778, !tbaa !808
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1779, !tbaa !808
  ret void, !dbg !1780
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !469 {
  %3 = alloca i32, align 4, !DIAssignID !1781
  call void @llvm.dbg.assign(metadata i1 undef, metadata !479, metadata !DIExpression(), metadata !1781, metadata ptr %3, metadata !DIExpression()), !dbg !1782
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !484, metadata !DIExpression(), metadata !1783, metadata ptr %4, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !476, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !477, metadata !DIExpression()), !dbg !1782
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1784
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !478, metadata !DIExpression()), !dbg !1782
  %6 = icmp eq ptr %5, %0, !dbg !1785
  br i1 %6, label %7, label %14, !dbg !1787

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1788
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %4, metadata !1790, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %4, metadata !1799, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 8, metadata !1806, metadata !DIExpression()), !dbg !1807
  store i64 0, ptr %4, align 8, !dbg !1809
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1810
  %9 = icmp eq i64 %8, 2, !dbg !1812
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1813
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1782
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1814
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1782
  ret ptr %15, !dbg !1814
}

; Function Attrs: nounwind
declare !dbg !1815 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1821 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1826, metadata !DIExpression()), !dbg !1829
  %2 = tail call ptr @__errno_location() #42, !dbg !1830
  %3 = load i32, ptr %2, align 4, !dbg !1830, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1827, metadata !DIExpression()), !dbg !1829
  %4 = icmp eq ptr %0, null, !dbg !1831
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1831
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !1832
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i32 %3, ptr %2, align 4, !dbg !1833, !tbaa !872
  ret ptr %6, !dbg !1834
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1835 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1841, metadata !DIExpression()), !dbg !1842
  %2 = icmp eq ptr %0, null, !dbg !1843
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1843
  %4 = load i32, ptr %3, align 8, !dbg !1844, !tbaa !1845
  ret i32 %4, !dbg !1847
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1848 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1852, metadata !DIExpression()), !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1853, metadata !DIExpression()), !dbg !1854
  %3 = icmp eq ptr %0, null, !dbg !1855
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1855
  store i32 %1, ptr %4, align 8, !dbg !1856, !tbaa !1845
  ret void, !dbg !1857
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1858 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1862, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1864, metadata !DIExpression()), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1865, metadata !DIExpression()), !dbg !1870
  %4 = icmp eq ptr %0, null, !dbg !1871
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1871
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1872
  %7 = lshr i8 %1, 5, !dbg !1873
  %8 = zext nneg i8 %7 to i64, !dbg !1873
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1874
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1866, metadata !DIExpression()), !dbg !1870
  %10 = and i8 %1, 31, !dbg !1875
  %11 = zext nneg i8 %10 to i32, !dbg !1875
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1868, metadata !DIExpression()), !dbg !1870
  %12 = load i32, ptr %9, align 4, !dbg !1876, !tbaa !872
  %13 = lshr i32 %12, %11, !dbg !1877
  %14 = and i32 %13, 1, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1869, metadata !DIExpression()), !dbg !1870
  %15 = xor i32 %13, %2, !dbg !1879
  %16 = and i32 %15, 1, !dbg !1879
  %17 = shl nuw i32 %16, %11, !dbg !1880
  %18 = xor i32 %17, %12, !dbg !1881
  store i32 %18, ptr %9, align 4, !dbg !1881, !tbaa !872
  ret i32 %14, !dbg !1882
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1883 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1887, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1888, metadata !DIExpression()), !dbg !1890
  %3 = icmp eq ptr %0, null, !dbg !1891
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1893
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1887, metadata !DIExpression()), !dbg !1890
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1894
  %6 = load i32, ptr %5, align 4, !dbg !1894, !tbaa !1895
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i32 %1, ptr %5, align 4, !dbg !1896, !tbaa !1895
  ret i32 %6, !dbg !1897
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1898 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1902, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1903, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1904, metadata !DIExpression()), !dbg !1905
  %4 = icmp eq ptr %0, null, !dbg !1906
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1902, metadata !DIExpression()), !dbg !1905
  store i32 10, ptr %5, align 8, !dbg !1909, !tbaa !1845
  %6 = icmp ne ptr %1, null, !dbg !1910
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1912
  br i1 %8, label %10, label %9, !dbg !1912

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1913
  unreachable, !dbg !1913

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1914
  store ptr %1, ptr %11, align 8, !dbg !1915, !tbaa !1916
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1917
  store ptr %2, ptr %12, align 8, !dbg !1918, !tbaa !1919
  ret void, !dbg !1920
}

; Function Attrs: noreturn nounwind
declare !dbg !1921 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1927, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1928, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1929, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1930, metadata !DIExpression()), !dbg !1934
  %6 = icmp eq ptr %4, null, !dbg !1935
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1935
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1931, metadata !DIExpression()), !dbg !1934
  %8 = tail call ptr @__errno_location() #42, !dbg !1936
  %9 = load i32, ptr %8, align 4, !dbg !1936, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1932, metadata !DIExpression()), !dbg !1934
  %10 = load i32, ptr %7, align 8, !dbg !1937, !tbaa !1845
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1938
  %12 = load i32, ptr %11, align 4, !dbg !1938, !tbaa !1895
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1939
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1940
  %15 = load ptr, ptr %14, align 8, !dbg !1940, !tbaa !1916
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1941
  %17 = load ptr, ptr %16, align 8, !dbg !1941, !tbaa !1919
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1942
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1933, metadata !DIExpression()), !dbg !1934
  store i32 %9, ptr %8, align 4, !dbg !1943, !tbaa !872
  ret i64 %18, !dbg !1944
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1945 {
  %10 = alloca i32, align 4, !DIAssignID !2013
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2014
  %12 = alloca i32, align 4, !DIAssignID !2015
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2016
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1991, metadata !DIExpression(), metadata !2017, metadata ptr %14, metadata !DIExpression()), !dbg !2018
  %15 = alloca i32, align 4, !DIAssignID !2019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1994, metadata !DIExpression(), metadata !2019, metadata ptr %15, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1951, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1953, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1954, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1955, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1956, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1957, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1958, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1959, metadata !DIExpression()), !dbg !2021
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2022
  %17 = icmp eq i64 %16, 1, !dbg !2023
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1963, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1964, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !2021
  %18 = trunc i32 %5 to i8, !dbg !2024
  %19 = lshr i8 %18, 1, !dbg !2024
  %20 = and i8 %19, 1, !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1968, metadata !DIExpression()), !dbg !2021
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2025

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2026
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2027
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2028
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2029
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2021
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2030
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2031
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1968, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1965, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1964, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1963, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1954, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1959, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1958, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1955, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.label(metadata !1969), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2021
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
  ], !dbg !2033

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1955, metadata !DIExpression()), !dbg !2021
  br label %114, !dbg !2034

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1955, metadata !DIExpression()), !dbg !2021
  %43 = and i8 %37, 1, !dbg !2035
  %44 = icmp eq i8 %43, 0, !dbg !2035
  br i1 %44, label %45, label %114, !dbg !2034

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2037
  br i1 %46, label %114, label %47, !dbg !2040

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2037, !tbaa !881
  br label %114, !dbg !2037

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !573, metadata !DIExpression(), metadata !2015, metadata ptr %12, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.assign(metadata i1 undef, metadata !574, metadata !DIExpression(), metadata !2016, metadata ptr %13, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr @.str.11.75, metadata !570, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %29, metadata !571, metadata !DIExpression()), !dbg !2041
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.11.75, i32 noundef 5) #39, !dbg !2045
  call void @llvm.dbg.value(metadata ptr %49, metadata !572, metadata !DIExpression()), !dbg !2041
  %50 = icmp eq ptr %49, @.str.11.75, !dbg !2046
  br i1 %50, label %51, label %60, !dbg !2048

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2049
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %13, metadata !2051, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr %13, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2064
  store i64 0, ptr %13, align 8, !dbg !2066
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2067
  %53 = icmp eq i64 %52, 3, !dbg !2069
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2070
  %57 = icmp eq i32 %29, 9, !dbg !2070
  %58 = select i1 %57, ptr @.str.10.77, ptr @.str.12.78, !dbg !2070
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2071
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2041
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1958, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.assign(metadata i1 undef, metadata !573, metadata !DIExpression(), metadata !2013, metadata ptr %10, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.assign(metadata i1 undef, metadata !574, metadata !DIExpression(), metadata !2014, metadata ptr %11, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr @.str.12.78, metadata !570, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %29, metadata !571, metadata !DIExpression()), !dbg !2072
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.12.78, i32 noundef 5) #39, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %62, metadata !572, metadata !DIExpression()), !dbg !2072
  %63 = icmp eq ptr %62, @.str.12.78, !dbg !2075
  br i1 %63, label %64, label %73, !dbg !2076

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %11, metadata !2051, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata ptr %11, metadata !2059, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2081
  store i64 0, ptr %11, align 8, !dbg !2083
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2084
  %66 = icmp eq i64 %65, 3, !dbg !2085
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2086
  %70 = icmp eq i32 %29, 9, !dbg !2086
  %71 = select i1 %70, ptr @.str.10.77, ptr @.str.12.78, !dbg !2086
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2087
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1959, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1958, metadata !DIExpression()), !dbg !2021
  %76 = and i8 %37, 1, !dbg !2088
  %77 = icmp eq i8 %76, 0, !dbg !2088
  br i1 %77, label %78, label %93, !dbg !2089

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1971, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()), !dbg !2021
  %79 = load i8, ptr %74, align 1, !dbg !2091, !tbaa !881
  %80 = icmp eq i8 %79, 0, !dbg !2093
  br i1 %80, label %93, label %81, !dbg !2093

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1971, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1961, metadata !DIExpression()), !dbg !2021
  %85 = icmp ult i64 %84, %40, !dbg !2094
  br i1 %85, label %86, label %88, !dbg !2097

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2094
  store i8 %82, ptr %87, align 1, !dbg !2094, !tbaa !881
  br label %88, !dbg !2094

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1961, metadata !DIExpression()), !dbg !2021
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2098
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1971, metadata !DIExpression()), !dbg !2090
  %91 = load i8, ptr %90, align 1, !dbg !2091, !tbaa !881
  %92 = icmp eq i8 %91, 0, !dbg !2093
  br i1 %92, label %93, label %81, !dbg !2093, !llvm.loop !2099

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1965, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1963, metadata !DIExpression()), !dbg !2021
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1964, metadata !DIExpression()), !dbg !2021
  br label %114, !dbg !2103

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1965, metadata !DIExpression()), !dbg !2021
  br label %98, !dbg !2104

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1965, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1966, metadata !DIExpression()), !dbg !2021
  br label %98, !dbg !2105

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2029
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1965, metadata !DIExpression()), !dbg !2021
  %101 = and i8 %100, 1, !dbg !2106
  %102 = icmp eq i8 %101, 0, !dbg !2106
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2108
  br label %104, !dbg !2108

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2021
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1965, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1955, metadata !DIExpression()), !dbg !2021
  %107 = and i8 %106, 1, !dbg !2109
  %108 = icmp eq i8 %107, 0, !dbg !2109
  br i1 %108, label %109, label %114, !dbg !2111

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2112
  br i1 %110, label %114, label %111, !dbg !2115

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2112, !tbaa !881
  br label %114, !dbg !2112

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !2021
  br label %114, !dbg !2116

113:                                              ; preds = %28
  call void @abort() #41, !dbg !2117
  unreachable, !dbg !2117

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2101
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.77, %45 ], [ @.str.10.77, %47 ], [ @.str.10.77, %42 ], [ %34, %28 ], [ @.str.12.78, %109 ], [ @.str.12.78, %111 ], [ @.str.12.78, %104 ], [ @.str.10.77, %41 ], !dbg !2021
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2021
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2021
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1966, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1965, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1964, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1963, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1959, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1958, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1955, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1976, metadata !DIExpression()), !dbg !2118
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
  br label %138, !dbg !2119

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2101
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2026
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2030
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2031
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2120
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2121
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1968, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1954, metadata !DIExpression()), !dbg !2021
  %147 = icmp eq i64 %139, -1, !dbg !2122
  br i1 %147, label %148, label %152, !dbg !2123

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2124
  %150 = load i8, ptr %149, align 1, !dbg !2124, !tbaa !881
  %151 = icmp eq i8 %150, 0, !dbg !2125
  br i1 %151, label %612, label %154, !dbg !2126

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2127
  br i1 %153, label %612, label %154, !dbg !2126

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !2128
  br i1 %128, label %155, label %170, !dbg !2129

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2131
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2132
  br i1 %157, label %158, label %160, !dbg !2132

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1954, metadata !DIExpression()), !dbg !2021
  br label %160, !dbg !2134

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1954, metadata !DIExpression()), !dbg !2021
  %162 = icmp ugt i64 %156, %161, !dbg !2135
  br i1 %162, label %170, label %163, !dbg !2136

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2137
  call void @llvm.dbg.value(metadata ptr %164, metadata !2138, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr %119, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %120, metadata !2142, metadata !DIExpression()), !dbg !2143
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2145
  %166 = icmp ne i32 %165, 0, !dbg !2146
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2147
  %168 = xor i1 %166, true, !dbg !2147
  %169 = zext i1 %168 to i8, !dbg !2147
  br i1 %167, label %170, label %666, !dbg !2147

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2128
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1954, metadata !DIExpression()), !dbg !2021
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2148
  %175 = load i8, ptr %174, align 1, !dbg !2148, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1983, metadata !DIExpression()), !dbg !2128
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
  ], !dbg !2149

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2150

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2151

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2128
  %179 = and i8 %144, 1, !dbg !2155
  %180 = icmp eq i8 %179, 0, !dbg !2155
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2155
  br i1 %181, label %182, label %198, !dbg !2155

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2157
  br i1 %183, label %184, label %186, !dbg !2161

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2157
  store i8 39, ptr %185, align 1, !dbg !2157, !tbaa !881
  br label %186, !dbg !2157

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1961, metadata !DIExpression()), !dbg !2021
  %188 = icmp ult i64 %187, %146, !dbg !2162
  br i1 %188, label %189, label %191, !dbg !2165

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2162
  store i8 36, ptr %190, align 1, !dbg !2162, !tbaa !881
  br label %191, !dbg !2162

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1961, metadata !DIExpression()), !dbg !2021
  %193 = icmp ult i64 %192, %146, !dbg !2166
  br i1 %193, label %194, label %196, !dbg !2169

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2166
  store i8 39, ptr %195, align 1, !dbg !2166, !tbaa !881
  br label %196, !dbg !2166

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2169
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %198, !dbg !2170

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2021
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1961, metadata !DIExpression()), !dbg !2021
  %201 = icmp ult i64 %199, %146, !dbg !2171
  br i1 %201, label %202, label %204, !dbg !2174

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2171
  store i8 92, ptr %203, align 1, !dbg !2171, !tbaa !881
  br label %204, !dbg !2171

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1961, metadata !DIExpression()), !dbg !2021
  br i1 %125, label %206, label %476, !dbg !2175

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2177
  %208 = icmp ult i64 %207, %171, !dbg !2178
  br i1 %208, label %209, label %465, !dbg !2179

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2180
  %211 = load i8, ptr %210, align 1, !dbg !2180, !tbaa !881
  %212 = add i8 %211, -48, !dbg !2181
  %213 = icmp ult i8 %212, 10, !dbg !2181
  br i1 %213, label %214, label %465, !dbg !2181

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2182
  br i1 %215, label %216, label %218, !dbg !2186

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2182
  store i8 48, ptr %217, align 1, !dbg !2182, !tbaa !881
  br label %218, !dbg !2182

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1961, metadata !DIExpression()), !dbg !2021
  %220 = icmp ult i64 %219, %146, !dbg !2187
  br i1 %220, label %221, label %223, !dbg !2190

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2187
  store i8 48, ptr %222, align 1, !dbg !2187, !tbaa !881
  br label %223, !dbg !2187

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1961, metadata !DIExpression()), !dbg !2021
  br label %465, !dbg !2191

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2192

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2193

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2194

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2196

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2198
  %231 = icmp ult i64 %230, %171, !dbg !2199
  br i1 %231, label %232, label %465, !dbg !2200

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2201
  %234 = load i8, ptr %233, align 1, !dbg !2201, !tbaa !881
  %235 = icmp eq i8 %234, 63, !dbg !2202
  br i1 %235, label %236, label %465, !dbg !2203

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2204
  %238 = load i8, ptr %237, align 1, !dbg !2204, !tbaa !881
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
  ], !dbg !2205

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2206

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1976, metadata !DIExpression()), !dbg !2118
  %241 = icmp ult i64 %140, %146, !dbg !2208
  br i1 %241, label %242, label %244, !dbg !2211

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2208
  store i8 63, ptr %243, align 1, !dbg !2208, !tbaa !881
  br label %244, !dbg !2208

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1961, metadata !DIExpression()), !dbg !2021
  %246 = icmp ult i64 %245, %146, !dbg !2212
  br i1 %246, label %247, label %249, !dbg !2215

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2212
  store i8 34, ptr %248, align 1, !dbg !2212, !tbaa !881
  br label %249, !dbg !2212

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1961, metadata !DIExpression()), !dbg !2021
  %251 = icmp ult i64 %250, %146, !dbg !2216
  br i1 %251, label %252, label %254, !dbg !2219

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2216
  store i8 34, ptr %253, align 1, !dbg !2216, !tbaa !881
  br label %254, !dbg !2216

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1961, metadata !DIExpression()), !dbg !2021
  %256 = icmp ult i64 %255, %146, !dbg !2220
  br i1 %256, label %257, label %259, !dbg !2223

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2220
  store i8 63, ptr %258, align 1, !dbg !2220, !tbaa !881
  br label %259, !dbg !2220

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1961, metadata !DIExpression()), !dbg !2021
  br label %465, !dbg !2224

261:                                              ; preds = %170
  br label %272, !dbg !2225

262:                                              ; preds = %170
  br label %272, !dbg !2226

263:                                              ; preds = %170
  br label %270, !dbg !2227

264:                                              ; preds = %170
  br label %270, !dbg !2228

265:                                              ; preds = %170
  br label %272, !dbg !2229

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2230

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2231

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2234

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2236

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2237
  call void @llvm.dbg.label(metadata !1984), !dbg !2238
  br i1 %133, label %272, label %655, !dbg !2239

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2237
  call void @llvm.dbg.label(metadata !1987), !dbg !2241
  br i1 %124, label %520, label %476, !dbg !2242

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2243

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2244, !tbaa !881
  %277 = icmp eq i8 %276, 0, !dbg !2246
  br i1 %277, label %278, label %465, !dbg !2247

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2248
  br i1 %279, label %280, label %465, !dbg !2250

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2128
  br label %281, !dbg !2251

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1982, metadata !DIExpression()), !dbg !2128
  br i1 %133, label %465, label %655, !dbg !2252

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1982, metadata !DIExpression()), !dbg !2128
  br i1 %132, label %284, label %465, !dbg !2254

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2255

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2258
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2260
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2260
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2260
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1962, metadata !DIExpression()), !dbg !2021
  %291 = icmp ult i64 %140, %290, !dbg !2261
  br i1 %291, label %292, label %294, !dbg !2264

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2261
  store i8 39, ptr %293, align 1, !dbg !2261, !tbaa !881
  br label %294, !dbg !2261

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1961, metadata !DIExpression()), !dbg !2021
  %296 = icmp ult i64 %295, %290, !dbg !2265
  br i1 %296, label %297, label %299, !dbg !2268

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2265
  store i8 92, ptr %298, align 1, !dbg !2265, !tbaa !881
  br label %299, !dbg !2265

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1961, metadata !DIExpression()), !dbg !2021
  %301 = icmp ult i64 %300, %290, !dbg !2269
  br i1 %301, label %302, label %304, !dbg !2272

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2269
  store i8 39, ptr %303, align 1, !dbg !2269, !tbaa !881
  br label %304, !dbg !2269

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2272
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %465, !dbg !2273

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2274

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1988, metadata !DIExpression()), !dbg !2275
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2276
  %309 = load ptr, ptr %308, align 8, !dbg !2276, !tbaa !808
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2276
  %312 = load i16, ptr %311, align 2, !dbg !2276, !tbaa !913
  %313 = and i16 %312, 16384, !dbg !2278
  %314 = icmp ne i16 %313, 0, !dbg !2278
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1990, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2275
  br label %355, !dbg !2279

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %14, metadata !2051, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %14, metadata !2059, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 8, metadata !2063, metadata !DIExpression()), !dbg !2283
  store i64 0, ptr %14, align 8, !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2275
  %316 = icmp eq i64 %171, -1, !dbg !2286
  br i1 %316, label %317, label %319, !dbg !2288

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1954, metadata !DIExpression()), !dbg !2021
  br label %319, !dbg !2290

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1954, metadata !DIExpression()), !dbg !2021
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2291
  %321 = sub i64 %320, %145, !dbg !2292
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1998, metadata !DIExpression()), !dbg !2020
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2294

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()), !dbg !2275
  %324 = icmp ult i64 %145, %320, !dbg !2295
  br i1 %324, label %326, label %351, !dbg !2297

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2275
  br label %351, !dbg !2298

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1988, metadata !DIExpression()), !dbg !2275
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2300
  %330 = load i8, ptr %329, align 1, !dbg !2300, !tbaa !881
  %331 = icmp eq i8 %330, 0, !dbg !2297
  br i1 %331, label %351, label %332, !dbg !2301

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1988, metadata !DIExpression()), !dbg !2275
  %334 = add i64 %333, %145, !dbg !2303
  %335 = icmp eq i64 %333, %321, !dbg !2295
  br i1 %335, label %351, label %326, !dbg !2297, !llvm.loop !2304

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1999, metadata !DIExpression()), !dbg !2305
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2306
  %339 = and i1 %338, %132, !dbg !2306
  br i1 %339, label %340, label %347, !dbg !2306

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1999, metadata !DIExpression()), !dbg !2305
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2307
  %343 = load i8, ptr %342, align 1, !dbg !2307, !tbaa !881
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2309

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1999, metadata !DIExpression()), !dbg !2305
  %346 = icmp eq i64 %345, %322, !dbg !2311
  br i1 %346, label %347, label %340, !dbg !2312, !llvm.loop !2313

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2315, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %348, metadata !2317, metadata !DIExpression()), !dbg !2325
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2327
  %350 = icmp ne i32 %349, 0, !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1988, metadata !DIExpression()), !dbg !2275
  br label %351, !dbg !2329

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1988, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2331
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2331
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2128
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2332
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1988, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1954, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2128
  %359 = icmp ult i64 %357, 2, !dbg !2333
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2334
  br i1 %361, label %461, label %362, !dbg !2334

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2007, metadata !DIExpression()), !dbg !2336
  br label %364, !dbg !2337

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2021
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2120
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2118
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2128
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2338
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1961, metadata !DIExpression()), !dbg !2021
  br i1 %360, label %417, label %371, !dbg !2339

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2344

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2128
  %373 = and i8 %366, 1, !dbg !2347
  %374 = icmp eq i8 %373, 0, !dbg !2347
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2347
  br i1 %375, label %376, label %392, !dbg !2347

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2349
  br i1 %377, label %378, label %380, !dbg !2353

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2349
  store i8 39, ptr %379, align 1, !dbg !2349, !tbaa !881
  br label %380, !dbg !2349

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1961, metadata !DIExpression()), !dbg !2021
  %382 = icmp ult i64 %381, %146, !dbg !2354
  br i1 %382, label %383, label %385, !dbg !2357

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2354
  store i8 36, ptr %384, align 1, !dbg !2354, !tbaa !881
  br label %385, !dbg !2354

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1961, metadata !DIExpression()), !dbg !2021
  %387 = icmp ult i64 %386, %146, !dbg !2358
  br i1 %387, label %388, label %390, !dbg !2361

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2358
  store i8 39, ptr %389, align 1, !dbg !2358, !tbaa !881
  br label %390, !dbg !2358

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2361
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %392, !dbg !2362

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2021
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1961, metadata !DIExpression()), !dbg !2021
  %395 = icmp ult i64 %393, %146, !dbg !2363
  br i1 %395, label %396, label %398, !dbg !2366

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2363
  store i8 92, ptr %397, align 1, !dbg !2363, !tbaa !881
  br label %398, !dbg !2363

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1961, metadata !DIExpression()), !dbg !2021
  %400 = icmp ult i64 %399, %146, !dbg !2367
  br i1 %400, label %401, label %405, !dbg !2370

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2367
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2367
  store i8 %403, ptr %404, align 1, !dbg !2367, !tbaa !881
  br label %405, !dbg !2367

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1961, metadata !DIExpression()), !dbg !2021
  %407 = icmp ult i64 %406, %146, !dbg !2371
  br i1 %407, label %408, label %413, !dbg !2374

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2371
  %411 = or disjoint i8 %410, 48, !dbg !2371
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2371
  store i8 %411, ptr %412, align 1, !dbg !2371, !tbaa !881
  br label %413, !dbg !2371

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2374
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1961, metadata !DIExpression()), !dbg !2021
  %415 = and i8 %370, 7, !dbg !2375
  %416 = or disjoint i8 %415, 48, !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1983, metadata !DIExpression()), !dbg !2128
  br label %426, !dbg !2377

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2378
  %419 = icmp eq i8 %418, 0, !dbg !2378
  br i1 %419, label %426, label %420, !dbg !2380

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2381
  br i1 %421, label %422, label %424, !dbg !2385

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2381
  store i8 92, ptr %423, align 1, !dbg !2381, !tbaa !881
  br label %424, !dbg !2381

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2128
  br label %426, !dbg !2386

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2021
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2120
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2128
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2128
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1961, metadata !DIExpression()), !dbg !2021
  %432 = add i64 %367, 1, !dbg !2387
  %433 = icmp ugt i64 %363, %432, !dbg !2389
  br i1 %433, label %434, label %463, !dbg !2390

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2391
  %436 = icmp ne i8 %435, 0, !dbg !2391
  %437 = and i8 %430, 1, !dbg !2391
  %438 = icmp eq i8 %437, 0, !dbg !2391
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2391
  br i1 %439, label %440, label %451, !dbg !2391

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2394
  br i1 %441, label %442, label %444, !dbg !2398

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2394
  store i8 39, ptr %443, align 1, !dbg !2394, !tbaa !881
  br label %444, !dbg !2394

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1961, metadata !DIExpression()), !dbg !2021
  %446 = icmp ult i64 %445, %146, !dbg !2399
  br i1 %446, label %447, label %449, !dbg !2402

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2399
  store i8 39, ptr %448, align 1, !dbg !2399, !tbaa !881
  br label %449, !dbg !2399

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %451, !dbg !2403

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2404
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1961, metadata !DIExpression()), !dbg !2021
  %454 = icmp ult i64 %452, %146, !dbg !2405
  br i1 %454, label %455, label %457, !dbg !2408

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2405
  store i8 %431, ptr %456, align 1, !dbg !2405, !tbaa !881
  br label %457, !dbg !2405

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1976, metadata !DIExpression()), !dbg !2118
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2409
  %460 = load i8, ptr %459, align 1, !dbg !2409, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1983, metadata !DIExpression()), !dbg !2128
  br label %364, !dbg !2410, !llvm.loop !2411

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1954, metadata !DIExpression()), !dbg !2021
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1954, metadata !DIExpression()), !dbg !2021
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2414
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2021
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2026
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2021
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2021
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2118
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2128
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2128
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2128
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1978, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1954, metadata !DIExpression()), !dbg !2021
  br i1 %126, label %487, label %476, !dbg !2415

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
  br i1 %137, label %488, label %509, !dbg !2417

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2418

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
  %499 = lshr i8 %490, 5, !dbg !2419
  %500 = zext nneg i8 %499 to i64, !dbg !2419
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2420
  %502 = load i32, ptr %501, align 4, !dbg !2420, !tbaa !872
  %503 = and i8 %490, 31, !dbg !2421
  %504 = zext nneg i8 %503 to i32, !dbg !2421
  %505 = shl nuw i32 1, %504, !dbg !2422
  %506 = and i32 %502, %505, !dbg !2422
  %507 = icmp eq i32 %506, 0, !dbg !2422
  %508 = and i1 %172, %507, !dbg !2423
  br i1 %508, label %558, label %520, !dbg !2423

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
  br i1 %172, label %558, label %520, !dbg !2424

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2414
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2021
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2026
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2030
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2120
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2425
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2128
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2128
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1954, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.label(metadata !2010), !dbg !2426
  br i1 %131, label %530, label %659, !dbg !2427

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2128
  %531 = and i8 %525, 1, !dbg !2429
  %532 = icmp eq i8 %531, 0, !dbg !2429
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2429
  br i1 %533, label %534, label %550, !dbg !2429

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2431
  br i1 %535, label %536, label %538, !dbg !2435

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2431
  store i8 39, ptr %537, align 1, !dbg !2431, !tbaa !881
  br label %538, !dbg !2431

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2435
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1961, metadata !DIExpression()), !dbg !2021
  %540 = icmp ult i64 %539, %529, !dbg !2436
  br i1 %540, label %541, label %543, !dbg !2439

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2436
  store i8 36, ptr %542, align 1, !dbg !2436, !tbaa !881
  br label %543, !dbg !2436

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1961, metadata !DIExpression()), !dbg !2021
  %545 = icmp ult i64 %544, %529, !dbg !2440
  br i1 %545, label %546, label %548, !dbg !2443

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2440
  store i8 39, ptr %547, align 1, !dbg !2440, !tbaa !881
  br label %548, !dbg !2440

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %550, !dbg !2444

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2128
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1961, metadata !DIExpression()), !dbg !2021
  %553 = icmp ult i64 %551, %529, !dbg !2445
  br i1 %553, label %554, label %556, !dbg !2448

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2445
  store i8 92, ptr %555, align 1, !dbg !2445, !tbaa !881
  br label %556, !dbg !2445

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1954, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.label(metadata !2011), !dbg !2449
  br label %585, !dbg !2450

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2414
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2021
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2026
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2030
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2120
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2425
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2128
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2128
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2453
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1983, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1982, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1981, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1954, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.label(metadata !2011), !dbg !2449
  %569 = and i8 %563, 1, !dbg !2450
  %570 = icmp ne i8 %569, 0, !dbg !2450
  %571 = and i8 %565, 1, !dbg !2450
  %572 = icmp eq i8 %571, 0, !dbg !2450
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2450
  br i1 %573, label %574, label %585, !dbg !2450

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2454
  br i1 %575, label %576, label %578, !dbg !2458

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2454
  store i8 39, ptr %577, align 1, !dbg !2454, !tbaa !881
  br label %578, !dbg !2454

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1961, metadata !DIExpression()), !dbg !2021
  %580 = icmp ult i64 %579, %568, !dbg !2459
  br i1 %580, label %581, label %583, !dbg !2462

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2459
  store i8 39, ptr %582, align 1, !dbg !2459, !tbaa !881
  br label %583, !dbg !2459

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2021
  br label %585, !dbg !2463

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2128
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1961, metadata !DIExpression()), !dbg !2021
  %595 = icmp ult i64 %593, %586, !dbg !2464
  br i1 %595, label %596, label %598, !dbg !2467

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2464
  store i8 %587, ptr %597, align 1, !dbg !2464, !tbaa !881
  br label %598, !dbg !2464

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1961, metadata !DIExpression()), !dbg !2021
  %600 = icmp eq i8 %588, 0, !dbg !2468
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1968, metadata !DIExpression()), !dbg !2021
  br label %602, !dbg !2471

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2414
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2021
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2026
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2030
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2031
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2120
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2425
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1976, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1970, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1968, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1954, metadata !DIExpression()), !dbg !2021
  %611 = add i64 %609, 1, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1976, metadata !DIExpression()), !dbg !2118
  br label %138, !dbg !2473, !llvm.loop !2474

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1952, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1968, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1967, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1962, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1961, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1954, metadata !DIExpression()), !dbg !2021
  %613 = icmp eq i64 %140, 0, !dbg !2476
  %614 = and i1 %132, %613, !dbg !2478
  %615 = xor i1 %614, true, !dbg !2478
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2478
  br i1 %616, label %617, label %655, !dbg !2478

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2479
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2479
  br i1 %621, label %622, label %631, !dbg !2479

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2481
  %624 = icmp eq i8 %623, 0, !dbg !2481
  br i1 %624, label %627, label %625, !dbg !2484

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2485
  br label %672, !dbg !2486

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2487
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2489
  br i1 %630, label %28, label %631, !dbg !2489

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2490
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2492
  br i1 %634, label %635, label %650, !dbg !2492

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1963, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1961, metadata !DIExpression()), !dbg !2021
  %636 = load i8, ptr %119, align 1, !dbg !2493, !tbaa !881
  %637 = icmp eq i8 %636, 0, !dbg !2496
  br i1 %637, label %650, label %638, !dbg !2496

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1963, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1961, metadata !DIExpression()), !dbg !2021
  %642 = icmp ult i64 %641, %146, !dbg !2497
  br i1 %642, label %643, label %645, !dbg !2500

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2497
  store i8 %639, ptr %644, align 1, !dbg !2497, !tbaa !881
  br label %645, !dbg !2497

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1961, metadata !DIExpression()), !dbg !2021
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2501
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1963, metadata !DIExpression()), !dbg !2021
  %648 = load i8, ptr %647, align 1, !dbg !2493, !tbaa !881
  %649 = icmp eq i8 %648, 0, !dbg !2496
  br i1 %649, label %650, label %638, !dbg !2496, !llvm.loop !2502

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1961, metadata !DIExpression()), !dbg !2021
  %652 = icmp ult i64 %651, %146, !dbg !2504
  br i1 %652, label %653, label %672, !dbg !2506

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2507
  store i8 0, ptr %654, align 1, !dbg !2508, !tbaa !881
  br label %672, !dbg !2507

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2012), !dbg !2509
  %657 = icmp eq i8 %123, 0, !dbg !2510
  %658 = select i1 %657, i32 2, i32 4, !dbg !2510
  br label %666, !dbg !2510

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2012), !dbg !2509
  %662 = icmp eq i32 %115, 2, !dbg !2512
  %663 = icmp eq i8 %123, 0, !dbg !2510
  %664 = select i1 %663, i32 2, i32 4, !dbg !2510
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2510
  br label %666, !dbg !2510

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1955, metadata !DIExpression()), !dbg !2021
  %670 = and i32 %5, -3, !dbg !2513
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2514
  br label %672, !dbg !2515

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2516
}

; Function Attrs: nounwind
declare !dbg !2517 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2520 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2523 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2525 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2529, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr null, metadata !2539, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !2546
  %4 = icmp eq ptr %2, null, !dbg !2548
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %5, metadata !2541, metadata !DIExpression()), !dbg !2546
  %6 = tail call ptr @__errno_location() #42, !dbg !2549
  %7 = load i32, ptr %6, align 4, !dbg !2549, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %7, metadata !2542, metadata !DIExpression()), !dbg !2546
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2550
  %9 = load i32, ptr %8, align 4, !dbg !2550, !tbaa !1895
  %10 = or i32 %9, 1, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %10, metadata !2543, metadata !DIExpression()), !dbg !2546
  %11 = load i32, ptr %5, align 8, !dbg !2552, !tbaa !1845
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2553
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2554
  %14 = load ptr, ptr %13, align 8, !dbg !2554, !tbaa !1916
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2555
  %16 = load ptr, ptr %15, align 8, !dbg !2555, !tbaa !1919
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2556
  %18 = add i64 %17, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %18, metadata !2544, metadata !DIExpression()), !dbg !2546
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %19, metadata !2545, metadata !DIExpression()), !dbg !2546
  %20 = load i32, ptr %5, align 8, !dbg !2559, !tbaa !1845
  %21 = load ptr, ptr %13, align 8, !dbg !2560, !tbaa !1916
  %22 = load ptr, ptr %15, align 8, !dbg !2561, !tbaa !1919
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2562
  store i32 %7, ptr %6, align 4, !dbg !2563, !tbaa !872
  ret ptr %19, !dbg !2564
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2534 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2539, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2540, metadata !DIExpression()), !dbg !2565
  %5 = icmp eq ptr %3, null, !dbg !2566
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2566
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2541, metadata !DIExpression()), !dbg !2565
  %7 = tail call ptr @__errno_location() #42, !dbg !2567
  %8 = load i32, ptr %7, align 4, !dbg !2567, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2542, metadata !DIExpression()), !dbg !2565
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2568
  %10 = load i32, ptr %9, align 4, !dbg !2568, !tbaa !1895
  %11 = icmp eq ptr %2, null, !dbg !2569
  %12 = zext i1 %11 to i32, !dbg !2569
  %13 = or i32 %10, %12, !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2543, metadata !DIExpression()), !dbg !2565
  %14 = load i32, ptr %6, align 8, !dbg !2571, !tbaa !1845
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2572
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2573
  %17 = load ptr, ptr %16, align 8, !dbg !2573, !tbaa !1916
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2574
  %19 = load ptr, ptr %18, align 8, !dbg !2574, !tbaa !1919
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2575
  %21 = add i64 %20, 1, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2544, metadata !DIExpression()), !dbg !2565
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2577
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2545, metadata !DIExpression()), !dbg !2565
  %23 = load i32, ptr %6, align 8, !dbg !2578, !tbaa !1845
  %24 = load ptr, ptr %16, align 8, !dbg !2579, !tbaa !1916
  %25 = load ptr, ptr %18, align 8, !dbg !2580, !tbaa !1919
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2581
  store i32 %8, ptr %7, align 4, !dbg !2582, !tbaa !872
  br i1 %11, label %28, label %27, !dbg !2583

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2584, !tbaa !2586
  br label %28, !dbg !2587

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2588
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2589 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2594, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2591, metadata !DIExpression()), !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2596
  %2 = load i32, ptr @nslots, align 4, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2592, metadata !DIExpression()), !dbg !2596
  %3 = icmp sgt i32 %2, 1, !dbg !2597
  br i1 %3, label %4, label %6, !dbg !2599

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2597
  br label %10, !dbg !2599

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2600
  %8 = load ptr, ptr %7, align 8, !dbg !2600, !tbaa !2602
  %9 = icmp eq ptr %8, @slot0, !dbg !2604
  br i1 %9, label %17, label %16, !dbg !2605

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2592, metadata !DIExpression()), !dbg !2596
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2606
  %13 = load ptr, ptr %12, align 8, !dbg !2606, !tbaa !2602
  tail call void @free(ptr noundef %13) #39, !dbg !2607
  %14 = add nuw nsw i64 %11, 1, !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2592, metadata !DIExpression()), !dbg !2596
  %15 = icmp eq i64 %14, %5, !dbg !2597
  br i1 %15, label %6, label %10, !dbg !2599, !llvm.loop !2609

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2611
  store i64 256, ptr @slotvec0, align 8, !dbg !2613, !tbaa !2614
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2615, !tbaa !2602
  br label %17, !dbg !2616

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2617
  br i1 %18, label %20, label %19, !dbg !2619

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2620
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2622, !tbaa !808
  br label %20, !dbg !2623

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2624, !tbaa !872
  ret void, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2626 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2630
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2631
  ret ptr %3, !dbg !2632
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2633 {
  %5 = alloca i64, align 8, !DIAssignID !2653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2647, metadata !DIExpression(), metadata !2653, metadata ptr %5, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2639, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2640, metadata !DIExpression()), !dbg !2655
  %6 = tail call ptr @__errno_location() #42, !dbg !2656
  %7 = load i32, ptr %6, align 4, !dbg !2656, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2641, metadata !DIExpression()), !dbg !2655
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2657, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2642, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2643, metadata !DIExpression()), !dbg !2655
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2658
  br i1 %9, label %10, label %11, !dbg !2658

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2660
  unreachable, !dbg !2660

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2661, !tbaa !872
  %13 = icmp sgt i32 %12, %0, !dbg !2662
  br i1 %13, label %32, label %14, !dbg !2663

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2664
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2654
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2665
  %16 = sext i32 %12 to i64, !dbg !2666
  store i64 %16, ptr %5, align 8, !dbg !2667, !tbaa !2586, !DIAssignID !2668
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2647, metadata !DIExpression(), metadata !2668, metadata ptr %5, metadata !DIExpression()), !dbg !2654
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2669
  %18 = add nuw nsw i32 %0, 1, !dbg !2670
  %19 = sub i32 %18, %12, !dbg !2671
  %20 = sext i32 %19 to i64, !dbg !2672
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2642, metadata !DIExpression()), !dbg !2655
  store ptr %21, ptr @slotvec, align 8, !dbg !2674, !tbaa !808
  br i1 %15, label %22, label %23, !dbg !2675

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2676, !tbaa.struct !2678
  br label %23, !dbg !2679

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2680, !tbaa !872
  %25 = sext i32 %24 to i64, !dbg !2681
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2681
  %27 = load i64, ptr %5, align 8, !dbg !2682, !tbaa !2586
  %28 = sub nsw i64 %27, %25, !dbg !2683
  %29 = shl i64 %28, 4, !dbg !2684
  call void @llvm.dbg.value(metadata ptr %26, metadata !2059, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %29, metadata !2063, metadata !DIExpression()), !dbg !2685
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2687
  %30 = load i64, ptr %5, align 8, !dbg !2688, !tbaa !2586
  %31 = trunc i64 %30 to i32, !dbg !2688
  store i32 %31, ptr @nslots, align 4, !dbg !2689, !tbaa !872
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2690
  br label %32, !dbg !2691

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2642, metadata !DIExpression()), !dbg !2655
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2692
  %36 = load i64, ptr %35, align 8, !dbg !2693, !tbaa !2614
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2648, metadata !DIExpression()), !dbg !2694
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2695
  %38 = load ptr, ptr %37, align 8, !dbg !2695, !tbaa !2602
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2650, metadata !DIExpression()), !dbg !2694
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2696
  %40 = load i32, ptr %39, align 4, !dbg !2696, !tbaa !1895
  %41 = or i32 %40, 1, !dbg !2697
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2651, metadata !DIExpression()), !dbg !2694
  %42 = load i32, ptr %3, align 8, !dbg !2698, !tbaa !1845
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2699
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2700
  %45 = load ptr, ptr %44, align 8, !dbg !2700, !tbaa !1916
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2701
  %47 = load ptr, ptr %46, align 8, !dbg !2701, !tbaa !1919
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2652, metadata !DIExpression()), !dbg !2694
  %49 = icmp ugt i64 %36, %48, !dbg !2703
  br i1 %49, label %60, label %50, !dbg !2705

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2648, metadata !DIExpression()), !dbg !2694
  store i64 %51, ptr %35, align 8, !dbg !2708, !tbaa !2614
  %52 = icmp eq ptr %38, @slot0, !dbg !2709
  br i1 %52, label %54, label %53, !dbg !2711

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2712
  br label %54, !dbg !2712

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2713
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2650, metadata !DIExpression()), !dbg !2694
  store ptr %55, ptr %37, align 8, !dbg !2714, !tbaa !2602
  %56 = load i32, ptr %3, align 8, !dbg !2715, !tbaa !1845
  %57 = load ptr, ptr %44, align 8, !dbg !2716, !tbaa !1916
  %58 = load ptr, ptr %46, align 8, !dbg !2717, !tbaa !1919
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2718
  br label %60, !dbg !2719

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2694
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2650, metadata !DIExpression()), !dbg !2694
  store i32 %7, ptr %6, align 4, !dbg !2720, !tbaa !872
  ret ptr %61, !dbg !2721
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2722 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2727, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2728, metadata !DIExpression()), !dbg !2729
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2730
  ret ptr %4, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2732 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2736
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2738
  ret ptr %2, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %0, metadata !2727, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2747
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2749
  ret ptr %3, !dbg !2750
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2751 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2759
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2758, metadata !DIExpression(), metadata !2759, metadata ptr %4, metadata !DIExpression()), !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2756, metadata !DIExpression()), !dbg !2760
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2757, metadata !DIExpression()), !dbg !2760
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %1, metadata !2766, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2771, metadata !DIExpression()), !dbg !2774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2774, !alias.scope !2762, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i8 0, metadata !2758, metadata !DIExpression(), metadata !2775, metadata ptr %4, metadata !DIExpression()), !dbg !2760
  %5 = icmp eq i32 %1, 10, !dbg !2776
  br i1 %5, label %6, label %7, !dbg !2778

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2779, !noalias !2762
  unreachable, !dbg !2779

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2780, !tbaa !1845, !alias.scope !2762, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2781, metadata ptr %4, metadata !DIExpression()), !dbg !2760
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2782
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2783
  ret ptr %8, !dbg !2784
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2785 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2793, metadata !DIExpression(), metadata !2794, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2790, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797), !dbg !2800
  call void @llvm.dbg.value(metadata i32 %1, metadata !2766, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2771, metadata !DIExpression()), !dbg !2803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2803, !alias.scope !2797, !DIAssignID !2804
  call void @llvm.dbg.assign(metadata i8 0, metadata !2793, metadata !DIExpression(), metadata !2804, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  %6 = icmp eq i32 %1, 10, !dbg !2805
  br i1 %6, label %7, label %8, !dbg !2806

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2807, !noalias !2797
  unreachable, !dbg !2807

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2808, !tbaa !1845, !alias.scope !2797, !DIAssignID !2809
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2809, metadata ptr %5, metadata !DIExpression()), !dbg !2795
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2810
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2811
  ret ptr %9, !dbg !2812
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2813 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2819
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2758, metadata !DIExpression(), metadata !2819, metadata ptr %3, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !2757, metadata !DIExpression()), !dbg !2821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2771, metadata !DIExpression()), !dbg !2830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2830, !alias.scope !2824, !DIAssignID !2831
  call void @llvm.dbg.assign(metadata i8 0, metadata !2758, metadata !DIExpression(), metadata !2831, metadata ptr %3, metadata !DIExpression()), !dbg !2821
  %4 = icmp eq i32 %0, 10, !dbg !2832
  br i1 %4, label %5, label %6, !dbg !2833

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2834, !noalias !2824
  unreachable, !dbg !2834

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2835, !tbaa !1845, !alias.scope !2824, !DIAssignID !2836
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2836, metadata ptr %3, metadata !DIExpression()), !dbg !2821
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2837
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2838
  ret ptr %7, !dbg !2839
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2840 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2847
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2844, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2845, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2793, metadata !DIExpression(), metadata !2847, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %2, metadata !2792, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2771, metadata !DIExpression()), !dbg !2858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2858, !alias.scope !2852, !DIAssignID !2859
  call void @llvm.dbg.assign(metadata i8 0, metadata !2793, metadata !DIExpression(), metadata !2859, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  %5 = icmp eq i32 %0, 10, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2861

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2862, !noalias !2852
  unreachable, !dbg !2862

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2863, !tbaa !1845, !alias.scope !2852, !DIAssignID !2864
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2864, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2865
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2866
  ret ptr %8, !dbg !2867
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2868 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2876, metadata ptr %4, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2879, !tbaa.struct !2880, !DIAssignID !2881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2881, metadata ptr %4, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1862, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1863, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1865, metadata !DIExpression()), !dbg !2882
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2884
  %6 = lshr i8 %2, 5, !dbg !2885
  %7 = zext nneg i8 %6 to i64, !dbg !2885
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1866, metadata !DIExpression()), !dbg !2882
  %9 = and i8 %2, 31, !dbg !2887
  %10 = zext nneg i8 %9 to i32, !dbg !2887
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1868, metadata !DIExpression()), !dbg !2882
  %11 = load i32, ptr %8, align 4, !dbg !2888, !tbaa !872
  %12 = lshr i32 %11, %10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2882
  %13 = and i32 %12, 1, !dbg !2890
  %14 = xor i32 %13, 1, !dbg !2890
  %15 = shl nuw i32 %14, %10, !dbg !2891
  %16 = xor i32 %15, %11, !dbg !2892
  store i32 %16, ptr %8, align 4, !dbg !2892, !tbaa !872
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2893
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2894
  ret ptr %17, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2896 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2902
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2902, metadata ptr %3, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 -1, metadata !2873, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 %1, metadata !2874, metadata !DIExpression()), !dbg !2904
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2907, !tbaa.struct !2880, !DIAssignID !2908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2908, metadata ptr %3, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %3, metadata !1862, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8 %1, metadata !1865, metadata !DIExpression()), !dbg !2909
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2911
  %5 = lshr i8 %1, 5, !dbg !2912
  %6 = zext nneg i8 %5 to i64, !dbg !2912
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2913
  call void @llvm.dbg.value(metadata ptr %7, metadata !1866, metadata !DIExpression()), !dbg !2909
  %8 = and i8 %1, 31, !dbg !2914
  %9 = zext nneg i8 %8 to i32, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %9, metadata !1868, metadata !DIExpression()), !dbg !2909
  %10 = load i32, ptr %7, align 4, !dbg !2915, !tbaa !872
  %11 = lshr i32 %10, %9, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %11, metadata !1869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2909
  %12 = and i32 %11, 1, !dbg !2917
  %13 = xor i32 %12, 1, !dbg !2917
  %14 = shl nuw i32 %13, %9, !dbg !2918
  %15 = xor i32 %14, %10, !dbg !2919
  store i32 %15, ptr %7, align 4, !dbg !2919, !tbaa !872
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2920
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2921
  ret ptr %16, !dbg !2922
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2923 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2926
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8 58, metadata !2901, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2926, metadata ptr %2, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 -1, metadata !2873, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 58, metadata !2874, metadata !DIExpression()), !dbg !2930
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2933, !tbaa.struct !2880, !DIAssignID !2934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2934, metadata ptr %2, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()), !dbg !2935
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2937
  call void @llvm.dbg.value(metadata ptr %3, metadata !1866, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()), !dbg !2935
  %4 = load i32, ptr %3, align 4, !dbg !2938, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %4, metadata !1869, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2935
  %5 = or i32 %4, 67108864, !dbg !2939
  store i32 %5, ptr %3, align 4, !dbg !2939, !tbaa !872
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2940
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2941
  ret ptr %6, !dbg !2942
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2943 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2947
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2947, metadata ptr %3, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !2874, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2952, !tbaa.struct !2880, !DIAssignID !2953
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2953, metadata ptr %3, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %3, metadata !1862, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()), !dbg !2954
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %4, metadata !1866, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()), !dbg !2954
  %5 = load i32, ptr %4, align 4, !dbg !2957, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %5, metadata !1869, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2954
  %6 = or i32 %5, 67108864, !dbg !2958
  store i32 %6, ptr %4, align 4, !dbg !2958, !tbaa !872
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2959
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2960
  ret ptr %7, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2962 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2967, metadata !DIExpression(), metadata !2968, metadata ptr %4, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2771, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2970
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2966, metadata !DIExpression()), !dbg !2969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %1, metadata !2766, metadata !DIExpression()), !dbg !2973
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2973
  %5 = icmp eq i32 %1, 10, !dbg !2974
  br i1 %5, label %6, label %7, !dbg !2975

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2976, !noalias !2977
  unreachable, !dbg !2976

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2973
  store i32 %1, ptr %4, align 8, !dbg !2980, !tbaa.struct !2880, !DIAssignID !2981
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2980
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2967, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2981, metadata ptr %4, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2967, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2982, metadata ptr %8, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1862, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1865, metadata !DIExpression()), !dbg !2983
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1866, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1868, metadata !DIExpression()), !dbg !2983
  %10 = load i32, ptr %9, align 4, !dbg !2986, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1869, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2983
  %11 = or i32 %10, 67108864, !dbg !2987
  store i32 %11, ptr %9, align 4, !dbg !2987, !tbaa !872, !DIAssignID !2988
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2967, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2988, metadata ptr %9, metadata !DIExpression()), !dbg !2969
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2990
  ret ptr %12, !dbg !2991
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2992 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3000
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2997, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2998, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3000, metadata ptr %5, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %0, metadata !3007, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %1, metadata !3008, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %2, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %3, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 -1, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3015, !tbaa.struct !2880, !DIAssignID !3016
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3016, metadata ptr %5, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3017, metadata ptr undef, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %5, metadata !1902, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %1, metadata !1903, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %2, metadata !1904, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %5, metadata !1902, metadata !DIExpression()), !dbg !3018
  store i32 10, ptr %5, align 8, !dbg !3020, !tbaa !1845, !DIAssignID !3021
  call void @llvm.dbg.assign(metadata i32 10, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3021, metadata ptr %5, metadata !DIExpression()), !dbg !3012
  %6 = icmp ne ptr %1, null, !dbg !3022
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3023
  br i1 %8, label %10, label %9, !dbg !3023

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3024
  unreachable, !dbg !3024

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3025
  store ptr %1, ptr %11, align 8, !dbg !3026, !tbaa !1916, !DIAssignID !3027
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3027, metadata ptr %11, metadata !DIExpression()), !dbg !3012
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3028
  store ptr %2, ptr %12, align 8, !dbg !3029, !tbaa !1919, !DIAssignID !3030
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3030, metadata ptr %12, metadata !DIExpression()), !dbg !3012
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3031
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3032
  ret ptr %13, !dbg !3033
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3003 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3034
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3034, metadata ptr %6, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3007, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3008, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3009, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3010, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3011, metadata !DIExpression()), !dbg !3035
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3037, !tbaa.struct !2880, !DIAssignID !3038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3038, metadata ptr %6, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3039, metadata ptr undef, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %6, metadata !1902, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %1, metadata !1903, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %2, metadata !1904, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %6, metadata !1902, metadata !DIExpression()), !dbg !3040
  store i32 10, ptr %6, align 8, !dbg !3042, !tbaa !1845, !DIAssignID !3043
  call void @llvm.dbg.assign(metadata i32 10, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3043, metadata ptr %6, metadata !DIExpression()), !dbg !3035
  %7 = icmp ne ptr %1, null, !dbg !3044
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3045
  br i1 %9, label %11, label %10, !dbg !3045

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3046
  unreachable, !dbg !3046

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3047
  store ptr %1, ptr %12, align 8, !dbg !3048, !tbaa !1916, !DIAssignID !3049
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3049, metadata ptr %12, metadata !DIExpression()), !dbg !3035
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3050
  store ptr %2, ptr %13, align 8, !dbg !3051, !tbaa !1919, !DIAssignID !3052
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3052, metadata ptr %13, metadata !DIExpression()), !dbg !3035
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3053
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3054
  ret ptr %14, !dbg !3055
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3056 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3063
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3060, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3061, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 0, metadata !2996, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %1, metadata !2998, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %2, metadata !2999, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3063, metadata ptr %4, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 -1, metadata !3011, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3070, !tbaa.struct !2880, !DIAssignID !3071
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3071, metadata ptr %4, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3072, metadata ptr undef, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %4, metadata !1902, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !1903, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %1, metadata !1904, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %4, metadata !1902, metadata !DIExpression()), !dbg !3073
  store i32 10, ptr %4, align 8, !dbg !3075, !tbaa !1845, !DIAssignID !3076
  call void @llvm.dbg.assign(metadata i32 10, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3076, metadata ptr %4, metadata !DIExpression()), !dbg !3067
  %5 = icmp ne ptr %0, null, !dbg !3077
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3078
  br i1 %7, label %9, label %8, !dbg !3078

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3079
  unreachable, !dbg !3079

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3080
  store ptr %0, ptr %10, align 8, !dbg !3081, !tbaa !1916, !DIAssignID !3082
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3082, metadata ptr %10, metadata !DIExpression()), !dbg !3067
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3083
  store ptr %1, ptr %11, align 8, !dbg !3084, !tbaa !1919, !DIAssignID !3085
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3085, metadata ptr %11, metadata !DIExpression()), !dbg !3067
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3086
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3087
  ret ptr %12, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3089 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3097
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3094, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3095, metadata !DIExpression()), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3097, metadata ptr %5, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %3, metadata !3011, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3102, !tbaa.struct !2880, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(), metadata !3103, metadata ptr %5, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3104, metadata ptr undef, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %5, metadata !1902, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %0, metadata !1903, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !1904, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %5, metadata !1902, metadata !DIExpression()), !dbg !3105
  store i32 10, ptr %5, align 8, !dbg !3107, !tbaa !1845, !DIAssignID !3108
  call void @llvm.dbg.assign(metadata i32 10, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3108, metadata ptr %5, metadata !DIExpression()), !dbg !3099
  %6 = icmp ne ptr %0, null, !dbg !3109
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3110
  br i1 %8, label %10, label %9, !dbg !3110

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3111
  unreachable, !dbg !3111

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3112
  store ptr %0, ptr %11, align 8, !dbg !3113, !tbaa !1916, !DIAssignID !3114
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3114, metadata ptr %11, metadata !DIExpression()), !dbg !3099
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3115
  store ptr %1, ptr %12, align 8, !dbg !3116, !tbaa !1919, !DIAssignID !3117
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3117, metadata ptr %12, metadata !DIExpression()), !dbg !3099
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3119
  ret ptr %13, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3129
  ret ptr %4, !dbg !3130
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3131 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3135, metadata !DIExpression()), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3138
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3140
  ret ptr %3, !dbg !3141
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 -1, metadata !3127, metadata !DIExpression()), !dbg !3149
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3151
  ret ptr %3, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3153 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !3146, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %0, metadata !3147, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !3125, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 -1, metadata !3127, metadata !DIExpression()), !dbg !3161
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3163
  ret ptr %2, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3205, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3206, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3207, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3208, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3209, metadata !DIExpression()), !dbg !3210
  %7 = icmp eq ptr %1, null, !dbg !3211
  br i1 %7, label %10, label %8, !dbg !3213

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3214
  br label %12, !dbg !3214

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.84, ptr noundef %2, ptr noundef %3) #39, !dbg !3215
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.3.86, i32 noundef 5) #39, !dbg !3216
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3216
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3217
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.5.88, i32 noundef 5) #39, !dbg !3218
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.89) #39, !dbg !3218
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3219
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
  ], !dbg !3220

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.7.90, i32 noundef 5) #39, !dbg !3221
  %21 = load ptr, ptr %4, align 8, !dbg !3221, !tbaa !808
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3221
  br label %147, !dbg !3223

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.8.91, i32 noundef 5) #39, !dbg !3224
  %25 = load ptr, ptr %4, align 8, !dbg !3224, !tbaa !808
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3224
  %27 = load ptr, ptr %26, align 8, !dbg !3224, !tbaa !808
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3224
  br label %147, !dbg !3225

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.9.92, i32 noundef 5) #39, !dbg !3226
  %31 = load ptr, ptr %4, align 8, !dbg !3226, !tbaa !808
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3226
  %33 = load ptr, ptr %32, align 8, !dbg !3226, !tbaa !808
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3226
  %35 = load ptr, ptr %34, align 8, !dbg !3226, !tbaa !808
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3226
  br label %147, !dbg !3227

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.10.93, i32 noundef 5) #39, !dbg !3228
  %39 = load ptr, ptr %4, align 8, !dbg !3228, !tbaa !808
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3228
  %41 = load ptr, ptr %40, align 8, !dbg !3228, !tbaa !808
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3228
  %43 = load ptr, ptr %42, align 8, !dbg !3228, !tbaa !808
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3228
  %45 = load ptr, ptr %44, align 8, !dbg !3228, !tbaa !808
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3228
  br label %147, !dbg !3229

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.11.94, i32 noundef 5) #39, !dbg !3230
  %49 = load ptr, ptr %4, align 8, !dbg !3230, !tbaa !808
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3230
  %51 = load ptr, ptr %50, align 8, !dbg !3230, !tbaa !808
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3230
  %53 = load ptr, ptr %52, align 8, !dbg !3230, !tbaa !808
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3230
  %55 = load ptr, ptr %54, align 8, !dbg !3230, !tbaa !808
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3230
  %57 = load ptr, ptr %56, align 8, !dbg !3230, !tbaa !808
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3230
  br label %147, !dbg !3231

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.12.95, i32 noundef 5) #39, !dbg !3232
  %61 = load ptr, ptr %4, align 8, !dbg !3232, !tbaa !808
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3232
  %63 = load ptr, ptr %62, align 8, !dbg !3232, !tbaa !808
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3232
  %65 = load ptr, ptr %64, align 8, !dbg !3232, !tbaa !808
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3232
  %67 = load ptr, ptr %66, align 8, !dbg !3232, !tbaa !808
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3232
  %69 = load ptr, ptr %68, align 8, !dbg !3232, !tbaa !808
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3232
  %71 = load ptr, ptr %70, align 8, !dbg !3232, !tbaa !808
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3232
  br label %147, !dbg !3233

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.13.96, i32 noundef 5) #39, !dbg !3234
  %75 = load ptr, ptr %4, align 8, !dbg !3234, !tbaa !808
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3234
  %77 = load ptr, ptr %76, align 8, !dbg !3234, !tbaa !808
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3234
  %79 = load ptr, ptr %78, align 8, !dbg !3234, !tbaa !808
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3234
  %81 = load ptr, ptr %80, align 8, !dbg !3234, !tbaa !808
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3234
  %83 = load ptr, ptr %82, align 8, !dbg !3234, !tbaa !808
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3234
  %85 = load ptr, ptr %84, align 8, !dbg !3234, !tbaa !808
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3234
  %87 = load ptr, ptr %86, align 8, !dbg !3234, !tbaa !808
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3234
  br label %147, !dbg !3235

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.14.97, i32 noundef 5) #39, !dbg !3236
  %91 = load ptr, ptr %4, align 8, !dbg !3236, !tbaa !808
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3236
  %93 = load ptr, ptr %92, align 8, !dbg !3236, !tbaa !808
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3236
  %95 = load ptr, ptr %94, align 8, !dbg !3236, !tbaa !808
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3236
  %97 = load ptr, ptr %96, align 8, !dbg !3236, !tbaa !808
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3236
  %99 = load ptr, ptr %98, align 8, !dbg !3236, !tbaa !808
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3236
  %101 = load ptr, ptr %100, align 8, !dbg !3236, !tbaa !808
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3236
  %103 = load ptr, ptr %102, align 8, !dbg !3236, !tbaa !808
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3236
  %105 = load ptr, ptr %104, align 8, !dbg !3236, !tbaa !808
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3236
  br label %147, !dbg !3237

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.15.98, i32 noundef 5) #39, !dbg !3238
  %109 = load ptr, ptr %4, align 8, !dbg !3238, !tbaa !808
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3238
  %111 = load ptr, ptr %110, align 8, !dbg !3238, !tbaa !808
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3238
  %113 = load ptr, ptr %112, align 8, !dbg !3238, !tbaa !808
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3238
  %115 = load ptr, ptr %114, align 8, !dbg !3238, !tbaa !808
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3238
  %117 = load ptr, ptr %116, align 8, !dbg !3238, !tbaa !808
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3238
  %119 = load ptr, ptr %118, align 8, !dbg !3238, !tbaa !808
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3238
  %121 = load ptr, ptr %120, align 8, !dbg !3238, !tbaa !808
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3238
  %123 = load ptr, ptr %122, align 8, !dbg !3238, !tbaa !808
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3238
  %125 = load ptr, ptr %124, align 8, !dbg !3238, !tbaa !808
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3238
  br label %147, !dbg !3239

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.16.99, i32 noundef 5) #39, !dbg !3240
  %129 = load ptr, ptr %4, align 8, !dbg !3240, !tbaa !808
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3240
  %131 = load ptr, ptr %130, align 8, !dbg !3240, !tbaa !808
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3240
  %133 = load ptr, ptr %132, align 8, !dbg !3240, !tbaa !808
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3240
  %135 = load ptr, ptr %134, align 8, !dbg !3240, !tbaa !808
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3240
  %137 = load ptr, ptr %136, align 8, !dbg !3240, !tbaa !808
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3240
  %139 = load ptr, ptr %138, align 8, !dbg !3240, !tbaa !808
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3240
  %141 = load ptr, ptr %140, align 8, !dbg !3240, !tbaa !808
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3240
  %143 = load ptr, ptr %142, align 8, !dbg !3240, !tbaa !808
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3240
  %145 = load ptr, ptr %144, align 8, !dbg !3240, !tbaa !808
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3240
  br label %147, !dbg !3241

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3242
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3247, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3248, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3249, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3250, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3251, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3252, metadata !DIExpression()), !dbg !3253
  br label %6, !dbg !3254

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3252, metadata !DIExpression()), !dbg !3253
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3257
  %9 = load ptr, ptr %8, align 8, !dbg !3257, !tbaa !808
  %10 = icmp eq ptr %9, null, !dbg !3259
  %11 = add i64 %7, 1, !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3252, metadata !DIExpression()), !dbg !3253
  br i1 %10, label %12, label %6, !dbg !3259, !llvm.loop !3261

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3263
  ret void, !dbg !3264
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3265 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3282, metadata !DIExpression(), metadata !3284, metadata ptr %6, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3276, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3277, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3278, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3279, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3280, metadata !DIExpression()), !dbg !3285
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3281, metadata !DIExpression()), !dbg !3285
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3281, metadata !DIExpression()), !dbg !3285
  %10 = icmp ult i32 %9, 41, !dbg !3287
  br i1 %10, label %11, label %16, !dbg !3287

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3287
  %13 = zext nneg i32 %9 to i64, !dbg !3287
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3287
  %15 = add nuw nsw i32 %9, 8, !dbg !3287
  store i32 %15, ptr %4, align 8, !dbg !3287
  br label %19, !dbg !3287

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3287
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3287
  store ptr %18, ptr %7, align 8, !dbg !3287
  br label %19, !dbg !3287

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3287
  %22 = load ptr, ptr %21, align 8, !dbg !3287
  store ptr %22, ptr %6, align 16, !dbg !3290, !tbaa !808
  %23 = icmp eq ptr %22, null, !dbg !3291
  br i1 %23, label %128, label %24, !dbg !3292

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3281, metadata !DIExpression()), !dbg !3285
  %25 = icmp ult i32 %20, 41, !dbg !3287
  br i1 %25, label %29, label %26, !dbg !3287

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3287
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3287
  store ptr %28, ptr %7, align 8, !dbg !3287
  br label %34, !dbg !3287

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3287
  %31 = zext nneg i32 %20 to i64, !dbg !3287
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3287
  %33 = add nuw nsw i32 %20, 8, !dbg !3287
  store i32 %33, ptr %4, align 8, !dbg !3287
  br label %34, !dbg !3287

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3287
  %37 = load ptr, ptr %36, align 8, !dbg !3287
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3293
  store ptr %37, ptr %38, align 8, !dbg !3290, !tbaa !808
  %39 = icmp eq ptr %37, null, !dbg !3291
  br i1 %39, label %128, label %40, !dbg !3292

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3281, metadata !DIExpression()), !dbg !3285
  %41 = icmp ult i32 %35, 41, !dbg !3287
  br i1 %41, label %45, label %42, !dbg !3287

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3287
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3287
  store ptr %44, ptr %7, align 8, !dbg !3287
  br label %50, !dbg !3287

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3287
  %47 = zext nneg i32 %35 to i64, !dbg !3287
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3287
  %49 = add nuw nsw i32 %35, 8, !dbg !3287
  store i32 %49, ptr %4, align 8, !dbg !3287
  br label %50, !dbg !3287

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3287
  %53 = load ptr, ptr %52, align 8, !dbg !3287
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3293
  store ptr %53, ptr %54, align 16, !dbg !3290, !tbaa !808
  %55 = icmp eq ptr %53, null, !dbg !3291
  br i1 %55, label %128, label %56, !dbg !3292

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3281, metadata !DIExpression()), !dbg !3285
  %57 = icmp ult i32 %51, 41, !dbg !3287
  br i1 %57, label %61, label %58, !dbg !3287

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3287
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3287
  store ptr %60, ptr %7, align 8, !dbg !3287
  br label %66, !dbg !3287

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3287
  %63 = zext nneg i32 %51 to i64, !dbg !3287
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3287
  %65 = add nuw nsw i32 %51, 8, !dbg !3287
  store i32 %65, ptr %4, align 8, !dbg !3287
  br label %66, !dbg !3287

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3287
  %69 = load ptr, ptr %68, align 8, !dbg !3287
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3293
  store ptr %69, ptr %70, align 8, !dbg !3290, !tbaa !808
  %71 = icmp eq ptr %69, null, !dbg !3291
  br i1 %71, label %128, label %72, !dbg !3292

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3281, metadata !DIExpression()), !dbg !3285
  %73 = icmp ult i32 %67, 41, !dbg !3287
  br i1 %73, label %77, label %74, !dbg !3287

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3287
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3287
  store ptr %76, ptr %7, align 8, !dbg !3287
  br label %82, !dbg !3287

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3287
  %79 = zext nneg i32 %67 to i64, !dbg !3287
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3287
  %81 = add nuw nsw i32 %67, 8, !dbg !3287
  store i32 %81, ptr %4, align 8, !dbg !3287
  br label %82, !dbg !3287

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3287
  %85 = load ptr, ptr %84, align 8, !dbg !3287
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3293
  store ptr %85, ptr %86, align 16, !dbg !3290, !tbaa !808
  %87 = icmp eq ptr %85, null, !dbg !3291
  br i1 %87, label %128, label %88, !dbg !3292

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3281, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3281, metadata !DIExpression()), !dbg !3285
  %89 = icmp ult i32 %83, 41, !dbg !3287
  br i1 %89, label %93, label %90, !dbg !3287

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3287
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3287
  store ptr %92, ptr %7, align 8, !dbg !3287
  br label %98, !dbg !3287

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3287
  %95 = zext nneg i32 %83 to i64, !dbg !3287
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3287
  %97 = add nuw nsw i32 %83, 8, !dbg !3287
  store i32 %97, ptr %4, align 8, !dbg !3287
  br label %98, !dbg !3287

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3287
  %100 = load ptr, ptr %99, align 8, !dbg !3287
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3293
  store ptr %100, ptr %101, align 8, !dbg !3290, !tbaa !808
  %102 = icmp eq ptr %100, null, !dbg !3291
  br i1 %102, label %128, label %103, !dbg !3292

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3281, metadata !DIExpression()), !dbg !3285
  %104 = load ptr, ptr %7, align 8, !dbg !3287
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3287
  store ptr %105, ptr %7, align 8, !dbg !3287
  %106 = load ptr, ptr %104, align 8, !dbg !3287
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3293
  store ptr %106, ptr %107, align 16, !dbg !3290, !tbaa !808
  %108 = icmp eq ptr %106, null, !dbg !3291
  br i1 %108, label %128, label %109, !dbg !3292

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3281, metadata !DIExpression()), !dbg !3285
  %110 = load ptr, ptr %7, align 8, !dbg !3287
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3287
  store ptr %111, ptr %7, align 8, !dbg !3287
  %112 = load ptr, ptr %110, align 8, !dbg !3287
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3293
  store ptr %112, ptr %113, align 8, !dbg !3290, !tbaa !808
  %114 = icmp eq ptr %112, null, !dbg !3291
  br i1 %114, label %128, label %115, !dbg !3292

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3281, metadata !DIExpression()), !dbg !3285
  %116 = load ptr, ptr %7, align 8, !dbg !3287
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3287
  store ptr %117, ptr %7, align 8, !dbg !3287
  %118 = load ptr, ptr %116, align 8, !dbg !3287
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3293
  store ptr %118, ptr %119, align 16, !dbg !3290, !tbaa !808
  %120 = icmp eq ptr %118, null, !dbg !3291
  br i1 %120, label %128, label %121, !dbg !3292

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3281, metadata !DIExpression()), !dbg !3285
  %122 = load ptr, ptr %7, align 8, !dbg !3287
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3287
  store ptr %123, ptr %7, align 8, !dbg !3287
  %124 = load ptr, ptr %122, align 8, !dbg !3287
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3293
  store ptr %124, ptr %125, align 8, !dbg !3290, !tbaa !808
  %126 = icmp eq ptr %124, null, !dbg !3291
  %127 = select i1 %126, i64 9, i64 10, !dbg !3292
  br label %128, !dbg !3292

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3294
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3295
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3296
  ret void, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3297 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3305, metadata !DIExpression(), metadata !3310, metadata ptr %5, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3302, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3303, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3304, metadata !DIExpression()), !dbg !3311
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3312
  call void @llvm.va_start(ptr nonnull %5), !dbg !3313
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3314
  call void @llvm.va_end(ptr nonnull %5), !dbg !3315
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3316
  ret void, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3317 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3318, !tbaa !808
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %1), !dbg !3318
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.17.104, i32 noundef 5) #39, !dbg !3319
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.105) #39, !dbg !3319
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.19.106, i32 noundef 5) #39, !dbg !3320
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.107, ptr noundef nonnull @.str.21.108) #39, !dbg !3320
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.22.109, i32 noundef 5) #39, !dbg !3321
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.110) #39, !dbg !3321
  ret void, !dbg !3322
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3323 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %2, metadata !3336, metadata !DIExpression()), !dbg !3337
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3339
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3345
  %5 = icmp eq ptr %4, null, !dbg !3347
  br i1 %5, label %6, label %7, !dbg !3349

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3350
  unreachable, !dbg !3350

7:                                                ; preds = %3
  ret ptr %4, !dbg !3351
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3333 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3336, metadata !DIExpression()), !dbg !3352
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3354
  %5 = icmp eq ptr %4, null, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3357

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3358
  unreachable, !dbg !3358

7:                                                ; preds = %3
  ret ptr %4, !dbg !3359
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3364, metadata !DIExpression()), !dbg !3365
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3367
  %3 = icmp eq ptr %2, null, !dbg !3369
  br i1 %3, label %4, label %5, !dbg !3370

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3371
  unreachable, !dbg !3371

5:                                                ; preds = %1
  ret ptr %2, !dbg !3372
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3373 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3374 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %0, metadata !3380, metadata !DIExpression()), !dbg !3384
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3386
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3387
  %3 = icmp eq ptr %2, null, !dbg !3389
  br i1 %3, label %4, label %5, !dbg !3390

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3391
  unreachable, !dbg !3391

5:                                                ; preds = %1
  ret ptr %2, !dbg !3392
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3364, metadata !DIExpression()), !dbg !3399
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3401
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3402
  %3 = icmp eq ptr %2, null, !dbg !3404
  br i1 %3, label %4, label %5, !dbg !3405

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3406
  unreachable, !dbg !3406

5:                                                ; preds = %1
  ret ptr %2, !dbg !3407
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3420
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3422
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3423
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3424
  %5 = icmp eq ptr %4, null, !dbg !3426
  br i1 %5, label %6, label %7, !dbg !3427

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3428
  unreachable, !dbg !3428

7:                                                ; preds = %2
  ret ptr %4, !dbg !3429
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3430 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3431 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %0, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3444
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3446
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3448
  %5 = icmp eq ptr %4, null, !dbg !3450
  br i1 %5, label %6, label %7, !dbg !3451

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3452
  unreachable, !dbg !3452

7:                                                ; preds = %2
  ret ptr %4, !dbg !3453
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3454 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3458, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3459, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %2, metadata !3466, metadata !DIExpression()), !dbg !3467
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3470
  %5 = icmp eq ptr %4, null, !dbg !3472
  br i1 %5, label %6, label %7, !dbg !3473

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3474
  unreachable, !dbg !3474

7:                                                ; preds = %3
  ret ptr %4, !dbg !3475
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3476 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr null, metadata !3332, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %0, metadata !3335, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3483
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3485
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3486
  %4 = icmp eq ptr %3, null, !dbg !3488
  br i1 %4, label %5, label %6, !dbg !3489

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3490
  unreachable, !dbg !3490

6:                                                ; preds = %2
  ret ptr %3, !dbg !3491
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3492 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3496, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3497, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr null, metadata !3458, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %0, metadata !3459, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr null, metadata !3462, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %0, metadata !3465, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()), !dbg !3501
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3503
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3504
  %4 = icmp eq ptr %3, null, !dbg !3506
  br i1 %4, label %5, label %6, !dbg !3507

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3508
  unreachable, !dbg !3508

6:                                                ; preds = %2
  ret ptr %3, !dbg !3509
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %0, metadata !740, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %1, metadata !741, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()), !dbg !3517
  %3 = load i64, ptr %1, align 8, !dbg !3519, !tbaa !2586
  call void @llvm.dbg.value(metadata i64 %3, metadata !743, metadata !DIExpression()), !dbg !3517
  %4 = icmp eq ptr %0, null, !dbg !3520
  br i1 %4, label %5, label %8, !dbg !3522

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3523
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3526
  br label %15, !dbg !3526

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3527
  %10 = add nuw i64 %9, 1, !dbg !3527
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3527
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3527
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3527
  call void @llvm.dbg.value(metadata i64 %13, metadata !743, metadata !DIExpression()), !dbg !3517
  br i1 %12, label %14, label %15, !dbg !3530

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3531
  unreachable, !dbg !3531

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3517
  call void @llvm.dbg.value(metadata i64 %16, metadata !743, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %16, metadata !3335, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 1, metadata !3336, metadata !DIExpression()), !dbg !3532
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %17, metadata !3340, metadata !DIExpression()), !dbg !3535
  %18 = icmp eq ptr %17, null, !dbg !3537
  br i1 %18, label %19, label %20, !dbg !3538

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3539
  unreachable, !dbg !3539

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !740, metadata !DIExpression()), !dbg !3517
  store i64 %16, ptr %1, align 8, !dbg !3540, !tbaa !2586
  ret ptr %17, !dbg !3541
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !735 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !740, metadata !DIExpression()), !dbg !3542
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !741, metadata !DIExpression()), !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !742, metadata !DIExpression()), !dbg !3542
  %4 = load i64, ptr %1, align 8, !dbg !3543, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !743, metadata !DIExpression()), !dbg !3542
  %5 = icmp eq ptr %0, null, !dbg !3544
  br i1 %5, label %6, label %13, !dbg !3545

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3546
  br i1 %7, label %8, label %20, !dbg !3547

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !743, metadata !DIExpression()), !dbg !3542
  %10 = icmp ugt i64 %2, 128, !dbg !3550
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !743, metadata !DIExpression()), !dbg !3542
  br label %20, !dbg !3552

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3553
  %15 = add nuw i64 %14, 1, !dbg !3553
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3553
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3553
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !743, metadata !DIExpression()), !dbg !3542
  br i1 %17, label %19, label %20, !dbg !3554

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3555
  unreachable, !dbg !3555

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !743, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %21, metadata !3335, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %2, metadata !3336, metadata !DIExpression()), !dbg !3556
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %22, metadata !3340, metadata !DIExpression()), !dbg !3559
  %23 = icmp eq ptr %22, null, !dbg !3561
  br i1 %23, label %24, label %25, !dbg !3562

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3563
  unreachable, !dbg !3563

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !740, metadata !DIExpression()), !dbg !3542
  store i64 %21, ptr %1, align 8, !dbg !3564, !tbaa !2586
  ret ptr %22, !dbg !3565
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !756, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !757, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !758, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !759, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !760, metadata !DIExpression()), !dbg !3566
  %6 = load i64, ptr %1, align 8, !dbg !3567, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !761, metadata !DIExpression()), !dbg !3566
  %7 = ashr i64 %6, 1, !dbg !3568
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3568
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3568
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !762, metadata !DIExpression()), !dbg !3566
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !762, metadata !DIExpression()), !dbg !3566
  %12 = icmp sgt i64 %3, -1, !dbg !3571
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3573
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !762, metadata !DIExpression()), !dbg !3566
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3574
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3574
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !763, metadata !DIExpression()), !dbg !3566
  %18 = icmp slt i64 %17, 128, !dbg !3574
  %19 = select i1 %18, i64 128, i64 0, !dbg !3574
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !764, metadata !DIExpression()), !dbg !3566
  %21 = icmp eq i64 %20, 0, !dbg !3575
  br i1 %21, label %26, label %22, !dbg !3577

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !762, metadata !DIExpression()), !dbg !3566
  %24 = srem i64 %20, %4, !dbg !3580
  %25 = sub nsw i64 %20, %24, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !763, metadata !DIExpression()), !dbg !3566
  br label %26, !dbg !3582

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3566
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !763, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !762, metadata !DIExpression()), !dbg !3566
  %29 = icmp eq ptr %0, null, !dbg !3583
  br i1 %29, label %30, label %31, !dbg !3585

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3586, !tbaa !2586
  br label %31, !dbg !3587

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3588
  %33 = icmp slt i64 %32, %2, !dbg !3590
  br i1 %33, label %34, label %46, !dbg !3591

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3592
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3592
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !762, metadata !DIExpression()), !dbg !3566
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3593
  br i1 %40, label %45, label %41, !dbg !3593

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3594
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3594
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !763, metadata !DIExpression()), !dbg !3566
  br i1 %43, label %45, label %46, !dbg !3595

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !3596
  unreachable, !dbg !3596

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3566
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !763, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !762, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %0, metadata !3412, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %48, metadata !3413, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %48, metadata !3419, metadata !DIExpression()), !dbg !3599
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3601
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3602
  call void @llvm.dbg.value(metadata ptr %50, metadata !3340, metadata !DIExpression()), !dbg !3603
  %51 = icmp eq ptr %50, null, !dbg !3605
  br i1 %51, label %52, label %53, !dbg !3606

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !3607
  unreachable, !dbg !3607

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !756, metadata !DIExpression()), !dbg !3566
  store i64 %47, ptr %1, align 8, !dbg !3608, !tbaa !2586
  ret ptr %50, !dbg !3609
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3612, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %0, metadata !3614, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 1, metadata !3617, metadata !DIExpression()), !dbg !3618
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3620
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3621
  %3 = icmp eq ptr %2, null, !dbg !3623
  br i1 %3, label %4, label %5, !dbg !3624

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3625
  unreachable, !dbg !3625

5:                                                ; preds = %1
  ret ptr %2, !dbg !3626
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3627 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3615 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3614, metadata !DIExpression()), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3628
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3629
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3630
  %4 = icmp eq ptr %3, null, !dbg !3632
  br i1 %4, label %5, label %6, !dbg !3633

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3634
  unreachable, !dbg !3634

6:                                                ; preds = %2
  ret ptr %3, !dbg !3635
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3636 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3638, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %0, metadata !3640, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 1, metadata !3643, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 1, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 1, metadata !3649, metadata !DIExpression()), !dbg !3650
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3652
  call void @llvm.dbg.value(metadata ptr %2, metadata !3340, metadata !DIExpression()), !dbg !3653
  %3 = icmp eq ptr %2, null, !dbg !3655
  br i1 %3, label %4, label %5, !dbg !3656

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3657
  unreachable, !dbg !3657

5:                                                ; preds = %1
  ret ptr %2, !dbg !3658
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3641 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3640, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3643, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %0, metadata !3646, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3660
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3663
  %4 = icmp eq ptr %3, null, !dbg !3665
  br i1 %4, label %5, label %6, !dbg !3666

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3667
  unreachable, !dbg !3667

6:                                                ; preds = %2
  ret ptr %3, !dbg !3668
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3669 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3673, metadata !DIExpression()), !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3364, metadata !DIExpression()), !dbg !3676
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3678
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3679
  %4 = icmp eq ptr %3, null, !dbg !3681
  br i1 %4, label %5, label %6, !dbg !3682

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3683
  unreachable, !dbg !3683

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3684, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3694
  ret ptr %3, !dbg !3695
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3702
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3705
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3707
  call void @llvm.dbg.value(metadata ptr %3, metadata !3340, metadata !DIExpression()), !dbg !3708
  %4 = icmp eq ptr %3, null, !dbg !3710
  br i1 %4, label %5, label %6, !dbg !3711

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3712
  unreachable, !dbg !3712

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3684, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3713
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3715
  ret ptr %3, !dbg !3716
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3717 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3722, metadata !DIExpression()), !dbg !3724
  %3 = add nsw i64 %1, 1, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %3, metadata !3378, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %3, metadata !3380, metadata !DIExpression()), !dbg !3728
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3730
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3731
  %5 = icmp eq ptr %4, null, !dbg !3733
  br i1 %5, label %6, label %7, !dbg !3734

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3735
  unreachable, !dbg !3735

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3736
  store i8 0, ptr %8, align 1, !dbg !3737, !tbaa !881
  call void @llvm.dbg.value(metadata ptr %4, metadata !3684, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3740
  ret ptr %4, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3745
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3746
  %3 = add i64 %2, 1, !dbg !3747
  call void @llvm.dbg.value(metadata ptr %0, metadata !3673, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %3, metadata !3674, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %3, metadata !3364, metadata !DIExpression()), !dbg !3750
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3752
  call void @llvm.dbg.value(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3753
  %5 = icmp eq ptr %4, null, !dbg !3755
  br i1 %5, label %6, label %7, !dbg !3756

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3757
  unreachable, !dbg !3757

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3684, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %3, metadata !3691, metadata !DIExpression()), !dbg !3758
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3760
  ret ptr %4, !dbg !3761
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3762 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3767, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3764, metadata !DIExpression()), !dbg !3768
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #39, !dbg !3767
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #39, !dbg !3767
  %3 = icmp eq i32 %1, 0, !dbg !3767
  tail call void @llvm.assume(i1 %3), !dbg !3767
  tail call void @abort() #41, !dbg !3769
  unreachable, !dbg !3769
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !3770 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3773, metadata !DIExpression()), !dbg !3777
  br label %2, !dbg !3778

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3773, metadata !DIExpression()), !dbg !3777
  %4 = load i8, ptr %3, align 1, !dbg !3779, !tbaa !881
  %5 = icmp eq i8 %4, 47, !dbg !3779
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3780
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3773, metadata !DIExpression()), !dbg !3777
  br i1 %5, label %2, label %7, !dbg !3778, !llvm.loop !3781

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3782
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3784
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3777
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3785
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3775, metadata !DIExpression()), !dbg !3786
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !3774, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3773, metadata !DIExpression()), !dbg !3777
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3787

12:                                               ; preds = %7
  ret ptr %9, !dbg !3788

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3789
  %15 = icmp eq i8 %14, 0, !dbg !3789
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3793
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3793
  br label %18, !dbg !3793

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3777
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3777
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3774, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3773, metadata !DIExpression()), !dbg !3777
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3794
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3775, metadata !DIExpression()), !dbg !3786
  %22 = load i8, ptr %21, align 1, !dbg !3782, !tbaa !881
  br label %7, !dbg !3795, !llvm.loop !3796
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3798 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3802, metadata !DIExpression()), !dbg !3805
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3803, metadata !DIExpression()), !dbg !3805
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3808
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3803, metadata !DIExpression()), !dbg !3805
  %4 = icmp ugt i64 %2, 1, !dbg !3809
  br i1 %4, label %5, label %13, !dbg !3811

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3803, metadata !DIExpression()), !dbg !3805
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3812
  %8 = load i8, ptr %7, align 1, !dbg !3812, !tbaa !881
  %9 = icmp eq i8 %8, 47, !dbg !3812
  br i1 %9, label %10, label %13, !dbg !3813

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3803, metadata !DIExpression()), !dbg !3805
  %12 = icmp ugt i64 %11, 1, !dbg !3809
  br i1 %12, label %5, label %13, !dbg !3811, !llvm.loop !3815

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3804, metadata !DIExpression()), !dbg !3805
  ret i64 %14, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3862
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3863
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3858, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3862
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3867
  %3 = load i32, ptr %0, align 8, !dbg !3869, !tbaa !3870
  %4 = and i32 %3, 32, !dbg !3871
  %5 = icmp eq i32 %4, 0, !dbg !3871
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3862
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3872
  %7 = icmp eq i32 %6, 0, !dbg !3873
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3861, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3862
  br i1 %5, label %8, label %18, !dbg !3874

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3876
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3862
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3877
  %11 = xor i1 %7, true, !dbg !3877
  %12 = sext i1 %11 to i32, !dbg !3877
  br i1 %10, label %21, label %13, !dbg !3877

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3878
  %15 = load i32, ptr %14, align 4, !dbg !3878, !tbaa !872
  %16 = icmp ne i32 %15, 9, !dbg !3879
  %17 = sext i1 %16 to i32, !dbg !3880
  br label %21, !dbg !3880

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3881

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3883
  store i32 0, ptr %20, align 4, !dbg !3885, !tbaa !872
  br label %21, !dbg !3883

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3862
  ret i32 %22, !dbg !3886
}

; Function Attrs: nounwind
declare !dbg !3887 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3891 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3929, metadata !DIExpression()), !dbg !3933
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3933
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3934
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3931, metadata !DIExpression()), !dbg !3933
  %3 = icmp slt i32 %2, 0, !dbg !3935
  br i1 %3, label %4, label %6, !dbg !3937

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3938
  br label %24, !dbg !3939

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3940
  %8 = icmp eq i32 %7, 0, !dbg !3940
  br i1 %8, label %13, label %9, !dbg !3942

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3943
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3944
  %12 = icmp eq i64 %11, -1, !dbg !3945
  br i1 %12, label %16, label %13, !dbg !3946

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3947
  %15 = icmp eq i32 %14, 0, !dbg !3947
  br i1 %15, label %16, label %18, !dbg !3948

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3933
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3932, metadata !DIExpression()), !dbg !3933
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3932, metadata !DIExpression()), !dbg !3933
  br label %24, !dbg !3950

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3951
  %20 = load i32, ptr %19, align 4, !dbg !3951, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3930, metadata !DIExpression()), !dbg !3933
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3932, metadata !DIExpression()), !dbg !3933
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3932, metadata !DIExpression()), !dbg !3933
  %22 = icmp eq i32 %20, 0, !dbg !3952
  br i1 %22, label %24, label %23, !dbg !3950

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3954, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3932, metadata !DIExpression()), !dbg !3933
  br label %24, !dbg !3956

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3933
  ret i32 %25, !dbg !3957
}

; Function Attrs: nofree nounwind
declare !dbg !3958 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3959 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3960 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3961 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4003
  %2 = icmp eq ptr %0, null, !dbg !4004
  br i1 %2, label %6, label %3, !dbg !4006

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4007
  %5 = icmp eq i32 %4, 0, !dbg !4007
  br i1 %5, label %6, label %8, !dbg !4008

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4009
  br label %16, !dbg !4010

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4016
  %9 = load i32, ptr %0, align 8, !dbg !4018, !tbaa !3870
  %10 = and i32 %9, 256, !dbg !4020
  %11 = icmp eq i32 %10, 0, !dbg !4020
  br i1 %11, label %14, label %12, !dbg !4021

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4022
  br label %14, !dbg !4022

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4023
  br label %16, !dbg !4024

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4003
  ret i32 %17, !dbg !4025
}

; Function Attrs: nofree nounwind
declare !dbg !4026 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4027 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4072
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4068, metadata !DIExpression()), !dbg !4072
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4073
  %5 = load ptr, ptr %4, align 8, !dbg !4073, !tbaa !4074
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4075
  %7 = load ptr, ptr %6, align 8, !dbg !4075, !tbaa !4076
  %8 = icmp eq ptr %5, %7, !dbg !4077
  br i1 %8, label %9, label %27, !dbg !4078

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4079
  %11 = load ptr, ptr %10, align 8, !dbg !4079, !tbaa !1462
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4080
  %13 = load ptr, ptr %12, align 8, !dbg !4080, !tbaa !4081
  %14 = icmp eq ptr %11, %13, !dbg !4082
  br i1 %14, label %15, label %27, !dbg !4083

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4084
  %17 = load ptr, ptr %16, align 8, !dbg !4084, !tbaa !4085
  %18 = icmp eq ptr %17, null, !dbg !4086
  br i1 %18, label %19, label %27, !dbg !4087

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4088
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4069, metadata !DIExpression()), !dbg !4090
  %22 = icmp eq i64 %21, -1, !dbg !4091
  br i1 %22, label %29, label %23, !dbg !4093

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4094, !tbaa !3870
  %25 = and i32 %24, -17, !dbg !4094
  store i32 %25, ptr %0, align 8, !dbg !4094, !tbaa !3870
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4095
  store i64 %21, ptr %26, align 8, !dbg !4096, !tbaa !4097
  br label %29, !dbg !4098

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4099
  br label %29, !dbg !4100

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4072
  ret i32 %30, !dbg !4101
}

; Function Attrs: nofree nounwind
declare !dbg !4102 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4105 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4111, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4113, metadata !DIExpression()), !dbg !4115
  %5 = icmp eq ptr %1, null, !dbg !4116
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4118
  %7 = select i1 %5, ptr @.str.140, ptr %1, !dbg !4118
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4118
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4112, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4111, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4110, metadata !DIExpression()), !dbg !4115
  %9 = icmp eq ptr %3, null, !dbg !4119
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4113, metadata !DIExpression()), !dbg !4115
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4122
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4114, metadata !DIExpression()), !dbg !4115
  %12 = icmp ult i64 %11, -3, !dbg !4123
  br i1 %12, label %13, label %17, !dbg !4125

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4126
  %15 = icmp eq i32 %14, 0, !dbg !4126
  br i1 %15, label %16, label %29, !dbg !4127

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4128, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %10, metadata !4135, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i32 0, metadata !4138, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 8, metadata !4139, metadata !DIExpression()), !dbg !4140
  store i64 0, ptr %10, align 1, !dbg !4142
  br label %29, !dbg !4143

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4144
  br i1 %18, label %19, label %20, !dbg !4146

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4147
  unreachable, !dbg !4147

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4148

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4150
  br i1 %23, label %29, label %24, !dbg !4151

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4152
  br i1 %25, label %29, label %26, !dbg !4155

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4156, !tbaa !881
  %28 = zext i8 %27 to i32, !dbg !4157
  store i32 %28, ptr %6, align 4, !dbg !4158, !tbaa !872
  br label %29, !dbg !4159

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4115
  ret i64 %30, !dbg !4160
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4161 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4167 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4169, metadata !DIExpression()), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4170, metadata !DIExpression()), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4171, metadata !DIExpression()), !dbg !4173
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4174
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4172, metadata !DIExpression()), !dbg !4173
  br i1 %5, label %6, label %8, !dbg !4176

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4177
  store i32 12, ptr %7, align 4, !dbg !4179, !tbaa !872
  br label %12, !dbg !4180

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %9, metadata !4184, metadata !DIExpression()), !dbg !4185
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4187
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4188
  br label %12, !dbg !4189

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4173
  ret ptr %13, !dbg !4190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4191 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4200
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4196, metadata !DIExpression(), metadata !4200, metadata ptr %2, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4201
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4202
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4203
  %4 = icmp eq i32 %3, 0, !dbg !4203
  br i1 %4, label %5, label %12, !dbg !4205

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4206, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata !839, metadata !4209, metadata !DIExpression()), !dbg !4210
  %6 = load i16, ptr %2, align 16, !dbg !4213
  %7 = icmp eq i16 %6, 67, !dbg !4213
  br i1 %7, label %11, label %8, !dbg !4214

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4206, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata ptr @.str.1.145, metadata !4209, metadata !DIExpression()), !dbg !4215
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.145, i64 6), !dbg !4217
  %10 = icmp eq i32 %9, 0, !dbg !4218
  br i1 %10, label %11, label %12, !dbg !4219

11:                                               ; preds = %8, %5
  br label %12, !dbg !4220

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4201
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4221
  ret i1 %13, !dbg !4221
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4222 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4226, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4227, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4228, metadata !DIExpression()), !dbg !4229
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4230
  ret i32 %4, !dbg !4231
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4232 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4236, metadata !DIExpression()), !dbg !4237
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4238
  ret ptr %2, !dbg !4239
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4240 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4242, metadata !DIExpression()), !dbg !4244
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4245
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4243, metadata !DIExpression()), !dbg !4244
  ret ptr %2, !dbg !4246
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4249, metadata !DIExpression()), !dbg !4256
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4250, metadata !DIExpression()), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4251, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i32 %0, metadata !4242, metadata !DIExpression()), !dbg !4257
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %4, metadata !4243, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4252, metadata !DIExpression()), !dbg !4256
  %5 = icmp eq ptr %4, null, !dbg !4260
  br i1 %5, label %6, label %9, !dbg !4261

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4262
  br i1 %7, label %19, label %8, !dbg !4265

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4266, !tbaa !881
  br label %19, !dbg !4267

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4253, metadata !DIExpression()), !dbg !4269
  %11 = icmp ult i64 %10, %2, !dbg !4270
  br i1 %11, label %12, label %14, !dbg !4272

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4273
  call void @llvm.dbg.value(metadata ptr %1, metadata !4275, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %4, metadata !4278, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %13, metadata !4279, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4282
  br label %19, !dbg !4283

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4284
  br i1 %15, label %19, label %16, !dbg !4287

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4288
  call void @llvm.dbg.value(metadata ptr %1, metadata !4275, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %4, metadata !4278, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %17, metadata !4279, metadata !DIExpression()), !dbg !4290
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4292
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4293
  store i8 0, ptr %18, align 1, !dbg !4294, !tbaa !881
  br label %19, !dbg !4295

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4296
  ret i32 %20, !dbg !4297
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
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!69, !717, !389, !393, !720, !408, !685, !722, !459, !473, !524, !724, !677, !731, !766, !768, !771, !773, !775, !777, !701, !779, !781, !785, !787}
!llvm.ident = !{!789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789}
!llvm.module.flags = !{!790, !791, !792, !793, !794, !795, !796}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/rmdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5a459e166db9bc86eb1f418ddcaeb865")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!74 = !DIEnumerator(name: "IGNORE_FAIL_ON_NON_EMPTY_OPTION", value: 128)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 337, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!80 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !186)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!407 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !408, file: !409, line: 66, type: !454, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !410, globals: !411, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!410 = !{!117, !124}
!411 = !{!412, !414, !433, !435, !437, !439, !406, !441, !443, !445, !447, !452}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 272, type: !238, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "old_file_name", scope: !416, file: !409, line: 304, type: !122, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "verror_at_line", scope: !409, file: !409, line: 298, type: !417, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !426)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !77, !77, !122, !72, !122, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !420, file: !409, baseType: !72, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !420, file: !409, baseType: !72, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !420, file: !409, baseType: !117, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !420, file: !409, baseType: !117, size: 64, offset: 128)
!426 = !{!427, !428, !429, !430, !431, !432}
!427 = !DILocalVariable(name: "status", arg: 1, scope: !416, file: !409, line: 298, type: !77)
!428 = !DILocalVariable(name: "errnum", arg: 2, scope: !416, file: !409, line: 298, type: !77)
!429 = !DILocalVariable(name: "file_name", arg: 3, scope: !416, file: !409, line: 298, type: !122)
!430 = !DILocalVariable(name: "line_number", arg: 4, scope: !416, file: !409, line: 298, type: !72)
!431 = !DILocalVariable(name: "message", arg: 5, scope: !416, file: !409, line: 298, type: !122)
!432 = !DILocalVariable(name: "args", arg: 6, scope: !416, file: !409, line: 298, type: !419)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "old_line_number", scope: !416, file: !409, line: 305, type: !72, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !409, line: 338, type: !245, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !274, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !252, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "error_message_count", scope: !408, file: !409, line: 69, type: !72, isLocal: false, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !408, file: !409, line: 295, type: !77, isLocal: false, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !269, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !449, isLocal: true, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 21)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !409, line: 214, type: !238, isLocal: true, isDefinition: true)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null}
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "program_name", scope: !459, file: !460, line: 31, type: !122, isLocal: false, isDefinition: true)
!459 = distinct !DICompileUnit(language: DW_LANG_C11, file: !460, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !461, globals: !462, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!461 = !{!117, !116}
!462 = !{!457, !463, !465}
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !460, line: 46, type: !274, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !460, line: 49, type: !245, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "utf07FF", scope: !469, file: !470, line: 46, type: !497, isLocal: true, isDefinition: true)
!469 = distinct !DISubprogram(name: "proper_name_lite", scope: !470, file: !470, line: 38, type: !471, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !475)
!470 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!471 = !DISubroutineType(types: !472)
!472 = !{!122, !122, !122}
!473 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !474, splitDebugInlining: false, nameTableKind: None)
!474 = !{!467}
!475 = !{!476, !477, !478, !479, !484}
!476 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !469, file: !470, line: 38, type: !122)
!477 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !469, file: !470, line: 38, type: !122)
!478 = !DILocalVariable(name: "translation", scope: !469, file: !470, line: 40, type: !122)
!479 = !DILocalVariable(name: "w", scope: !469, file: !470, line: 47, type: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !481, line: 37, baseType: !482)
!481 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !208, line: 57, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !208, line: 42, baseType: !72)
!484 = !DILocalVariable(name: "mbs", scope: !469, file: !470, line: 48, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !486, line: 6, baseType: !487)
!486 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !488, line: 21, baseType: !489)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 13, size: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !489, file: !488, line: 15, baseType: !77, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !489, file: !488, line: 20, baseType: !493, size: 32, offset: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !488, line: 16, size: 32, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !493, file: !488, line: 18, baseType: !72, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !493, file: !488, line: 19, baseType: !245, size: 32)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16, elements: !253)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !500, line: 78, type: !274, isLocal: true, isDefinition: true)
!500 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !500, line: 79, type: !19, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !500, line: 80, type: !505, isLocal: true, isDefinition: true)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 13)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !500, line: 81, type: !505, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !500, line: 82, type: !147, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !500, line: 83, type: !252, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !500, line: 84, type: !274, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !500, line: 85, type: !269, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !500, line: 86, type: !269, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !500, line: 87, type: !274, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !524, file: !500, line: 76, type: !598, isLocal: false, isDefinition: true)
!524 = distinct !DICompileUnit(language: DW_LANG_C11, file: !500, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !533, globals: !534, splitDebugInlining: false, nameTableKind: None)
!525 = !{!526, !528, !95}
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !527, line: 42, baseType: !72, size: 32, elements: !83)
!527 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !527, line: 254, baseType: !72, size: 32, elements: !529)
!529 = !{!530, !531, !532}
!530 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!531 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!532 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!533 = !{!117, !77, !118, !119}
!534 = !{!498, !501, !503, !508, !510, !512, !514, !516, !518, !520, !522, !535, !539, !549, !551, !556, !558, !560, !562, !564, !587, !594, !596}
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !524, file: !500, line: 92, type: !537, isLocal: false, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 320, elements: !55)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !524, file: !500, line: 1040, type: !541, isLocal: false, isDefinition: true)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !500, line: 56, size: 448, elements: !542)
!542 = !{!543, !544, !545, !547, !548}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !541, file: !500, line: 59, baseType: !526, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !500, line: 62, baseType: !77, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !541, file: !500, line: 66, baseType: !546, size: 256, offset: 64)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !275)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !541, file: !500, line: 69, baseType: !122, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !541, file: !500, line: 72, baseType: !122, size: 64, offset: 384)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !524, file: !500, line: 107, type: !541, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "slot0", scope: !524, file: !500, line: 831, type: !553, isLocal: true, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 256)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !500, line: 321, type: !252, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !500, line: 357, type: !252, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !500, line: 358, type: !252, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !500, line: 199, type: !269, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "quote", scope: !566, file: !500, line: 228, type: !585, isLocal: true, isDefinition: true)
!566 = distinct !DISubprogram(name: "gettext_quote", scope: !500, file: !500, line: 197, type: !567, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!122, !122, !526}
!569 = !{!570, !571, !572, !573, !574}
!570 = !DILocalVariable(name: "msgid", arg: 1, scope: !566, file: !500, line: 197, type: !122)
!571 = !DILocalVariable(name: "s", arg: 2, scope: !566, file: !500, line: 197, type: !526)
!572 = !DILocalVariable(name: "translation", scope: !566, file: !500, line: 199, type: !122)
!573 = !DILocalVariable(name: "w", scope: !566, file: !500, line: 229, type: !480)
!574 = !DILocalVariable(name: "mbs", scope: !566, file: !500, line: 230, type: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !486, line: 6, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !488, line: 21, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 13, size: 64, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !577, file: !488, line: 15, baseType: !77, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !577, file: !488, line: 20, baseType: !581, size: 32, offset: 32)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !488, line: 16, size: 32, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !581, file: !488, line: 18, baseType: !72, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !581, file: !488, line: 19, baseType: !245, size: 32)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !586)
!586 = !{!254, !247}
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "slotvec", scope: !524, file: !500, line: 834, type: !589, isLocal: true, isDefinition: true)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !500, line: 823, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !500, line: 825, baseType: !119, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !500, line: 826, baseType: !116, size: 64, offset: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "nslots", scope: !524, file: !500, line: 832, type: !77, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "slotvec0", scope: !524, file: !500, line: 833, type: !590, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 704, elements: !600)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!600 = !{!601}
!601 = !DISubrange(count: 11)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !604, line: 67, type: !345, isLocal: true, isDefinition: true)
!604 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !604, line: 69, type: !269, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !604, line: 83, type: !269, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !604, line: 83, type: !245, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !604, line: 85, type: !252, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !604, line: 88, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 171)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !604, line: 88, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 34)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !604, line: 105, type: !133, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !604, line: 109, type: !140, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !604, line: 113, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 28)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !604, line: 120, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 32)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !604, line: 127, type: !9, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !604, line: 134, type: !296, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !604, line: 142, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 44)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !604, line: 150, type: !14, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !604, line: 159, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 52)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !604, line: 170, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 60)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !604, line: 248, type: !147, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !604, line: 248, type: !321, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !604, line: 254, type: !147, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !604, line: 254, type: !128, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !604, line: 254, type: !296, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !604, line: 259, type: !3, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !604, line: 259, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 29)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !677, file: !678, line: 26, type: !680, isLocal: false, isDefinition: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !679, splitDebugInlining: false, nameTableKind: None)
!678 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!679 = !{!675}
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 376, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 47)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "exit_failure", scope: !685, file: !686, line: 24, type: !688, isLocal: false, isDefinition: true)
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !687, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!687 = !{!683}
!688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !691, line: 34, type: !64, isLocal: true, isDefinition: true)
!691 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !691, line: 34, type: !269, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !691, line: 34, type: !291, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !698, line: 108, type: !49, isLocal: true, isDefinition: true)
!698 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "internal_state", scope: !701, file: !698, line: 97, type: !704, isLocal: true, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !702, globals: !703, splitDebugInlining: false, nameTableKind: None)
!702 = !{!117, !119, !124}
!703 = !{!696, !699}
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !486, line: 6, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !488, line: 21, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 13, size: 64, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !706, file: !488, line: 15, baseType: !77, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !706, file: !488, line: 20, baseType: !710, size: 32, offset: 32)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !488, line: 16, size: 32, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !710, file: !488, line: 18, baseType: !72, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !710, file: !488, line: 19, baseType: !245, size: 32)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !19, isLocal: true, isDefinition: true)
!716 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/prog-fprintf.o -MD -MP -MF src/.deps/prog-fprintf.Tpo -c src/prog-fprintf.c -o src/.prog-fprintf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, globals: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !{!124}
!719 = !{!381}
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-stripslash.o -MD -MP -MF lib/.deps/libcoreutils_a-stripslash.Tpo -c lib/stripslash.c -o lib/.libcoreutils_a-stripslash.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !604, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !725, retainedTypes: !729, globals: !730, splitDebugInlining: false, nameTableKind: None)
!725 = !{!726}
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !604, line: 40, baseType: !72, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!729 = !{!117}
!730 = !{!602, !605, !607, !609, !611, !613, !618, !623, !625, !627, !632, !637, !639, !641, !646, !648, !653, !658, !660, !662, !664, !666, !668, !670}
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !733, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!733 = !{!734, !746}
!734 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !735, file: !732, line: 188, baseType: !72, size: 32, elements: !744)
!735 = distinct !DISubprogram(name: "x2nrealloc", scope: !732, file: !732, line: 176, type: !736, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !739)
!736 = !DISubroutineType(types: !737)
!737 = !{!117, !117, !738, !119}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!739 = !{!740, !741, !742, !743}
!740 = !DILocalVariable(name: "p", arg: 1, scope: !735, file: !732, line: 176, type: !117)
!741 = !DILocalVariable(name: "pn", arg: 2, scope: !735, file: !732, line: 176, type: !738)
!742 = !DILocalVariable(name: "s", arg: 3, scope: !735, file: !732, line: 176, type: !119)
!743 = !DILocalVariable(name: "n", scope: !735, file: !732, line: 178, type: !119)
!744 = !{!745}
!745 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!746 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !747, file: !732, line: 228, baseType: !72, size: 32, elements: !744)
!747 = distinct !DISubprogram(name: "xpalloc", scope: !732, file: !732, line: 223, type: !748, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !755)
!748 = !DISubroutineType(types: !749)
!749 = !{!117, !117, !750, !751, !753, !751}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !752, line: 130, baseType: !753)
!752 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !754, line: 18, baseType: !209)
!754 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764}
!756 = !DILocalVariable(name: "pa", arg: 1, scope: !747, file: !732, line: 223, type: !117)
!757 = !DILocalVariable(name: "pn", arg: 2, scope: !747, file: !732, line: 223, type: !750)
!758 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !747, file: !732, line: 223, type: !751)
!759 = !DILocalVariable(name: "n_max", arg: 4, scope: !747, file: !732, line: 223, type: !753)
!760 = !DILocalVariable(name: "s", arg: 5, scope: !747, file: !732, line: 223, type: !751)
!761 = !DILocalVariable(name: "n0", scope: !747, file: !732, line: 230, type: !751)
!762 = !DILocalVariable(name: "n", scope: !747, file: !732, line: 237, type: !751)
!763 = !DILocalVariable(name: "nbytes", scope: !747, file: !732, line: 248, type: !751)
!764 = !DILocalVariable(name: "adjusted_nbytes", scope: !747, file: !732, line: 252, type: !751)
!765 = !{!116, !117}
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !767, splitDebugInlining: false, nameTableKind: None)
!767 = !{!689, !692, !694}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!770 = !{!116}
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !782, splitDebugInlining: false, nameTableKind: None)
!782 = !{!783, !714}
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !252, isLocal: true, isDefinition: true)
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!789 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!790 = !{i32 7, !"Dwarf Version", i32 5}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 4}
!793 = !{i32 8, !"PIC Level", i32 2}
!794 = !{i32 7, !"PIE Level", i32 2}
!795 = !{i32 7, !"uwtable", i32 2}
!796 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!797 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 166, type: !798, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !77}
!800 = !{!801}
!801 = !DILocalVariable(name: "status", arg: 1, scope: !797, file: !2, line: 166, type: !77)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 168, column: 14, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !2, line: 168, column: 7)
!805 = !DILocation(line: 168, column: 7, scope: !797)
!806 = !DILocation(line: 169, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 169, column: 5)
!808 = !{!809, !809, i64 0}
!809 = !{!"any pointer", !810, i64 0}
!810 = !{!"omnipotent char", !811, i64 0}
!811 = !{!"Simple C/C++ TBAA"}
!812 = !DILocation(line: 172, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !804, file: !2, line: 171, column: 5)
!814 = !DILocation(line: 173, column: 7, scope: !813)
!815 = !DILocation(line: 177, column: 7, scope: !813)
!816 = !DILocation(line: 181, column: 7, scope: !813)
!817 = !DILocation(line: 186, column: 7, scope: !813)
!818 = !DILocation(line: 190, column: 7, scope: !813)
!819 = !DILocation(line: 191, column: 7, scope: !813)
!820 = !DILocalVariable(name: "program", arg: 1, scope: !821, file: !76, line: 836, type: !122)
!821 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !822, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !122}
!824 = !{!820, !825, !832, !833, !835, !836}
!825 = !DILocalVariable(name: "infomap", scope: !821, file: !76, line: 838, type: !826)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 896, elements: !270)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !821, file: !76, line: 838, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !828, file: !76, line: 838, baseType: !122, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !828, file: !76, line: 838, baseType: !122, size: 64, offset: 64)
!832 = !DILocalVariable(name: "node", scope: !821, file: !76, line: 848, type: !122)
!833 = !DILocalVariable(name: "map_prog", scope: !821, file: !76, line: 849, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!835 = !DILocalVariable(name: "lc_messages", scope: !821, file: !76, line: 861, type: !122)
!836 = !DILocalVariable(name: "url_program", scope: !821, file: !76, line: 874, type: !122)
!837 = !DILocation(line: 0, scope: !821, inlinedAt: !838)
!838 = distinct !DILocation(line: 192, column: 7, scope: !813)
!839 = !{}
!840 = !DILocation(line: 857, column: 3, scope: !821, inlinedAt: !838)
!841 = !DILocation(line: 861, column: 29, scope: !821, inlinedAt: !838)
!842 = !DILocation(line: 862, column: 7, scope: !843, inlinedAt: !838)
!843 = distinct !DILexicalBlock(scope: !821, file: !76, line: 862, column: 7)
!844 = !DILocation(line: 862, column: 19, scope: !843, inlinedAt: !838)
!845 = !DILocation(line: 862, column: 22, scope: !843, inlinedAt: !838)
!846 = !DILocation(line: 862, column: 7, scope: !821, inlinedAt: !838)
!847 = !DILocation(line: 868, column: 7, scope: !848, inlinedAt: !838)
!848 = distinct !DILexicalBlock(scope: !843, file: !76, line: 863, column: 5)
!849 = !DILocation(line: 870, column: 5, scope: !848, inlinedAt: !838)
!850 = !DILocation(line: 875, column: 3, scope: !821, inlinedAt: !838)
!851 = !DILocation(line: 877, column: 3, scope: !821, inlinedAt: !838)
!852 = !DILocation(line: 194, column: 3, scope: !797)
!853 = !DISubprogram(name: "dcgettext", scope: !854, file: !854, line: 51, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!855 = !DISubroutineType(types: !856)
!856 = !{!116, !122, !122, !77}
!857 = !DISubprogram(name: "__fprintf_chk", scope: !858, file: !858, line: 93, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!859 = !DISubroutineType(types: !860)
!860 = !{!77, !861, !77, !862, null}
!861 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!862 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!863 = !DISubprogram(name: "__printf_chk", scope: !858, file: !858, line: 95, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!77, !77, !862, null}
!866 = !DISubprogram(name: "fputs_unlocked", scope: !867, file: !867, line: 691, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!868 = !DISubroutineType(types: !869)
!869 = !{!77, !862, !861}
!870 = !DILocation(line: 0, scope: !159)
!871 = !DILocation(line: 581, column: 7, scope: !167)
!872 = !{!873, !873, i64 0}
!873 = !{!"int", !810, i64 0}
!874 = !DILocation(line: 581, column: 19, scope: !167)
!875 = !DILocation(line: 581, column: 7, scope: !159)
!876 = !DILocation(line: 585, column: 26, scope: !166)
!877 = !DILocation(line: 0, scope: !166)
!878 = !DILocation(line: 586, column: 23, scope: !166)
!879 = !DILocation(line: 586, column: 28, scope: !166)
!880 = !DILocation(line: 586, column: 32, scope: !166)
!881 = !{!810, !810, i64 0}
!882 = !DILocation(line: 586, column: 38, scope: !166)
!883 = !DILocalVariable(name: "__s1", arg: 1, scope: !884, file: !885, line: 1359, type: !122)
!884 = distinct !DISubprogram(name: "streq", scope: !885, file: !885, line: 1359, type: !886, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !888)
!885 = !DIFile(filename: "./lib/string.h", directory: "/src")
!886 = !DISubroutineType(types: !887)
!887 = !{!152, !122, !122}
!888 = !{!883, !889}
!889 = !DILocalVariable(name: "__s2", arg: 2, scope: !884, file: !885, line: 1359, type: !122)
!890 = !DILocation(line: 0, scope: !884, inlinedAt: !891)
!891 = distinct !DILocation(line: 586, column: 41, scope: !166)
!892 = !DILocation(line: 1361, column: 11, scope: !884, inlinedAt: !891)
!893 = !DILocation(line: 1361, column: 10, scope: !884, inlinedAt: !891)
!894 = !DILocation(line: 586, column: 19, scope: !166)
!895 = !DILocation(line: 587, column: 5, scope: !166)
!896 = !DILocation(line: 588, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !159, file: !76, line: 588, column: 7)
!898 = !DILocation(line: 588, column: 7, scope: !159)
!899 = !DILocation(line: 590, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !76, line: 589, column: 5)
!901 = !DILocation(line: 591, column: 7, scope: !900)
!902 = !DILocation(line: 595, column: 37, scope: !159)
!903 = !DILocation(line: 595, column: 35, scope: !159)
!904 = !DILocation(line: 596, column: 29, scope: !159)
!905 = !DILocation(line: 597, column: 8, scope: !174)
!906 = !DILocation(line: 597, column: 7, scope: !159)
!907 = !DILocation(line: 604, column: 24, scope: !173)
!908 = !DILocation(line: 604, column: 12, scope: !174)
!909 = !DILocation(line: 0, scope: !172)
!910 = !DILocation(line: 610, column: 16, scope: !172)
!911 = !DILocation(line: 610, column: 7, scope: !172)
!912 = !DILocation(line: 611, column: 21, scope: !172)
!913 = !{!914, !914, i64 0}
!914 = !{!"short", !810, i64 0}
!915 = !DILocation(line: 611, column: 19, scope: !172)
!916 = !DILocation(line: 611, column: 16, scope: !172)
!917 = !DILocation(line: 610, column: 30, scope: !172)
!918 = distinct !{!918, !911, !912, !919}
!919 = !{!"llvm.loop.mustprogress"}
!920 = !DILocation(line: 612, column: 18, scope: !921)
!921 = distinct !DILexicalBlock(scope: !172, file: !76, line: 612, column: 11)
!922 = !DILocation(line: 612, column: 11, scope: !172)
!923 = !DILocation(line: 620, column: 23, scope: !159)
!924 = !DILocation(line: 625, column: 39, scope: !159)
!925 = !DILocation(line: 626, column: 3, scope: !159)
!926 = !DILocation(line: 626, column: 10, scope: !159)
!927 = !DILocation(line: 626, column: 21, scope: !159)
!928 = !DILocation(line: 628, column: 44, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !76, line: 628, column: 11)
!930 = distinct !DILexicalBlock(scope: !159, file: !76, line: 627, column: 5)
!931 = !DILocation(line: 628, column: 32, scope: !929)
!932 = !DILocation(line: 628, column: 49, scope: !929)
!933 = !DILocation(line: 628, column: 11, scope: !930)
!934 = !DILocation(line: 630, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !76, line: 630, column: 11)
!936 = !DILocation(line: 630, column: 11, scope: !930)
!937 = !DILocation(line: 632, column: 26, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !76, line: 632, column: 15)
!939 = distinct !DILexicalBlock(scope: !935, file: !76, line: 631, column: 9)
!940 = !DILocation(line: 632, column: 34, scope: !938)
!941 = !DILocation(line: 632, column: 37, scope: !938)
!942 = !DILocation(line: 632, column: 15, scope: !939)
!943 = !DILocation(line: 636, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !76, line: 636, column: 15)
!945 = !DILocation(line: 636, column: 29, scope: !944)
!946 = !DILocation(line: 640, column: 16, scope: !930)
!947 = distinct !{!947, !925, !948, !919}
!948 = !DILocation(line: 641, column: 5, scope: !159)
!949 = !DILocation(line: 644, column: 3, scope: !159)
!950 = !DILocation(line: 0, scope: !884, inlinedAt: !951)
!951 = distinct !DILocation(line: 648, column: 31, scope: !159)
!952 = !DILocation(line: 0, scope: !884, inlinedAt: !953)
!953 = distinct !DILocation(line: 649, column: 31, scope: !159)
!954 = !DILocation(line: 0, scope: !884, inlinedAt: !955)
!955 = distinct !DILocation(line: 650, column: 31, scope: !159)
!956 = !DILocation(line: 0, scope: !884, inlinedAt: !957)
!957 = distinct !DILocation(line: 651, column: 31, scope: !159)
!958 = !DILocation(line: 0, scope: !884, inlinedAt: !959)
!959 = distinct !DILocation(line: 652, column: 31, scope: !159)
!960 = !DILocation(line: 0, scope: !884, inlinedAt: !961)
!961 = distinct !DILocation(line: 653, column: 31, scope: !159)
!962 = !DILocation(line: 0, scope: !884, inlinedAt: !963)
!963 = distinct !DILocation(line: 654, column: 31, scope: !159)
!964 = !DILocation(line: 0, scope: !884, inlinedAt: !965)
!965 = distinct !DILocation(line: 655, column: 31, scope: !159)
!966 = !DILocation(line: 0, scope: !884, inlinedAt: !967)
!967 = distinct !DILocation(line: 656, column: 31, scope: !159)
!968 = !DILocation(line: 0, scope: !884, inlinedAt: !969)
!969 = distinct !DILocation(line: 657, column: 31, scope: !159)
!970 = !DILocation(line: 663, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !159, file: !76, line: 663, column: 7)
!972 = !DILocation(line: 664, column: 7, scope: !971)
!973 = !DILocation(line: 664, column: 10, scope: !971)
!974 = !DILocation(line: 663, column: 7, scope: !159)
!975 = !DILocation(line: 669, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !76, line: 665, column: 5)
!977 = !DILocation(line: 671, column: 5, scope: !976)
!978 = !DILocation(line: 676, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !971, file: !76, line: 673, column: 5)
!980 = !DILocation(line: 679, column: 3, scope: !159)
!981 = !DILocation(line: 683, column: 3, scope: !159)
!982 = !DILocation(line: 686, column: 3, scope: !159)
!983 = !DILocation(line: 688, column: 3, scope: !159)
!984 = !DILocation(line: 691, column: 3, scope: !159)
!985 = !DILocation(line: 695, column: 3, scope: !159)
!986 = !DILocation(line: 696, column: 1, scope: !159)
!987 = !DISubprogram(name: "setlocale", scope: !988, file: !988, line: 122, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!989 = !DISubroutineType(types: !990)
!990 = !{!116, !77, !122}
!991 = !DISubprogram(name: "strncmp", scope: !992, file: !992, line: 159, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!993 = !DISubroutineType(types: !994)
!994 = !{!77, !122, !122, !119}
!995 = !DISubprogram(name: "exit", scope: !996, file: !996, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!996 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!997 = !DISubprogram(name: "getenv", scope: !996, file: !996, line: 641, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!116, !122}
!1000 = !DISubprogram(name: "strcmp", scope: !992, file: !992, line: 156, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!77, !122, !122}
!1003 = !DISubprogram(name: "strspn", scope: !992, file: !992, line: 297, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!121, !122, !122}
!1006 = !DISubprogram(name: "strchr", scope: !992, file: !992, line: 246, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!116, !122, !77}
!1009 = !DISubprogram(name: "__ctype_b_loc", scope: !96, file: !96, line: 79, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1015 = !DISubprogram(name: "strcspn", scope: !992, file: !992, line: 293, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubprogram(name: "fwrite_unlocked", scope: !867, file: !867, line: 704, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!119, !1019, !119, !119, !861}
!1019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1022 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 198, type: !1023, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1026)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!77, !77, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1035, !1038, !1039, !1042, !1079, !1080}
!1027 = !DILocalVariable(name: "argc", arg: 1, scope: !1022, file: !2, line: 198, type: !77)
!1028 = !DILocalVariable(name: "argv", arg: 2, scope: !1022, file: !2, line: 198, type: !1025)
!1029 = !DILocalVariable(name: "optc", scope: !1022, file: !2, line: 208, type: !77)
!1030 = !DILocalVariable(name: "ok", scope: !1022, file: !2, line: 235, type: !152)
!1031 = !DILocalVariable(name: "dir", scope: !1032, file: !2, line: 238, type: !116)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 237, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 236, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 236, column: 3)
!1035 = !DILocalVariable(name: "rmdir_errno", scope: !1036, file: !2, line: 246, type: !77)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 245, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 244, column: 11)
!1038 = !DILocalVariable(name: "custom_error", scope: !1036, file: !2, line: 255, type: !152)
!1039 = !DILocalVariable(name: "last_unix_slash", scope: !1040, file: !2, line: 258, type: !122)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 257, column: 13)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 256, column: 15)
!1042 = !DILocalVariable(name: "st", scope: !1043, file: !2, line: 261, type: !1045)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 260, column: 17)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 259, column: 19)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1046, line: 26, size: 1152, elements: !1047)
!1046 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1047 = !{!1048, !1050, !1052, !1054, !1056, !1058, !1060, !1061, !1062, !1063, !1065, !1067, !1075, !1076, !1077}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1045, file: !1046, line: 31, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !208, line: 145, baseType: !121)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1045, file: !1046, line: 36, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !208, line: 148, baseType: !121)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1045, file: !1046, line: 44, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !208, line: 151, baseType: !121)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1045, file: !1046, line: 45, baseType: !1055, size: 32, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !208, line: 150, baseType: !72)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1045, file: !1046, line: 47, baseType: !1057, size: 32, offset: 224)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !208, line: 146, baseType: !72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1045, file: !1046, line: 48, baseType: !1059, size: 32, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !208, line: 147, baseType: !72)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1045, file: !1046, line: 50, baseType: !77, size: 32, offset: 288)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1045, file: !1046, line: 52, baseType: !1049, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1045, file: !1046, line: 57, baseType: !207, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1045, file: !1046, line: 61, baseType: !1064, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !208, line: 175, baseType: !209)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1045, file: !1046, line: 63, baseType: !1066, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !208, line: 180, baseType: !209)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1045, file: !1046, line: 74, baseType: !1068, size: 128, offset: 576)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1069, line: 11, size: 128, elements: !1070)
!1069 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1070 = !{!1071, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1068, file: !1069, line: 16, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !208, line: 160, baseType: !209)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1068, file: !1069, line: 21, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !208, line: 197, baseType: !209)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1045, file: !1046, line: 75, baseType: !1068, size: 128, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1045, file: !1046, line: 76, baseType: !1068, size: 128, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1045, file: !1046, line: 89, baseType: !1078, size: 192, offset: 960)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 192, elements: !65)
!1079 = !DILocalVariable(name: "ret", scope: !1043, file: !2, line: 262, type: !77)
!1080 = !DILocalVariable(name: "dir_arg", scope: !1081, file: !2, line: 268, type: !116)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 266, column: 21)
!1082 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 264, column: 23)
!1083 = distinct !DIAssignID()
!1084 = distinct !DIAssignID()
!1085 = !DILocation(line: 0, scope: !1043)
!1086 = !DILocation(line: 0, scope: !1022)
!1087 = !DILocation(line: 201, column: 21, scope: !1022)
!1088 = !DILocation(line: 201, column: 3, scope: !1022)
!1089 = !DILocation(line: 202, column: 3, scope: !1022)
!1090 = !DILocation(line: 203, column: 3, scope: !1022)
!1091 = !DILocation(line: 204, column: 3, scope: !1022)
!1092 = !DILocation(line: 206, column: 3, scope: !1022)
!1093 = !DILocation(line: 209, column: 3, scope: !1022)
!1094 = !DILocation(line: 209, column: 18, scope: !1022)
!1095 = !DILocation(line: 218, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 212, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 210, column: 5)
!1098 = !DILocation(line: 221, column: 11, scope: !1096)
!1099 = !DILocation(line: 222, column: 9, scope: !1096)
!1100 = !DILocation(line: 223, column: 9, scope: !1096)
!1101 = !DILocation(line: 225, column: 11, scope: !1096)
!1102 = !DILocation(line: 0, scope: !1096)
!1103 = distinct !{!1103, !1093, !1104, !919}
!1104 = !DILocation(line: 227, column: 5, scope: !1022)
!1105 = !DILocation(line: 229, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 229, column: 7)
!1107 = !DILocation(line: 229, column: 14, scope: !1106)
!1108 = !DILocation(line: 229, column: 7, scope: !1022)
!1109 = !DILocation(line: 236, column: 17, scope: !1033)
!1110 = !DILocation(line: 236, column: 3, scope: !1034)
!1111 = !DILocation(line: 231, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 230, column: 5)
!1113 = !DILocation(line: 232, column: 7, scope: !1112)
!1114 = !DILocation(line: 238, column: 19, scope: !1032)
!1115 = !DILocation(line: 0, scope: !1032)
!1116 = !DILocation(line: 241, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 241, column: 11)
!1118 = !DILocation(line: 241, column: 11, scope: !1032)
!1119 = !DILocation(line: 242, column: 23, scope: !1117)
!1120 = !DILocation(line: 242, column: 31, scope: !1117)
!1121 = !DILocation(line: 242, column: 60, scope: !1117)
!1122 = !DILocation(line: 242, column: 9, scope: !1117)
!1123 = !DILocation(line: 244, column: 11, scope: !1037)
!1124 = !DILocation(line: 244, column: 23, scope: !1037)
!1125 = !DILocation(line: 244, column: 11, scope: !1032)
!1126 = !DILocation(line: 246, column: 29, scope: !1036)
!1127 = !DILocation(line: 0, scope: !1036)
!1128 = !DILocation(line: 247, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 247, column: 15)
!1130 = !DILocation(line: 247, column: 15, scope: !1036)
!1131 = !DILocation(line: 256, column: 27, scope: !1041)
!1132 = !DILocation(line: 256, column: 15, scope: !1036)
!1133 = !DILocation(line: 258, column: 45, scope: !1040)
!1134 = !DILocation(line: 0, scope: !1040)
!1135 = !DILocation(line: 259, column: 19, scope: !1044)
!1136 = !DILocation(line: 259, column: 35, scope: !1044)
!1137 = !DILocation(line: 259, column: 57, scope: !1044)
!1138 = !DILocation(line: 259, column: 39, scope: !1044)
!1139 = !DILocation(line: 259, column: 62, scope: !1044)
!1140 = !DILocation(line: 259, column: 19, scope: !1040)
!1141 = !DILocation(line: 261, column: 19, scope: !1043)
!1142 = !DILocation(line: 262, column: 29, scope: !1043)
!1143 = !DILocation(line: 264, column: 33, scope: !1082)
!1144 = !DILocation(line: 264, column: 36, scope: !1082)
!1145 = !DILocation(line: 264, column: 42, scope: !1082)
!1146 = !DILocation(line: 265, column: 23, scope: !1082)
!1147 = !DILocation(line: 265, column: 39, scope: !1082)
!1148 = !{!1149, !873, i64 24}
!1149 = !{!"stat", !1150, i64 0, !1150, i64 8, !1150, i64 16, !873, i64 24, !873, i64 28, !873, i64 32, !873, i64 36, !1150, i64 40, !1150, i64 48, !1150, i64 56, !1150, i64 64, !1151, i64 72, !1151, i64 88, !1151, i64 104, !810, i64 120}
!1150 = !{!"long", !810, i64 0}
!1151 = !{!"timespec", !1150, i64 0, !1150, i64 8}
!1152 = !DILocation(line: 264, column: 23, scope: !1043)
!1153 = !DILocation(line: 268, column: 39, scope: !1081)
!1154 = !DILocation(line: 0, scope: !1081)
!1155 = !DILocation(line: 269, column: 23, scope: !1081)
!1156 = !DILocalVariable(name: "linkbuf", scope: !1157, file: !1158, line: 51, type: !49)
!1157 = distinct !DISubprogram(name: "issymlink", scope: !1158, file: !1158, line: 49, type: !1159, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1161)
!1158 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!77, !122}
!1161 = !{!1162, !1156}
!1162 = !DILocalVariable(name: "filename", arg: 1, scope: !1157, file: !1158, line: 49, type: !122)
!1163 = !DILocation(line: 0, scope: !1157, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 270, column: 27, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 270, column: 27)
!1166 = !DILocation(line: 51, column: 3, scope: !1157, inlinedAt: !1164)
!1167 = !DILocation(line: 52, column: 7, scope: !1168, inlinedAt: !1164)
!1168 = distinct !DILexicalBlock(scope: !1157, file: !1158, line: 52, column: 7)
!1169 = !DILocation(line: 52, column: 54, scope: !1168, inlinedAt: !1164)
!1170 = !DILocation(line: 58, column: 1, scope: !1157, inlinedAt: !1164)
!1171 = !DILocation(line: 52, column: 7, scope: !1157, inlinedAt: !1164)
!1172 = !DILocation(line: 272, column: 27, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 271, column: 25)
!1174 = !DILocation(line: 278, column: 23, scope: !1081)
!1175 = !DILocation(line: 280, column: 17, scope: !1044)
!1176 = !DILocation(line: 283, column: 15, scope: !1036)
!1177 = !DILocation(line: 284, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 283, column: 15)
!1179 = !DILocation(line: 288, column: 16, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 288, column: 16)
!1181 = !DILocation(line: 288, column: 16, scope: !1037)
!1182 = !DILocalVariable(name: "dir", arg: 1, scope: !1183, file: !2, line: 113, type: !116)
!1183 = distinct !DISubprogram(name: "remove_parents", scope: !2, file: !2, line: 113, type: !1184, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!152, !116}
!1186 = !{!1182, !1187, !1188, !1190, !1191}
!1187 = !DILocalVariable(name: "ok", scope: !1183, file: !2, line: 115, type: !152)
!1188 = !DILocalVariable(name: "slash", scope: !1189, file: !2, line: 120, type: !116)
!1189 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 119, column: 5)
!1190 = !DILocalVariable(name: "rmdir_errno", scope: !1189, file: !2, line: 134, type: !77)
!1191 = !DILocalVariable(name: "error_msg", scope: !1192, file: !2, line: 145, type: !122)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 144, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 139, column: 15)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 137, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 136, column: 11)
!1196 = !DILocation(line: 0, scope: !1183, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 290, column: 17, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 289, column: 9)
!1199 = !DILocation(line: 117, column: 3, scope: !1183, inlinedAt: !1197)
!1200 = !DILocation(line: 118, column: 3, scope: !1183, inlinedAt: !1197)
!1201 = !DILocation(line: 120, column: 21, scope: !1189, inlinedAt: !1197)
!1202 = !DILocation(line: 121, column: 17, scope: !1203, inlinedAt: !1197)
!1203 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 121, column: 11)
!1204 = !DILocation(line: 0, scope: !1189, inlinedAt: !1197)
!1205 = !DILocation(line: 121, column: 11, scope: !1189, inlinedAt: !1197)
!1206 = !DILocation(line: 125, column: 20, scope: !1189, inlinedAt: !1197)
!1207 = !DILocation(line: 125, column: 26, scope: !1189, inlinedAt: !1197)
!1208 = !DILocation(line: 125, column: 7, scope: !1189, inlinedAt: !1197)
!1209 = !DILocation(line: 125, column: 29, scope: !1189, inlinedAt: !1197)
!1210 = !DILocation(line: 125, column: 36, scope: !1189, inlinedAt: !1197)
!1211 = !DILocation(line: 126, column: 9, scope: !1189, inlinedAt: !1197)
!1212 = distinct !{!1212, !1208, !1213, !919}
!1213 = !DILocation(line: 126, column: 11, scope: !1189, inlinedAt: !1197)
!1214 = !DILocation(line: 127, column: 7, scope: !1189, inlinedAt: !1197)
!1215 = !DILocation(line: 127, column: 16, scope: !1189, inlinedAt: !1197)
!1216 = !DILocation(line: 130, column: 11, scope: !1217, inlinedAt: !1197)
!1217 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 130, column: 11)
!1218 = !DILocation(line: 130, column: 11, scope: !1189, inlinedAt: !1197)
!1219 = !DILocation(line: 131, column: 23, scope: !1217, inlinedAt: !1197)
!1220 = !DILocation(line: 131, column: 31, scope: !1217, inlinedAt: !1197)
!1221 = !DILocation(line: 131, column: 60, scope: !1217, inlinedAt: !1197)
!1222 = !DILocation(line: 131, column: 9, scope: !1217, inlinedAt: !1197)
!1223 = !DILocation(line: 133, column: 13, scope: !1189, inlinedAt: !1197)
!1224 = !DILocation(line: 133, column: 25, scope: !1189, inlinedAt: !1197)
!1225 = !DILocation(line: 134, column: 25, scope: !1189, inlinedAt: !1197)
!1226 = !DILocation(line: 136, column: 11, scope: !1189, inlinedAt: !1197)
!1227 = !DILocation(line: 139, column: 15, scope: !1193, inlinedAt: !1197)
!1228 = !DILocation(line: 139, column: 15, scope: !1194, inlinedAt: !1197)
!1229 = !DILocation(line: 146, column: 31, scope: !1230, inlinedAt: !1197)
!1230 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 146, column: 19)
!1231 = !DILocation(line: 0, scope: !1192, inlinedAt: !1197)
!1232 = !DILocation(line: 157, column: 15, scope: !1192, inlinedAt: !1197)
!1233 = !DILocation(line: 290, column: 14, scope: !1198)
!1234 = !DILocation(line: 291, column: 9, scope: !1198)
!1235 = !DILocation(line: 235, column: 8, scope: !1022)
!1236 = !DILocation(line: 236, column: 25, scope: !1033)
!1237 = distinct !{!1237, !1110, !1238, !919}
!1238 = !DILocation(line: 292, column: 5, scope: !1034)
!1239 = !DILocation(line: 294, column: 10, scope: !1022)
!1240 = !DILocation(line: 295, column: 1, scope: !1022)
!1241 = !DISubprogram(name: "bindtextdomain", scope: !854, file: !854, line: 86, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!116, !122, !122}
!1244 = !DISubprogram(name: "textdomain", scope: !854, file: !854, line: 82, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubprogram(name: "atexit", scope: !996, file: !996, line: 602, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!77, !454}
!1248 = !DISubprogram(name: "getopt_long", scope: !371, file: !371, line: 66, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!77, !77, !1251, !122, !1253, !376}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1254 = !DISubprogram(name: "rmdir", scope: !1255, file: !1255, line: 867, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1256 = !DISubprogram(name: "__errno_location", scope: !1257, file: !1257, line: 37, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!376}
!1260 = distinct !DISubprogram(name: "ignorable_failure", scope: !2, file: !2, line: 99, type: !1261, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!152, !77, !122}
!1263 = !{!1264, !1265}
!1264 = !DILocalVariable(name: "error_number", arg: 1, scope: !1260, file: !2, line: 99, type: !77)
!1265 = !DILocalVariable(name: "dir", arg: 2, scope: !1260, file: !2, line: 99, type: !122)
!1266 = !DILocation(line: 0, scope: !1260)
!1267 = !DILocation(line: 101, column: 11, scope: !1260)
!1268 = !DILocation(line: 102, column: 11, scope: !1260)
!1269 = !DILocation(line: 103, column: 15, scope: !1260)
!1270 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !1271, file: !76, line: 305, type: !77)
!1271 = distinct !DISubprogram(name: "directory_status", scope: !76, file: !76, line: 305, type: !1272, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!77, !77, !122}
!1274 = !{!1270, !1275, !1276, !1281, !1282, !1283}
!1275 = !DILocalVariable(name: "dir", arg: 2, scope: !1271, file: !76, line: 305, type: !122)
!1276 = !DILocalVariable(name: "dirp", scope: !1271, file: !76, line: 307, type: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1279, line: 127, baseType: !1280)
!1279 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1279, line: 127, flags: DIFlagFwdDecl)
!1281 = !DILocalVariable(name: "no_direntries", scope: !1271, file: !76, line: 308, type: !152)
!1282 = !DILocalVariable(name: "saved_errno", scope: !1271, file: !76, line: 309, type: !77)
!1283 = !DILocalVariable(name: "fd", scope: !1271, file: !76, line: 310, type: !77)
!1284 = !DILocation(line: 0, scope: !1271, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 104, column: 22, scope: !1260)
!1286 = !DILocation(line: 310, column: 12, scope: !1271, inlinedAt: !1285)
!1287 = !DILocation(line: 314, column: 10, scope: !1288, inlinedAt: !1285)
!1288 = distinct !DILexicalBlock(scope: !1271, file: !76, line: 314, column: 7)
!1289 = !DILocation(line: 314, column: 7, scope: !1271, inlinedAt: !1285)
!1290 = !DILocation(line: 315, column: 12, scope: !1288, inlinedAt: !1285)
!1291 = !DILocation(line: 315, column: 5, scope: !1288, inlinedAt: !1285)
!1292 = !DILocation(line: 317, column: 10, scope: !1271, inlinedAt: !1285)
!1293 = !DILocation(line: 318, column: 12, scope: !1294, inlinedAt: !1285)
!1294 = distinct !DILexicalBlock(scope: !1271, file: !76, line: 318, column: 7)
!1295 = !DILocation(line: 318, column: 7, scope: !1271, inlinedAt: !1285)
!1296 = !DILocation(line: 320, column: 21, scope: !1297, inlinedAt: !1285)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !76, line: 319, column: 5)
!1298 = !DILocation(line: 321, column: 7, scope: !1297, inlinedAt: !1285)
!1299 = !DILocation(line: 322, column: 7, scope: !1297, inlinedAt: !1285)
!1300 = !DILocation(line: 325, column: 9, scope: !1271, inlinedAt: !1285)
!1301 = !DILocalVariable(name: "dirp", arg: 1, scope: !1302, file: !76, line: 285, type: !1277)
!1302 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !76, file: !76, line: 285, type: !1303, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1315)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1305, !1277}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1308, line: 22, size: 2240, elements: !1309)
!1308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1307, file: !1308, line: 25, baseType: !1051, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1307, file: !1308, line: 26, baseType: !207, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1307, file: !1308, line: 31, baseType: !118, size: 16, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1307, file: !1308, line: 32, baseType: !124, size: 8, offset: 144)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1307, file: !1308, line: 33, baseType: !553, size: 2048, offset: 152)
!1315 = !{!1301, !1316}
!1316 = !DILocalVariable(name: "dp", scope: !1317, file: !76, line: 289, type: !1305)
!1317 = distinct !DILexicalBlock(scope: !1302, file: !76, line: 288, column: 5)
!1318 = !DILocation(line: 0, scope: !1302, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 326, column: 20, scope: !1271, inlinedAt: !1285)
!1320 = !DILocation(line: 287, column: 3, scope: !1302, inlinedAt: !1319)
!1321 = !DILocation(line: 289, column: 33, scope: !1317, inlinedAt: !1319)
!1322 = !DILocation(line: 0, scope: !1317, inlinedAt: !1319)
!1323 = !DILocation(line: 290, column: 14, scope: !1324, inlinedAt: !1319)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !76, line: 290, column: 11)
!1325 = !DILocation(line: 290, column: 22, scope: !1324, inlinedAt: !1319)
!1326 = !DILocation(line: 290, column: 46, scope: !1324, inlinedAt: !1319)
!1327 = !DILocalVariable(name: "file_name", arg: 1, scope: !1328, file: !76, line: 272, type: !122)
!1328 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !76, file: !76, line: 272, type: !1329, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!152, !122}
!1331 = !{!1327, !1332}
!1332 = !DILocalVariable(name: "sep", scope: !1333, file: !76, line: 276, type: !4)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !76, line: 275, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !76, line: 274, column: 7)
!1335 = !DILocation(line: 0, scope: !1328, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 290, column: 27, scope: !1324, inlinedAt: !1319)
!1337 = !DILocation(line: 274, column: 7, scope: !1334, inlinedAt: !1336)
!1338 = !DILocation(line: 274, column: 20, scope: !1334, inlinedAt: !1336)
!1339 = !DILocation(line: 274, column: 7, scope: !1328, inlinedAt: !1336)
!1340 = !DILocation(line: 276, column: 29, scope: !1333, inlinedAt: !1336)
!1341 = !DILocation(line: 276, column: 42, scope: !1333, inlinedAt: !1336)
!1342 = !DILocation(line: 276, column: 50, scope: !1333, inlinedAt: !1336)
!1343 = !DILocation(line: 276, column: 18, scope: !1333, inlinedAt: !1336)
!1344 = !DILocation(line: 0, scope: !1333, inlinedAt: !1336)
!1345 = !DILocation(line: 277, column: 17, scope: !1333, inlinedAt: !1336)
!1346 = !DILocation(line: 277, column: 21, scope: !1333, inlinedAt: !1336)
!1347 = !DILocation(line: 290, column: 11, scope: !1317, inlinedAt: !1319)
!1348 = !DILocation(line: 327, column: 17, scope: !1271, inlinedAt: !1285)
!1349 = !DILocation(line: 328, column: 3, scope: !1271, inlinedAt: !1285)
!1350 = !DILocation(line: 329, column: 24, scope: !1271, inlinedAt: !1285)
!1351 = !DILocation(line: 329, column: 3, scope: !1271, inlinedAt: !1285)
!1352 = !DILocation(line: 104, column: 55, scope: !1260)
!1353 = !DILocation(line: 101, column: 3, scope: !1260)
!1354 = !DISubprogram(name: "strrchr", scope: !992, file: !992, line: 273, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DISubprogram(name: "stat", scope: !1356, file: !1356, line: 205, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!77, !862, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1361 = !DISubprogram(name: "free", scope: !996, file: !996, line: 555, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !117}
!1364 = !DISubprogram(name: "openat", scope: !1365, file: !1365, line: 205, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!77, !77, !122, !77, null}
!1368 = !DISubprogram(name: "fdopendir", scope: !1279, file: !1279, line: 141, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1277, !77}
!1371 = !DISubprogram(name: "close", scope: !1255, file: !1255, line: 358, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!77, !77}
!1374 = !DISubprogram(name: "readdir", scope: !1279, file: !1279, line: 162, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1377, !1277}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1378 = !DISubprogram(name: "closedir", scope: !1279, file: !1279, line: 149, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!77, !1277}
!1381 = distinct !DISubprogram(name: "prog_fprintf", scope: !383, file: !383, line: 28, type: !1382, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !1418)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384, !122, null}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1386, file: !185, line: 51, baseType: !77, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1386, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1386, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1386, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1386, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1386, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1386, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1386, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1386, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1386, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1386, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1386, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1386, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1386, file: !185, line: 70, baseType: !1402, size: 64, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1386, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1386, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1386, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1386, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1386, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1386, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1386, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1386, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1386, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1386, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1386, file: !185, line: 93, baseType: !1402, size: 64, offset: 1344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1386, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1386, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1386, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1386, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1418 = !{!1419, !1420, !1421}
!1419 = !DILocalVariable(name: "fp", arg: 1, scope: !1381, file: !383, line: 28, type: !1384)
!1420 = !DILocalVariable(name: "fmt", arg: 2, scope: !1381, file: !383, line: 28, type: !122)
!1421 = !DILocalVariable(name: "ap", scope: !1381, file: !383, line: 30, type: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !867, line: 52, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1424, line: 12, baseType: !1425)
!1424 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !383, baseType: !1426)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, size: 192, elements: !50)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1427, file: !383, line: 30, baseType: !72, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1427, file: !383, line: 30, baseType: !72, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1427, file: !383, line: 30, baseType: !117, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1427, file: !383, line: 30, baseType: !117, size: 64, offset: 128)
!1433 = distinct !DIAssignID()
!1434 = !DILocation(line: 0, scope: !1381)
!1435 = !DILocation(line: 30, column: 3, scope: !1381)
!1436 = !DILocation(line: 31, column: 3, scope: !1381)
!1437 = !DILocation(line: 32, column: 3, scope: !1381)
!1438 = !DILocation(line: 33, column: 3, scope: !1381)
!1439 = !DILocalVariable(name: "__stream", arg: 1, scope: !1440, file: !858, line: 132, type: !1443)
!1440 = distinct !DISubprogram(name: "vfprintf", scope: !858, file: !858, line: 132, type: !1441, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !1445)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!77, !1443, !862, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1445 = !{!1439, !1446, !1447}
!1446 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1440, file: !858, line: 133, type: !862)
!1447 = !DILocalVariable(name: "__ap", arg: 3, scope: !1440, file: !858, line: 133, type: !1444)
!1448 = !DILocation(line: 0, scope: !1440, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 34, column: 3, scope: !1381)
!1450 = !DILocation(line: 135, column: 10, scope: !1440, inlinedAt: !1449)
!1451 = !DILocation(line: 35, column: 3, scope: !1381)
!1452 = !DILocalVariable(name: "__c", arg: 1, scope: !1453, file: !1454, line: 91, type: !77)
!1453 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1454, file: !1454, line: 91, type: !1455, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !1457)
!1454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!77, !77, !1384}
!1457 = !{!1452, !1458}
!1458 = !DILocalVariable(name: "__stream", arg: 2, scope: !1453, file: !1454, line: 91, type: !1384)
!1459 = !DILocation(line: 0, scope: !1453, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 36, column: 3, scope: !1381)
!1461 = !DILocation(line: 93, column: 10, scope: !1453, inlinedAt: !1460)
!1462 = !{!1463, !809, i64 40}
!1463 = !{!"_IO_FILE", !873, i64 0, !809, i64 8, !809, i64 16, !809, i64 24, !809, i64 32, !809, i64 40, !809, i64 48, !809, i64 56, !809, i64 64, !809, i64 72, !809, i64 80, !809, i64 88, !809, i64 96, !809, i64 104, !873, i64 112, !873, i64 116, !1150, i64 120, !914, i64 128, !810, i64 130, !810, i64 131, !809, i64 136, !1150, i64 144, !809, i64 152, !809, i64 160, !809, i64 168, !809, i64 176, !1150, i64 184, !873, i64 192, !810, i64 196}
!1464 = !{!1463, !809, i64 48}
!1465 = !{!"branch_weights", i32 2000, i32 1}
!1466 = !DILocation(line: 37, column: 1, scope: !1381)
!1467 = !DISubprogram(name: "__vfprintf_chk", scope: !858, file: !858, line: 96, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!77, !1443, !77, !862, !1444}
!1470 = !DISubprogram(name: "__overflow", scope: !867, file: !867, line: 886, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!77, !1384, !77}
!1473 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !394, file: !394, line: 50, type: !822, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1474)
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "file", arg: 1, scope: !1473, file: !394, line: 50, type: !122)
!1476 = !DILocation(line: 0, scope: !1473)
!1477 = !DILocation(line: 52, column: 13, scope: !1473)
!1478 = !DILocation(line: 53, column: 1, scope: !1473)
!1479 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !394, file: !394, line: 87, type: !1480, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !152}
!1482 = !{!1483}
!1483 = !DILocalVariable(name: "ignore", arg: 1, scope: !1479, file: !394, line: 87, type: !152)
!1484 = !DILocation(line: 0, scope: !1479)
!1485 = !DILocation(line: 89, column: 16, scope: !1479)
!1486 = !{!1487, !1487, i64 0}
!1487 = !{!"_Bool", !810, i64 0}
!1488 = !DILocation(line: 90, column: 1, scope: !1479)
!1489 = distinct !DISubprogram(name: "close_stdout", scope: !394, file: !394, line: 116, type: !455, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1490)
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "write_error", scope: !1492, file: !394, line: 121, type: !122)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !394, line: 120, column: 5)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !394, line: 118, column: 7)
!1494 = !DILocation(line: 118, column: 21, scope: !1493)
!1495 = !DILocation(line: 118, column: 7, scope: !1493)
!1496 = !DILocation(line: 118, column: 29, scope: !1493)
!1497 = !DILocation(line: 119, column: 7, scope: !1493)
!1498 = !DILocation(line: 119, column: 12, scope: !1493)
!1499 = !{i8 0, i8 2}
!1500 = !DILocation(line: 119, column: 25, scope: !1493)
!1501 = !DILocation(line: 119, column: 28, scope: !1493)
!1502 = !DILocation(line: 119, column: 34, scope: !1493)
!1503 = !DILocation(line: 118, column: 7, scope: !1489)
!1504 = !DILocation(line: 121, column: 33, scope: !1492)
!1505 = !DILocation(line: 0, scope: !1492)
!1506 = !DILocation(line: 122, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1492, file: !394, line: 122, column: 11)
!1508 = !DILocation(line: 0, scope: !1507)
!1509 = !DILocation(line: 122, column: 11, scope: !1492)
!1510 = !DILocation(line: 123, column: 9, scope: !1507)
!1511 = !DILocation(line: 126, column: 9, scope: !1507)
!1512 = !DILocation(line: 128, column: 14, scope: !1492)
!1513 = !DILocation(line: 128, column: 7, scope: !1492)
!1514 = !DILocation(line: 133, column: 42, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1489, file: !394, line: 133, column: 7)
!1516 = !DILocation(line: 133, column: 28, scope: !1515)
!1517 = !DILocation(line: 133, column: 50, scope: !1515)
!1518 = !DILocation(line: 133, column: 7, scope: !1489)
!1519 = !DILocation(line: 134, column: 12, scope: !1515)
!1520 = !DILocation(line: 134, column: 5, scope: !1515)
!1521 = !DILocation(line: 135, column: 1, scope: !1489)
!1522 = !DISubprogram(name: "_exit", scope: !1255, file: !1255, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1523 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !721, file: !721, line: 31, type: !1184, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DILocalVariable(name: "file", arg: 1, scope: !1523, file: !721, line: 31, type: !116)
!1526 = !DILocalVariable(name: "base", scope: !1523, file: !721, line: 33, type: !116)
!1527 = !DILocalVariable(name: "base_lim", scope: !1523, file: !721, line: 39, type: !116)
!1528 = !DILocalVariable(name: "had_slash", scope: !1523, file: !721, line: 40, type: !152)
!1529 = !DILocation(line: 0, scope: !1523)
!1530 = !DILocation(line: 33, column: 16, scope: !1523)
!1531 = !DILocation(line: 37, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !721, line: 37, column: 7)
!1533 = !DILocation(line: 37, column: 7, scope: !1523)
!1534 = !DILocation(line: 39, column: 27, scope: !1523)
!1535 = !DILocation(line: 39, column: 25, scope: !1523)
!1536 = !DILocation(line: 40, column: 21, scope: !1523)
!1537 = !DILocation(line: 40, column: 31, scope: !1523)
!1538 = !DILocation(line: 41, column: 13, scope: !1523)
!1539 = !DILocation(line: 42, column: 3, scope: !1523)
!1540 = distinct !DISubprogram(name: "verror", scope: !409, file: !409, line: 251, type: !1541, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !77, !77, !122, !419}
!1543 = !{!1544, !1545, !1546, !1547}
!1544 = !DILocalVariable(name: "status", arg: 1, scope: !1540, file: !409, line: 251, type: !77)
!1545 = !DILocalVariable(name: "errnum", arg: 2, scope: !1540, file: !409, line: 251, type: !77)
!1546 = !DILocalVariable(name: "message", arg: 3, scope: !1540, file: !409, line: 251, type: !122)
!1547 = !DILocalVariable(name: "args", arg: 4, scope: !1540, file: !409, line: 251, type: !419)
!1548 = !DILocation(line: 0, scope: !1540)
!1549 = !DILocation(line: 261, column: 3, scope: !1540)
!1550 = !DILocation(line: 265, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1540, file: !409, line: 265, column: 7)
!1552 = !DILocation(line: 265, column: 7, scope: !1540)
!1553 = !DILocation(line: 266, column: 5, scope: !1551)
!1554 = !DILocation(line: 272, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !409, line: 268, column: 5)
!1556 = !DILocation(line: 276, column: 3, scope: !1540)
!1557 = !DILocation(line: 282, column: 1, scope: !1540)
!1558 = distinct !DISubprogram(name: "flush_stdout", scope: !409, file: !409, line: 163, type: !455, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1559)
!1559 = !{!1560}
!1560 = !DILocalVariable(name: "stdout_fd", scope: !1558, file: !409, line: 166, type: !77)
!1561 = !DILocation(line: 0, scope: !1558)
!1562 = !DILocalVariable(name: "fd", arg: 1, scope: !1563, file: !409, line: 145, type: !77)
!1563 = distinct !DISubprogram(name: "is_open", scope: !409, file: !409, line: 145, type: !1372, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1564)
!1564 = !{!1562}
!1565 = !DILocation(line: 0, scope: !1563, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 182, column: 25, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1558, file: !409, line: 182, column: 7)
!1568 = !DILocation(line: 157, column: 15, scope: !1563, inlinedAt: !1566)
!1569 = !DILocation(line: 157, column: 12, scope: !1563, inlinedAt: !1566)
!1570 = !DILocation(line: 182, column: 7, scope: !1558)
!1571 = !DILocation(line: 184, column: 5, scope: !1567)
!1572 = !DILocation(line: 185, column: 1, scope: !1558)
!1573 = distinct !DISubprogram(name: "error_tail", scope: !409, file: !409, line: 219, type: !1541, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1574)
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DILocalVariable(name: "status", arg: 1, scope: !1573, file: !409, line: 219, type: !77)
!1576 = !DILocalVariable(name: "errnum", arg: 2, scope: !1573, file: !409, line: 219, type: !77)
!1577 = !DILocalVariable(name: "message", arg: 3, scope: !1573, file: !409, line: 219, type: !122)
!1578 = !DILocalVariable(name: "args", arg: 4, scope: !1573, file: !409, line: 219, type: !419)
!1579 = distinct !DIAssignID()
!1580 = !DILocation(line: 0, scope: !1573)
!1581 = !DILocation(line: 229, column: 13, scope: !1573)
!1582 = !DILocalVariable(name: "__stream", arg: 1, scope: !1583, file: !858, line: 132, type: !1586)
!1583 = distinct !DISubprogram(name: "vfprintf", scope: !858, file: !858, line: 132, type: !1584, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1621)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!77, !1586, !862, !419}
!1586 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1589, file: !185, line: 51, baseType: !77, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1589, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1589, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1589, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1589, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1589, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1589, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1589, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1589, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1589, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1589, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1589, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1589, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1589, file: !185, line: 70, baseType: !1605, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1589, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1589, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1589, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1589, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1589, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1589, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1589, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1589, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1589, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1589, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1589, file: !185, line: 93, baseType: !1605, size: 64, offset: 1344)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1589, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1589, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1589, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1589, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1621 = !{!1582, !1622, !1623}
!1622 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1583, file: !858, line: 133, type: !862)
!1623 = !DILocalVariable(name: "__ap", arg: 3, scope: !1583, file: !858, line: 133, type: !419)
!1624 = !DILocation(line: 0, scope: !1583, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 229, column: 3, scope: !1573)
!1626 = !DILocation(line: 135, column: 10, scope: !1583, inlinedAt: !1625)
!1627 = !DILocation(line: 232, column: 3, scope: !1573)
!1628 = !DILocation(line: 233, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1573, file: !409, line: 233, column: 7)
!1630 = !DILocation(line: 233, column: 7, scope: !1573)
!1631 = !DILocalVariable(name: "errbuf", scope: !1632, file: !409, line: 193, type: !1636)
!1632 = distinct !DISubprogram(name: "print_errno_message", scope: !409, file: !409, line: 188, type: !798, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1633)
!1633 = !{!1634, !1635, !1631}
!1634 = !DILocalVariable(name: "errnum", arg: 1, scope: !1632, file: !409, line: 188, type: !77)
!1635 = !DILocalVariable(name: "s", scope: !1632, file: !409, line: 190, type: !122)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 1024)
!1639 = !DILocation(line: 0, scope: !1632, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 234, column: 5, scope: !1629)
!1641 = !DILocation(line: 193, column: 3, scope: !1632, inlinedAt: !1640)
!1642 = !DILocation(line: 195, column: 7, scope: !1632, inlinedAt: !1640)
!1643 = !DILocation(line: 207, column: 9, scope: !1644, inlinedAt: !1640)
!1644 = distinct !DILexicalBlock(scope: !1632, file: !409, line: 207, column: 7)
!1645 = !DILocation(line: 207, column: 7, scope: !1632, inlinedAt: !1640)
!1646 = !DILocation(line: 208, column: 9, scope: !1644, inlinedAt: !1640)
!1647 = !DILocation(line: 208, column: 5, scope: !1644, inlinedAt: !1640)
!1648 = !DILocation(line: 214, column: 3, scope: !1632, inlinedAt: !1640)
!1649 = !DILocation(line: 216, column: 1, scope: !1632, inlinedAt: !1640)
!1650 = !DILocation(line: 234, column: 5, scope: !1629)
!1651 = !DILocation(line: 238, column: 3, scope: !1573)
!1652 = !DILocalVariable(name: "__c", arg: 1, scope: !1653, file: !1454, line: 101, type: !77)
!1653 = distinct !DISubprogram(name: "putc_unlocked", scope: !1454, file: !1454, line: 101, type: !1654, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!77, !77, !1587}
!1656 = !{!1652, !1657}
!1657 = !DILocalVariable(name: "__stream", arg: 2, scope: !1653, file: !1454, line: 101, type: !1587)
!1658 = !DILocation(line: 0, scope: !1653, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 238, column: 3, scope: !1573)
!1660 = !DILocation(line: 103, column: 10, scope: !1653, inlinedAt: !1659)
!1661 = !DILocation(line: 240, column: 3, scope: !1573)
!1662 = !DILocation(line: 241, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1573, file: !409, line: 241, column: 7)
!1664 = !DILocation(line: 241, column: 7, scope: !1573)
!1665 = !DILocation(line: 242, column: 5, scope: !1663)
!1666 = !DILocation(line: 243, column: 1, scope: !1573)
!1667 = !DISubprogram(name: "strerror_r", scope: !992, file: !992, line: 444, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!116, !77, !116, !119}
!1670 = !DISubprogram(name: "fflush_unlocked", scope: !867, file: !867, line: 239, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!77, !1587}
!1673 = !DISubprogram(name: "fcntl", scope: !1365, file: !1365, line: 149, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!77, !77, !77, null}
!1676 = distinct !DISubprogram(name: "error", scope: !409, file: !409, line: 285, type: !1677, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !77, !77, !122, null}
!1679 = !{!1680, !1681, !1682, !1683}
!1680 = !DILocalVariable(name: "status", arg: 1, scope: !1676, file: !409, line: 285, type: !77)
!1681 = !DILocalVariable(name: "errnum", arg: 2, scope: !1676, file: !409, line: 285, type: !77)
!1682 = !DILocalVariable(name: "message", arg: 3, scope: !1676, file: !409, line: 285, type: !122)
!1683 = !DILocalVariable(name: "ap", scope: !1676, file: !409, line: 287, type: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !867, line: 52, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1424, line: 12, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !409, baseType: !1687)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 192, elements: !50)
!1688 = distinct !DIAssignID()
!1689 = !DILocation(line: 0, scope: !1676)
!1690 = !DILocation(line: 287, column: 3, scope: !1676)
!1691 = !DILocation(line: 288, column: 3, scope: !1676)
!1692 = !DILocation(line: 289, column: 3, scope: !1676)
!1693 = !DILocation(line: 290, column: 3, scope: !1676)
!1694 = !DILocation(line: 291, column: 1, scope: !1676)
!1695 = !DILocation(line: 0, scope: !416)
!1696 = !DILocation(line: 302, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !416, file: !409, line: 302, column: 7)
!1698 = !DILocation(line: 302, column: 7, scope: !416)
!1699 = !DILocation(line: 307, column: 11, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !409, line: 307, column: 11)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !409, line: 303, column: 5)
!1702 = !DILocation(line: 307, column: 27, scope: !1700)
!1703 = !DILocation(line: 308, column: 11, scope: !1700)
!1704 = !DILocation(line: 308, column: 28, scope: !1700)
!1705 = !DILocation(line: 308, column: 25, scope: !1700)
!1706 = !DILocation(line: 309, column: 15, scope: !1700)
!1707 = !DILocation(line: 309, column: 33, scope: !1700)
!1708 = !DILocation(line: 310, column: 19, scope: !1700)
!1709 = !DILocation(line: 311, column: 22, scope: !1700)
!1710 = !DILocation(line: 311, column: 56, scope: !1700)
!1711 = !DILocation(line: 307, column: 11, scope: !1701)
!1712 = !DILocation(line: 316, column: 21, scope: !1701)
!1713 = !DILocation(line: 317, column: 23, scope: !1701)
!1714 = !DILocation(line: 318, column: 5, scope: !1701)
!1715 = !DILocation(line: 327, column: 3, scope: !416)
!1716 = !DILocation(line: 331, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !416, file: !409, line: 331, column: 7)
!1718 = !DILocation(line: 331, column: 7, scope: !416)
!1719 = !DILocation(line: 332, column: 5, scope: !1717)
!1720 = !DILocation(line: 338, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !409, line: 334, column: 5)
!1722 = !DILocation(line: 346, column: 3, scope: !416)
!1723 = !DILocation(line: 350, column: 3, scope: !416)
!1724 = !DILocation(line: 356, column: 1, scope: !416)
!1725 = distinct !DISubprogram(name: "error_at_line", scope: !409, file: !409, line: 359, type: !1726, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !77, !77, !122, !72, !122, null}
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734}
!1729 = !DILocalVariable(name: "status", arg: 1, scope: !1725, file: !409, line: 359, type: !77)
!1730 = !DILocalVariable(name: "errnum", arg: 2, scope: !1725, file: !409, line: 359, type: !77)
!1731 = !DILocalVariable(name: "file_name", arg: 3, scope: !1725, file: !409, line: 359, type: !122)
!1732 = !DILocalVariable(name: "line_number", arg: 4, scope: !1725, file: !409, line: 360, type: !72)
!1733 = !DILocalVariable(name: "message", arg: 5, scope: !1725, file: !409, line: 360, type: !122)
!1734 = !DILocalVariable(name: "ap", scope: !1725, file: !409, line: 362, type: !1684)
!1735 = distinct !DIAssignID()
!1736 = !DILocation(line: 0, scope: !1725)
!1737 = !DILocation(line: 362, column: 3, scope: !1725)
!1738 = !DILocation(line: 363, column: 3, scope: !1725)
!1739 = !DILocation(line: 364, column: 3, scope: !1725)
!1740 = !DILocation(line: 366, column: 3, scope: !1725)
!1741 = !DILocation(line: 367, column: 1, scope: !1725)
!1742 = distinct !DISubprogram(name: "getprogname", scope: !723, file: !723, line: 54, type: !1743, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!122}
!1745 = !DILocation(line: 58, column: 10, scope: !1742)
!1746 = !DILocation(line: 58, column: 3, scope: !1742)
!1747 = distinct !DISubprogram(name: "set_program_name", scope: !460, file: !460, line: 37, type: !822, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DILocalVariable(name: "argv0", arg: 1, scope: !1747, file: !460, line: 37, type: !122)
!1750 = !DILocalVariable(name: "slash", scope: !1747, file: !460, line: 44, type: !122)
!1751 = !DILocalVariable(name: "base", scope: !1747, file: !460, line: 45, type: !122)
!1752 = !DILocation(line: 0, scope: !1747)
!1753 = !DILocation(line: 44, column: 23, scope: !1747)
!1754 = !DILocation(line: 45, column: 22, scope: !1747)
!1755 = !DILocation(line: 46, column: 17, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1747, file: !460, line: 46, column: 7)
!1757 = !DILocation(line: 46, column: 9, scope: !1756)
!1758 = !DILocation(line: 46, column: 25, scope: !1756)
!1759 = !DILocation(line: 46, column: 40, scope: !1756)
!1760 = !DILocalVariable(name: "__s1", arg: 1, scope: !1761, file: !885, line: 974, type: !1020)
!1761 = distinct !DISubprogram(name: "memeq", scope: !885, file: !885, line: 974, type: !1762, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!152, !1020, !1020, !119}
!1764 = !{!1760, !1765, !1766}
!1765 = !DILocalVariable(name: "__s2", arg: 2, scope: !1761, file: !885, line: 974, type: !1020)
!1766 = !DILocalVariable(name: "__n", arg: 3, scope: !1761, file: !885, line: 974, type: !119)
!1767 = !DILocation(line: 0, scope: !1761, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 46, column: 28, scope: !1756)
!1769 = !DILocation(line: 976, column: 11, scope: !1761, inlinedAt: !1768)
!1770 = !DILocation(line: 976, column: 10, scope: !1761, inlinedAt: !1768)
!1771 = !DILocation(line: 46, column: 7, scope: !1747)
!1772 = !DILocation(line: 49, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !460, line: 49, column: 11)
!1774 = distinct !DILexicalBlock(scope: !1756, file: !460, line: 47, column: 5)
!1775 = !DILocation(line: 49, column: 36, scope: !1773)
!1776 = !DILocation(line: 49, column: 11, scope: !1774)
!1777 = !DILocation(line: 65, column: 16, scope: !1747)
!1778 = !DILocation(line: 71, column: 27, scope: !1747)
!1779 = !DILocation(line: 74, column: 33, scope: !1747)
!1780 = !DILocation(line: 76, column: 1, scope: !1747)
!1781 = distinct !DIAssignID()
!1782 = !DILocation(line: 0, scope: !469)
!1783 = distinct !DIAssignID()
!1784 = !DILocation(line: 40, column: 29, scope: !469)
!1785 = !DILocation(line: 41, column: 19, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !469, file: !470, line: 41, column: 7)
!1787 = !DILocation(line: 41, column: 7, scope: !469)
!1788 = !DILocation(line: 47, column: 3, scope: !469)
!1789 = !DILocation(line: 48, column: 3, scope: !469)
!1790 = !DILocalVariable(name: "ps", arg: 1, scope: !1791, file: !1792, line: 1135, type: !1795)
!1791 = distinct !DISubprogram(name: "mbszero", scope: !1792, file: !1792, line: 1135, type: !1793, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1796)
!1792 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1796 = !{!1790}
!1797 = !DILocation(line: 0, scope: !1791, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 48, column: 18, scope: !469)
!1799 = !DILocalVariable(name: "__dest", arg: 1, scope: !1800, file: !1801, line: 57, type: !117)
!1800 = distinct !DISubprogram(name: "memset", scope: !1801, file: !1801, line: 57, type: !1802, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1804)
!1801 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!117, !117, !77, !119}
!1804 = !{!1799, !1805, !1806}
!1805 = !DILocalVariable(name: "__ch", arg: 2, scope: !1800, file: !1801, line: 57, type: !77)
!1806 = !DILocalVariable(name: "__len", arg: 3, scope: !1800, file: !1801, line: 57, type: !119)
!1807 = !DILocation(line: 0, scope: !1800, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 1137, column: 3, scope: !1791, inlinedAt: !1798)
!1809 = !DILocation(line: 59, column: 10, scope: !1800, inlinedAt: !1808)
!1810 = !DILocation(line: 49, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !469, file: !470, line: 49, column: 7)
!1812 = !DILocation(line: 49, column: 39, scope: !1811)
!1813 = !DILocation(line: 49, column: 44, scope: !1811)
!1814 = !DILocation(line: 54, column: 1, scope: !469)
!1815 = !DISubprogram(name: "mbrtoc32", scope: !481, file: !481, line: 57, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!119, !1818, !862, !119, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1795)
!1821 = distinct !DISubprogram(name: "clone_quoting_options", scope: !500, file: !500, line: 113, type: !1822, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1825)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1824, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1825 = !{!1826, !1827, !1828}
!1826 = !DILocalVariable(name: "o", arg: 1, scope: !1821, file: !500, line: 113, type: !1824)
!1827 = !DILocalVariable(name: "saved_errno", scope: !1821, file: !500, line: 115, type: !77)
!1828 = !DILocalVariable(name: "p", scope: !1821, file: !500, line: 116, type: !1824)
!1829 = !DILocation(line: 0, scope: !1821)
!1830 = !DILocation(line: 115, column: 21, scope: !1821)
!1831 = !DILocation(line: 116, column: 40, scope: !1821)
!1832 = !DILocation(line: 116, column: 31, scope: !1821)
!1833 = !DILocation(line: 118, column: 9, scope: !1821)
!1834 = !DILocation(line: 119, column: 3, scope: !1821)
!1835 = distinct !DISubprogram(name: "get_quoting_style", scope: !500, file: !500, line: 124, type: !1836, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1840)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!526, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "o", arg: 1, scope: !1835, file: !500, line: 124, type: !1838)
!1842 = !DILocation(line: 0, scope: !1835)
!1843 = !DILocation(line: 126, column: 11, scope: !1835)
!1844 = !DILocation(line: 126, column: 46, scope: !1835)
!1845 = !{!1846, !873, i64 0}
!1846 = !{!"quoting_options", !873, i64 0, !873, i64 4, !810, i64 8, !809, i64 40, !809, i64 48}
!1847 = !DILocation(line: 126, column: 3, scope: !1835)
!1848 = distinct !DISubprogram(name: "set_quoting_style", scope: !500, file: !500, line: 132, type: !1849, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1824, !526}
!1851 = !{!1852, !1853}
!1852 = !DILocalVariable(name: "o", arg: 1, scope: !1848, file: !500, line: 132, type: !1824)
!1853 = !DILocalVariable(name: "s", arg: 2, scope: !1848, file: !500, line: 132, type: !526)
!1854 = !DILocation(line: 0, scope: !1848)
!1855 = !DILocation(line: 134, column: 4, scope: !1848)
!1856 = !DILocation(line: 134, column: 45, scope: !1848)
!1857 = !DILocation(line: 135, column: 1, scope: !1848)
!1858 = distinct !DISubprogram(name: "set_char_quoting", scope: !500, file: !500, line: 143, type: !1859, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!77, !1824, !4, !77}
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1868, !1869}
!1862 = !DILocalVariable(name: "o", arg: 1, scope: !1858, file: !500, line: 143, type: !1824)
!1863 = !DILocalVariable(name: "c", arg: 2, scope: !1858, file: !500, line: 143, type: !4)
!1864 = !DILocalVariable(name: "i", arg: 3, scope: !1858, file: !500, line: 143, type: !77)
!1865 = !DILocalVariable(name: "uc", scope: !1858, file: !500, line: 145, type: !124)
!1866 = !DILocalVariable(name: "p", scope: !1858, file: !500, line: 146, type: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1868 = !DILocalVariable(name: "shift", scope: !1858, file: !500, line: 148, type: !77)
!1869 = !DILocalVariable(name: "r", scope: !1858, file: !500, line: 149, type: !72)
!1870 = !DILocation(line: 0, scope: !1858)
!1871 = !DILocation(line: 147, column: 6, scope: !1858)
!1872 = !DILocation(line: 147, column: 41, scope: !1858)
!1873 = !DILocation(line: 147, column: 62, scope: !1858)
!1874 = !DILocation(line: 147, column: 57, scope: !1858)
!1875 = !DILocation(line: 148, column: 15, scope: !1858)
!1876 = !DILocation(line: 149, column: 21, scope: !1858)
!1877 = !DILocation(line: 149, column: 24, scope: !1858)
!1878 = !DILocation(line: 149, column: 34, scope: !1858)
!1879 = !DILocation(line: 150, column: 19, scope: !1858)
!1880 = !DILocation(line: 150, column: 24, scope: !1858)
!1881 = !DILocation(line: 150, column: 6, scope: !1858)
!1882 = !DILocation(line: 151, column: 3, scope: !1858)
!1883 = distinct !DISubprogram(name: "set_quoting_flags", scope: !500, file: !500, line: 159, type: !1884, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!77, !1824, !77}
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "o", arg: 1, scope: !1883, file: !500, line: 159, type: !1824)
!1888 = !DILocalVariable(name: "i", arg: 2, scope: !1883, file: !500, line: 159, type: !77)
!1889 = !DILocalVariable(name: "r", scope: !1883, file: !500, line: 163, type: !77)
!1890 = !DILocation(line: 0, scope: !1883)
!1891 = !DILocation(line: 161, column: 8, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !500, line: 161, column: 7)
!1893 = !DILocation(line: 161, column: 7, scope: !1883)
!1894 = !DILocation(line: 163, column: 14, scope: !1883)
!1895 = !{!1846, !873, i64 4}
!1896 = !DILocation(line: 164, column: 12, scope: !1883)
!1897 = !DILocation(line: 165, column: 3, scope: !1883)
!1898 = distinct !DISubprogram(name: "set_custom_quoting", scope: !500, file: !500, line: 169, type: !1899, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1824, !122, !122}
!1901 = !{!1902, !1903, !1904}
!1902 = !DILocalVariable(name: "o", arg: 1, scope: !1898, file: !500, line: 169, type: !1824)
!1903 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1898, file: !500, line: 170, type: !122)
!1904 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1898, file: !500, line: 170, type: !122)
!1905 = !DILocation(line: 0, scope: !1898)
!1906 = !DILocation(line: 172, column: 8, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1898, file: !500, line: 172, column: 7)
!1908 = !DILocation(line: 172, column: 7, scope: !1898)
!1909 = !DILocation(line: 174, column: 12, scope: !1898)
!1910 = !DILocation(line: 175, column: 8, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1898, file: !500, line: 175, column: 7)
!1912 = !DILocation(line: 175, column: 19, scope: !1911)
!1913 = !DILocation(line: 176, column: 5, scope: !1911)
!1914 = !DILocation(line: 177, column: 6, scope: !1898)
!1915 = !DILocation(line: 177, column: 17, scope: !1898)
!1916 = !{!1846, !809, i64 40}
!1917 = !DILocation(line: 178, column: 6, scope: !1898)
!1918 = !DILocation(line: 178, column: 18, scope: !1898)
!1919 = !{!1846, !809, i64 48}
!1920 = !DILocation(line: 179, column: 1, scope: !1898)
!1921 = !DISubprogram(name: "abort", scope: !996, file: !996, line: 598, type: !455, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1922 = distinct !DISubprogram(name: "quotearg_buffer", scope: !500, file: !500, line: 774, type: !1923, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!119, !116, !119, !122, !119, !1838}
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1926 = !DILocalVariable(name: "buffer", arg: 1, scope: !1922, file: !500, line: 774, type: !116)
!1927 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1922, file: !500, line: 774, type: !119)
!1928 = !DILocalVariable(name: "arg", arg: 3, scope: !1922, file: !500, line: 775, type: !122)
!1929 = !DILocalVariable(name: "argsize", arg: 4, scope: !1922, file: !500, line: 775, type: !119)
!1930 = !DILocalVariable(name: "o", arg: 5, scope: !1922, file: !500, line: 776, type: !1838)
!1931 = !DILocalVariable(name: "p", scope: !1922, file: !500, line: 778, type: !1838)
!1932 = !DILocalVariable(name: "saved_errno", scope: !1922, file: !500, line: 779, type: !77)
!1933 = !DILocalVariable(name: "r", scope: !1922, file: !500, line: 780, type: !119)
!1934 = !DILocation(line: 0, scope: !1922)
!1935 = !DILocation(line: 778, column: 37, scope: !1922)
!1936 = !DILocation(line: 779, column: 21, scope: !1922)
!1937 = !DILocation(line: 781, column: 43, scope: !1922)
!1938 = !DILocation(line: 781, column: 53, scope: !1922)
!1939 = !DILocation(line: 781, column: 63, scope: !1922)
!1940 = !DILocation(line: 782, column: 43, scope: !1922)
!1941 = !DILocation(line: 782, column: 58, scope: !1922)
!1942 = !DILocation(line: 780, column: 14, scope: !1922)
!1943 = !DILocation(line: 783, column: 9, scope: !1922)
!1944 = !DILocation(line: 784, column: 3, scope: !1922)
!1945 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !500, file: !500, line: 251, type: !1946, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !1950)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!119, !116, !119, !122, !119, !526, !77, !1948, !122, !122}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1976, !1978, !1981, !1982, !1983, !1984, !1987, !1988, !1990, !1991, !1994, !1998, !1999, !2007, !2010, !2011, !2012}
!1951 = !DILocalVariable(name: "buffer", arg: 1, scope: !1945, file: !500, line: 251, type: !116)
!1952 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1945, file: !500, line: 251, type: !119)
!1953 = !DILocalVariable(name: "arg", arg: 3, scope: !1945, file: !500, line: 252, type: !122)
!1954 = !DILocalVariable(name: "argsize", arg: 4, scope: !1945, file: !500, line: 252, type: !119)
!1955 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1945, file: !500, line: 253, type: !526)
!1956 = !DILocalVariable(name: "flags", arg: 6, scope: !1945, file: !500, line: 253, type: !77)
!1957 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1945, file: !500, line: 254, type: !1948)
!1958 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1945, file: !500, line: 255, type: !122)
!1959 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1945, file: !500, line: 256, type: !122)
!1960 = !DILocalVariable(name: "unibyte_locale", scope: !1945, file: !500, line: 258, type: !152)
!1961 = !DILocalVariable(name: "len", scope: !1945, file: !500, line: 260, type: !119)
!1962 = !DILocalVariable(name: "orig_buffersize", scope: !1945, file: !500, line: 261, type: !119)
!1963 = !DILocalVariable(name: "quote_string", scope: !1945, file: !500, line: 262, type: !122)
!1964 = !DILocalVariable(name: "quote_string_len", scope: !1945, file: !500, line: 263, type: !119)
!1965 = !DILocalVariable(name: "backslash_escapes", scope: !1945, file: !500, line: 264, type: !152)
!1966 = !DILocalVariable(name: "elide_outer_quotes", scope: !1945, file: !500, line: 265, type: !152)
!1967 = !DILocalVariable(name: "encountered_single_quote", scope: !1945, file: !500, line: 266, type: !152)
!1968 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1945, file: !500, line: 267, type: !152)
!1969 = !DILabel(scope: !1945, name: "process_input", file: !500, line: 308)
!1970 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1945, file: !500, line: 309, type: !152)
!1971 = !DILocalVariable(name: "lq", scope: !1972, file: !500, line: 361, type: !122)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !500, line: 361, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !500, line: 360, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !500, line: 333, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 312, column: 5)
!1976 = !DILocalVariable(name: "i", scope: !1977, file: !500, line: 395, type: !119)
!1977 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 395, column: 3)
!1978 = !DILocalVariable(name: "is_right_quote", scope: !1979, file: !500, line: 397, type: !152)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !500, line: 396, column: 5)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !500, line: 395, column: 3)
!1981 = !DILocalVariable(name: "escaping", scope: !1979, file: !500, line: 398, type: !152)
!1982 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1979, file: !500, line: 399, type: !152)
!1983 = !DILocalVariable(name: "c", scope: !1979, file: !500, line: 417, type: !124)
!1984 = !DILabel(scope: !1985, name: "c_and_shell_escape", file: !500, line: 502)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 478, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 419, column: 9)
!1987 = !DILabel(scope: !1985, name: "c_escape", file: !500, line: 507)
!1988 = !DILocalVariable(name: "m", scope: !1989, file: !500, line: 598, type: !119)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 596, column: 11)
!1990 = !DILocalVariable(name: "printable", scope: !1989, file: !500, line: 600, type: !152)
!1991 = !DILocalVariable(name: "mbs", scope: !1992, file: !500, line: 609, type: !575)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !500, line: 608, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !500, line: 602, column: 17)
!1994 = !DILocalVariable(name: "w", scope: !1995, file: !500, line: 618, type: !480)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !500, line: 617, column: 19)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !500, line: 616, column: 17)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !500, line: 616, column: 17)
!1998 = !DILocalVariable(name: "bytes", scope: !1995, file: !500, line: 619, type: !119)
!1999 = !DILocalVariable(name: "j", scope: !2000, file: !500, line: 648, type: !119)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !500, line: 648, column: 29)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !500, line: 647, column: 27)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !500, line: 645, column: 29)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !500, line: 636, column: 23)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !500, line: 628, column: 30)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !500, line: 623, column: 30)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !500, line: 621, column: 25)
!2007 = !DILocalVariable(name: "ilim", scope: !2008, file: !500, line: 674, type: !119)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !500, line: 671, column: 15)
!2009 = distinct !DILexicalBlock(scope: !1989, file: !500, line: 670, column: 17)
!2010 = !DILabel(scope: !1979, name: "store_escape", file: !500, line: 709)
!2011 = !DILabel(scope: !1979, name: "store_c", file: !500, line: 712)
!2012 = !DILabel(scope: !1945, name: "force_outer_quoting_style", file: !500, line: 753)
!2013 = distinct !DIAssignID()
!2014 = distinct !DIAssignID()
!2015 = distinct !DIAssignID()
!2016 = distinct !DIAssignID()
!2017 = distinct !DIAssignID()
!2018 = !DILocation(line: 0, scope: !1992)
!2019 = distinct !DIAssignID()
!2020 = !DILocation(line: 0, scope: !1995)
!2021 = !DILocation(line: 0, scope: !1945)
!2022 = !DILocation(line: 258, column: 25, scope: !1945)
!2023 = !DILocation(line: 258, column: 36, scope: !1945)
!2024 = !DILocation(line: 265, column: 8, scope: !1945)
!2025 = !DILocation(line: 267, column: 3, scope: !1945)
!2026 = !DILocation(line: 261, column: 10, scope: !1945)
!2027 = !DILocation(line: 262, column: 15, scope: !1945)
!2028 = !DILocation(line: 263, column: 10, scope: !1945)
!2029 = !DILocation(line: 264, column: 8, scope: !1945)
!2030 = !DILocation(line: 266, column: 8, scope: !1945)
!2031 = !DILocation(line: 267, column: 8, scope: !1945)
!2032 = !DILocation(line: 308, column: 2, scope: !1945)
!2033 = !DILocation(line: 311, column: 3, scope: !1945)
!2034 = !DILocation(line: 318, column: 11, scope: !1975)
!2035 = !DILocation(line: 318, column: 12, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1975, file: !500, line: 318, column: 11)
!2037 = !DILocation(line: 319, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !500, line: 319, column: 9)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !500, line: 319, column: 9)
!2040 = !DILocation(line: 319, column: 9, scope: !2039)
!2041 = !DILocation(line: 0, scope: !566, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 357, column: 26, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !500, line: 335, column: 11)
!2044 = distinct !DILexicalBlock(scope: !1974, file: !500, line: 334, column: 13)
!2045 = !DILocation(line: 199, column: 29, scope: !566, inlinedAt: !2042)
!2046 = !DILocation(line: 201, column: 19, scope: !2047, inlinedAt: !2042)
!2047 = distinct !DILexicalBlock(scope: !566, file: !500, line: 201, column: 7)
!2048 = !DILocation(line: 201, column: 7, scope: !566, inlinedAt: !2042)
!2049 = !DILocation(line: 229, column: 3, scope: !566, inlinedAt: !2042)
!2050 = !DILocation(line: 230, column: 3, scope: !566, inlinedAt: !2042)
!2051 = !DILocalVariable(name: "ps", arg: 1, scope: !2052, file: !1792, line: 1135, type: !2055)
!2052 = distinct !DISubprogram(name: "mbszero", scope: !1792, file: !1792, line: 1135, type: !2053, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2056)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!2056 = !{!2051}
!2057 = !DILocation(line: 0, scope: !2052, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 230, column: 18, scope: !566, inlinedAt: !2042)
!2059 = !DILocalVariable(name: "__dest", arg: 1, scope: !2060, file: !1801, line: 57, type: !117)
!2060 = distinct !DISubprogram(name: "memset", scope: !1801, file: !1801, line: 57, type: !1802, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2061)
!2061 = !{!2059, !2062, !2063}
!2062 = !DILocalVariable(name: "__ch", arg: 2, scope: !2060, file: !1801, line: 57, type: !77)
!2063 = !DILocalVariable(name: "__len", arg: 3, scope: !2060, file: !1801, line: 57, type: !119)
!2064 = !DILocation(line: 0, scope: !2060, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2058)
!2066 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2065)
!2067 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2042)
!2068 = distinct !DILexicalBlock(scope: !566, file: !500, line: 231, column: 7)
!2069 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2042)
!2070 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2042)
!2071 = !DILocation(line: 235, column: 1, scope: !566, inlinedAt: !2042)
!2072 = !DILocation(line: 0, scope: !566, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 358, column: 27, scope: !2043)
!2074 = !DILocation(line: 199, column: 29, scope: !566, inlinedAt: !2073)
!2075 = !DILocation(line: 201, column: 19, scope: !2047, inlinedAt: !2073)
!2076 = !DILocation(line: 201, column: 7, scope: !566, inlinedAt: !2073)
!2077 = !DILocation(line: 229, column: 3, scope: !566, inlinedAt: !2073)
!2078 = !DILocation(line: 230, column: 3, scope: !566, inlinedAt: !2073)
!2079 = !DILocation(line: 0, scope: !2052, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 230, column: 18, scope: !566, inlinedAt: !2073)
!2081 = !DILocation(line: 0, scope: !2060, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2080)
!2083 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2082)
!2084 = !DILocation(line: 231, column: 7, scope: !2068, inlinedAt: !2073)
!2085 = !DILocation(line: 231, column: 40, scope: !2068, inlinedAt: !2073)
!2086 = !DILocation(line: 231, column: 45, scope: !2068, inlinedAt: !2073)
!2087 = !DILocation(line: 235, column: 1, scope: !566, inlinedAt: !2073)
!2088 = !DILocation(line: 360, column: 14, scope: !1973)
!2089 = !DILocation(line: 360, column: 13, scope: !1974)
!2090 = !DILocation(line: 0, scope: !1972)
!2091 = !DILocation(line: 361, column: 45, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1972, file: !500, line: 361, column: 11)
!2093 = !DILocation(line: 361, column: 11, scope: !1972)
!2094 = !DILocation(line: 362, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !500, line: 362, column: 13)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !500, line: 362, column: 13)
!2097 = !DILocation(line: 362, column: 13, scope: !2096)
!2098 = !DILocation(line: 361, column: 52, scope: !2092)
!2099 = distinct !{!2099, !2093, !2100, !919}
!2100 = !DILocation(line: 362, column: 13, scope: !1972)
!2101 = !DILocation(line: 260, column: 10, scope: !1945)
!2102 = !DILocation(line: 365, column: 28, scope: !1974)
!2103 = !DILocation(line: 367, column: 7, scope: !1975)
!2104 = !DILocation(line: 370, column: 7, scope: !1975)
!2105 = !DILocation(line: 373, column: 7, scope: !1975)
!2106 = !DILocation(line: 376, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1975, file: !500, line: 376, column: 11)
!2108 = !DILocation(line: 376, column: 11, scope: !1975)
!2109 = !DILocation(line: 381, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1975, file: !500, line: 381, column: 11)
!2111 = !DILocation(line: 381, column: 11, scope: !1975)
!2112 = !DILocation(line: 382, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !500, line: 382, column: 9)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !500, line: 382, column: 9)
!2115 = !DILocation(line: 382, column: 9, scope: !2114)
!2116 = !DILocation(line: 389, column: 7, scope: !1975)
!2117 = !DILocation(line: 392, column: 7, scope: !1975)
!2118 = !DILocation(line: 0, scope: !1977)
!2119 = !DILocation(line: 395, column: 8, scope: !1977)
!2120 = !DILocation(line: 309, column: 8, scope: !1945)
!2121 = !DILocation(line: 395, scope: !1977)
!2122 = !DILocation(line: 395, column: 34, scope: !1980)
!2123 = !DILocation(line: 395, column: 26, scope: !1980)
!2124 = !DILocation(line: 395, column: 48, scope: !1980)
!2125 = !DILocation(line: 395, column: 55, scope: !1980)
!2126 = !DILocation(line: 395, column: 3, scope: !1977)
!2127 = !DILocation(line: 395, column: 67, scope: !1980)
!2128 = !DILocation(line: 0, scope: !1979)
!2129 = !DILocation(line: 402, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 401, column: 11)
!2131 = !DILocation(line: 404, column: 17, scope: !2130)
!2132 = !DILocation(line: 405, column: 39, scope: !2130)
!2133 = !DILocation(line: 409, column: 32, scope: !2130)
!2134 = !DILocation(line: 405, column: 19, scope: !2130)
!2135 = !DILocation(line: 405, column: 15, scope: !2130)
!2136 = !DILocation(line: 410, column: 11, scope: !2130)
!2137 = !DILocation(line: 410, column: 25, scope: !2130)
!2138 = !DILocalVariable(name: "__s1", arg: 1, scope: !2139, file: !885, line: 974, type: !1020)
!2139 = distinct !DISubprogram(name: "memeq", scope: !885, file: !885, line: 974, type: !1762, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2140)
!2140 = !{!2138, !2141, !2142}
!2141 = !DILocalVariable(name: "__s2", arg: 2, scope: !2139, file: !885, line: 974, type: !1020)
!2142 = !DILocalVariable(name: "__n", arg: 3, scope: !2139, file: !885, line: 974, type: !119)
!2143 = !DILocation(line: 0, scope: !2139, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 410, column: 14, scope: !2130)
!2145 = !DILocation(line: 976, column: 11, scope: !2139, inlinedAt: !2144)
!2146 = !DILocation(line: 976, column: 10, scope: !2139, inlinedAt: !2144)
!2147 = !DILocation(line: 401, column: 11, scope: !1979)
!2148 = !DILocation(line: 417, column: 25, scope: !1979)
!2149 = !DILocation(line: 418, column: 7, scope: !1979)
!2150 = !DILocation(line: 421, column: 15, scope: !1986)
!2151 = !DILocation(line: 423, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !500, line: 423, column: 15)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !500, line: 422, column: 13)
!2154 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 421, column: 15)
!2155 = !DILocation(line: 423, column: 15, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !500, line: 423, column: 15)
!2157 = !DILocation(line: 423, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !500, line: 423, column: 15)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !500, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !500, line: 423, column: 15)
!2161 = !DILocation(line: 423, column: 15, scope: !2159)
!2162 = !DILocation(line: 423, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !500, line: 423, column: 15)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !500, line: 423, column: 15)
!2165 = !DILocation(line: 423, column: 15, scope: !2164)
!2166 = !DILocation(line: 423, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !500, line: 423, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !500, line: 423, column: 15)
!2169 = !DILocation(line: 423, column: 15, scope: !2168)
!2170 = !DILocation(line: 423, column: 15, scope: !2160)
!2171 = !DILocation(line: 423, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !500, line: 423, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2152, file: !500, line: 423, column: 15)
!2174 = !DILocation(line: 423, column: 15, scope: !2173)
!2175 = !DILocation(line: 431, column: 19, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2153, file: !500, line: 430, column: 19)
!2177 = !DILocation(line: 431, column: 24, scope: !2176)
!2178 = !DILocation(line: 431, column: 28, scope: !2176)
!2179 = !DILocation(line: 431, column: 38, scope: !2176)
!2180 = !DILocation(line: 431, column: 48, scope: !2176)
!2181 = !DILocation(line: 431, column: 59, scope: !2176)
!2182 = !DILocation(line: 433, column: 19, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !500, line: 433, column: 19)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !500, line: 433, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !500, line: 432, column: 17)
!2186 = !DILocation(line: 433, column: 19, scope: !2184)
!2187 = !DILocation(line: 434, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !500, line: 434, column: 19)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !500, line: 434, column: 19)
!2190 = !DILocation(line: 434, column: 19, scope: !2189)
!2191 = !DILocation(line: 435, column: 17, scope: !2185)
!2192 = !DILocation(line: 442, column: 20, scope: !2154)
!2193 = !DILocation(line: 447, column: 11, scope: !1986)
!2194 = !DILocation(line: 450, column: 19, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 448, column: 13)
!2196 = !DILocation(line: 456, column: 19, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2195, file: !500, line: 455, column: 19)
!2198 = !DILocation(line: 456, column: 24, scope: !2197)
!2199 = !DILocation(line: 456, column: 28, scope: !2197)
!2200 = !DILocation(line: 456, column: 38, scope: !2197)
!2201 = !DILocation(line: 456, column: 41, scope: !2197)
!2202 = !DILocation(line: 456, column: 52, scope: !2197)
!2203 = !DILocation(line: 455, column: 19, scope: !2195)
!2204 = !DILocation(line: 457, column: 25, scope: !2197)
!2205 = !DILocation(line: 457, column: 17, scope: !2197)
!2206 = !DILocation(line: 464, column: 25, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2197, file: !500, line: 458, column: 19)
!2208 = !DILocation(line: 468, column: 21, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !500, line: 468, column: 21)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !500, line: 468, column: 21)
!2211 = !DILocation(line: 468, column: 21, scope: !2210)
!2212 = !DILocation(line: 469, column: 21, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !500, line: 469, column: 21)
!2214 = distinct !DILexicalBlock(scope: !2207, file: !500, line: 469, column: 21)
!2215 = !DILocation(line: 469, column: 21, scope: !2214)
!2216 = !DILocation(line: 470, column: 21, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !500, line: 470, column: 21)
!2218 = distinct !DILexicalBlock(scope: !2207, file: !500, line: 470, column: 21)
!2219 = !DILocation(line: 470, column: 21, scope: !2218)
!2220 = !DILocation(line: 471, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !500, line: 471, column: 21)
!2222 = distinct !DILexicalBlock(scope: !2207, file: !500, line: 471, column: 21)
!2223 = !DILocation(line: 471, column: 21, scope: !2222)
!2224 = !DILocation(line: 472, column: 21, scope: !2207)
!2225 = !DILocation(line: 482, column: 33, scope: !1985)
!2226 = !DILocation(line: 483, column: 33, scope: !1985)
!2227 = !DILocation(line: 485, column: 33, scope: !1985)
!2228 = !DILocation(line: 486, column: 33, scope: !1985)
!2229 = !DILocation(line: 487, column: 33, scope: !1985)
!2230 = !DILocation(line: 490, column: 17, scope: !1985)
!2231 = !DILocation(line: 492, column: 21, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !500, line: 491, column: 15)
!2233 = distinct !DILexicalBlock(scope: !1985, file: !500, line: 490, column: 17)
!2234 = !DILocation(line: 499, column: 35, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1985, file: !500, line: 499, column: 17)
!2236 = !DILocation(line: 499, column: 57, scope: !2235)
!2237 = !DILocation(line: 0, scope: !1985)
!2238 = !DILocation(line: 502, column: 11, scope: !1985)
!2239 = !DILocation(line: 504, column: 17, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1985, file: !500, line: 503, column: 17)
!2241 = !DILocation(line: 507, column: 11, scope: !1985)
!2242 = !DILocation(line: 508, column: 17, scope: !1985)
!2243 = !DILocation(line: 517, column: 15, scope: !1986)
!2244 = !DILocation(line: 517, column: 40, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 517, column: 15)
!2246 = !DILocation(line: 517, column: 47, scope: !2245)
!2247 = !DILocation(line: 517, column: 18, scope: !2245)
!2248 = !DILocation(line: 521, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 521, column: 15)
!2250 = !DILocation(line: 521, column: 15, scope: !1986)
!2251 = !DILocation(line: 525, column: 11, scope: !1986)
!2252 = !DILocation(line: 537, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 536, column: 15)
!2254 = !DILocation(line: 544, column: 15, scope: !1986)
!2255 = !DILocation(line: 546, column: 19, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !500, line: 545, column: 13)
!2257 = distinct !DILexicalBlock(scope: !1986, file: !500, line: 544, column: 15)
!2258 = !DILocation(line: 549, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !500, line: 549, column: 19)
!2260 = !DILocation(line: 549, column: 30, scope: !2259)
!2261 = !DILocation(line: 558, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !500, line: 558, column: 15)
!2263 = distinct !DILexicalBlock(scope: !2256, file: !500, line: 558, column: 15)
!2264 = !DILocation(line: 558, column: 15, scope: !2263)
!2265 = !DILocation(line: 559, column: 15, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !500, line: 559, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2256, file: !500, line: 559, column: 15)
!2268 = !DILocation(line: 559, column: 15, scope: !2267)
!2269 = !DILocation(line: 560, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !500, line: 560, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2256, file: !500, line: 560, column: 15)
!2272 = !DILocation(line: 560, column: 15, scope: !2271)
!2273 = !DILocation(line: 562, column: 13, scope: !2256)
!2274 = !DILocation(line: 602, column: 17, scope: !1989)
!2275 = !DILocation(line: 0, scope: !1989)
!2276 = !DILocation(line: 605, column: 29, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1993, file: !500, line: 603, column: 15)
!2278 = !DILocation(line: 605, column: 27, scope: !2277)
!2279 = !DILocation(line: 606, column: 15, scope: !2277)
!2280 = !DILocation(line: 609, column: 17, scope: !1992)
!2281 = !DILocation(line: 0, scope: !2052, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 609, column: 32, scope: !1992)
!2283 = !DILocation(line: 0, scope: !2060, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1137, column: 3, scope: !2052, inlinedAt: !2282)
!2285 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2284)
!2286 = !DILocation(line: 613, column: 29, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !1992, file: !500, line: 613, column: 21)
!2288 = !DILocation(line: 613, column: 21, scope: !1992)
!2289 = !DILocation(line: 614, column: 29, scope: !2287)
!2290 = !DILocation(line: 614, column: 19, scope: !2287)
!2291 = !DILocation(line: 618, column: 21, scope: !1995)
!2292 = !DILocation(line: 620, column: 54, scope: !1995)
!2293 = !DILocation(line: 619, column: 36, scope: !1995)
!2294 = !DILocation(line: 621, column: 25, scope: !1995)
!2295 = !DILocation(line: 631, column: 38, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2004, file: !500, line: 629, column: 23)
!2297 = !DILocation(line: 631, column: 48, scope: !2296)
!2298 = !DILocation(line: 626, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2005, file: !500, line: 624, column: 23)
!2300 = !DILocation(line: 631, column: 51, scope: !2296)
!2301 = !DILocation(line: 631, column: 25, scope: !2296)
!2302 = !DILocation(line: 632, column: 28, scope: !2296)
!2303 = !DILocation(line: 631, column: 34, scope: !2296)
!2304 = distinct !{!2304, !2301, !2302, !919}
!2305 = !DILocation(line: 0, scope: !2000)
!2306 = !DILocation(line: 646, column: 29, scope: !2002)
!2307 = !DILocation(line: 649, column: 39, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2000, file: !500, line: 648, column: 29)
!2309 = !DILocation(line: 649, column: 31, scope: !2308)
!2310 = !DILocation(line: 648, column: 60, scope: !2308)
!2311 = !DILocation(line: 648, column: 50, scope: !2308)
!2312 = !DILocation(line: 648, column: 29, scope: !2000)
!2313 = distinct !{!2313, !2312, !2314, !919}
!2314 = !DILocation(line: 654, column: 33, scope: !2000)
!2315 = !DILocation(line: 657, column: 43, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2003, file: !500, line: 657, column: 29)
!2317 = !DILocalVariable(name: "wc", arg: 1, scope: !2318, file: !2319, line: 865, type: !2322)
!2318 = distinct !DISubprogram(name: "c32isprint", scope: !2319, file: !2319, line: 865, type: !2320, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2324)
!2319 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!77, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2323, line: 20, baseType: !72)
!2323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2324 = !{!2317}
!2325 = !DILocation(line: 0, scope: !2318, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 657, column: 31, scope: !2316)
!2327 = !DILocation(line: 871, column: 10, scope: !2318, inlinedAt: !2326)
!2328 = !DILocation(line: 657, column: 31, scope: !2316)
!2329 = !DILocation(line: 664, column: 23, scope: !1995)
!2330 = !DILocation(line: 665, column: 19, scope: !1996)
!2331 = !DILocation(line: 666, column: 15, scope: !1993)
!2332 = !DILocation(line: 0, scope: !1993)
!2333 = !DILocation(line: 670, column: 19, scope: !2009)
!2334 = !DILocation(line: 670, column: 23, scope: !2009)
!2335 = !DILocation(line: 674, column: 33, scope: !2008)
!2336 = !DILocation(line: 0, scope: !2008)
!2337 = !DILocation(line: 676, column: 17, scope: !2008)
!2338 = !DILocation(line: 398, column: 12, scope: !1979)
!2339 = !DILocation(line: 678, column: 43, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !500, line: 678, column: 25)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !500, line: 677, column: 19)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !500, line: 676, column: 17)
!2343 = distinct !DILexicalBlock(scope: !2008, file: !500, line: 676, column: 17)
!2344 = !DILocation(line: 680, column: 25, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !500, line: 680, column: 25)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !500, line: 679, column: 23)
!2347 = !DILocation(line: 680, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !500, line: 680, column: 25)
!2349 = !DILocation(line: 680, column: 25, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !500, line: 680, column: 25)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !500, line: 680, column: 25)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !500, line: 680, column: 25)
!2353 = !DILocation(line: 680, column: 25, scope: !2351)
!2354 = !DILocation(line: 680, column: 25, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !500, line: 680, column: 25)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !500, line: 680, column: 25)
!2357 = !DILocation(line: 680, column: 25, scope: !2356)
!2358 = !DILocation(line: 680, column: 25, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !500, line: 680, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !500, line: 680, column: 25)
!2361 = !DILocation(line: 680, column: 25, scope: !2360)
!2362 = !DILocation(line: 680, column: 25, scope: !2352)
!2363 = !DILocation(line: 680, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !500, line: 680, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2345, file: !500, line: 680, column: 25)
!2366 = !DILocation(line: 680, column: 25, scope: !2365)
!2367 = !DILocation(line: 681, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !500, line: 681, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2346, file: !500, line: 681, column: 25)
!2370 = !DILocation(line: 681, column: 25, scope: !2369)
!2371 = !DILocation(line: 682, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !500, line: 682, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2346, file: !500, line: 682, column: 25)
!2374 = !DILocation(line: 682, column: 25, scope: !2373)
!2375 = !DILocation(line: 683, column: 38, scope: !2346)
!2376 = !DILocation(line: 683, column: 33, scope: !2346)
!2377 = !DILocation(line: 684, column: 23, scope: !2346)
!2378 = !DILocation(line: 685, column: 30, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2340, file: !500, line: 685, column: 30)
!2380 = !DILocation(line: 685, column: 30, scope: !2340)
!2381 = !DILocation(line: 687, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !500, line: 687, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !500, line: 687, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2379, file: !500, line: 686, column: 23)
!2385 = !DILocation(line: 687, column: 25, scope: !2383)
!2386 = !DILocation(line: 689, column: 23, scope: !2384)
!2387 = !DILocation(line: 690, column: 35, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2341, file: !500, line: 690, column: 25)
!2389 = !DILocation(line: 690, column: 30, scope: !2388)
!2390 = !DILocation(line: 690, column: 25, scope: !2341)
!2391 = !DILocation(line: 692, column: 21, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !500, line: 692, column: 21)
!2393 = distinct !DILexicalBlock(scope: !2341, file: !500, line: 692, column: 21)
!2394 = !DILocation(line: 692, column: 21, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !500, line: 692, column: 21)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !500, line: 692, column: 21)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !500, line: 692, column: 21)
!2398 = !DILocation(line: 692, column: 21, scope: !2396)
!2399 = !DILocation(line: 692, column: 21, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !500, line: 692, column: 21)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !500, line: 692, column: 21)
!2402 = !DILocation(line: 692, column: 21, scope: !2401)
!2403 = !DILocation(line: 692, column: 21, scope: !2397)
!2404 = !DILocation(line: 0, scope: !2341)
!2405 = !DILocation(line: 693, column: 21, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !500, line: 693, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2341, file: !500, line: 693, column: 21)
!2408 = !DILocation(line: 693, column: 21, scope: !2407)
!2409 = !DILocation(line: 694, column: 25, scope: !2341)
!2410 = !DILocation(line: 676, column: 17, scope: !2342)
!2411 = distinct !{!2411, !2412, !2413}
!2412 = !DILocation(line: 676, column: 17, scope: !2343)
!2413 = !DILocation(line: 695, column: 19, scope: !2343)
!2414 = !DILocation(line: 409, column: 30, scope: !2130)
!2415 = !DILocation(line: 702, column: 34, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 702, column: 11)
!2417 = !DILocation(line: 704, column: 14, scope: !2416)
!2418 = !DILocation(line: 705, column: 14, scope: !2416)
!2419 = !DILocation(line: 705, column: 35, scope: !2416)
!2420 = !DILocation(line: 705, column: 17, scope: !2416)
!2421 = !DILocation(line: 705, column: 47, scope: !2416)
!2422 = !DILocation(line: 705, column: 65, scope: !2416)
!2423 = !DILocation(line: 706, column: 11, scope: !2416)
!2424 = !DILocation(line: 702, column: 11, scope: !1979)
!2425 = !DILocation(line: 395, column: 15, scope: !1977)
!2426 = !DILocation(line: 709, column: 5, scope: !1979)
!2427 = !DILocation(line: 710, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 710, column: 7)
!2429 = !DILocation(line: 710, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2428, file: !500, line: 710, column: 7)
!2431 = !DILocation(line: 710, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !500, line: 710, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !500, line: 710, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !500, line: 710, column: 7)
!2435 = !DILocation(line: 710, column: 7, scope: !2433)
!2436 = !DILocation(line: 710, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !500, line: 710, column: 7)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !500, line: 710, column: 7)
!2439 = !DILocation(line: 710, column: 7, scope: !2438)
!2440 = !DILocation(line: 710, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !500, line: 710, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2434, file: !500, line: 710, column: 7)
!2443 = !DILocation(line: 710, column: 7, scope: !2442)
!2444 = !DILocation(line: 710, column: 7, scope: !2434)
!2445 = !DILocation(line: 710, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !500, line: 710, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2428, file: !500, line: 710, column: 7)
!2448 = !DILocation(line: 710, column: 7, scope: !2447)
!2449 = !DILocation(line: 712, column: 5, scope: !1979)
!2450 = !DILocation(line: 713, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !500, line: 713, column: 7)
!2452 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 713, column: 7)
!2453 = !DILocation(line: 417, column: 21, scope: !1979)
!2454 = !DILocation(line: 713, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !500, line: 713, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !500, line: 713, column: 7)
!2457 = distinct !DILexicalBlock(scope: !2451, file: !500, line: 713, column: 7)
!2458 = !DILocation(line: 713, column: 7, scope: !2456)
!2459 = !DILocation(line: 713, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !500, line: 713, column: 7)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !500, line: 713, column: 7)
!2462 = !DILocation(line: 713, column: 7, scope: !2461)
!2463 = !DILocation(line: 713, column: 7, scope: !2457)
!2464 = !DILocation(line: 714, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !500, line: 714, column: 7)
!2466 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 714, column: 7)
!2467 = !DILocation(line: 714, column: 7, scope: !2466)
!2468 = !DILocation(line: 716, column: 13, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1979, file: !500, line: 716, column: 11)
!2470 = !DILocation(line: 716, column: 11, scope: !1979)
!2471 = !DILocation(line: 718, column: 5, scope: !1980)
!2472 = !DILocation(line: 395, column: 82, scope: !1980)
!2473 = !DILocation(line: 395, column: 3, scope: !1980)
!2474 = distinct !{!2474, !2126, !2475, !919}
!2475 = !DILocation(line: 718, column: 5, scope: !1977)
!2476 = !DILocation(line: 720, column: 11, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 720, column: 7)
!2478 = !DILocation(line: 720, column: 16, scope: !2477)
!2479 = !DILocation(line: 728, column: 51, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 728, column: 7)
!2481 = !DILocation(line: 731, column: 11, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !500, line: 731, column: 11)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !500, line: 730, column: 5)
!2484 = !DILocation(line: 731, column: 11, scope: !2483)
!2485 = !DILocation(line: 732, column: 16, scope: !2482)
!2486 = !DILocation(line: 732, column: 9, scope: !2482)
!2487 = !DILocation(line: 736, column: 18, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2482, file: !500, line: 736, column: 16)
!2489 = !DILocation(line: 736, column: 29, scope: !2488)
!2490 = !DILocation(line: 745, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 745, column: 7)
!2492 = !DILocation(line: 745, column: 20, scope: !2491)
!2493 = !DILocation(line: 746, column: 12, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !500, line: 746, column: 5)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !500, line: 746, column: 5)
!2496 = !DILocation(line: 746, column: 5, scope: !2495)
!2497 = !DILocation(line: 747, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !500, line: 747, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !500, line: 747, column: 7)
!2500 = !DILocation(line: 747, column: 7, scope: !2499)
!2501 = !DILocation(line: 746, column: 39, scope: !2494)
!2502 = distinct !{!2502, !2496, !2503, !919}
!2503 = !DILocation(line: 747, column: 7, scope: !2495)
!2504 = !DILocation(line: 749, column: 11, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 749, column: 7)
!2506 = !DILocation(line: 749, column: 7, scope: !1945)
!2507 = !DILocation(line: 750, column: 5, scope: !2505)
!2508 = !DILocation(line: 750, column: 17, scope: !2505)
!2509 = !DILocation(line: 753, column: 2, scope: !1945)
!2510 = !DILocation(line: 756, column: 51, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !1945, file: !500, line: 756, column: 7)
!2512 = !DILocation(line: 756, column: 21, scope: !2511)
!2513 = !DILocation(line: 760, column: 42, scope: !1945)
!2514 = !DILocation(line: 758, column: 10, scope: !1945)
!2515 = !DILocation(line: 758, column: 3, scope: !1945)
!2516 = !DILocation(line: 762, column: 1, scope: !1945)
!2517 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !996, file: !996, line: 98, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!119}
!2520 = !DISubprogram(name: "strlen", scope: !992, file: !992, line: 407, type: !2521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!121, !122}
!2523 = !DISubprogram(name: "iswprint", scope: !2524, file: !2524, line: 120, type: !2320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2524 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2525 = distinct !DISubprogram(name: "quotearg_alloc", scope: !500, file: !500, line: 788, type: !2526, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!116, !122, !119, !1838}
!2528 = !{!2529, !2530, !2531}
!2529 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !500, line: 788, type: !122)
!2530 = !DILocalVariable(name: "argsize", arg: 2, scope: !2525, file: !500, line: 788, type: !119)
!2531 = !DILocalVariable(name: "o", arg: 3, scope: !2525, file: !500, line: 789, type: !1838)
!2532 = !DILocation(line: 0, scope: !2525)
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !500, line: 801, type: !122)
!2534 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !500, file: !500, line: 801, type: !2535, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!116, !122, !119, !738, !1838}
!2537 = !{!2533, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2538 = !DILocalVariable(name: "argsize", arg: 2, scope: !2534, file: !500, line: 801, type: !119)
!2539 = !DILocalVariable(name: "size", arg: 3, scope: !2534, file: !500, line: 801, type: !738)
!2540 = !DILocalVariable(name: "o", arg: 4, scope: !2534, file: !500, line: 802, type: !1838)
!2541 = !DILocalVariable(name: "p", scope: !2534, file: !500, line: 804, type: !1838)
!2542 = !DILocalVariable(name: "saved_errno", scope: !2534, file: !500, line: 805, type: !77)
!2543 = !DILocalVariable(name: "flags", scope: !2534, file: !500, line: 807, type: !77)
!2544 = !DILocalVariable(name: "bufsize", scope: !2534, file: !500, line: 808, type: !119)
!2545 = !DILocalVariable(name: "buf", scope: !2534, file: !500, line: 812, type: !116)
!2546 = !DILocation(line: 0, scope: !2534, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 791, column: 10, scope: !2525)
!2548 = !DILocation(line: 804, column: 37, scope: !2534, inlinedAt: !2547)
!2549 = !DILocation(line: 805, column: 21, scope: !2534, inlinedAt: !2547)
!2550 = !DILocation(line: 807, column: 18, scope: !2534, inlinedAt: !2547)
!2551 = !DILocation(line: 807, column: 24, scope: !2534, inlinedAt: !2547)
!2552 = !DILocation(line: 808, column: 72, scope: !2534, inlinedAt: !2547)
!2553 = !DILocation(line: 809, column: 56, scope: !2534, inlinedAt: !2547)
!2554 = !DILocation(line: 810, column: 49, scope: !2534, inlinedAt: !2547)
!2555 = !DILocation(line: 811, column: 49, scope: !2534, inlinedAt: !2547)
!2556 = !DILocation(line: 808, column: 20, scope: !2534, inlinedAt: !2547)
!2557 = !DILocation(line: 811, column: 62, scope: !2534, inlinedAt: !2547)
!2558 = !DILocation(line: 812, column: 15, scope: !2534, inlinedAt: !2547)
!2559 = !DILocation(line: 813, column: 60, scope: !2534, inlinedAt: !2547)
!2560 = !DILocation(line: 815, column: 32, scope: !2534, inlinedAt: !2547)
!2561 = !DILocation(line: 815, column: 47, scope: !2534, inlinedAt: !2547)
!2562 = !DILocation(line: 813, column: 3, scope: !2534, inlinedAt: !2547)
!2563 = !DILocation(line: 816, column: 9, scope: !2534, inlinedAt: !2547)
!2564 = !DILocation(line: 791, column: 3, scope: !2525)
!2565 = !DILocation(line: 0, scope: !2534)
!2566 = !DILocation(line: 804, column: 37, scope: !2534)
!2567 = !DILocation(line: 805, column: 21, scope: !2534)
!2568 = !DILocation(line: 807, column: 18, scope: !2534)
!2569 = !DILocation(line: 807, column: 27, scope: !2534)
!2570 = !DILocation(line: 807, column: 24, scope: !2534)
!2571 = !DILocation(line: 808, column: 72, scope: !2534)
!2572 = !DILocation(line: 809, column: 56, scope: !2534)
!2573 = !DILocation(line: 810, column: 49, scope: !2534)
!2574 = !DILocation(line: 811, column: 49, scope: !2534)
!2575 = !DILocation(line: 808, column: 20, scope: !2534)
!2576 = !DILocation(line: 811, column: 62, scope: !2534)
!2577 = !DILocation(line: 812, column: 15, scope: !2534)
!2578 = !DILocation(line: 813, column: 60, scope: !2534)
!2579 = !DILocation(line: 815, column: 32, scope: !2534)
!2580 = !DILocation(line: 815, column: 47, scope: !2534)
!2581 = !DILocation(line: 813, column: 3, scope: !2534)
!2582 = !DILocation(line: 816, column: 9, scope: !2534)
!2583 = !DILocation(line: 817, column: 7, scope: !2534)
!2584 = !DILocation(line: 818, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2534, file: !500, line: 817, column: 7)
!2586 = !{!1150, !1150, i64 0}
!2587 = !DILocation(line: 818, column: 5, scope: !2585)
!2588 = !DILocation(line: 819, column: 3, scope: !2534)
!2589 = distinct !DISubprogram(name: "quotearg_free", scope: !500, file: !500, line: 837, type: !455, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2590)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "sv", scope: !2589, file: !500, line: 839, type: !589)
!2592 = !DILocalVariable(name: "i", scope: !2593, file: !500, line: 840, type: !77)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !500, line: 840, column: 3)
!2594 = !DILocation(line: 839, column: 24, scope: !2589)
!2595 = !DILocation(line: 0, scope: !2589)
!2596 = !DILocation(line: 0, scope: !2593)
!2597 = !DILocation(line: 840, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !500, line: 840, column: 3)
!2599 = !DILocation(line: 840, column: 3, scope: !2593)
!2600 = !DILocation(line: 842, column: 13, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2589, file: !500, line: 842, column: 7)
!2602 = !{!2603, !809, i64 8}
!2603 = !{!"slotvec", !1150, i64 0, !809, i64 8}
!2604 = !DILocation(line: 842, column: 17, scope: !2601)
!2605 = !DILocation(line: 842, column: 7, scope: !2589)
!2606 = !DILocation(line: 841, column: 17, scope: !2598)
!2607 = !DILocation(line: 841, column: 5, scope: !2598)
!2608 = !DILocation(line: 840, column: 32, scope: !2598)
!2609 = distinct !{!2609, !2599, !2610, !919}
!2610 = !DILocation(line: 841, column: 20, scope: !2593)
!2611 = !DILocation(line: 844, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2601, file: !500, line: 843, column: 5)
!2613 = !DILocation(line: 845, column: 21, scope: !2612)
!2614 = !{!2603, !1150, i64 0}
!2615 = !DILocation(line: 846, column: 20, scope: !2612)
!2616 = !DILocation(line: 847, column: 5, scope: !2612)
!2617 = !DILocation(line: 848, column: 10, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2589, file: !500, line: 848, column: 7)
!2619 = !DILocation(line: 848, column: 7, scope: !2589)
!2620 = !DILocation(line: 850, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !500, line: 849, column: 5)
!2622 = !DILocation(line: 851, column: 15, scope: !2621)
!2623 = !DILocation(line: 852, column: 5, scope: !2621)
!2624 = !DILocation(line: 853, column: 10, scope: !2589)
!2625 = !DILocation(line: 854, column: 1, scope: !2589)
!2626 = distinct !DISubprogram(name: "quotearg_n", scope: !500, file: !500, line: 919, type: !989, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2627)
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2626, file: !500, line: 919, type: !77)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2626, file: !500, line: 919, type: !122)
!2630 = !DILocation(line: 0, scope: !2626)
!2631 = !DILocation(line: 921, column: 10, scope: !2626)
!2632 = !DILocation(line: 921, column: 3, scope: !2626)
!2633 = distinct !DISubprogram(name: "quotearg_n_options", scope: !500, file: !500, line: 866, type: !2634, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!116, !77, !122, !119, !1838}
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2647, !2648, !2650, !2651, !2652}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !500, line: 866, type: !77)
!2638 = !DILocalVariable(name: "arg", arg: 2, scope: !2633, file: !500, line: 866, type: !122)
!2639 = !DILocalVariable(name: "argsize", arg: 3, scope: !2633, file: !500, line: 866, type: !119)
!2640 = !DILocalVariable(name: "options", arg: 4, scope: !2633, file: !500, line: 867, type: !1838)
!2641 = !DILocalVariable(name: "saved_errno", scope: !2633, file: !500, line: 869, type: !77)
!2642 = !DILocalVariable(name: "sv", scope: !2633, file: !500, line: 871, type: !589)
!2643 = !DILocalVariable(name: "nslots_max", scope: !2633, file: !500, line: 873, type: !77)
!2644 = !DILocalVariable(name: "preallocated", scope: !2645, file: !500, line: 879, type: !152)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !500, line: 878, column: 5)
!2646 = distinct !DILexicalBlock(scope: !2633, file: !500, line: 877, column: 7)
!2647 = !DILocalVariable(name: "new_nslots", scope: !2645, file: !500, line: 880, type: !751)
!2648 = !DILocalVariable(name: "size", scope: !2649, file: !500, line: 891, type: !119)
!2649 = distinct !DILexicalBlock(scope: !2633, file: !500, line: 890, column: 3)
!2650 = !DILocalVariable(name: "val", scope: !2649, file: !500, line: 892, type: !116)
!2651 = !DILocalVariable(name: "flags", scope: !2649, file: !500, line: 894, type: !77)
!2652 = !DILocalVariable(name: "qsize", scope: !2649, file: !500, line: 895, type: !119)
!2653 = distinct !DIAssignID()
!2654 = !DILocation(line: 0, scope: !2645)
!2655 = !DILocation(line: 0, scope: !2633)
!2656 = !DILocation(line: 869, column: 21, scope: !2633)
!2657 = !DILocation(line: 871, column: 24, scope: !2633)
!2658 = !DILocation(line: 874, column: 17, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2633, file: !500, line: 874, column: 7)
!2660 = !DILocation(line: 875, column: 5, scope: !2659)
!2661 = !DILocation(line: 877, column: 7, scope: !2646)
!2662 = !DILocation(line: 877, column: 14, scope: !2646)
!2663 = !DILocation(line: 877, column: 7, scope: !2633)
!2664 = !DILocation(line: 879, column: 31, scope: !2645)
!2665 = !DILocation(line: 880, column: 7, scope: !2645)
!2666 = !DILocation(line: 880, column: 26, scope: !2645)
!2667 = !DILocation(line: 880, column: 13, scope: !2645)
!2668 = distinct !DIAssignID()
!2669 = !DILocation(line: 882, column: 31, scope: !2645)
!2670 = !DILocation(line: 883, column: 33, scope: !2645)
!2671 = !DILocation(line: 883, column: 42, scope: !2645)
!2672 = !DILocation(line: 883, column: 31, scope: !2645)
!2673 = !DILocation(line: 882, column: 22, scope: !2645)
!2674 = !DILocation(line: 882, column: 15, scope: !2645)
!2675 = !DILocation(line: 884, column: 11, scope: !2645)
!2676 = !DILocation(line: 885, column: 15, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2645, file: !500, line: 884, column: 11)
!2678 = !{i64 0, i64 8, !2586, i64 8, i64 8, !808}
!2679 = !DILocation(line: 885, column: 9, scope: !2677)
!2680 = !DILocation(line: 886, column: 20, scope: !2645)
!2681 = !DILocation(line: 886, column: 18, scope: !2645)
!2682 = !DILocation(line: 886, column: 32, scope: !2645)
!2683 = !DILocation(line: 886, column: 43, scope: !2645)
!2684 = !DILocation(line: 886, column: 53, scope: !2645)
!2685 = !DILocation(line: 0, scope: !2060, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 886, column: 7, scope: !2645)
!2687 = !DILocation(line: 59, column: 10, scope: !2060, inlinedAt: !2686)
!2688 = !DILocation(line: 887, column: 16, scope: !2645)
!2689 = !DILocation(line: 887, column: 14, scope: !2645)
!2690 = !DILocation(line: 888, column: 5, scope: !2646)
!2691 = !DILocation(line: 888, column: 5, scope: !2645)
!2692 = !DILocation(line: 891, column: 19, scope: !2649)
!2693 = !DILocation(line: 891, column: 25, scope: !2649)
!2694 = !DILocation(line: 0, scope: !2649)
!2695 = !DILocation(line: 892, column: 23, scope: !2649)
!2696 = !DILocation(line: 894, column: 26, scope: !2649)
!2697 = !DILocation(line: 894, column: 32, scope: !2649)
!2698 = !DILocation(line: 896, column: 55, scope: !2649)
!2699 = !DILocation(line: 897, column: 55, scope: !2649)
!2700 = !DILocation(line: 898, column: 55, scope: !2649)
!2701 = !DILocation(line: 899, column: 55, scope: !2649)
!2702 = !DILocation(line: 895, column: 20, scope: !2649)
!2703 = !DILocation(line: 901, column: 14, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2649, file: !500, line: 901, column: 9)
!2705 = !DILocation(line: 901, column: 9, scope: !2649)
!2706 = !DILocation(line: 903, column: 35, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !500, line: 902, column: 7)
!2708 = !DILocation(line: 903, column: 20, scope: !2707)
!2709 = !DILocation(line: 904, column: 17, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !500, line: 904, column: 13)
!2711 = !DILocation(line: 904, column: 13, scope: !2707)
!2712 = !DILocation(line: 905, column: 11, scope: !2710)
!2713 = !DILocation(line: 906, column: 27, scope: !2707)
!2714 = !DILocation(line: 906, column: 19, scope: !2707)
!2715 = !DILocation(line: 907, column: 69, scope: !2707)
!2716 = !DILocation(line: 909, column: 44, scope: !2707)
!2717 = !DILocation(line: 910, column: 44, scope: !2707)
!2718 = !DILocation(line: 907, column: 9, scope: !2707)
!2719 = !DILocation(line: 911, column: 7, scope: !2707)
!2720 = !DILocation(line: 913, column: 11, scope: !2649)
!2721 = !DILocation(line: 914, column: 5, scope: !2649)
!2722 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !500, file: !500, line: 925, type: !2723, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!116, !77, !122, !119}
!2725 = !{!2726, !2727, !2728}
!2726 = !DILocalVariable(name: "n", arg: 1, scope: !2722, file: !500, line: 925, type: !77)
!2727 = !DILocalVariable(name: "arg", arg: 2, scope: !2722, file: !500, line: 925, type: !122)
!2728 = !DILocalVariable(name: "argsize", arg: 3, scope: !2722, file: !500, line: 925, type: !119)
!2729 = !DILocation(line: 0, scope: !2722)
!2730 = !DILocation(line: 927, column: 10, scope: !2722)
!2731 = !DILocation(line: 927, column: 3, scope: !2722)
!2732 = distinct !DISubprogram(name: "quotearg", scope: !500, file: !500, line: 931, type: !998, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2733)
!2733 = !{!2734}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2732, file: !500, line: 931, type: !122)
!2735 = !DILocation(line: 0, scope: !2732)
!2736 = !DILocation(line: 0, scope: !2626, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 933, column: 10, scope: !2732)
!2738 = !DILocation(line: 921, column: 10, scope: !2626, inlinedAt: !2737)
!2739 = !DILocation(line: 933, column: 3, scope: !2732)
!2740 = distinct !DISubprogram(name: "quotearg_mem", scope: !500, file: !500, line: 937, type: !2741, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!116, !122, !119}
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "arg", arg: 1, scope: !2740, file: !500, line: 937, type: !122)
!2745 = !DILocalVariable(name: "argsize", arg: 2, scope: !2740, file: !500, line: 937, type: !119)
!2746 = !DILocation(line: 0, scope: !2740)
!2747 = !DILocation(line: 0, scope: !2722, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 939, column: 10, scope: !2740)
!2749 = !DILocation(line: 927, column: 10, scope: !2722, inlinedAt: !2748)
!2750 = !DILocation(line: 939, column: 3, scope: !2740)
!2751 = distinct !DISubprogram(name: "quotearg_n_style", scope: !500, file: !500, line: 943, type: !2752, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!116, !77, !526, !122}
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !500, line: 943, type: !77)
!2756 = !DILocalVariable(name: "s", arg: 2, scope: !2751, file: !500, line: 943, type: !526)
!2757 = !DILocalVariable(name: "arg", arg: 3, scope: !2751, file: !500, line: 943, type: !122)
!2758 = !DILocalVariable(name: "o", scope: !2751, file: !500, line: 945, type: !1839)
!2759 = distinct !DIAssignID()
!2760 = !DILocation(line: 0, scope: !2751)
!2761 = !DILocation(line: 945, column: 3, scope: !2751)
!2762 = !{!2763}
!2763 = distinct !{!2763, !2764, !"quoting_options_from_style: argument 0"}
!2764 = distinct !{!2764, !"quoting_options_from_style"}
!2765 = !DILocation(line: 945, column: 36, scope: !2751)
!2766 = !DILocalVariable(name: "style", arg: 1, scope: !2767, file: !500, line: 183, type: !526)
!2767 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !500, file: !500, line: 183, type: !2768, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!541, !526}
!2770 = !{!2766, !2771}
!2771 = !DILocalVariable(name: "o", scope: !2767, file: !500, line: 185, type: !541)
!2772 = !DILocation(line: 0, scope: !2767, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 945, column: 36, scope: !2751)
!2774 = !DILocation(line: 185, column: 26, scope: !2767, inlinedAt: !2773)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 186, column: 13, scope: !2777, inlinedAt: !2773)
!2777 = distinct !DILexicalBlock(scope: !2767, file: !500, line: 186, column: 7)
!2778 = !DILocation(line: 186, column: 7, scope: !2767, inlinedAt: !2773)
!2779 = !DILocation(line: 187, column: 5, scope: !2777, inlinedAt: !2773)
!2780 = !DILocation(line: 188, column: 11, scope: !2767, inlinedAt: !2773)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 946, column: 10, scope: !2751)
!2783 = !DILocation(line: 947, column: 1, scope: !2751)
!2784 = !DILocation(line: 946, column: 3, scope: !2751)
!2785 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !500, file: !500, line: 950, type: !2786, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!116, !77, !526, !122, !119}
!2788 = !{!2789, !2790, !2791, !2792, !2793}
!2789 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !500, line: 950, type: !77)
!2790 = !DILocalVariable(name: "s", arg: 2, scope: !2785, file: !500, line: 950, type: !526)
!2791 = !DILocalVariable(name: "arg", arg: 3, scope: !2785, file: !500, line: 951, type: !122)
!2792 = !DILocalVariable(name: "argsize", arg: 4, scope: !2785, file: !500, line: 951, type: !119)
!2793 = !DILocalVariable(name: "o", scope: !2785, file: !500, line: 953, type: !1839)
!2794 = distinct !DIAssignID()
!2795 = !DILocation(line: 0, scope: !2785)
!2796 = !DILocation(line: 953, column: 3, scope: !2785)
!2797 = !{!2798}
!2798 = distinct !{!2798, !2799, !"quoting_options_from_style: argument 0"}
!2799 = distinct !{!2799, !"quoting_options_from_style"}
!2800 = !DILocation(line: 953, column: 36, scope: !2785)
!2801 = !DILocation(line: 0, scope: !2767, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 953, column: 36, scope: !2785)
!2803 = !DILocation(line: 185, column: 26, scope: !2767, inlinedAt: !2802)
!2804 = distinct !DIAssignID()
!2805 = !DILocation(line: 186, column: 13, scope: !2777, inlinedAt: !2802)
!2806 = !DILocation(line: 186, column: 7, scope: !2767, inlinedAt: !2802)
!2807 = !DILocation(line: 187, column: 5, scope: !2777, inlinedAt: !2802)
!2808 = !DILocation(line: 188, column: 11, scope: !2767, inlinedAt: !2802)
!2809 = distinct !DIAssignID()
!2810 = !DILocation(line: 954, column: 10, scope: !2785)
!2811 = !DILocation(line: 955, column: 1, scope: !2785)
!2812 = !DILocation(line: 954, column: 3, scope: !2785)
!2813 = distinct !DISubprogram(name: "quotearg_style", scope: !500, file: !500, line: 958, type: !2814, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!116, !526, !122}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "s", arg: 1, scope: !2813, file: !500, line: 958, type: !526)
!2818 = !DILocalVariable(name: "arg", arg: 2, scope: !2813, file: !500, line: 958, type: !122)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 0, scope: !2813)
!2821 = !DILocation(line: 0, scope: !2751, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 960, column: 10, scope: !2813)
!2823 = !DILocation(line: 945, column: 3, scope: !2751, inlinedAt: !2822)
!2824 = !{!2825}
!2825 = distinct !{!2825, !2826, !"quoting_options_from_style: argument 0"}
!2826 = distinct !{!2826, !"quoting_options_from_style"}
!2827 = !DILocation(line: 945, column: 36, scope: !2751, inlinedAt: !2822)
!2828 = !DILocation(line: 0, scope: !2767, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 945, column: 36, scope: !2751, inlinedAt: !2822)
!2830 = !DILocation(line: 185, column: 26, scope: !2767, inlinedAt: !2829)
!2831 = distinct !DIAssignID()
!2832 = !DILocation(line: 186, column: 13, scope: !2777, inlinedAt: !2829)
!2833 = !DILocation(line: 186, column: 7, scope: !2767, inlinedAt: !2829)
!2834 = !DILocation(line: 187, column: 5, scope: !2777, inlinedAt: !2829)
!2835 = !DILocation(line: 188, column: 11, scope: !2767, inlinedAt: !2829)
!2836 = distinct !DIAssignID()
!2837 = !DILocation(line: 946, column: 10, scope: !2751, inlinedAt: !2822)
!2838 = !DILocation(line: 947, column: 1, scope: !2751, inlinedAt: !2822)
!2839 = !DILocation(line: 960, column: 3, scope: !2813)
!2840 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !500, file: !500, line: 964, type: !2841, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!116, !526, !122, !119}
!2843 = !{!2844, !2845, !2846}
!2844 = !DILocalVariable(name: "s", arg: 1, scope: !2840, file: !500, line: 964, type: !526)
!2845 = !DILocalVariable(name: "arg", arg: 2, scope: !2840, file: !500, line: 964, type: !122)
!2846 = !DILocalVariable(name: "argsize", arg: 3, scope: !2840, file: !500, line: 964, type: !119)
!2847 = distinct !DIAssignID()
!2848 = !DILocation(line: 0, scope: !2840)
!2849 = !DILocation(line: 0, scope: !2785, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 966, column: 10, scope: !2840)
!2851 = !DILocation(line: 953, column: 3, scope: !2785, inlinedAt: !2850)
!2852 = !{!2853}
!2853 = distinct !{!2853, !2854, !"quoting_options_from_style: argument 0"}
!2854 = distinct !{!2854, !"quoting_options_from_style"}
!2855 = !DILocation(line: 953, column: 36, scope: !2785, inlinedAt: !2850)
!2856 = !DILocation(line: 0, scope: !2767, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 953, column: 36, scope: !2785, inlinedAt: !2850)
!2858 = !DILocation(line: 185, column: 26, scope: !2767, inlinedAt: !2857)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 186, column: 13, scope: !2777, inlinedAt: !2857)
!2861 = !DILocation(line: 186, column: 7, scope: !2767, inlinedAt: !2857)
!2862 = !DILocation(line: 187, column: 5, scope: !2777, inlinedAt: !2857)
!2863 = !DILocation(line: 188, column: 11, scope: !2767, inlinedAt: !2857)
!2864 = distinct !DIAssignID()
!2865 = !DILocation(line: 954, column: 10, scope: !2785, inlinedAt: !2850)
!2866 = !DILocation(line: 955, column: 1, scope: !2785, inlinedAt: !2850)
!2867 = !DILocation(line: 966, column: 3, scope: !2840)
!2868 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !500, file: !500, line: 970, type: !2869, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!116, !122, !119, !4}
!2871 = !{!2872, !2873, !2874, !2875}
!2872 = !DILocalVariable(name: "arg", arg: 1, scope: !2868, file: !500, line: 970, type: !122)
!2873 = !DILocalVariable(name: "argsize", arg: 2, scope: !2868, file: !500, line: 970, type: !119)
!2874 = !DILocalVariable(name: "ch", arg: 3, scope: !2868, file: !500, line: 970, type: !4)
!2875 = !DILocalVariable(name: "options", scope: !2868, file: !500, line: 972, type: !541)
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 0, scope: !2868)
!2878 = !DILocation(line: 972, column: 3, scope: !2868)
!2879 = !DILocation(line: 973, column: 13, scope: !2868)
!2880 = !{i64 0, i64 4, !872, i64 4, i64 4, !872, i64 8, i64 32, !881, i64 40, i64 8, !808, i64 48, i64 8, !808}
!2881 = distinct !DIAssignID()
!2882 = !DILocation(line: 0, scope: !1858, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 974, column: 3, scope: !2868)
!2884 = !DILocation(line: 147, column: 41, scope: !1858, inlinedAt: !2883)
!2885 = !DILocation(line: 147, column: 62, scope: !1858, inlinedAt: !2883)
!2886 = !DILocation(line: 147, column: 57, scope: !1858, inlinedAt: !2883)
!2887 = !DILocation(line: 148, column: 15, scope: !1858, inlinedAt: !2883)
!2888 = !DILocation(line: 149, column: 21, scope: !1858, inlinedAt: !2883)
!2889 = !DILocation(line: 149, column: 24, scope: !1858, inlinedAt: !2883)
!2890 = !DILocation(line: 150, column: 19, scope: !1858, inlinedAt: !2883)
!2891 = !DILocation(line: 150, column: 24, scope: !1858, inlinedAt: !2883)
!2892 = !DILocation(line: 150, column: 6, scope: !1858, inlinedAt: !2883)
!2893 = !DILocation(line: 975, column: 10, scope: !2868)
!2894 = !DILocation(line: 976, column: 1, scope: !2868)
!2895 = !DILocation(line: 975, column: 3, scope: !2868)
!2896 = distinct !DISubprogram(name: "quotearg_char", scope: !500, file: !500, line: 979, type: !2897, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!116, !122, !4}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !500, line: 979, type: !122)
!2901 = !DILocalVariable(name: "ch", arg: 2, scope: !2896, file: !500, line: 979, type: !4)
!2902 = distinct !DIAssignID()
!2903 = !DILocation(line: 0, scope: !2896)
!2904 = !DILocation(line: 0, scope: !2868, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 981, column: 10, scope: !2896)
!2906 = !DILocation(line: 972, column: 3, scope: !2868, inlinedAt: !2905)
!2907 = !DILocation(line: 973, column: 13, scope: !2868, inlinedAt: !2905)
!2908 = distinct !DIAssignID()
!2909 = !DILocation(line: 0, scope: !1858, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 974, column: 3, scope: !2868, inlinedAt: !2905)
!2911 = !DILocation(line: 147, column: 41, scope: !1858, inlinedAt: !2910)
!2912 = !DILocation(line: 147, column: 62, scope: !1858, inlinedAt: !2910)
!2913 = !DILocation(line: 147, column: 57, scope: !1858, inlinedAt: !2910)
!2914 = !DILocation(line: 148, column: 15, scope: !1858, inlinedAt: !2910)
!2915 = !DILocation(line: 149, column: 21, scope: !1858, inlinedAt: !2910)
!2916 = !DILocation(line: 149, column: 24, scope: !1858, inlinedAt: !2910)
!2917 = !DILocation(line: 150, column: 19, scope: !1858, inlinedAt: !2910)
!2918 = !DILocation(line: 150, column: 24, scope: !1858, inlinedAt: !2910)
!2919 = !DILocation(line: 150, column: 6, scope: !1858, inlinedAt: !2910)
!2920 = !DILocation(line: 975, column: 10, scope: !2868, inlinedAt: !2905)
!2921 = !DILocation(line: 976, column: 1, scope: !2868, inlinedAt: !2905)
!2922 = !DILocation(line: 981, column: 3, scope: !2896)
!2923 = distinct !DISubprogram(name: "quotearg_colon", scope: !500, file: !500, line: 985, type: !998, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !500, line: 985, type: !122)
!2926 = distinct !DIAssignID()
!2927 = !DILocation(line: 0, scope: !2923)
!2928 = !DILocation(line: 0, scope: !2896, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 987, column: 10, scope: !2923)
!2930 = !DILocation(line: 0, scope: !2868, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 981, column: 10, scope: !2896, inlinedAt: !2929)
!2932 = !DILocation(line: 972, column: 3, scope: !2868, inlinedAt: !2931)
!2933 = !DILocation(line: 973, column: 13, scope: !2868, inlinedAt: !2931)
!2934 = distinct !DIAssignID()
!2935 = !DILocation(line: 0, scope: !1858, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 974, column: 3, scope: !2868, inlinedAt: !2931)
!2937 = !DILocation(line: 147, column: 57, scope: !1858, inlinedAt: !2936)
!2938 = !DILocation(line: 149, column: 21, scope: !1858, inlinedAt: !2936)
!2939 = !DILocation(line: 150, column: 6, scope: !1858, inlinedAt: !2936)
!2940 = !DILocation(line: 975, column: 10, scope: !2868, inlinedAt: !2931)
!2941 = !DILocation(line: 976, column: 1, scope: !2868, inlinedAt: !2931)
!2942 = !DILocation(line: 987, column: 3, scope: !2923)
!2943 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !500, file: !500, line: 991, type: !2741, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2944)
!2944 = !{!2945, !2946}
!2945 = !DILocalVariable(name: "arg", arg: 1, scope: !2943, file: !500, line: 991, type: !122)
!2946 = !DILocalVariable(name: "argsize", arg: 2, scope: !2943, file: !500, line: 991, type: !119)
!2947 = distinct !DIAssignID()
!2948 = !DILocation(line: 0, scope: !2943)
!2949 = !DILocation(line: 0, scope: !2868, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 993, column: 10, scope: !2943)
!2951 = !DILocation(line: 972, column: 3, scope: !2868, inlinedAt: !2950)
!2952 = !DILocation(line: 973, column: 13, scope: !2868, inlinedAt: !2950)
!2953 = distinct !DIAssignID()
!2954 = !DILocation(line: 0, scope: !1858, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 974, column: 3, scope: !2868, inlinedAt: !2950)
!2956 = !DILocation(line: 147, column: 57, scope: !1858, inlinedAt: !2955)
!2957 = !DILocation(line: 149, column: 21, scope: !1858, inlinedAt: !2955)
!2958 = !DILocation(line: 150, column: 6, scope: !1858, inlinedAt: !2955)
!2959 = !DILocation(line: 975, column: 10, scope: !2868, inlinedAt: !2950)
!2960 = !DILocation(line: 976, column: 1, scope: !2868, inlinedAt: !2950)
!2961 = !DILocation(line: 993, column: 3, scope: !2943)
!2962 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !500, file: !500, line: 997, type: !2752, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2963)
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !500, line: 997, type: !77)
!2965 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !500, line: 997, type: !526)
!2966 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !500, line: 997, type: !122)
!2967 = !DILocalVariable(name: "options", scope: !2962, file: !500, line: 999, type: !541)
!2968 = distinct !DIAssignID()
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !DILocation(line: 185, column: 26, scope: !2767, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 1000, column: 13, scope: !2962)
!2972 = !DILocation(line: 999, column: 3, scope: !2962)
!2973 = !DILocation(line: 0, scope: !2767, inlinedAt: !2971)
!2974 = !DILocation(line: 186, column: 13, scope: !2777, inlinedAt: !2971)
!2975 = !DILocation(line: 186, column: 7, scope: !2767, inlinedAt: !2971)
!2976 = !DILocation(line: 187, column: 5, scope: !2777, inlinedAt: !2971)
!2977 = !{!2978}
!2978 = distinct !{!2978, !2979, !"quoting_options_from_style: argument 0"}
!2979 = distinct !{!2979, !"quoting_options_from_style"}
!2980 = !DILocation(line: 1000, column: 13, scope: !2962)
!2981 = distinct !DIAssignID()
!2982 = distinct !DIAssignID()
!2983 = !DILocation(line: 0, scope: !1858, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1001, column: 3, scope: !2962)
!2985 = !DILocation(line: 147, column: 57, scope: !1858, inlinedAt: !2984)
!2986 = !DILocation(line: 149, column: 21, scope: !1858, inlinedAt: !2984)
!2987 = !DILocation(line: 150, column: 6, scope: !1858, inlinedAt: !2984)
!2988 = distinct !DIAssignID()
!2989 = !DILocation(line: 1002, column: 10, scope: !2962)
!2990 = !DILocation(line: 1003, column: 1, scope: !2962)
!2991 = !DILocation(line: 1002, column: 3, scope: !2962)
!2992 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !500, file: !500, line: 1006, type: !2993, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!116, !77, !122, !122, !122}
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !500, line: 1006, type: !77)
!2997 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2992, file: !500, line: 1006, type: !122)
!2998 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2992, file: !500, line: 1007, type: !122)
!2999 = !DILocalVariable(name: "arg", arg: 4, scope: !2992, file: !500, line: 1007, type: !122)
!3000 = distinct !DIAssignID()
!3001 = !DILocation(line: 0, scope: !2992)
!3002 = !DILocalVariable(name: "o", scope: !3003, file: !500, line: 1018, type: !541)
!3003 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !500, file: !500, line: 1014, type: !3004, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!116, !77, !122, !122, !122, !119}
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3002}
!3007 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !500, line: 1014, type: !77)
!3008 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3003, file: !500, line: 1014, type: !122)
!3009 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3003, file: !500, line: 1015, type: !122)
!3010 = !DILocalVariable(name: "arg", arg: 4, scope: !3003, file: !500, line: 1016, type: !122)
!3011 = !DILocalVariable(name: "argsize", arg: 5, scope: !3003, file: !500, line: 1016, type: !119)
!3012 = !DILocation(line: 0, scope: !3003, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1009, column: 10, scope: !2992)
!3014 = !DILocation(line: 1018, column: 3, scope: !3003, inlinedAt: !3013)
!3015 = !DILocation(line: 1018, column: 30, scope: !3003, inlinedAt: !3013)
!3016 = distinct !DIAssignID()
!3017 = distinct !DIAssignID()
!3018 = !DILocation(line: 0, scope: !1898, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1019, column: 3, scope: !3003, inlinedAt: !3013)
!3020 = !DILocation(line: 174, column: 12, scope: !1898, inlinedAt: !3019)
!3021 = distinct !DIAssignID()
!3022 = !DILocation(line: 175, column: 8, scope: !1911, inlinedAt: !3019)
!3023 = !DILocation(line: 175, column: 19, scope: !1911, inlinedAt: !3019)
!3024 = !DILocation(line: 176, column: 5, scope: !1911, inlinedAt: !3019)
!3025 = !DILocation(line: 177, column: 6, scope: !1898, inlinedAt: !3019)
!3026 = !DILocation(line: 177, column: 17, scope: !1898, inlinedAt: !3019)
!3027 = distinct !DIAssignID()
!3028 = !DILocation(line: 178, column: 6, scope: !1898, inlinedAt: !3019)
!3029 = !DILocation(line: 178, column: 18, scope: !1898, inlinedAt: !3019)
!3030 = distinct !DIAssignID()
!3031 = !DILocation(line: 1020, column: 10, scope: !3003, inlinedAt: !3013)
!3032 = !DILocation(line: 1021, column: 1, scope: !3003, inlinedAt: !3013)
!3033 = !DILocation(line: 1009, column: 3, scope: !2992)
!3034 = distinct !DIAssignID()
!3035 = !DILocation(line: 0, scope: !3003)
!3036 = !DILocation(line: 1018, column: 3, scope: !3003)
!3037 = !DILocation(line: 1018, column: 30, scope: !3003)
!3038 = distinct !DIAssignID()
!3039 = distinct !DIAssignID()
!3040 = !DILocation(line: 0, scope: !1898, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 1019, column: 3, scope: !3003)
!3042 = !DILocation(line: 174, column: 12, scope: !1898, inlinedAt: !3041)
!3043 = distinct !DIAssignID()
!3044 = !DILocation(line: 175, column: 8, scope: !1911, inlinedAt: !3041)
!3045 = !DILocation(line: 175, column: 19, scope: !1911, inlinedAt: !3041)
!3046 = !DILocation(line: 176, column: 5, scope: !1911, inlinedAt: !3041)
!3047 = !DILocation(line: 177, column: 6, scope: !1898, inlinedAt: !3041)
!3048 = !DILocation(line: 177, column: 17, scope: !1898, inlinedAt: !3041)
!3049 = distinct !DIAssignID()
!3050 = !DILocation(line: 178, column: 6, scope: !1898, inlinedAt: !3041)
!3051 = !DILocation(line: 178, column: 18, scope: !1898, inlinedAt: !3041)
!3052 = distinct !DIAssignID()
!3053 = !DILocation(line: 1020, column: 10, scope: !3003)
!3054 = !DILocation(line: 1021, column: 1, scope: !3003)
!3055 = !DILocation(line: 1020, column: 3, scope: !3003)
!3056 = distinct !DISubprogram(name: "quotearg_custom", scope: !500, file: !500, line: 1024, type: !3057, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!116, !122, !122, !122}
!3059 = !{!3060, !3061, !3062}
!3060 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3056, file: !500, line: 1024, type: !122)
!3061 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3056, file: !500, line: 1024, type: !122)
!3062 = !DILocalVariable(name: "arg", arg: 3, scope: !3056, file: !500, line: 1025, type: !122)
!3063 = distinct !DIAssignID()
!3064 = !DILocation(line: 0, scope: !3056)
!3065 = !DILocation(line: 0, scope: !2992, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1027, column: 10, scope: !3056)
!3067 = !DILocation(line: 0, scope: !3003, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 1009, column: 10, scope: !2992, inlinedAt: !3066)
!3069 = !DILocation(line: 1018, column: 3, scope: !3003, inlinedAt: !3068)
!3070 = !DILocation(line: 1018, column: 30, scope: !3003, inlinedAt: !3068)
!3071 = distinct !DIAssignID()
!3072 = distinct !DIAssignID()
!3073 = !DILocation(line: 0, scope: !1898, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1019, column: 3, scope: !3003, inlinedAt: !3068)
!3075 = !DILocation(line: 174, column: 12, scope: !1898, inlinedAt: !3074)
!3076 = distinct !DIAssignID()
!3077 = !DILocation(line: 175, column: 8, scope: !1911, inlinedAt: !3074)
!3078 = !DILocation(line: 175, column: 19, scope: !1911, inlinedAt: !3074)
!3079 = !DILocation(line: 176, column: 5, scope: !1911, inlinedAt: !3074)
!3080 = !DILocation(line: 177, column: 6, scope: !1898, inlinedAt: !3074)
!3081 = !DILocation(line: 177, column: 17, scope: !1898, inlinedAt: !3074)
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 178, column: 6, scope: !1898, inlinedAt: !3074)
!3084 = !DILocation(line: 178, column: 18, scope: !1898, inlinedAt: !3074)
!3085 = distinct !DIAssignID()
!3086 = !DILocation(line: 1020, column: 10, scope: !3003, inlinedAt: !3068)
!3087 = !DILocation(line: 1021, column: 1, scope: !3003, inlinedAt: !3068)
!3088 = !DILocation(line: 1027, column: 3, scope: !3056)
!3089 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !500, file: !500, line: 1031, type: !3090, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!116, !122, !122, !122, !119}
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3089, file: !500, line: 1031, type: !122)
!3094 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3089, file: !500, line: 1031, type: !122)
!3095 = !DILocalVariable(name: "arg", arg: 3, scope: !3089, file: !500, line: 1032, type: !122)
!3096 = !DILocalVariable(name: "argsize", arg: 4, scope: !3089, file: !500, line: 1032, type: !119)
!3097 = distinct !DIAssignID()
!3098 = !DILocation(line: 0, scope: !3089)
!3099 = !DILocation(line: 0, scope: !3003, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1034, column: 10, scope: !3089)
!3101 = !DILocation(line: 1018, column: 3, scope: !3003, inlinedAt: !3100)
!3102 = !DILocation(line: 1018, column: 30, scope: !3003, inlinedAt: !3100)
!3103 = distinct !DIAssignID()
!3104 = distinct !DIAssignID()
!3105 = !DILocation(line: 0, scope: !1898, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1019, column: 3, scope: !3003, inlinedAt: !3100)
!3107 = !DILocation(line: 174, column: 12, scope: !1898, inlinedAt: !3106)
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 175, column: 8, scope: !1911, inlinedAt: !3106)
!3110 = !DILocation(line: 175, column: 19, scope: !1911, inlinedAt: !3106)
!3111 = !DILocation(line: 176, column: 5, scope: !1911, inlinedAt: !3106)
!3112 = !DILocation(line: 177, column: 6, scope: !1898, inlinedAt: !3106)
!3113 = !DILocation(line: 177, column: 17, scope: !1898, inlinedAt: !3106)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 178, column: 6, scope: !1898, inlinedAt: !3106)
!3116 = !DILocation(line: 178, column: 18, scope: !1898, inlinedAt: !3106)
!3117 = distinct !DIAssignID()
!3118 = !DILocation(line: 1020, column: 10, scope: !3003, inlinedAt: !3100)
!3119 = !DILocation(line: 1021, column: 1, scope: !3003, inlinedAt: !3100)
!3120 = !DILocation(line: 1034, column: 3, scope: !3089)
!3121 = distinct !DISubprogram(name: "quote_n_mem", scope: !500, file: !500, line: 1049, type: !3122, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!122, !77, !122, !119}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !500, line: 1049, type: !77)
!3126 = !DILocalVariable(name: "arg", arg: 2, scope: !3121, file: !500, line: 1049, type: !122)
!3127 = !DILocalVariable(name: "argsize", arg: 3, scope: !3121, file: !500, line: 1049, type: !119)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocation(line: 1051, column: 10, scope: !3121)
!3130 = !DILocation(line: 1051, column: 3, scope: !3121)
!3131 = distinct !DISubprogram(name: "quote_mem", scope: !500, file: !500, line: 1055, type: !3132, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!122, !122, !119}
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "arg", arg: 1, scope: !3131, file: !500, line: 1055, type: !122)
!3136 = !DILocalVariable(name: "argsize", arg: 2, scope: !3131, file: !500, line: 1055, type: !119)
!3137 = !DILocation(line: 0, scope: !3131)
!3138 = !DILocation(line: 0, scope: !3121, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 1057, column: 10, scope: !3131)
!3140 = !DILocation(line: 1051, column: 10, scope: !3121, inlinedAt: !3139)
!3141 = !DILocation(line: 1057, column: 3, scope: !3131)
!3142 = distinct !DISubprogram(name: "quote_n", scope: !500, file: !500, line: 1061, type: !3143, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!122, !77, !122}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !500, line: 1061, type: !77)
!3147 = !DILocalVariable(name: "arg", arg: 2, scope: !3142, file: !500, line: 1061, type: !122)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 0, scope: !3121, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1063, column: 10, scope: !3142)
!3151 = !DILocation(line: 1051, column: 10, scope: !3121, inlinedAt: !3150)
!3152 = !DILocation(line: 1063, column: 3, scope: !3142)
!3153 = distinct !DISubprogram(name: "quote", scope: !500, file: !500, line: 1067, type: !3154, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!122, !122}
!3156 = !{!3157}
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !500, line: 1067, type: !122)
!3158 = !DILocation(line: 0, scope: !3153)
!3159 = !DILocation(line: 0, scope: !3142, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1069, column: 10, scope: !3153)
!3161 = !DILocation(line: 0, scope: !3121, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1063, column: 10, scope: !3142, inlinedAt: !3160)
!3163 = !DILocation(line: 1051, column: 10, scope: !3121, inlinedAt: !3162)
!3164 = !DILocation(line: 1069, column: 3, scope: !3153)
!3165 = distinct !DISubprogram(name: "version_etc_arn", scope: !604, file: !604, line: 61, type: !3166, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3203)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !3168, !122, !122, !122, !3202, !119}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3170, file: !185, line: 51, baseType: !77, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3170, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3170, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3170, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3170, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3170, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3170, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3170, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3170, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3170, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3170, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3170, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3170, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3170, file: !185, line: 70, baseType: !3186, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3170, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3170, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3170, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3170, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3170, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3170, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3170, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3170, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3170, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3170, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3170, file: !185, line: 93, baseType: !3186, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3170, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3170, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3170, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3170, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209}
!3204 = !DILocalVariable(name: "stream", arg: 1, scope: !3165, file: !604, line: 61, type: !3168)
!3205 = !DILocalVariable(name: "command_name", arg: 2, scope: !3165, file: !604, line: 62, type: !122)
!3206 = !DILocalVariable(name: "package", arg: 3, scope: !3165, file: !604, line: 62, type: !122)
!3207 = !DILocalVariable(name: "version", arg: 4, scope: !3165, file: !604, line: 63, type: !122)
!3208 = !DILocalVariable(name: "authors", arg: 5, scope: !3165, file: !604, line: 64, type: !3202)
!3209 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3165, file: !604, line: 64, type: !119)
!3210 = !DILocation(line: 0, scope: !3165)
!3211 = !DILocation(line: 66, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3165, file: !604, line: 66, column: 7)
!3213 = !DILocation(line: 66, column: 7, scope: !3165)
!3214 = !DILocation(line: 67, column: 5, scope: !3212)
!3215 = !DILocation(line: 69, column: 5, scope: !3212)
!3216 = !DILocation(line: 83, column: 3, scope: !3165)
!3217 = !DILocation(line: 85, column: 3, scope: !3165)
!3218 = !DILocation(line: 88, column: 3, scope: !3165)
!3219 = !DILocation(line: 95, column: 3, scope: !3165)
!3220 = !DILocation(line: 97, column: 3, scope: !3165)
!3221 = !DILocation(line: 105, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3165, file: !604, line: 98, column: 5)
!3223 = !DILocation(line: 106, column: 7, scope: !3222)
!3224 = !DILocation(line: 109, column: 7, scope: !3222)
!3225 = !DILocation(line: 110, column: 7, scope: !3222)
!3226 = !DILocation(line: 113, column: 7, scope: !3222)
!3227 = !DILocation(line: 115, column: 7, scope: !3222)
!3228 = !DILocation(line: 120, column: 7, scope: !3222)
!3229 = !DILocation(line: 122, column: 7, scope: !3222)
!3230 = !DILocation(line: 127, column: 7, scope: !3222)
!3231 = !DILocation(line: 129, column: 7, scope: !3222)
!3232 = !DILocation(line: 134, column: 7, scope: !3222)
!3233 = !DILocation(line: 137, column: 7, scope: !3222)
!3234 = !DILocation(line: 142, column: 7, scope: !3222)
!3235 = !DILocation(line: 145, column: 7, scope: !3222)
!3236 = !DILocation(line: 150, column: 7, scope: !3222)
!3237 = !DILocation(line: 154, column: 7, scope: !3222)
!3238 = !DILocation(line: 159, column: 7, scope: !3222)
!3239 = !DILocation(line: 163, column: 7, scope: !3222)
!3240 = !DILocation(line: 170, column: 7, scope: !3222)
!3241 = !DILocation(line: 174, column: 7, scope: !3222)
!3242 = !DILocation(line: 176, column: 1, scope: !3165)
!3243 = distinct !DISubprogram(name: "version_etc_ar", scope: !604, file: !604, line: 183, type: !3244, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !3168, !122, !122, !122, !3202}
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252}
!3247 = !DILocalVariable(name: "stream", arg: 1, scope: !3243, file: !604, line: 183, type: !3168)
!3248 = !DILocalVariable(name: "command_name", arg: 2, scope: !3243, file: !604, line: 184, type: !122)
!3249 = !DILocalVariable(name: "package", arg: 3, scope: !3243, file: !604, line: 184, type: !122)
!3250 = !DILocalVariable(name: "version", arg: 4, scope: !3243, file: !604, line: 185, type: !122)
!3251 = !DILocalVariable(name: "authors", arg: 5, scope: !3243, file: !604, line: 185, type: !3202)
!3252 = !DILocalVariable(name: "n_authors", scope: !3243, file: !604, line: 187, type: !119)
!3253 = !DILocation(line: 0, scope: !3243)
!3254 = !DILocation(line: 189, column: 8, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3243, file: !604, line: 189, column: 3)
!3256 = !DILocation(line: 189, scope: !3255)
!3257 = !DILocation(line: 189, column: 23, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !604, line: 189, column: 3)
!3259 = !DILocation(line: 189, column: 3, scope: !3255)
!3260 = !DILocation(line: 189, column: 52, scope: !3258)
!3261 = distinct !{!3261, !3259, !3262, !919}
!3262 = !DILocation(line: 190, column: 5, scope: !3255)
!3263 = !DILocation(line: 191, column: 3, scope: !3243)
!3264 = !DILocation(line: 192, column: 1, scope: !3243)
!3265 = distinct !DISubprogram(name: "version_etc_va", scope: !604, file: !604, line: 199, type: !3266, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3275)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3168, !122, !122, !122, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3269, file: !604, line: 192, baseType: !72, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3269, file: !604, line: 192, baseType: !72, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3269, file: !604, line: 192, baseType: !117, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3269, file: !604, line: 192, baseType: !117, size: 64, offset: 128)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3276 = !DILocalVariable(name: "stream", arg: 1, scope: !3265, file: !604, line: 199, type: !3168)
!3277 = !DILocalVariable(name: "command_name", arg: 2, scope: !3265, file: !604, line: 200, type: !122)
!3278 = !DILocalVariable(name: "package", arg: 3, scope: !3265, file: !604, line: 200, type: !122)
!3279 = !DILocalVariable(name: "version", arg: 4, scope: !3265, file: !604, line: 201, type: !122)
!3280 = !DILocalVariable(name: "authors", arg: 5, scope: !3265, file: !604, line: 201, type: !3268)
!3281 = !DILocalVariable(name: "n_authors", scope: !3265, file: !604, line: 203, type: !119)
!3282 = !DILocalVariable(name: "authtab", scope: !3265, file: !604, line: 204, type: !3283)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !55)
!3284 = distinct !DIAssignID()
!3285 = !DILocation(line: 0, scope: !3265)
!3286 = !DILocation(line: 204, column: 3, scope: !3265)
!3287 = !DILocation(line: 208, column: 35, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !604, line: 206, column: 3)
!3289 = distinct !DILexicalBlock(scope: !3265, file: !604, line: 206, column: 3)
!3290 = !DILocation(line: 208, column: 33, scope: !3288)
!3291 = !DILocation(line: 208, column: 67, scope: !3288)
!3292 = !DILocation(line: 206, column: 3, scope: !3289)
!3293 = !DILocation(line: 208, column: 14, scope: !3288)
!3294 = !DILocation(line: 0, scope: !3289)
!3295 = !DILocation(line: 211, column: 3, scope: !3265)
!3296 = !DILocation(line: 213, column: 1, scope: !3265)
!3297 = distinct !DISubprogram(name: "version_etc", scope: !604, file: !604, line: 230, type: !3298, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3168, !122, !122, !122, null}
!3300 = !{!3301, !3302, !3303, !3304, !3305}
!3301 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !604, line: 230, type: !3168)
!3302 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !604, line: 231, type: !122)
!3303 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !604, line: 231, type: !122)
!3304 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !604, line: 232, type: !122)
!3305 = !DILocalVariable(name: "authors", scope: !3297, file: !604, line: 234, type: !3306)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !867, line: 52, baseType: !3307)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1424, line: 12, baseType: !3308)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !604, baseType: !3309)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 192, elements: !50)
!3310 = distinct !DIAssignID()
!3311 = !DILocation(line: 0, scope: !3297)
!3312 = !DILocation(line: 234, column: 3, scope: !3297)
!3313 = !DILocation(line: 235, column: 3, scope: !3297)
!3314 = !DILocation(line: 236, column: 3, scope: !3297)
!3315 = !DILocation(line: 237, column: 3, scope: !3297)
!3316 = !DILocation(line: 238, column: 1, scope: !3297)
!3317 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !604, file: !604, line: 241, type: !455, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724)
!3318 = !DILocation(line: 243, column: 3, scope: !3317)
!3319 = !DILocation(line: 248, column: 3, scope: !3317)
!3320 = !DILocation(line: 254, column: 3, scope: !3317)
!3321 = !DILocation(line: 259, column: 3, scope: !3317)
!3322 = !DILocation(line: 261, column: 1, scope: !3317)
!3323 = distinct !DISubprogram(name: "xnrealloc", scope: !3324, file: !3324, line: 147, type: !3325, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3327)
!3324 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!117, !117, !119, !119}
!3327 = !{!3328, !3329, !3330}
!3328 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !3324, line: 147, type: !117)
!3329 = !DILocalVariable(name: "n", arg: 2, scope: !3323, file: !3324, line: 147, type: !119)
!3330 = !DILocalVariable(name: "s", arg: 3, scope: !3323, file: !3324, line: 147, type: !119)
!3331 = !DILocation(line: 0, scope: !3323)
!3332 = !DILocalVariable(name: "p", arg: 1, scope: !3333, file: !732, line: 83, type: !117)
!3333 = distinct !DISubprogram(name: "xreallocarray", scope: !732, file: !732, line: 83, type: !3325, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3334)
!3334 = !{!3332, !3335, !3336}
!3335 = !DILocalVariable(name: "n", arg: 2, scope: !3333, file: !732, line: 83, type: !119)
!3336 = !DILocalVariable(name: "s", arg: 3, scope: !3333, file: !732, line: 83, type: !119)
!3337 = !DILocation(line: 0, scope: !3333, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 149, column: 10, scope: !3323)
!3339 = !DILocation(line: 85, column: 25, scope: !3333, inlinedAt: !3338)
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3341, file: !732, line: 37, type: !117)
!3341 = distinct !DISubprogram(name: "check_nonnull", scope: !732, file: !732, line: 37, type: !3342, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!117, !117}
!3344 = !{!3340}
!3345 = !DILocation(line: 0, scope: !3341, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 85, column: 10, scope: !3333, inlinedAt: !3338)
!3347 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3346)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !732, line: 39, column: 7)
!3349 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3346)
!3350 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3346)
!3351 = !DILocation(line: 149, column: 3, scope: !3323)
!3352 = !DILocation(line: 0, scope: !3333)
!3353 = !DILocation(line: 85, column: 25, scope: !3333)
!3354 = !DILocation(line: 0, scope: !3341, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 85, column: 10, scope: !3333)
!3356 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3355)
!3357 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3355)
!3358 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3355)
!3359 = !DILocation(line: 85, column: 3, scope: !3333)
!3360 = distinct !DISubprogram(name: "xmalloc", scope: !732, file: !732, line: 47, type: !3361, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!117, !119}
!3363 = !{!3364}
!3364 = !DILocalVariable(name: "s", arg: 1, scope: !3360, file: !732, line: 47, type: !119)
!3365 = !DILocation(line: 0, scope: !3360)
!3366 = !DILocation(line: 49, column: 25, scope: !3360)
!3367 = !DILocation(line: 0, scope: !3341, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 49, column: 10, scope: !3360)
!3369 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3368)
!3370 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3368)
!3371 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3368)
!3372 = !DILocation(line: 49, column: 3, scope: !3360)
!3373 = !DISubprogram(name: "malloc", scope: !996, file: !996, line: 540, type: !3361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3374 = distinct !DISubprogram(name: "ximalloc", scope: !732, file: !732, line: 53, type: !3375, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!117, !751}
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "s", arg: 1, scope: !3374, file: !732, line: 53, type: !751)
!3379 = !DILocation(line: 0, scope: !3374)
!3380 = !DILocalVariable(name: "s", arg: 1, scope: !3381, file: !3382, line: 55, type: !751)
!3381 = distinct !DISubprogram(name: "imalloc", scope: !3382, file: !3382, line: 55, type: !3375, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3383)
!3382 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3383 = !{!3380}
!3384 = !DILocation(line: 0, scope: !3381, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 55, column: 25, scope: !3374)
!3386 = !DILocation(line: 57, column: 26, scope: !3381, inlinedAt: !3385)
!3387 = !DILocation(line: 0, scope: !3341, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 55, column: 10, scope: !3374)
!3389 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3388)
!3390 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3388)
!3391 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3388)
!3392 = !DILocation(line: 55, column: 3, scope: !3374)
!3393 = distinct !DISubprogram(name: "xcharalloc", scope: !732, file: !732, line: 59, type: !3394, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!116, !119}
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3393, file: !732, line: 59, type: !119)
!3398 = !DILocation(line: 0, scope: !3393)
!3399 = !DILocation(line: 0, scope: !3360, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 61, column: 10, scope: !3393)
!3401 = !DILocation(line: 49, column: 25, scope: !3360, inlinedAt: !3400)
!3402 = !DILocation(line: 0, scope: !3341, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 49, column: 10, scope: !3360, inlinedAt: !3400)
!3404 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3403)
!3405 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3403)
!3406 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3403)
!3407 = !DILocation(line: 61, column: 3, scope: !3393)
!3408 = distinct !DISubprogram(name: "xrealloc", scope: !732, file: !732, line: 68, type: !3409, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!117, !117, !119}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "p", arg: 1, scope: !3408, file: !732, line: 68, type: !117)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3408, file: !732, line: 68, type: !119)
!3414 = !DILocation(line: 0, scope: !3408)
!3415 = !DILocalVariable(name: "ptr", arg: 1, scope: !3416, file: !3417, line: 2057, type: !117)
!3416 = distinct !DISubprogram(name: "rpl_realloc", scope: !3417, file: !3417, line: 2057, type: !3409, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3418)
!3417 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3418 = !{!3415, !3419}
!3419 = !DILocalVariable(name: "size", arg: 2, scope: !3416, file: !3417, line: 2057, type: !119)
!3420 = !DILocation(line: 0, scope: !3416, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 70, column: 25, scope: !3408)
!3422 = !DILocation(line: 2059, column: 24, scope: !3416, inlinedAt: !3421)
!3423 = !DILocation(line: 2059, column: 10, scope: !3416, inlinedAt: !3421)
!3424 = !DILocation(line: 0, scope: !3341, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 70, column: 10, scope: !3408)
!3426 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3425)
!3427 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3425)
!3428 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3425)
!3429 = !DILocation(line: 70, column: 3, scope: !3408)
!3430 = !DISubprogram(name: "realloc", scope: !996, file: !996, line: 551, type: !3409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3431 = distinct !DISubprogram(name: "xirealloc", scope: !732, file: !732, line: 74, type: !3432, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!117, !117, !751}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "p", arg: 1, scope: !3431, file: !732, line: 74, type: !117)
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3431, file: !732, line: 74, type: !751)
!3437 = !DILocation(line: 0, scope: !3431)
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !3382, line: 66, type: !117)
!3439 = distinct !DISubprogram(name: "irealloc", scope: !3382, file: !3382, line: 66, type: !3432, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3440)
!3440 = !{!3438, !3441}
!3441 = !DILocalVariable(name: "s", arg: 2, scope: !3439, file: !3382, line: 66, type: !751)
!3442 = !DILocation(line: 0, scope: !3439, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 76, column: 25, scope: !3431)
!3444 = !DILocation(line: 0, scope: !3416, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 68, column: 26, scope: !3439, inlinedAt: !3443)
!3446 = !DILocation(line: 2059, column: 24, scope: !3416, inlinedAt: !3445)
!3447 = !DILocation(line: 2059, column: 10, scope: !3416, inlinedAt: !3445)
!3448 = !DILocation(line: 0, scope: !3341, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 76, column: 10, scope: !3431)
!3450 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3449)
!3451 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3449)
!3452 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3449)
!3453 = !DILocation(line: 76, column: 3, scope: !3431)
!3454 = distinct !DISubprogram(name: "xireallocarray", scope: !732, file: !732, line: 89, type: !3455, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!117, !117, !751, !751}
!3457 = !{!3458, !3459, !3460}
!3458 = !DILocalVariable(name: "p", arg: 1, scope: !3454, file: !732, line: 89, type: !117)
!3459 = !DILocalVariable(name: "n", arg: 2, scope: !3454, file: !732, line: 89, type: !751)
!3460 = !DILocalVariable(name: "s", arg: 3, scope: !3454, file: !732, line: 89, type: !751)
!3461 = !DILocation(line: 0, scope: !3454)
!3462 = !DILocalVariable(name: "p", arg: 1, scope: !3463, file: !3382, line: 98, type: !117)
!3463 = distinct !DISubprogram(name: "ireallocarray", scope: !3382, file: !3382, line: 98, type: !3455, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3464)
!3464 = !{!3462, !3465, !3466}
!3465 = !DILocalVariable(name: "n", arg: 2, scope: !3463, file: !3382, line: 98, type: !751)
!3466 = !DILocalVariable(name: "s", arg: 3, scope: !3463, file: !3382, line: 98, type: !751)
!3467 = !DILocation(line: 0, scope: !3463, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 91, column: 25, scope: !3454)
!3469 = !DILocation(line: 101, column: 13, scope: !3463, inlinedAt: !3468)
!3470 = !DILocation(line: 0, scope: !3341, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 91, column: 10, scope: !3454)
!3472 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3471)
!3473 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3471)
!3474 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3471)
!3475 = !DILocation(line: 91, column: 3, scope: !3454)
!3476 = distinct !DISubprogram(name: "xnmalloc", scope: !732, file: !732, line: 98, type: !3477, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!117, !119, !119}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !732, line: 98, type: !119)
!3481 = !DILocalVariable(name: "s", arg: 2, scope: !3476, file: !732, line: 98, type: !119)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 0, scope: !3333, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 100, column: 10, scope: !3476)
!3485 = !DILocation(line: 85, column: 25, scope: !3333, inlinedAt: !3484)
!3486 = !DILocation(line: 0, scope: !3341, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 85, column: 10, scope: !3333, inlinedAt: !3484)
!3488 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3487)
!3489 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3487)
!3490 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3487)
!3491 = !DILocation(line: 100, column: 3, scope: !3476)
!3492 = distinct !DISubprogram(name: "xinmalloc", scope: !732, file: !732, line: 104, type: !3493, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!117, !751, !751}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "n", arg: 1, scope: !3492, file: !732, line: 104, type: !751)
!3497 = !DILocalVariable(name: "s", arg: 2, scope: !3492, file: !732, line: 104, type: !751)
!3498 = !DILocation(line: 0, scope: !3492)
!3499 = !DILocation(line: 0, scope: !3454, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 106, column: 10, scope: !3492)
!3501 = !DILocation(line: 0, scope: !3463, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 91, column: 25, scope: !3454, inlinedAt: !3500)
!3503 = !DILocation(line: 101, column: 13, scope: !3463, inlinedAt: !3502)
!3504 = !DILocation(line: 0, scope: !3341, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 91, column: 10, scope: !3454, inlinedAt: !3500)
!3506 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3505)
!3507 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3505)
!3508 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3505)
!3509 = !DILocation(line: 106, column: 3, scope: !3492)
!3510 = distinct !DISubprogram(name: "x2realloc", scope: !732, file: !732, line: 116, type: !3511, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!117, !117, !738}
!3513 = !{!3514, !3515}
!3514 = !DILocalVariable(name: "p", arg: 1, scope: !3510, file: !732, line: 116, type: !117)
!3515 = !DILocalVariable(name: "ps", arg: 2, scope: !3510, file: !732, line: 116, type: !738)
!3516 = !DILocation(line: 0, scope: !3510)
!3517 = !DILocation(line: 0, scope: !735, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 118, column: 10, scope: !3510)
!3519 = !DILocation(line: 178, column: 14, scope: !735, inlinedAt: !3518)
!3520 = !DILocation(line: 180, column: 9, scope: !3521, inlinedAt: !3518)
!3521 = distinct !DILexicalBlock(scope: !735, file: !732, line: 180, column: 7)
!3522 = !DILocation(line: 180, column: 7, scope: !735, inlinedAt: !3518)
!3523 = !DILocation(line: 182, column: 13, scope: !3524, inlinedAt: !3518)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !732, line: 182, column: 11)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !732, line: 181, column: 5)
!3526 = !DILocation(line: 182, column: 11, scope: !3525, inlinedAt: !3518)
!3527 = !DILocation(line: 197, column: 11, scope: !3528, inlinedAt: !3518)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !732, line: 197, column: 11)
!3529 = distinct !DILexicalBlock(scope: !3521, file: !732, line: 195, column: 5)
!3530 = !DILocation(line: 197, column: 11, scope: !3529, inlinedAt: !3518)
!3531 = !DILocation(line: 198, column: 9, scope: !3528, inlinedAt: !3518)
!3532 = !DILocation(line: 0, scope: !3333, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 201, column: 7, scope: !735, inlinedAt: !3518)
!3534 = !DILocation(line: 85, column: 25, scope: !3333, inlinedAt: !3533)
!3535 = !DILocation(line: 0, scope: !3341, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 85, column: 10, scope: !3333, inlinedAt: !3533)
!3537 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3536)
!3538 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3536)
!3539 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3536)
!3540 = !DILocation(line: 202, column: 7, scope: !735, inlinedAt: !3518)
!3541 = !DILocation(line: 118, column: 3, scope: !3510)
!3542 = !DILocation(line: 0, scope: !735)
!3543 = !DILocation(line: 178, column: 14, scope: !735)
!3544 = !DILocation(line: 180, column: 9, scope: !3521)
!3545 = !DILocation(line: 180, column: 7, scope: !735)
!3546 = !DILocation(line: 182, column: 13, scope: !3524)
!3547 = !DILocation(line: 182, column: 11, scope: !3525)
!3548 = !DILocation(line: 190, column: 30, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3524, file: !732, line: 183, column: 9)
!3550 = !DILocation(line: 191, column: 16, scope: !3549)
!3551 = !DILocation(line: 191, column: 13, scope: !3549)
!3552 = !DILocation(line: 192, column: 9, scope: !3549)
!3553 = !DILocation(line: 197, column: 11, scope: !3528)
!3554 = !DILocation(line: 197, column: 11, scope: !3529)
!3555 = !DILocation(line: 198, column: 9, scope: !3528)
!3556 = !DILocation(line: 0, scope: !3333, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 201, column: 7, scope: !735)
!3558 = !DILocation(line: 85, column: 25, scope: !3333, inlinedAt: !3557)
!3559 = !DILocation(line: 0, scope: !3341, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 85, column: 10, scope: !3333, inlinedAt: !3557)
!3561 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3560)
!3562 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3560)
!3563 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3560)
!3564 = !DILocation(line: 202, column: 7, scope: !735)
!3565 = !DILocation(line: 203, column: 3, scope: !735)
!3566 = !DILocation(line: 0, scope: !747)
!3567 = !DILocation(line: 230, column: 14, scope: !747)
!3568 = !DILocation(line: 238, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !747, file: !732, line: 238, column: 7)
!3570 = !DILocation(line: 238, column: 7, scope: !747)
!3571 = !DILocation(line: 240, column: 9, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !747, file: !732, line: 240, column: 7)
!3573 = !DILocation(line: 240, column: 18, scope: !3572)
!3574 = !DILocation(line: 253, column: 8, scope: !747)
!3575 = !DILocation(line: 256, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !747, file: !732, line: 256, column: 7)
!3577 = !DILocation(line: 256, column: 7, scope: !747)
!3578 = !DILocation(line: 258, column: 27, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !732, line: 257, column: 5)
!3580 = !DILocation(line: 259, column: 50, scope: !3579)
!3581 = !DILocation(line: 259, column: 32, scope: !3579)
!3582 = !DILocation(line: 260, column: 5, scope: !3579)
!3583 = !DILocation(line: 262, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !747, file: !732, line: 262, column: 7)
!3585 = !DILocation(line: 262, column: 7, scope: !747)
!3586 = !DILocation(line: 263, column: 9, scope: !3584)
!3587 = !DILocation(line: 263, column: 5, scope: !3584)
!3588 = !DILocation(line: 264, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !747, file: !732, line: 264, column: 7)
!3590 = !DILocation(line: 264, column: 14, scope: !3589)
!3591 = !DILocation(line: 265, column: 7, scope: !3589)
!3592 = !DILocation(line: 265, column: 11, scope: !3589)
!3593 = !DILocation(line: 266, column: 11, scope: !3589)
!3594 = !DILocation(line: 267, column: 14, scope: !3589)
!3595 = !DILocation(line: 264, column: 7, scope: !747)
!3596 = !DILocation(line: 268, column: 5, scope: !3589)
!3597 = !DILocation(line: 0, scope: !3408, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 269, column: 8, scope: !747)
!3599 = !DILocation(line: 0, scope: !3416, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 70, column: 25, scope: !3408, inlinedAt: !3598)
!3601 = !DILocation(line: 2059, column: 24, scope: !3416, inlinedAt: !3600)
!3602 = !DILocation(line: 2059, column: 10, scope: !3416, inlinedAt: !3600)
!3603 = !DILocation(line: 0, scope: !3341, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 70, column: 10, scope: !3408, inlinedAt: !3598)
!3605 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3604)
!3606 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3604)
!3607 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3604)
!3608 = !DILocation(line: 270, column: 7, scope: !747)
!3609 = !DILocation(line: 271, column: 3, scope: !747)
!3610 = distinct !DISubprogram(name: "xzalloc", scope: !732, file: !732, line: 279, type: !3361, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "s", arg: 1, scope: !3610, file: !732, line: 279, type: !119)
!3613 = !DILocation(line: 0, scope: !3610)
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !732, line: 294, type: !119)
!3615 = distinct !DISubprogram(name: "xcalloc", scope: !732, file: !732, line: 294, type: !3477, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3616)
!3616 = !{!3614, !3617}
!3617 = !DILocalVariable(name: "s", arg: 2, scope: !3615, file: !732, line: 294, type: !119)
!3618 = !DILocation(line: 0, scope: !3615, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 281, column: 10, scope: !3610)
!3620 = !DILocation(line: 296, column: 25, scope: !3615, inlinedAt: !3619)
!3621 = !DILocation(line: 0, scope: !3341, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 296, column: 10, scope: !3615, inlinedAt: !3619)
!3623 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3622)
!3624 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3622)
!3625 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3622)
!3626 = !DILocation(line: 281, column: 3, scope: !3610)
!3627 = !DISubprogram(name: "calloc", scope: !996, file: !996, line: 543, type: !3477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3628 = !DILocation(line: 0, scope: !3615)
!3629 = !DILocation(line: 296, column: 25, scope: !3615)
!3630 = !DILocation(line: 0, scope: !3341, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 296, column: 10, scope: !3615)
!3632 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3631)
!3633 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3631)
!3634 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3631)
!3635 = !DILocation(line: 296, column: 3, scope: !3615)
!3636 = distinct !DISubprogram(name: "xizalloc", scope: !732, file: !732, line: 285, type: !3375, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3637)
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "s", arg: 1, scope: !3636, file: !732, line: 285, type: !751)
!3639 = !DILocation(line: 0, scope: !3636)
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !732, line: 300, type: !751)
!3641 = distinct !DISubprogram(name: "xicalloc", scope: !732, file: !732, line: 300, type: !3493, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3642)
!3642 = !{!3640, !3643}
!3643 = !DILocalVariable(name: "s", arg: 2, scope: !3641, file: !732, line: 300, type: !751)
!3644 = !DILocation(line: 0, scope: !3641, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 287, column: 10, scope: !3636)
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !3382, line: 77, type: !751)
!3647 = distinct !DISubprogram(name: "icalloc", scope: !3382, file: !3382, line: 77, type: !3493, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3648)
!3648 = !{!3646, !3649}
!3649 = !DILocalVariable(name: "s", arg: 2, scope: !3647, file: !3382, line: 77, type: !751)
!3650 = !DILocation(line: 0, scope: !3647, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 302, column: 25, scope: !3641, inlinedAt: !3645)
!3652 = !DILocation(line: 91, column: 10, scope: !3647, inlinedAt: !3651)
!3653 = !DILocation(line: 0, scope: !3341, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 302, column: 10, scope: !3641, inlinedAt: !3645)
!3655 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3654)
!3656 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3654)
!3657 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3654)
!3658 = !DILocation(line: 287, column: 3, scope: !3636)
!3659 = !DILocation(line: 0, scope: !3641)
!3660 = !DILocation(line: 0, scope: !3647, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 302, column: 25, scope: !3641)
!3662 = !DILocation(line: 91, column: 10, scope: !3647, inlinedAt: !3661)
!3663 = !DILocation(line: 0, scope: !3341, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 302, column: 10, scope: !3641)
!3665 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3664)
!3666 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3664)
!3667 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3664)
!3668 = !DILocation(line: 302, column: 3, scope: !3641)
!3669 = distinct !DISubprogram(name: "xmemdup", scope: !732, file: !732, line: 310, type: !3670, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!117, !1020, !119}
!3672 = !{!3673, !3674}
!3673 = !DILocalVariable(name: "p", arg: 1, scope: !3669, file: !732, line: 310, type: !1020)
!3674 = !DILocalVariable(name: "s", arg: 2, scope: !3669, file: !732, line: 310, type: !119)
!3675 = !DILocation(line: 0, scope: !3669)
!3676 = !DILocation(line: 0, scope: !3360, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 312, column: 18, scope: !3669)
!3678 = !DILocation(line: 49, column: 25, scope: !3360, inlinedAt: !3677)
!3679 = !DILocation(line: 0, scope: !3341, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 49, column: 10, scope: !3360, inlinedAt: !3677)
!3681 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3680)
!3682 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3680)
!3683 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3680)
!3684 = !DILocalVariable(name: "__dest", arg: 1, scope: !3685, file: !1801, line: 26, type: !3688)
!3685 = distinct !DISubprogram(name: "memcpy", scope: !1801, file: !1801, line: 26, type: !3686, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3689)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!117, !3688, !1019, !119}
!3688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!3689 = !{!3684, !3690, !3691}
!3690 = !DILocalVariable(name: "__src", arg: 2, scope: !3685, file: !1801, line: 26, type: !1019)
!3691 = !DILocalVariable(name: "__len", arg: 3, scope: !3685, file: !1801, line: 26, type: !119)
!3692 = !DILocation(line: 0, scope: !3685, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 312, column: 10, scope: !3669)
!3694 = !DILocation(line: 29, column: 10, scope: !3685, inlinedAt: !3693)
!3695 = !DILocation(line: 312, column: 3, scope: !3669)
!3696 = distinct !DISubprogram(name: "ximemdup", scope: !732, file: !732, line: 316, type: !3697, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!117, !1020, !751}
!3699 = !{!3700, !3701}
!3700 = !DILocalVariable(name: "p", arg: 1, scope: !3696, file: !732, line: 316, type: !1020)
!3701 = !DILocalVariable(name: "s", arg: 2, scope: !3696, file: !732, line: 316, type: !751)
!3702 = !DILocation(line: 0, scope: !3696)
!3703 = !DILocation(line: 0, scope: !3374, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 318, column: 18, scope: !3696)
!3705 = !DILocation(line: 0, scope: !3381, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 55, column: 25, scope: !3374, inlinedAt: !3704)
!3707 = !DILocation(line: 57, column: 26, scope: !3381, inlinedAt: !3706)
!3708 = !DILocation(line: 0, scope: !3341, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 55, column: 10, scope: !3374, inlinedAt: !3704)
!3710 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3709)
!3711 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3709)
!3712 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3709)
!3713 = !DILocation(line: 0, scope: !3685, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 318, column: 10, scope: !3696)
!3715 = !DILocation(line: 29, column: 10, scope: !3685, inlinedAt: !3714)
!3716 = !DILocation(line: 318, column: 3, scope: !3696)
!3717 = distinct !DISubprogram(name: "ximemdup0", scope: !732, file: !732, line: 325, type: !3718, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!116, !1020, !751}
!3720 = !{!3721, !3722, !3723}
!3721 = !DILocalVariable(name: "p", arg: 1, scope: !3717, file: !732, line: 325, type: !1020)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3717, file: !732, line: 325, type: !751)
!3723 = !DILocalVariable(name: "result", scope: !3717, file: !732, line: 327, type: !116)
!3724 = !DILocation(line: 0, scope: !3717)
!3725 = !DILocation(line: 327, column: 30, scope: !3717)
!3726 = !DILocation(line: 0, scope: !3374, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 327, column: 18, scope: !3717)
!3728 = !DILocation(line: 0, scope: !3381, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 55, column: 25, scope: !3374, inlinedAt: !3727)
!3730 = !DILocation(line: 57, column: 26, scope: !3381, inlinedAt: !3729)
!3731 = !DILocation(line: 0, scope: !3341, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 55, column: 10, scope: !3374, inlinedAt: !3727)
!3733 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3732)
!3734 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3732)
!3735 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3732)
!3736 = !DILocation(line: 328, column: 3, scope: !3717)
!3737 = !DILocation(line: 328, column: 13, scope: !3717)
!3738 = !DILocation(line: 0, scope: !3685, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 329, column: 10, scope: !3717)
!3740 = !DILocation(line: 29, column: 10, scope: !3685, inlinedAt: !3739)
!3741 = !DILocation(line: 329, column: 3, scope: !3717)
!3742 = distinct !DISubprogram(name: "xstrdup", scope: !732, file: !732, line: 335, type: !998, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3743)
!3743 = !{!3744}
!3744 = !DILocalVariable(name: "string", arg: 1, scope: !3742, file: !732, line: 335, type: !122)
!3745 = !DILocation(line: 0, scope: !3742)
!3746 = !DILocation(line: 337, column: 27, scope: !3742)
!3747 = !DILocation(line: 337, column: 43, scope: !3742)
!3748 = !DILocation(line: 0, scope: !3669, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 337, column: 10, scope: !3742)
!3750 = !DILocation(line: 0, scope: !3360, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 312, column: 18, scope: !3669, inlinedAt: !3749)
!3752 = !DILocation(line: 49, column: 25, scope: !3360, inlinedAt: !3751)
!3753 = !DILocation(line: 0, scope: !3341, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 49, column: 10, scope: !3360, inlinedAt: !3751)
!3755 = !DILocation(line: 39, column: 8, scope: !3348, inlinedAt: !3754)
!3756 = !DILocation(line: 39, column: 7, scope: !3341, inlinedAt: !3754)
!3757 = !DILocation(line: 40, column: 5, scope: !3348, inlinedAt: !3754)
!3758 = !DILocation(line: 0, scope: !3685, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 312, column: 10, scope: !3669, inlinedAt: !3749)
!3760 = !DILocation(line: 29, column: 10, scope: !3685, inlinedAt: !3759)
!3761 = !DILocation(line: 337, column: 3, scope: !3742)
!3762 = distinct !DISubprogram(name: "xalloc_die", scope: !691, file: !691, line: 32, type: !455, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3763)
!3763 = !{!3764}
!3764 = !DILocalVariable(name: "__errstatus", scope: !3765, file: !691, line: 34, type: !3766)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !691, line: 34, column: 3)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3767 = !DILocation(line: 34, column: 3, scope: !3765)
!3768 = !DILocation(line: 0, scope: !3765)
!3769 = !DILocation(line: 40, column: 3, scope: !3762)
!3770 = distinct !DISubprogram(name: "last_component", scope: !769, file: !769, line: 29, type: !998, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3771)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "name", arg: 1, scope: !3770, file: !769, line: 29, type: !122)
!3773 = !DILocalVariable(name: "base", scope: !3770, file: !769, line: 31, type: !122)
!3774 = !DILocalVariable(name: "last_was_slash", scope: !3770, file: !769, line: 35, type: !152)
!3775 = !DILocalVariable(name: "p", scope: !3776, file: !769, line: 36, type: !122)
!3776 = distinct !DILexicalBlock(scope: !3770, file: !769, line: 36, column: 3)
!3777 = !DILocation(line: 0, scope: !3770)
!3778 = !DILocation(line: 32, column: 3, scope: !3770)
!3779 = !DILocation(line: 32, column: 10, scope: !3770)
!3780 = !DILocation(line: 33, column: 9, scope: !3770)
!3781 = distinct !{!3781, !3778, !3780, !919}
!3782 = !DILocation(line: 36, column: 30, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3776, file: !769, line: 36, column: 3)
!3784 = !DILocation(line: 31, column: 15, scope: !3770)
!3785 = !DILocation(line: 36, scope: !3776)
!3786 = !DILocation(line: 0, scope: !3776)
!3787 = !DILocation(line: 36, column: 3, scope: !3776)
!3788 = !DILocation(line: 47, column: 3, scope: !3770)
!3789 = !DILocation(line: 40, column: 16, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !769, line: 40, column: 16)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !769, line: 38, column: 11)
!3792 = distinct !DILexicalBlock(scope: !3783, file: !769, line: 37, column: 5)
!3793 = !DILocation(line: 40, column: 16, scope: !3791)
!3794 = !DILocation(line: 36, column: 35, scope: !3783)
!3795 = !DILocation(line: 36, column: 3, scope: !3783)
!3796 = distinct !{!3796, !3787, !3797, !919}
!3797 = !DILocation(line: 45, column: 5, scope: !3776)
!3798 = distinct !DISubprogram(name: "base_len", scope: !769, file: !769, line: 51, type: !3799, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!119, !122}
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "name", arg: 1, scope: !3798, file: !769, line: 51, type: !122)
!3803 = !DILocalVariable(name: "len", scope: !3798, file: !769, line: 53, type: !119)
!3804 = !DILocalVariable(name: "prefix_len", scope: !3798, file: !769, line: 61, type: !119)
!3805 = !DILocation(line: 0, scope: !3798)
!3806 = !DILocation(line: 54, column: 14, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3798, file: !769, line: 54, column: 3)
!3808 = !DILocation(line: 54, column: 8, scope: !3807)
!3809 = !DILocation(line: 54, column: 32, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !769, line: 54, column: 3)
!3811 = !DILocation(line: 54, column: 38, scope: !3810)
!3812 = !DILocation(line: 54, column: 41, scope: !3810)
!3813 = !DILocation(line: 54, column: 3, scope: !3807)
!3814 = !DILocation(line: 54, column: 70, scope: !3810)
!3815 = distinct !{!3815, !3813, !3816, !919}
!3816 = !DILocation(line: 55, column: 5, scope: !3807)
!3817 = !DILocation(line: 54, scope: !3807)
!3818 = !DILocation(line: 66, column: 3, scope: !3798)
!3819 = distinct !DISubprogram(name: "close_stream", scope: !772, file: !772, line: 55, type: !3820, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3856)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!77, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3824, file: !185, line: 51, baseType: !77, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3824, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3824, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3824, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3824, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3824, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3824, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3824, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3824, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3824, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3824, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3824, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3824, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3824, file: !185, line: 70, baseType: !3840, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3824, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3824, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3824, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3824, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3824, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3824, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3824, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3824, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3824, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3824, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3824, file: !185, line: 93, baseType: !3840, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3824, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3824, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3824, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3824, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3856 = !{!3857, !3858, !3860, !3861}
!3857 = !DILocalVariable(name: "stream", arg: 1, scope: !3819, file: !772, line: 55, type: !3822)
!3858 = !DILocalVariable(name: "some_pending", scope: !3819, file: !772, line: 57, type: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3860 = !DILocalVariable(name: "prev_fail", scope: !3819, file: !772, line: 58, type: !3859)
!3861 = !DILocalVariable(name: "fclose_fail", scope: !3819, file: !772, line: 59, type: !3859)
!3862 = !DILocation(line: 0, scope: !3819)
!3863 = !DILocation(line: 57, column: 30, scope: !3819)
!3864 = !DILocalVariable(name: "__stream", arg: 1, scope: !3865, file: !1454, line: 135, type: !3822)
!3865 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1454, file: !1454, line: 135, type: !3820, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3866)
!3866 = !{!3864}
!3867 = !DILocation(line: 0, scope: !3865, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 58, column: 27, scope: !3819)
!3869 = !DILocation(line: 137, column: 10, scope: !3865, inlinedAt: !3868)
!3870 = !{!1463, !873, i64 0}
!3871 = !DILocation(line: 58, column: 43, scope: !3819)
!3872 = !DILocation(line: 59, column: 29, scope: !3819)
!3873 = !DILocation(line: 59, column: 45, scope: !3819)
!3874 = !DILocation(line: 69, column: 17, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3819, file: !772, line: 69, column: 7)
!3876 = !DILocation(line: 57, column: 50, scope: !3819)
!3877 = !DILocation(line: 69, column: 33, scope: !3875)
!3878 = !DILocation(line: 69, column: 53, scope: !3875)
!3879 = !DILocation(line: 69, column: 59, scope: !3875)
!3880 = !DILocation(line: 69, column: 7, scope: !3819)
!3881 = !DILocation(line: 71, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !772, line: 70, column: 5)
!3883 = !DILocation(line: 72, column: 9, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3882, file: !772, line: 71, column: 11)
!3885 = !DILocation(line: 72, column: 15, scope: !3884)
!3886 = !DILocation(line: 77, column: 1, scope: !3819)
!3887 = !DISubprogram(name: "__fpending", scope: !3888, file: !3888, line: 75, type: !3889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3888 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!119, !3822}
!3891 = distinct !DISubprogram(name: "rpl_fclose", scope: !774, file: !774, line: 58, type: !3892, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3928)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!77, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3896, file: !185, line: 51, baseType: !77, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3896, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3896, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3896, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3896, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3896, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3896, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3896, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3896, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3896, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3896, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3896, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3896, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3896, file: !185, line: 70, baseType: !3912, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3896, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3896, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3896, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3896, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3896, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3896, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3896, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3896, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3896, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3896, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3896, file: !185, line: 93, baseType: !3912, size: 64, offset: 1344)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3896, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3896, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3896, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3896, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DILocalVariable(name: "fp", arg: 1, scope: !3891, file: !774, line: 58, type: !3894)
!3930 = !DILocalVariable(name: "saved_errno", scope: !3891, file: !774, line: 60, type: !77)
!3931 = !DILocalVariable(name: "fd", scope: !3891, file: !774, line: 63, type: !77)
!3932 = !DILocalVariable(name: "result", scope: !3891, file: !774, line: 74, type: !77)
!3933 = !DILocation(line: 0, scope: !3891)
!3934 = !DILocation(line: 63, column: 12, scope: !3891)
!3935 = !DILocation(line: 64, column: 10, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3891, file: !774, line: 64, column: 7)
!3937 = !DILocation(line: 64, column: 7, scope: !3891)
!3938 = !DILocation(line: 65, column: 12, scope: !3936)
!3939 = !DILocation(line: 65, column: 5, scope: !3936)
!3940 = !DILocation(line: 70, column: 9, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3891, file: !774, line: 70, column: 7)
!3942 = !DILocation(line: 70, column: 23, scope: !3941)
!3943 = !DILocation(line: 70, column: 33, scope: !3941)
!3944 = !DILocation(line: 70, column: 26, scope: !3941)
!3945 = !DILocation(line: 70, column: 59, scope: !3941)
!3946 = !DILocation(line: 71, column: 7, scope: !3941)
!3947 = !DILocation(line: 71, column: 10, scope: !3941)
!3948 = !DILocation(line: 70, column: 7, scope: !3891)
!3949 = !DILocation(line: 100, column: 12, scope: !3891)
!3950 = !DILocation(line: 105, column: 7, scope: !3891)
!3951 = !DILocation(line: 72, column: 19, scope: !3941)
!3952 = !DILocation(line: 105, column: 19, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3891, file: !774, line: 105, column: 7)
!3954 = !DILocation(line: 107, column: 13, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3953, file: !774, line: 106, column: 5)
!3956 = !DILocation(line: 109, column: 5, scope: !3955)
!3957 = !DILocation(line: 112, column: 1, scope: !3891)
!3958 = !DISubprogram(name: "fileno", scope: !867, file: !867, line: 809, type: !3892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3959 = !DISubprogram(name: "fclose", scope: !867, file: !867, line: 178, type: !3892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3960 = !DISubprogram(name: "__freading", scope: !3888, file: !3888, line: 51, type: !3892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3961 = !DISubprogram(name: "lseek", scope: !1255, file: !1255, line: 339, type: !3962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!207, !77, !207, !77}
!3964 = distinct !DISubprogram(name: "rpl_fflush", scope: !776, file: !776, line: 130, type: !3965, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4001)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!77, !3967}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3969)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3969, file: !185, line: 51, baseType: !77, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3969, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3969, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3969, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3969, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3969, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3969, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3969, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3969, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3969, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3969, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3969, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3969, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3969, file: !185, line: 70, baseType: !3985, size: 64, offset: 832)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3969, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3969, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3969, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3969, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3969, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3969, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3969, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3969, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3969, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3969, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3969, file: !185, line: 93, baseType: !3985, size: 64, offset: 1344)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3969, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3969, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3969, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3969, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!4001 = !{!4002}
!4002 = !DILocalVariable(name: "stream", arg: 1, scope: !3964, file: !776, line: 130, type: !3967)
!4003 = !DILocation(line: 0, scope: !3964)
!4004 = !DILocation(line: 151, column: 14, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3964, file: !776, line: 151, column: 7)
!4006 = !DILocation(line: 151, column: 22, scope: !4005)
!4007 = !DILocation(line: 151, column: 27, scope: !4005)
!4008 = !DILocation(line: 151, column: 7, scope: !3964)
!4009 = !DILocation(line: 152, column: 12, scope: !4005)
!4010 = !DILocation(line: 152, column: 5, scope: !4005)
!4011 = !DILocalVariable(name: "fp", arg: 1, scope: !4012, file: !776, line: 42, type: !3967)
!4012 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !776, file: !776, line: 42, type: !4013, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3967}
!4015 = !{!4011}
!4016 = !DILocation(line: 0, scope: !4012, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 157, column: 3, scope: !3964)
!4018 = !DILocation(line: 44, column: 12, scope: !4019, inlinedAt: !4017)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !776, line: 44, column: 7)
!4020 = !DILocation(line: 44, column: 19, scope: !4019, inlinedAt: !4017)
!4021 = !DILocation(line: 44, column: 7, scope: !4012, inlinedAt: !4017)
!4022 = !DILocation(line: 46, column: 5, scope: !4019, inlinedAt: !4017)
!4023 = !DILocation(line: 159, column: 10, scope: !3964)
!4024 = !DILocation(line: 159, column: 3, scope: !3964)
!4025 = !DILocation(line: 236, column: 1, scope: !3964)
!4026 = !DISubprogram(name: "fflush", scope: !867, file: !867, line: 230, type: !3965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4027 = distinct !DISubprogram(name: "rpl_fseeko", scope: !778, file: !778, line: 28, type: !4028, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4065)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!77, !4030, !4064, !77}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !4032)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4032, file: !185, line: 51, baseType: !77, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4032, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4032, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4032, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4032, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4032, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4032, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4032, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4032, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4032, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4032, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4032, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4032, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4032, file: !185, line: 70, baseType: !4048, size: 64, offset: 832)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4032, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4032, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4032, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4032, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4032, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4032, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4032, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4032, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4032, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4032, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4032, file: !185, line: 93, baseType: !4048, size: 64, offset: 1344)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4032, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4032, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4032, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4032, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !867, line: 63, baseType: !207)
!4065 = !{!4066, !4067, !4068, !4069}
!4066 = !DILocalVariable(name: "fp", arg: 1, scope: !4027, file: !778, line: 28, type: !4030)
!4067 = !DILocalVariable(name: "offset", arg: 2, scope: !4027, file: !778, line: 28, type: !4064)
!4068 = !DILocalVariable(name: "whence", arg: 3, scope: !4027, file: !778, line: 28, type: !77)
!4069 = !DILocalVariable(name: "pos", scope: !4070, file: !778, line: 123, type: !4064)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !778, line: 119, column: 5)
!4071 = distinct !DILexicalBlock(scope: !4027, file: !778, line: 55, column: 7)
!4072 = !DILocation(line: 0, scope: !4027)
!4073 = !DILocation(line: 55, column: 12, scope: !4071)
!4074 = !{!1463, !809, i64 16}
!4075 = !DILocation(line: 55, column: 33, scope: !4071)
!4076 = !{!1463, !809, i64 8}
!4077 = !DILocation(line: 55, column: 25, scope: !4071)
!4078 = !DILocation(line: 56, column: 7, scope: !4071)
!4079 = !DILocation(line: 56, column: 15, scope: !4071)
!4080 = !DILocation(line: 56, column: 37, scope: !4071)
!4081 = !{!1463, !809, i64 32}
!4082 = !DILocation(line: 56, column: 29, scope: !4071)
!4083 = !DILocation(line: 57, column: 7, scope: !4071)
!4084 = !DILocation(line: 57, column: 15, scope: !4071)
!4085 = !{!1463, !809, i64 72}
!4086 = !DILocation(line: 57, column: 29, scope: !4071)
!4087 = !DILocation(line: 55, column: 7, scope: !4027)
!4088 = !DILocation(line: 123, column: 26, scope: !4070)
!4089 = !DILocation(line: 123, column: 19, scope: !4070)
!4090 = !DILocation(line: 0, scope: !4070)
!4091 = !DILocation(line: 124, column: 15, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4070, file: !778, line: 124, column: 11)
!4093 = !DILocation(line: 124, column: 11, scope: !4070)
!4094 = !DILocation(line: 135, column: 19, scope: !4070)
!4095 = !DILocation(line: 136, column: 12, scope: !4070)
!4096 = !DILocation(line: 136, column: 20, scope: !4070)
!4097 = !{!1463, !1150, i64 144}
!4098 = !DILocation(line: 167, column: 7, scope: !4070)
!4099 = !DILocation(line: 169, column: 10, scope: !4027)
!4100 = !DILocation(line: 169, column: 3, scope: !4027)
!4101 = !DILocation(line: 170, column: 1, scope: !4027)
!4102 = !DISubprogram(name: "fseeko", scope: !867, file: !867, line: 736, type: !4103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!77, !4030, !207, !77}
!4105 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !698, file: !698, line: 100, type: !4106, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4109)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!119, !1819, !122, !119, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!4109 = !{!4110, !4111, !4112, !4113, !4114}
!4110 = !DILocalVariable(name: "pwc", arg: 1, scope: !4105, file: !698, line: 100, type: !1819)
!4111 = !DILocalVariable(name: "s", arg: 2, scope: !4105, file: !698, line: 100, type: !122)
!4112 = !DILocalVariable(name: "n", arg: 3, scope: !4105, file: !698, line: 100, type: !119)
!4113 = !DILocalVariable(name: "ps", arg: 4, scope: !4105, file: !698, line: 100, type: !4108)
!4114 = !DILocalVariable(name: "ret", scope: !4105, file: !698, line: 130, type: !119)
!4115 = !DILocation(line: 0, scope: !4105)
!4116 = !DILocation(line: 105, column: 9, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4105, file: !698, line: 105, column: 7)
!4118 = !DILocation(line: 105, column: 7, scope: !4105)
!4119 = !DILocation(line: 117, column: 10, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4105, file: !698, line: 117, column: 7)
!4121 = !DILocation(line: 117, column: 7, scope: !4105)
!4122 = !DILocation(line: 130, column: 16, scope: !4105)
!4123 = !DILocation(line: 135, column: 11, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4105, file: !698, line: 135, column: 7)
!4125 = !DILocation(line: 135, column: 25, scope: !4124)
!4126 = !DILocation(line: 135, column: 30, scope: !4124)
!4127 = !DILocation(line: 135, column: 7, scope: !4105)
!4128 = !DILocalVariable(name: "ps", arg: 1, scope: !4129, file: !1792, line: 1135, type: !4108)
!4129 = distinct !DISubprogram(name: "mbszero", scope: !1792, file: !1792, line: 1135, type: !4130, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4108}
!4132 = !{!4128}
!4133 = !DILocation(line: 0, scope: !4129, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 137, column: 5, scope: !4124)
!4135 = !DILocalVariable(name: "__dest", arg: 1, scope: !4136, file: !1801, line: 57, type: !117)
!4136 = distinct !DISubprogram(name: "memset", scope: !1801, file: !1801, line: 57, type: !1802, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4137)
!4137 = !{!4135, !4138, !4139}
!4138 = !DILocalVariable(name: "__ch", arg: 2, scope: !4136, file: !1801, line: 57, type: !77)
!4139 = !DILocalVariable(name: "__len", arg: 3, scope: !4136, file: !1801, line: 57, type: !119)
!4140 = !DILocation(line: 0, scope: !4136, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 1137, column: 3, scope: !4129, inlinedAt: !4134)
!4142 = !DILocation(line: 59, column: 10, scope: !4136, inlinedAt: !4141)
!4143 = !DILocation(line: 137, column: 5, scope: !4124)
!4144 = !DILocation(line: 138, column: 11, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4105, file: !698, line: 138, column: 7)
!4146 = !DILocation(line: 138, column: 7, scope: !4105)
!4147 = !DILocation(line: 139, column: 5, scope: !4145)
!4148 = !DILocation(line: 143, column: 26, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4105, file: !698, line: 143, column: 7)
!4150 = !DILocation(line: 143, column: 41, scope: !4149)
!4151 = !DILocation(line: 143, column: 7, scope: !4105)
!4152 = !DILocation(line: 145, column: 15, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !698, line: 145, column: 11)
!4154 = distinct !DILexicalBlock(scope: !4149, file: !698, line: 144, column: 5)
!4155 = !DILocation(line: 145, column: 11, scope: !4154)
!4156 = !DILocation(line: 146, column: 32, scope: !4153)
!4157 = !DILocation(line: 146, column: 16, scope: !4153)
!4158 = !DILocation(line: 146, column: 14, scope: !4153)
!4159 = !DILocation(line: 146, column: 9, scope: !4153)
!4160 = !DILocation(line: 286, column: 1, scope: !4105)
!4161 = !DISubprogram(name: "mbsinit", scope: !4162, file: !4162, line: 293, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!77, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!4167 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !780, file: !780, line: 27, type: !3325, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4168)
!4168 = !{!4169, !4170, !4171, !4172}
!4169 = !DILocalVariable(name: "ptr", arg: 1, scope: !4167, file: !780, line: 27, type: !117)
!4170 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4167, file: !780, line: 27, type: !119)
!4171 = !DILocalVariable(name: "size", arg: 3, scope: !4167, file: !780, line: 27, type: !119)
!4172 = !DILocalVariable(name: "nbytes", scope: !4167, file: !780, line: 29, type: !119)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocation(line: 30, column: 7, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4167, file: !780, line: 30, column: 7)
!4176 = !DILocation(line: 30, column: 7, scope: !4167)
!4177 = !DILocation(line: 32, column: 7, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4175, file: !780, line: 31, column: 5)
!4179 = !DILocation(line: 32, column: 13, scope: !4178)
!4180 = !DILocation(line: 33, column: 7, scope: !4178)
!4181 = !DILocalVariable(name: "ptr", arg: 1, scope: !4182, file: !3417, line: 2057, type: !117)
!4182 = distinct !DISubprogram(name: "rpl_realloc", scope: !3417, file: !3417, line: 2057, type: !3409, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4183)
!4183 = !{!4181, !4184}
!4184 = !DILocalVariable(name: "size", arg: 2, scope: !4182, file: !3417, line: 2057, type: !119)
!4185 = !DILocation(line: 0, scope: !4182, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 37, column: 10, scope: !4167)
!4187 = !DILocation(line: 2059, column: 24, scope: !4182, inlinedAt: !4186)
!4188 = !DILocation(line: 2059, column: 10, scope: !4182, inlinedAt: !4186)
!4189 = !DILocation(line: 37, column: 3, scope: !4167)
!4190 = !DILocation(line: 38, column: 1, scope: !4167)
!4191 = distinct !DISubprogram(name: "hard_locale", scope: !716, file: !716, line: 28, type: !4192, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4194)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!152, !77}
!4194 = !{!4195, !4196}
!4195 = !DILocalVariable(name: "category", arg: 1, scope: !4191, file: !716, line: 28, type: !77)
!4196 = !DILocalVariable(name: "locale", scope: !4191, file: !716, line: 30, type: !4197)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4198)
!4198 = !{!4199}
!4199 = !DISubrange(count: 257)
!4200 = distinct !DIAssignID()
!4201 = !DILocation(line: 0, scope: !4191)
!4202 = !DILocation(line: 30, column: 3, scope: !4191)
!4203 = !DILocation(line: 32, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4191, file: !716, line: 32, column: 7)
!4205 = !DILocation(line: 32, column: 7, scope: !4191)
!4206 = !DILocalVariable(name: "__s1", arg: 1, scope: !4207, file: !885, line: 1359, type: !122)
!4207 = distinct !DISubprogram(name: "streq", scope: !885, file: !885, line: 1359, type: !886, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4208)
!4208 = !{!4206, !4209}
!4209 = !DILocalVariable(name: "__s2", arg: 2, scope: !4207, file: !885, line: 1359, type: !122)
!4210 = !DILocation(line: 0, scope: !4207, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 35, column: 9, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4191, file: !716, line: 35, column: 7)
!4213 = !DILocation(line: 1361, column: 11, scope: !4207, inlinedAt: !4211)
!4214 = !DILocation(line: 35, column: 29, scope: !4212)
!4215 = !DILocation(line: 0, scope: !4207, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 35, column: 32, scope: !4212)
!4217 = !DILocation(line: 1361, column: 11, scope: !4207, inlinedAt: !4216)
!4218 = !DILocation(line: 1361, column: 10, scope: !4207, inlinedAt: !4216)
!4219 = !DILocation(line: 35, column: 7, scope: !4191)
!4220 = !DILocation(line: 46, column: 3, scope: !4191)
!4221 = !DILocation(line: 47, column: 1, scope: !4191)
!4222 = distinct !DISubprogram(name: "setlocale_null_r", scope: !786, file: !786, line: 154, type: !4223, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!77, !77, !116, !119}
!4225 = !{!4226, !4227, !4228}
!4226 = !DILocalVariable(name: "category", arg: 1, scope: !4222, file: !786, line: 154, type: !77)
!4227 = !DILocalVariable(name: "buf", arg: 2, scope: !4222, file: !786, line: 154, type: !116)
!4228 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4222, file: !786, line: 154, type: !119)
!4229 = !DILocation(line: 0, scope: !4222)
!4230 = !DILocation(line: 159, column: 10, scope: !4222)
!4231 = !DILocation(line: 159, column: 3, scope: !4222)
!4232 = distinct !DISubprogram(name: "setlocale_null", scope: !786, file: !786, line: 186, type: !4233, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!122, !77}
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "category", arg: 1, scope: !4232, file: !786, line: 186, type: !77)
!4237 = !DILocation(line: 0, scope: !4232)
!4238 = !DILocation(line: 189, column: 10, scope: !4232)
!4239 = !DILocation(line: 189, column: 3, scope: !4232)
!4240 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !788, file: !788, line: 35, type: !4233, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4241)
!4241 = !{!4242, !4243}
!4242 = !DILocalVariable(name: "category", arg: 1, scope: !4240, file: !788, line: 35, type: !77)
!4243 = !DILocalVariable(name: "result", scope: !4240, file: !788, line: 37, type: !122)
!4244 = !DILocation(line: 0, scope: !4240)
!4245 = !DILocation(line: 37, column: 24, scope: !4240)
!4246 = !DILocation(line: 62, column: 3, scope: !4240)
!4247 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !788, file: !788, line: 66, type: !4223, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253}
!4249 = !DILocalVariable(name: "category", arg: 1, scope: !4247, file: !788, line: 66, type: !77)
!4250 = !DILocalVariable(name: "buf", arg: 2, scope: !4247, file: !788, line: 66, type: !116)
!4251 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4247, file: !788, line: 66, type: !119)
!4252 = !DILocalVariable(name: "result", scope: !4247, file: !788, line: 111, type: !122)
!4253 = !DILocalVariable(name: "length", scope: !4254, file: !788, line: 125, type: !119)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !788, line: 124, column: 5)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !788, line: 113, column: 7)
!4256 = !DILocation(line: 0, scope: !4247)
!4257 = !DILocation(line: 0, scope: !4240, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 111, column: 24, scope: !4247)
!4259 = !DILocation(line: 37, column: 24, scope: !4240, inlinedAt: !4258)
!4260 = !DILocation(line: 113, column: 14, scope: !4255)
!4261 = !DILocation(line: 113, column: 7, scope: !4247)
!4262 = !DILocation(line: 116, column: 19, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !788, line: 116, column: 11)
!4264 = distinct !DILexicalBlock(scope: !4255, file: !788, line: 114, column: 5)
!4265 = !DILocation(line: 116, column: 11, scope: !4264)
!4266 = !DILocation(line: 120, column: 16, scope: !4263)
!4267 = !DILocation(line: 120, column: 9, scope: !4263)
!4268 = !DILocation(line: 125, column: 23, scope: !4254)
!4269 = !DILocation(line: 0, scope: !4254)
!4270 = !DILocation(line: 126, column: 18, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4254, file: !788, line: 126, column: 11)
!4272 = !DILocation(line: 126, column: 11, scope: !4254)
!4273 = !DILocation(line: 128, column: 39, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4271, file: !788, line: 127, column: 9)
!4275 = !DILocalVariable(name: "__dest", arg: 1, scope: !4276, file: !1801, line: 26, type: !3688)
!4276 = distinct !DISubprogram(name: "memcpy", scope: !1801, file: !1801, line: 26, type: !3686, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4277)
!4277 = !{!4275, !4278, !4279}
!4278 = !DILocalVariable(name: "__src", arg: 2, scope: !4276, file: !1801, line: 26, type: !1019)
!4279 = !DILocalVariable(name: "__len", arg: 3, scope: !4276, file: !1801, line: 26, type: !119)
!4280 = !DILocation(line: 0, scope: !4276, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 128, column: 11, scope: !4274)
!4282 = !DILocation(line: 29, column: 10, scope: !4276, inlinedAt: !4281)
!4283 = !DILocation(line: 129, column: 11, scope: !4274)
!4284 = !DILocation(line: 133, column: 23, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !788, line: 133, column: 15)
!4286 = distinct !DILexicalBlock(scope: !4271, file: !788, line: 132, column: 9)
!4287 = !DILocation(line: 133, column: 15, scope: !4286)
!4288 = !DILocation(line: 138, column: 44, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4285, file: !788, line: 134, column: 13)
!4290 = !DILocation(line: 0, scope: !4276, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 138, column: 15, scope: !4289)
!4292 = !DILocation(line: 29, column: 10, scope: !4276, inlinedAt: !4291)
!4293 = !DILocation(line: 139, column: 15, scope: !4289)
!4294 = !DILocation(line: 139, column: 32, scope: !4289)
!4295 = !DILocation(line: 140, column: 13, scope: !4289)
!4296 = !DILocation(line: 0, scope: !4255)
!4297 = !DILocation(line: 145, column: 1, scope: !4247)
